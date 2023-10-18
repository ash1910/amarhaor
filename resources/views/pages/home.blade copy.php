@extends('layouts.home')
@section('content')

<section>
    <div class="container-fluid">
      @foreach ($home_content_items ?? array() as $key => $item)
        <div class="row post-container">
            <div class="col-md-6 p-0 overflow-hidden wow 
            @if($key%2 == 1)
            fadeInRight
            @else
            fadeInLeft
            @endif">
                <img src="{{ url(@$item['image'] ?? '') }}" class="img-fluid post_img">
            </div>
            <div class="col-md-6 post-text  wow 
            @if($key%2 == 1)
            fadeInLeft
            @else
            fadeInRight
            @endif">
                <div>
                    <h2 class="heading">{{ @$item['title'] }}</h2>
                    {!! @$item['text'] !!}
                    <p class="post-addr">
                      <a target="_blank" href="{{ @$item['url'] }}" style="@if($key%2 == 1)color: #1d2124;@endif">More Info</a>
                    </p>
                </div>
            </div>
        </div>
      @endforeach
        
    </div>
</section>

@stop