@extends('layouts.teatcher')

@section('content')
 
<div class="content-header">
        <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Dashboard</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard v1</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    
    <!-- /.content-header -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
                <div class="card">
                    <div class="card-header">
                        <h3 class="box-title">filtration</h3>
                    </div>    
                    <div class="card-body">
                        <form method="GET" action="{{ route('lesson.show')}}">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">chercher</label>
                                        <input class="form-control" type="text" name="chercher" placeholder="chercher">    
                                    </div>    
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                            <label for="exampleFormControlSelect1">select parti</label>
                                            <select class="form-control" id="exampleFormControlSelect1" name="group">
                                                @foreach($groups as $item)
                                                    <option value="{{$item->id}}">{{$item->name}}</option>
                                                @endforeach
                                            </select>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                            <label for="exampleFormControlSelectmatière">select matière</label>
                                            <select class="form-control" id="exampleFormControlSelectmatière" name="subject">
                                                @foreach($name_t as $item)
                                                    <option value="{{$item->id}}">{{$item->name}} </option>
                                                @endforeach
                                            </select>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                            <label for="exampleFormControlSelectclass">select class</label>
                                            <select class="form-control" id="exampleFormControlSelectclass" name="class">
                                                @foreach($name_t as $item)
                                                    <option value="{{$item->classe->id}}">{{$item->classe->name}}</option>
                                                @endforeach
                                            </select>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <label for="submit" style="opacity:0;">select matière</label>
                                    <button class="btn btn-primary" type="submit" id="submit" style="width:100%;">chercher</button>
                                </div>
                            </div>
                        </form>    
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h3 class="box-title">Résultat de la liste</h3>
                    </div>    
                    <div class="card-body">
                        @if(count($lessons) < 1)
                        <div class="alert alert-warning" role="alert">
                            A simple info alert—check it out!
                        </div>
                        @else
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Matière</th>
                                    <th scope="col">docunment</th>
                                    <th scope="col">link</th>
                                    <th scope="col">voir</th>
                                    <th scope="col">statu</th>
                                    <th scope="col">director</th>
                                    <th scope="col">Contremaître</th>
                                    <th scope="col">prof</th>
                                    <th scope="col">Message</th>
                                    <th scope="col">action</th>
                                </tr>
                            </thead>
                            <tbody> 
                                @foreach($lessons as $item)
                                    <tr>
                                    <th scope="row">{{ $item->id}}</th>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->subject->name}}</td>
                                    <td><a href="{{ $item->docunment}}">voirs</a></td>
                                    <td><a href="{{$item->link }}">Click</a></td>
                                    <td>{{ $item->vu}} <a href="#"  data-toggle="modal" data-target="#exampleModal{{$item->id}}"><i class="fa fa-eye" aria-hidden="true"></i></a> </td> 
                                    <td>@if($item->statu=="true")<i class="fa fa-circle online" aria-hidden="true"></i> @else <i class="fa fa-circle ofline" aria-hidden="true"></i> @endif</td>
                                    <td><input class="form-check-input" type="checkbox" value="{{ $item->permission1}}" id="defaultCheck1" disabled @if($item->permission1=="true") checked @endif > </td>
                                    <td><input class="form-check-input" type="checkbox" value="{{ $item->permission2}}" id="defaultCheck2" disabled @if($item->permission2=="true") checked @endif > </td>
                                    <td><input class="form-check-input" type="checkbox" value="{{ $item->permission2}}" id="defaultCheck2"  @if($item->permission2=="true" && $item->permission1=="true") @else disabled @endif></td>
                                    <td><i class="fa fa-envelope" aria-hidden="true"></i><span class="new">1</span> <span class="mr-1"></span>  <i class="fa fa-graduation-cap" aria-hidden="true"></i><span class="new-s">3</span></td>
                                    <td><a href="{{ route('lesson.delete',['id' =>$item->id])}}" class="delte"><i class="fa fa-trash" aria-hidden="true"></i></a><a href="#" class="update">
                <i class="fa fa-pencil-square-o" aria-hidden="true"></i></a><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a> </td>
                                    </tr>
                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal{{$item->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="col-md-1">id</div>
                                                    <div class="col-md-5">name</div>
                                                    <div class="col-md-3">date</div>
                                                    <div class="col-md-3">time</div>
                                                    @foreach($item->vuecoures as $vue)
                                                        <div class="col-md-1">{{ $vue->id}}</div>
                                                        <div class="col-md-5">{{ $vue->student_name}}</div>
                                                        <div class="col-md-3">{{ $vue->created_at->format('d/m/Y')}}</div>
                                                        <div class="col-md-3">{{ $vue->created_at->format('h:s:m')}}</div>
                                                    @endforeach
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-danger">Close</button>
                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach    
                                <tr>
                            </tbody>
                        </table>
                        @endif
                    </div>
                </div>
       </div>
    </section>   
     <!-- /.content -->
</div>        
@endsection  