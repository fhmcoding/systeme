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
                                
                                <li class="user">
                                    <div class="d-flex bd-highlight">
                                        <div class="img_cont">
                                            <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img">
                                        </div>
                                        <div class="user_info">
                                            <span>Bame</span>
                                            <p>hello</p>
                                        </div>
                                    </div>
                                </li>
                                
                            </ul>
                        </div>
				    </div>
                </div>
				<div class="col-md-8 col-xl-6 chat" >
					<div class="card" id='myApp'>
                        <span v-text="messages"></span>
                        
					</div>
				</div>
			</div>
		</div>

@endsection
@section('script')
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script>
    var app = new Vue({
    el: '#myApp',
    data: {
        message: 'Hello Vue!',
    }
    });
</script>
@endsection