@extends('layouts.app')

@section('content')
<div class="container-fluid h-100" >
			<div class="row justify-content-center h-100">
				<div class="col-md-4 col-xl-3 chat">
                    <div class="card mb-sm-3 mb-md-0 contacts_card">
                        <div class="card-header">
                            <div class="input-group">
                                <input type="text" placeholder="Search..." name="" class="form-control search">
                                <div class="input-group-prepend">
                                    <span class="input-group-text search_btn"><i class="fas fa-search"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="card-body contacts_body">
                        <input type="hidden" name="_token" value="{{ Session::token() }}">
                            <ui class="contacts">
                                @foreach($users as $user)
                                <li class="user" id='{{$user->id}}'>
                                    <div class="d-flex bd-highlight">
                                        <div class="img_cont">
                                            @php $countMsg=App\Message::where('is_read',0)->where('to_user_id',$auth->id)->where('from_user_id',$user->id)->get(); @endphp
                                            <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img">
                                            @if(count($countMsg)!=0)
                                                <span class="pending">{{count($countMsg)}}</span>
                                            @endif
                                        </div>
                                        <div class="user_info">
                                            <span>{{$user->name}}</span>
                                            <p>{{$user->email}}</p>
                                        </div>
                                    </div>
                                </li>
                                @endforeach
                            </ul>
                        </div>
				    </div>
                </div>
				<div class="col-md-8 col-xl-6 chat" >
					<div class="card " id='messages' >
                        
					</div>
				</div>
			</div>
		</div>

@endsection
@section('script')
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<script>
    var receiver_id = '';
    var my_id = "{{ Auth::id() }}";
    $(document).ready(function () {
        // ajax setup form csrf token
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        // Enable pusher logging - don't include this in production
        Pusher.logToConsole = true;

        var pusher = new Pusher('c2d36bd8492700db51d8', {
        cluster: 'eu'
        });

        var channel = pusher.subscribe('my-channel');
        channel.bind('my-event', function(data) {
            //var d=JSON.stringify(data);
            
            if(data.from==my_id){
                //$('#' + data.to).click();
            }else if(data.to==my_id){

                if (receiver_id == data.from) {
                    // if receiver is selected, reload the selected user ...
                    $('#' + data.from).click();
                } else {
                    // if receiver is not seleted, add notification for that user
                    var pending = parseInt($('#' + data.from).find('.pending').html());
                    if (pending) {
                        $('#' + data.from).find('.pending').html(pending + 1);
                    } else {
                        $('#' + data.from).append('<span class="pending">1</span>');
                    }
                }
            }
        
            
        });

        //ppppppppppppppppppppppppppppppppp
        $('.user').click(function () {
            $('.user').removeClass('active');
            $(this).addClass('active');
            $(this).find('.pending').remove();
            receiver_id = $(this).attr('id');
            $.ajax({
                type: "get",
                url: "message/" + receiver_id, // need to create this route
                data: "",
                cache: false,
                success: function (data) {
                    $('#messages').html(data);
                    vuejs();
                    scrollToBottomFunc();
                }
            });
        });
        $(document).on('keyup', '#msg', function (e) {
            var message = $(this).val();
            // check if enter key is pressed and message is not null also receiver is selected
            if (e.keyCode == 13 && message != '' && receiver_id != '') {
                
                // $(this).val(''); // while pressed enter text box will be empty
                var datastr = "receiver_id=" + receiver_id + "&message=" + message;
                $.ajax({
                    type: "post",
                    url: "message", // need to create this post route
                    data: datastr,
                    cache: false,
                    success: function (data) {
                    },
                    error: function (jqXHR, status, err) {
                    },
                    complete: function () {
                        
                        scrollToBottomFunc();
                        console.log(datastr);
                    }
                })
            }
        });
    });
    // make a function to scroll down auto
    function scrollToBottomFunc() {
        $('.message-wrapper').animate({
            scrollTop: $('.message-wrapper').get(0).scrollHeight
        }, 50);
    }
    function vuejs() {
        var app = new Vue({
            el: '#myApp',
            data: {
                
                newMsg:@if(isset($messages)) {{$messages[0]->message}}@else 'ff' @endif,
                
            }
        });
    }

    
</script>
@endsection