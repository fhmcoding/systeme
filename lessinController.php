<?php

namespace App\Http\Controllers\teatcher;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Lesson;
use App\Group;
use App\Teaacherclasse;
use App\Subject;
use Carbon\Carbon;
use Auth;
class lessinController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth','teatcher']);     
    }

    public function Add(Request $req)
    {
        if($req->isMethod('post')){
        //    $new=Lesson();
        //    $new->teatcher_id=Auth::user()->teatcher()->first()->id;
        //    $new->subject_id  
        }
        else{
            //classes
            $groups=Group::all();
            $Teaacherclasse=Teaacherclasse::where('teatcher_id',Auth::user()->teatcher->id)->get();
            
            $name_t=array();
            $student_list=array();
            $defultB=array();
            $defultA=array();
            

            foreach($Teaacherclasse as $item){
                $subjects=Category::find($item->category_id);
                array_push($defultB,$subjects->categorie);
                array_push($defultA,$defultB[0]->categorie);
                array_push($name_t,$subjects);
                array_push($student_list,$subjects->categorie->students->first());             
            }

            $categores=Category::where('parent_id',NULL)->get();
            $defultA=Category::where('parent_id',NULL)->first()->subcategories;
            $defultB=$defultA->first()->subcategories;
            $defultC=$defultB->first()->subcategories;
            
            $arr=array(
                'categores'=>$categores,
                'defultA'=>$defultA,
                'defultB'=>$defultB,
                'defultC'=>$defultC,
                'groups'=>$groups,
                'subject'=>$name_t,
                'student_list'=>$student_list,
            );
            return view("teatcher.add",$arr);
            
            
        }

    }

    public function show(Request $req)
    {
        Carbon::setLocale('fr');
        $name_t=array();
        $groups=Group::all();
        $Teaacherclasse=Teaacherclasse::where('teatcher_id',Auth::user()->teatcher->id)->get();
        foreach($Teaacherclasse as $item){
            $subjects=Subject::find($item->subject_id);
            array_push($name_t,$subjects);
        }   
        $lessons=Auth::user()->teatcher()->first()->lessons()->where([
                ['group_id','LIKE',$req->group],
                ['subject_id','LIKE',$req->subject],
                ['name','LIKE','%'.$req->chercher.'%']
            ])->latest('id')->get();
        $arr=array('lessons'=>$lessons,'groups'=>$groups,'name_t'=>$name_t);
        return view('teatcher.showLesson',$arr);
      
       
    }
    public function delet($id)
    {
        $lesson=Lesson::find($id);
        $lessons->delete();
        return redircet()->route('lesson.show');
    }
 

}
