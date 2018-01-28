    </div>
  </main>
  <script>
  $(document).ready(function(){
	//external jQuery library for showing album pictures on modal
    $(document).on('click', '[data-toggle="lightbox"]', function(event) {
        event.preventDefault();
        $(this).ekkoLightbox();
    });
	//jQuery code for navigation active tabs
    $(".nav.navbar-nav li").removeClass("active");
    var loc = document.location.href;
    loc = loc.split("#");
    if(loc.length > 1){
      $(".nav.navbar-nav li").each(function(){
        if($(this).find("a").text().toLowerCase() == loc[1]) $(this).addClass("active");
      });
    }
    else $(".nav.navbar-nav li").eq(0).addClass("active");
  });
  </script>
</body>
</html>
