@extends('layouts.master');


@section('content')

@if (Session::has('success'))
    <div class="alert alert-success alert-dismissible col-md-3 " role="alert" style="float: right" >
        <button type="button" class="close" data-dismiss="alert">
            <i class="fa fa-times"></i>
        </button>
        <strong>Successfully!</strong> {{session('success')}}
    </div>
@endif

@if (Session::has('fail'))
    <div class="alert alert-danger alert-dismissible col-md-3 " role="alert" style="float: right" >
        <button type="button" class="close" data-dismiss="alert">
            <i class="fa fa-times"></i>
        </button>
        <strong>Failed!</strong> {{session('fail')}}
    </div>
@endif

<table class="table table-bordered" style="background: rgb(78 115 223 / 48%);    color: #f7f7f7;}">
    <thead>
      <tr>
        <th scope="col">Sl</th>
        <th scope="col">title</th>
        <th scope="col">description</th>
        <th scope="col">Category</th>
        <th scope="col">image</th>
        <th colspan="3">Actions</th>
      </tr>
    </thead>
    <tbody>
        @foreach ($posts as $post)
         <tr>
            <th scope="row">{{$post->id}}</th>
            <td>{{$post->title}}</td>
            <td>{{$post->description}}</td>
            <td >{{$post->cate->name}}</td>
            <td><img src="/uploads/demo/{{($post->image)}}" style="height:100px; width:175px" alt=""></td>
            <td >
                <a href="" class="btn btn-primary">Edit</a>
                <a href="{{route('remove',$post->id)}}" class="btn btn-danger">Delete</a>
                <a href="" class="btn btn-info">Show</a>
            </td>
          </tr>
        @endforeach

    </tbody>
  </table>
  {{$posts->onEachSide(1)->links()}}

@endsection
