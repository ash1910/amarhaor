@extends('layouts.default')
@section('content')

<style>
  #compare{
  display:none
  }
  .slider-container {
    height: 550px;
  }
  .h2, h2 {
    font-size: 1.5rem;
  }
  html body a{
    color: #1d2124;
  }
</style>
<section class="section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="heading">{{@$cookie_policy_title}}</h2>
                {!! @$cookie_policy_content !!}
            </div>
        </div>
        
    </div>
</section>

@stop