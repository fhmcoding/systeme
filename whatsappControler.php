<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Message;
use Auth;
class whatsappControler extends Controller
{
    //
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
        $users=User::where('id','!=',Auth::user()->id)->get();
        $arr=Array('users'=>$users,'messages'=>[]);
        return view('chatApp.index',$arr);   
    }
    public function getMessages(Request $request){
        
        $my_id=Auth::user()->id;
        $user_id=$request->user_id;

        $messages = Message::where(function ($query) use ($user_id, $my_id) {
            $query->where('from_user_id', $user_id)->where('to_user_id', $my_id);
        })->oRwhere(function ($query) use ($user_id, $my_id) {
            $query->where('from_user_id', $my_id)->where('to_user_id', $user_id);
        })->get();

        return response()->json([
            'messages' => $messages
        ]);
        
    }

    public function sendMessage(Request $request)
    {
        $from = Auth::id();
        $to = $request->to_id;
        $message = $request->message;
        $type=$request->type;

        if($type=='text'){
            $data = new Message();
            $data->from_user_id = $from;
            $data->to_user_id=$to;
            $data->message = $message;
            $data->is_read = 0; // message will be unread when sending message
            $data->type =$type;
            $data->save();
        }
        event(new chat_app($from,$to,$message));
       

    }
} 
