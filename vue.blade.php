 <!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
<meta name="csrf-token" content="{{ csrf_token() }}">
</head>
<body>
<style>
.activeClass{
    background-color: red;
}.errorClass{
    background-color: green;
}
</style>
<div id="app">
{{$user->name}} to 
    <select name="user" id="users" v-model="to">
        <option value="0">choes</option>
        @foreach($users as $user)
        <option value="{{$user->id}}">{{$user->name}}</option>
        @endforeach    
    </select>
  <div v-for="message in messages">
    <div v-bind:class="{ activeClass: message.from_user_id==myID,errorClass: message.from_user_id!=myID }">
    <div v-if="message.type=='file'">
      <img :src="message.message" width="200" v-if="message.local">
     
    </div>
    <span v-if="message.type=='text'" v-text="message.message"></span>
    </div>
  </div>
  <br>
  <div class="sending">
  
  <input type="text" name="msg" id="msg" v-model="msg" v-on:keyup="send()">
  <button type="button" class="btn btn-secondary" v-on:click="send()">send</button>
  </div>
</div>
<!-- development version, includes helpful console warnings -->
<script src="https://js.pusher.com/7.0/pusher.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
var my_Id=@php echo(Auth::id()) @endphp;
var messagesJs=@if(isset($messages))@php echo($messages); @endphp @else []  @endif;
var toID=14;
// Enable pusher logging - don't include this in production
Pusher.logToConsole = true;

var pusher = new Pusher('c2d36bd8492700db51d8', {
cluster: 'eu'
});

var channel = pusher.subscribe('my-channel');
channel.bind('my-event', function(data) {
    
    if(data.from==my_Id){
        
    }else if(data.to==my_Id){
        
        var newMsg={'message':data.msg,"from_user_id":data.from,"to_user_id":data.to}
        messagesJs.push(newMsg);
        
    }
    
    
});

var app = new Vue({
  el: '#app',
  data: {
    msg:'',
    messages:messagesJs,
    myID:@php echo(Auth::id()) @endphp,
    toID:14,
    to:0,
  },
  methods: {
    send: function () {
        // ajax setup form csrf token
        if(event.key == "Enter")
        {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            
            
               
            var newMsg={'message':this.msg,"from_user_id":this.myID,"to_user_id":this.toID,'type':'text'}
            this.messages.push(newMsg);
            
            
            var datastr = "receiver_id=" + this.toID + "&message=" + this.msg + "&type=text";

            $.ajax({
                type: "post",
                url: "/chat/send", // need to create this post route
                data: datastr,
                cache: false,
                success: function (data) {
                },
                error: function (jqXHR, status, err) {
                },
                complete: function () {
                    console.log('success');
                }
            });
            this.msg='';
        }
      
    }
  },
  watch: {
    to:function (val){
      $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });

      var request = $.ajax({
                    
        url:"{{route('chaty.getMessages')}}",
        type:"POST",
        data: {
          to_id: val,
          _token: $('meta[name="csrf-token"]').attr('content'),
        },
        dataType: "json",  
        success:function (data) {
          console.log(JSON.stringify(data.messages));
          messagesJs=JSON.stringify(data.messages);
        }
      })
    }
  }

})
</script>

</body>
</html>
