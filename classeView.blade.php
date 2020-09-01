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
      <section class="content">
          <div class="container-fluid">
              <div class="card">
                  <div class="card-header">
                      <h3 class="box-title">
                      List Class
                      </h3>
                  </div>    
                  <div class="card-body">
                  <table class="table table-striped">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">class</th>
                    <th scope="col">matière</th>
                    <th scope="col">Students</th>
                    <th scope="col">action</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach($subject as $item)
                       <?php $subjectItem=App\Subject::find($item->subject_id)?> 
                      <tr>
                      <th scope="row">{{ $item->id}}</th>
                      <td>{{ $subjectItem->classe->name }}</td>
                      <td>{{  $subjectItem->name  }}</td>
                      <td>{{  $subjectItem->classe->students->count()  }}</td>
                      <td><a href="{{route('teatcher.lessin.delete',['id'=> $item->id]) }}" class="btn btn-danger btn-sm">Get Out</a></td>
                      </tr>
                  @endforeach    
                </tbody>
              </table>
                  </div>
              </div>  
          </div>     
      </section>    
</div>       
@endsection