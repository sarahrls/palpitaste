<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<!-- header section starts  -->
<?php include 'components/user_header.php'; ?>
<!-- header section ends -->

<div class="heading">


   <h3 class="heading"> About Palpitaste </h3>
         <p> Our goal has always been to provide each customer with exactly that. With great tasting coffees from around the world from intense aromas to creamy textures we are here to show you that our coffee can cure all your tension. One sip at a time. At PALPITASTE, we provide you with delightfully delicious coffee which is prepared specially for each and every customer. Browse our collection and stop by to try them for yourself.</p>
</div>

<!-- about section starts  -->

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/coffee1.png" alt="">
      </div>

      <div class="content">
    
           <h3>Mission</h3>
         <p>To bring back FILIPINO values by being an innovative coffee business model that is sustainable, honest, fair and passionate.</p>
          
        <h3>Vision</h3>
         <p>To be the best Cafe chain by an offering a world class coffee experience at affordable prices.</p>
         <a href="menu.php" class="btn">our menu</a>
      </div>

   </div>

</section>

<!-- about section ends -->

<!-- steps section starts  -->

<section class="steps">

   <h1 class="title">Best Seller</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/expresso.png" alt="">
         <h3>Coffee</h3>
         <p>The expresso is our best seller coffe, as of the taste and cream.</p>
      </div>

      <div class="box">
         <img src="images/dessert.png" alt="">
         <h3>Dessert</h3>
         <p>The frappe for the drinks is the best seller in our dessert category.</p>
      </div>

      <div class="box">
         <img src="images/pasta.png" alt="">
         <h3>Food</h3>
         <p>The italian version of our pasta is the best when it comes to the taste.</p>
      </div>

   </div>

</section>

<!-- steps section ends -->

<!-- reviews section starts  -->

<section class="reviews">

   <h1 class="title">Team</h1>

   <div class="swiper reviews-slider">

      <div class="swiper-wrapper">

         <div class="swiper-slide slide">
        
            <img src="images/jane.jpg" alt="">
            <p> Name: Jane
                <br> Age: 21 years old
                <br> Position: Team Leader and Programmer
                 </p>
             
         
            <h3> Mary Jane Bayod</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/irene.jpg" alt="">
            <p> Name: Irene 
                <br> Age: 22 Years old
                <br> Position: Programmer </p>
           
            <h3>Irene Crampatanta</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/mark.jpg" alt="">
             <p> Name: Mark 
                <br> Age: 22 Years old
                <br> Position: Researcher </p>
           
            <h3> Mark Steven Flores</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/tonet.jpg" alt="">
             <p> Name: Tonet 
                <br> Age: 22 Years old
                <br> Position: Researcher 
                </p>
           
            <h3>Ma.Antonette Mendiola</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/sarah.jpg" alt="">
             <p> Name: Sarah 
                <br> Age: 22 Years old
                <br> Position: System Design and Programmer  </p>
          
            <h3>Sarah Rose Sison</h3>
         </div>

      </div>
    
      <div class="swiper-pagination"></div>

   </div>

</section>

<!-- reviews section ends -->



















<!-- footer section starts  -->
<?php include 'components/footer.php'; ?>
<!-- footer section ends -->=






<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   grabCursor: true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
      slidesPerView: 1,
      },
      700: {
      slidesPerView: 2,
      },
      1024: {
      slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>