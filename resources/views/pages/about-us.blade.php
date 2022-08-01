@extends('layouts.home')
@section('content')

<section>
    <div class="container-fluid">
      @foreach ($about_content_items ?? array() as $key => $item)
        <div class="row post-container" >
            <div class="col-md-6 p-0 overflow-hidden wow fadeInLeft">
                <img src="{{ url(@$item['image'] ?? '') }}" class="img-fluid post_img">
            </div>
            <div class="col-md-6 post-text  wow fadeInRight">
                <div>
                    <p>{{ @$item['text'] }}</p>
                </div>
            </div>
        </div>
      @endforeach
    </div>
</section>

@stop