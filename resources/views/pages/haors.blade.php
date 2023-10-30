@extends('layouts.home')
@section('content')

<main id="primary" class="site-main">

    <!-- start: Page Headings -->
    <section class="page-headings" data-bg-image="/assets/images/hero/page-heading.jpg">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="page_heading_content text-center">
              <h1 class="title">All Haors List</h1>
              <div class="page_heading_info">
                <span>Total Haors {{ @$total_haor }}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- end: Page Headings -->
    
    <!-- start: More Haors -->
    <section class="more-haors">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="section_title text-center">
              <h4 class="title">Haors</h4>
            </div>
          </div>
        </div>
        <div class="row justify-content-center">
          <div class="col-lg-10">
            <div class="haor_lists">
              <ul>
              @foreach ($haor_items ?? array() as $item)
                <li><a href="/haor-detail/{{ @$item['id'] }}">{{ @$item['name'] }}</a></li>
              @endforeach
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- end: More Haors -->


</main>

@stop