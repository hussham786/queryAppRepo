
<!DOCTYPE html>
<html>
 <head>
  <title>Search Me</title>
  <meta name="viewreport" content="width=device-width", intial-scale=1>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap" rel="stylesheet"> 
  <style>
   body{
    background: #EAE5E5;
   }
   .container{
    margin-top: 200px;
   }
   .glyphicon-search{
    font-size: 20px;
   }
   .btn-default{
    background: #A60000;
    width: 100px;
    padding: 12.5px;
   }
   .form-control{
    padding: 25px;
    font-size: 20px;
   }
   .ml2 {
  font-weight: 900;
  font-size: 3.5em;
}

.ml2 .letter {
  display: inline-block;
  line-height: 1em;
}
  </style>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

  </head>
  <body>
   <div class="container">
    <h1 class="ml2" style="font-size: 125px; color: #A60000; font-family: 'Dancing Script', cursive;">QUORAAAA.....
    </h1>

    <form>
     <div class="input-group">
     <input type="text" class="form-control" placeholder="Search" name="search">
     <div class="input-group-btn">
     <button class="btn btn-default" type="submit">
     <i class="glyphicon glyphicon-search"></i></button>
    </div>
   </div>

    </form>

   </div>

  </body>
 </head>
</html> 
<script type="text/javascript">
  // Wrap every letter in a span
$('.ml2').each(function(){
  $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
});

anime.timeline({loop: true})
  .add({
    targets: '.ml2 .letter',
    scale: [4,1],
    opacity: [0,1],
    translateZ: 0,
    easing: "easeOutExpo",
    duration: 950,
    delay: function(el, i) {
      return 70*i;
    }
  }).add({
    targets: '.ml2',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1000
  });
</script>