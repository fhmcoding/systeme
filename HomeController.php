<?php

namespace App\Http\Controllers;

use App\Message;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Pusher\Pusher;
use App\Events\chat_app;
class HomeController extends Controller
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
        $auth = Auth::user();
        $users=User::where('id','!=',$auth->id)->with('messages')->get();
        
        $arr=Array('auth'=>$auth,'users'=>$users);
        return view('home',$arr);
        
    }
    public function getMessage($user_id)
    {
        $my_id = Auth::id();
        $user=User::find($user_id);
        //Make read all unread message
        Message::where(
            ['from_user_id' => $user_id, 'to_user_id' => $my_id]
            )->update(['is_read' => 1]);

        // Get all message from selected user
        $messages = Message::where(function ($query) use ($user_id, $my_id) {
            $query->where('from_user_id', $user_id)->where('to_user_id', $my_id);
        })->oRwhere(function ($query) use ($user_id, $my_id) {
            $query->where('from_user_id', $my_id)->where('to_user_id', $user_id);
        })->get();

        return view('message.message', ['messages' => $messages,'user'=>$user]);
        //return view('message.message');
    }
    public function sendMessage(Request $request)
    {
        $from = Auth::id();
        $to = $request->receiver_id;
        $message = $request->message;

        $data = new Message();
        $data->from_user_id = $from;
        $data->to_user_id = $to;
        $data->message = $message;
        $data->is_read = 0; // message will be unread when sending message
        if($message!=null){
            $data->type ='text';
        }
        
        $data->save();
        event(new chat_app($from,$to,$message));
       
        return response()->json(['newMsg'=> $data]);

    }
}

