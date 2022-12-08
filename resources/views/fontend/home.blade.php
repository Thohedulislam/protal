
@extends('fontend.master')

@section('title', 'Home')

@section('content')

 <!-- Top News Slider Start -->
 <div class="container-fluid py-3">
    <div class="container">
        <div class="owl-carousel owl-carousel-2 carousel-item-3 position-relative">
            @foreach ($data as $post)
            <div class="d-flex">
                <img src="{{asset('uploads/demo/'.$post->image)}}" style="width: 80px; height: 80px; object-fit: cover;">
                <div class="d-flex align-items-center bg-light px-3" style="height: 80px;">
                    <a class="text-secondary font-weight-semi-bold" href="">{{Str::words($post->title,7)}}</a>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
<!-- Top News Slider End -->


<!-- Main News Slider Start -->
<div class="container-fluid py-3">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="owl-carousel owl-carousel-2 carousel-item-1 position-relative mb-3 mb-lg-0">
                    @foreach ($data as $key=> $post )
                    <div  {{$key++}}class="position-relative overflow-hidden" style="height: 435px;">
                        <img class="img-fluid h-100" src="{{asset('uploads/demo/'.$post->image)}}" style="object-fit: cover;">
                        <div class="overlay">
                            <div class="mb-1">
                                <a class="text-white" href="">{{$post->cate->name}}</a>
                                <span class="px-2 text-white">/</span>
                                <a class="text-white" href="">{{$post->created_at->format('M-d-Y')}}</a>
                            </div>
                            <a class="h2 m-0 text-white font-weight-bold" href="{{ url('post-view',$post->id) }}">{{Str::words($post->title,5)}}</a>
                        </div>
                    </div>
                        @if ($key == 5)
                        @break
                        @endif
                    @endforeach
                </div>
            </div>

            <div class="col-lg-4">
                <div class="d-flex align-items-center justify-content-between bg-light py-2 px-4 mb-3">
                    <h3 class="m-0">Categories</h3>
                    <a class="text-secondary font-weight-medium text-decoration-none" href="">View All</a>
                </div>
                @foreach ( $cate as $key => $cates)
                    <div {{ $key++ }} class="position-relative overflow-hidden mb-3" style="height: 80px;">
                        <img class="img-fluid w-100 h-100" src="img/cat-500x80-1.jpg" style="object-fit: cover;">

                        <a href="{{ url('cate_wise_post', $cates->id) }}" class="overlay align-items-center justify-content-center h4 m-0 text-white text-decoration-none">
                            {{$cates->name}}
                        </a>
                    </div>

                    @if($key == 4)
                        @break
                    @endif

                @endforeach

            </div>
        </div>
    </div>
</div>
<!-- Main News Slider End -->


<!-- Featured News Slider Start -->
<div class="container-fluid py-3">
    <div class="container">
        <div class="d-flex align-items-center justify-content-between bg-light py-2 px-4 mb-3">
            <h3 class="m-0">Featured</h3>
            <a class="text-secondary font-weight-medium text-decoration-none" href="">View All</a>
        </div>
        <div class="owl-carousel owl-carousel-2 carousel-item-4 position-relative">
            @foreach ( $posts as $post)

            <div class="position-relative overflow-hidden" style="height: 300px;">
                <img class="img-fluid w-100 h-100" src="/uploads/demo/{{($post->image)}}" style="object-fit: cover;">
                <div class="overlay">
                    <div class="mb-1" style="font-size: 13px;">


                        <a class="text-white" href="">{{$post->cate->name}}</a>

                        <span class="px-1 text-white">/</span>
                        {{-- <a class="text-white" href="">January 01, 2045</a> --}}
                        <a class="text-white" href="">{{$post->created_at->format('M-d-Y')}}</a>
                    </div>
                    <a class="h4 m-0 text-white" href="{{ url('post-view',$post->id) }}">{{ Str::words($post->title, 4) }}</a>
                </div>
            </div>
            @endforeach

        </div>
    </div>
</div>
</div>
<!-- Featured News Slider End -->


<!-- Category News Slider Start -->
<div class="container-fluid">
    <div class="container">
        <div class="row">
            @foreach ( $cate as $cat)
                <div class="col-lg-6 py-3">
                    <div class="bg-light py-2 px-4 mb-3">
                        <h3 class="m-0">{{ $cat->name }}</h3>
                    </div>
                    <div class="owl-carousel owl-carousel-3 carousel-item-2 position-relative">
                        @foreach (App\Models\Post::where('cate_id', $cat->id)->get() as $post)
                            <div class="position-relative">
                            <img class="img-fluid w-100" src="{{ asset('uploads/demo/'.$post->image) }}" style="object-fit: cover; width: 100px; height: 175px;">
                                <div class="overlay position-relative bg-light">
                                    <div class="mb-2" style="font-size: 13px;">
                                        <a href="#">{{ $cat->name }}</a>
                                        <span class="px-1">/</span>
                                        <span>{{ $post->created_at->format('M-d-Y') }}</span>
                                    </div>
                                    <a class="h4 m-0" href="{{ url('post-view',$post->id) }}">{{ Str::words($post->title, 7) }}</a>
                                </div>
                            </div>
                        @endforeach


                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>
