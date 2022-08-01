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
</style>
<section class="section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="heading">{{@$privacy_policy_title}}</h2>
                {!! @$privacy_policy_content !!}
            </div>
        </div>
        
    </div>
</section>

@stop