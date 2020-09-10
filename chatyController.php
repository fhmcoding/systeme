<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Message;
use Illuminate\Support\Facades\Auth;
use Pusher\Pusher;
use App\Events\chat_app;
use Illuminate\Support\Facades\DB;
class chatyController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $my_id = Auth::id();
        // if($my_id==9){
        //     $user_id=10;
        // }else{
        //     $user_id=9;
        // }
        
        // $messages = Message::where(function ($query) use ($user_id, $my_id) {
        //     $query->where('from_user_id', $user_id)->where('to_user_id', $my_id);
        // })->oRwhere(function ($query) use ($user_id, $my_id) {
        //     $query->where('from_user_id', $my_id)->where('to_user_id', $user_id);
        // })->get();


        $arr=Array(
            'users'=>User::where('id',Auth::id())->get(),
            'user'=>User::find($my_id)
        );
        return view('vue',$arr);   
    }
    public function getMessages(Request $request){
        
        $my_id=Auth::user()->id;
        $user_id=$request->to_id;

        $messages = Message::where(function ($query) use ($user_id, $my_id) {
            $query->where('from_user_id', $user_id)->where('to_user_id', $my_id);
        })->oRwhere(function ($query) use ($user_id, $my_id) {
            $query->where('from_user_id', $my_id)->where('to_user_id', $user_id);
        })->get();

        return response()->json([
            'messages' => Message::all()
        ]);
        
    }
    public function sendMessage(Request $request)
    {

        $from = Auth::id();
        $to = $request->receiver_id;
        $message = $request->message;
        $type=$request->type;
        if($type=='text'){
            $data = new Message();
            $data->from_user_id = $from;
            $data->to_user_id = $to;
            $data->message = $message;
            $data->is_read = 0; // message will be unread when sending message
            $data->type =$type;
            $data->save();
        }else{
            //take image 
            $nameFile=$message->getClientOriginalName();
            $path=$message->storeAs('chat',$nameFile);
            $data = new Message();
            $data->from_user_id = $from;
            $data->to_user_id = $to;
            $data->message = $path;
            $data->is_read = 0; // message will be unread when sending message
            $data->type=$type;
            $data->save();
        }
        
        event(new chat_app($from,$to,$message));
       

    } 
} 