</div>
<!-- Category News Slider End -->



<!-- Category News Slider End -->


<!-- News With Sidebar Start -->
<div class="container-fluid py-3">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="row mb-3">
                    <div class="col-12">
                        <div class="d-flex align-items-center justify-content-between bg-light py-2 px-4 mb-3">
                            <h3 class="m-0">Popular</h3>
                            <a class="text-secondary font-weight-medium text-decoration-none" href="">View All</a>
                        </div>
                    </div>

                    @foreach ($posts as $key=> $post)
                    <div class="col-lg-6">
                        <div class="position-relative mb-3">
                            <img class="img-fluid w-100" src="{{ asset('uploads/demo/'.$post->image) }}"  style="object-fit: cover; width: 100px; height: 175px;">
                            <div class="overlay position-relative bg-light">
                                <div class="mb-2" style="font-size: 14px;">
                                    <a href="">{{$post->cate->name}}</a>
                                    <span class="px-1">/</span>
                                    <span>{{ $post->created_at->format('M-d-Y') }}</span>
                                </div>
                                <a class="h4" href="{{ url('post-view',$post->id) }}">{{ Str::words($post->title, 7) }}</a>
                                <p class="m-0">{{ Str::words($post->description, 20) }}</p>
                            </div>
                        </div>

                            <div class="d-flex mb-3">
                                <img src="{{asset('uploads/demo/'.$post->image)}}" style="width: 100px; height: 100px; object-fit: cover;">
                                <div class="w-100 d-flex flex-column justify-content-center bg-light px-3" style="height: 100px;">
                                    <div class="mb-1" style="font-size: 13px;">
                                        <a href="">{{$post->cate->name}}</a>
                                        <span class="px-1">/</span>
                                        <span>{{$post->created_at->format('M-d-Y')}}</span>
                                    </div>
                                    <a class="h6 m-0" href="">{{Str::words($post->title,4)}}</a>
                                </div>
                            </div>
                        </div>
                        @if($key == 1)
                        @break
                        @endif

                        @endforeach

                        <div class="col-lg-6">


                        </div>


                </div>


                {{-- <div class="mb-3 pb-3">
                    <a href=""><img class="img-fluid w-100" src="{{asset('fontEnd/img/ads-700x70.jpg')}}" alt=""></a>
                </div> --}}

                <div class="row">
                    <div class="col-12">
                        <div class="d-flex align-items-center justify-content-between bg-light py-2 px-4 mb-3">
                            <h3 class="m-0">Latest</h3>
                            <a class="text-secondary font-weight-medium text-decoration-none" href="">View All</a>
                        </div>
                    </div>


                    @foreach (App\Models\Post::latest('cate_id', $cat->id)->get() as $key=> $post)                    <div class="col-lg-6">
                        <div class="position-relative mb-3">
                            <img class="img-fluid w-100" src="{{ asset('uploads/demo/'.$post->image) }}"  style="object-fit: cover; width: 100px; height: 175px;">
                            <div class="overlay position-relative bg-light">
                                <div class="mb-2" style="font-size: 14px;">
                                    <a href="">{{$post->cate->name}}</a>
                                    <span class="px-1">/</span>
                                    <span>{{ $post->created_at->format('M-d-Y') }}</span>
                                </div>
                                <a class="h4" href="{{ url('post-view',$post->id) }}">{{ Str::words($post->title, 7) }}</a>
                                <p class="m-0">{{ Str::words($post->description, 20) }}</p>
                            </div>
                        </div>

                            <div class="d-flex mb-3">
                                <img src="{{asset('uploads/demo/'.$post->image)}}" style="width: 100px; height: 100px; object-fit: cover;">
                                <div class="w-100 d-flex flex-column justify-content-center bg-light px-3" style="height: 100px;">
                                    <div class="mb-1" style="font-size: 13px;">
                                        <a href="">{{$post->cate->name}}</a>
                                        <span class="px-1">/</span>
                                        <span>{{$post->created_at->format('M-d-Y')}}</span>
                                    </div>
                                    <a class="h6 m-0" href="">{{Str::words($post->title,4)}}</a>
                                </div>
                            </div>


                    </div>
                    @if($key == 1)
                    @break
                    @endif

                    @endforeach



                    <div class="col-lg-6">


                    </div>


                </div>
            </div>

            <div class="col-lg-4 pt-3 pt-lg-0">
                <!-- Social Follow Start -->
                <div class="pb-3">
                    <div class="bg-light py-2 px-4 mb-3">
                        <h3 class="m-0">Follow Us</h3>
                    </div>
                    <div class="d-flex mb-3">
                        <a href="" class="d-block w-50 py-2 px-3 text-white text-decoration-none mr-2" style="background: #39569E;">
                            <small class="fab fa-facebook-f mr-2"></small><small>12,345 Fans</small>
                        </a>
                        <a href="" class="d-block w-50 py-2 px-3 text-white text-decoration-none ml-2" style="background: #52AAF4;">
                            <small class="fab fa-twitter mr-2"></small><small>12,345 Followers</small>
                        </a>
                    </div>
                    <div class="d-flex mb-3">
                        <a href="" class="d-block w-50 py-2 px-3 text-white text-decoration-none mr-2" style="background: #0185AE;">
                            <small class="fab fa-linkedin-in mr-2"></small><small>12,345 Connects</small>
                        </a>
                        <a href="" class="d-block w-50 py-2 px-3 text-white text-decoration-none ml-2" style="background: #C8359D;">
                            <small class="fab fa-instagram mr-2"></small><small>12,345 Followers</small>
                        </a>
                    </div>
                    <div class="d-flex mb-3">
                        <a href="" class="d-block w-50 py-2 px-3 text-white text-decoration-none mr-2" style="background: #DC472E;">
                            <small class="fab fa-youtube mr-2"></small><small>12,345 Subscribers</small>
                        </a>
                        <a href="" class="d-block w-50 py-2 px-3 text-white text-decoration-none ml-2" style="background: #1AB7EA;">
                            <small class="fab fa-vimeo-v mr-2"></small><small>12,345 Followers</small>
                        </a>
                    </div>
                </div>
                <!-- Social Follow End -->

                <!-- Newsletter Start -->
                <div class="pb-3">
                    <div class="bg-light py-2 px-4 mb-3">
                        <h3 class="m-0">Newsletter</h3>
                    </div>
                    <div class="bg-light text-center p-4 mb-3">
                        <p>Aliqu justo et labore at eirmod justo sea erat diam dolor diam vero kasd</p>
                        <div class="input-group" style="width: 100%;">
                            <input type="text" class="form-control form-control-lg" placeholder="Your Email">
                            <div class="input-group-append">
                                <button class="btn btn-primary">Sign Up</button>
                            </div>
                        </div>
                        <small>Sit eirmod nonumy kasd eirmod</small>
                    </div>
                </div>
                <!-- Newsletter End -->

                <!-- Ads Start -->
                <div class="mb-3 pb-3">
                    <a href=""><img class="img-fluid" src="{{asset('fontEnd/img/news-500x280-4.jpg')}}" alt=""></a>
                </div>
                <!-- Ads End -->

                <!-- Popular News Start -->
                <div class="pb-3">
                    <div class="bg-light py-2 px-4 mb-3">
                        <h3 class="m-0">Tranding</h3>
                    </div>
                    @foreach ($posts as $key=> $post)
                    <div {{$key++}} class="d-flex mb-3">
                        <img src="{{asset('uploads/demo/'.$post->image)}}" style="width: 100px; height: 100px; object-fit: cover;">
                        <div class="w-100 d-flex flex-column justify-content-center bg-light px-3" style="height: 100px;">
                            <div class="mb-1" style="font-size: 13px;">
                                <a href="">{{$post->cate->name}}</a>
                                <span class="px-1">/</span>
                                <span>{{$post->created_at->format('M-d-Y')}}</span>
                            </div>
                            <a class="h6 m-0" href="{{ url('post-view',$post->id) }}">{{Str::words($post->title,5)}}</a>
                        </div>
                    </div>
                    @if($key == 3)
                    @break
                    @endif
                    @endforeach


                </div>
                <!-- Popular News End -->

                <!-- Tags Start -->
                <div class="pb-3">
                    <div class="bg-light py-2 px-4 mb-3">
                        <h3 class="m-0">Tags</h3>
                    </div>
                    <div class="d-flex flex-wrap m-n1">
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Politics</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Business</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Corporate</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Sports</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Health</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Education</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Science</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Technology</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Foods</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Entertainment</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Travel</a>
                        <a href="" class="btn btn-sm btn-outline-secondary m-1">Lifestyle</a>
                    </div>
                </div>
                <!-- Tags End -->
            </div>
        </div>
    </div>
</div>
</div>
<!-- News With Sidebar End -->


@endsection
