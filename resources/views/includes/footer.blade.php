<footer class="footer  wow fadeInUp">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center">
                <a href="/"><img src="{{ url(@$footer_logo ?? '')}}" class="footer-logo img-fluid" /></a>
                <ul class="footer-menu listarrow">
                  @foreach ($footer_link_items ?? array() as $key=>$item)
                    <li><a href="{{ @$item['url'] }}">{{ @$item['text'] }}</a></li>
                    @if( count($footer_link_items) != ($key + 1) ) 
                    <span class="dvdr">|</span>
                    @endif
                  @endforeach
                </ul>
                <ul class="socialmedia-icons">
                  @foreach ($social_media_menu_items ?? array() as $item)
                    <li>
                        <a href="{{ @$item['url'] }}" target="_blank"><i class="fab fa-{{ @$item['icon'] }}"></i></a>
                    </li>
                  @endforeach
                </ul>

                <p class="copyright">{{@$footer_copyright_text}}</p>

            </div>

        </div>
    </div>
</footer>