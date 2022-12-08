@extends('layouts.master');


@section('content')

<form action="{{url('/postadd')}}" method="POST" enctype="multipart/form-data" >
    @csrf
    @method('post')
    <div class="form-row " >

    <div class="form-group col-md-8">
      <label for="tile">Titel*</label>
      <input type="text" name="title" class="form-control" id="tile" placeholder="Enter your post Titel">
      <span style="color: red">@error('title'){{$message}}@enderror</span>
    </div>
    <div class="form-group col-md-4">
      <label for="ct">Categories*</label>
      <select class="form-control" name="cate_id"  id="ct">
            @foreach ($categories as $cate )
                <option value="{{$cate->id}}">{{$cate->name}}</option>
            @endforeach
      </select>
      <span style="color: red">@error('categories'){{$message}}@enderror</span>
    </div>
    <div class="form-group col-md-12">
      <label for="exampleFormControlTextarea1">Descriptions*</label>
      <textarea class="form-control" name="description" id="exampleFormControlTextarea1" rows="8" placeholder="Enter your post descriptions"></textarea>
      <span style="color: red">@error('description'){{$message}}@enderror</span>
    </div>
    <div class="form-group col-md-3">
        <label for="name">{{ __('Image')}}<span class="text-red">*</span></label>
        <input type="file" onchange="document.getElementById('showImgBox').src = window.URL.createObjectURL(this.files[0])" name="image" class="form-control" >
        <div class="help-block with-errors"></div>
        @error('prot_imag')
            <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
            </span>
        @enderror
    </div>
    <div class="form-group col-md-6">
        <div class="col-sm-6">
            <div class="form-group">
                <img src="#" style="height: 185px;" id="showImgBox" class="form-control" alt="box-img">
            </div>
        </div>
    </div>

    </div>
    <center><button type="submit" class="btn btn-primary mt-2 col-md-1">Save</button></center>

  </form>

@endsection
