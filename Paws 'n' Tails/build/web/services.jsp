
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <html lang="en">
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="directory/servcss.css" type="text/css">
 <link rel="stylesheet" type="text/css" href="directory/normalize.css">
<link rel="stylesheet" type="text/css" href="directory/styles.css">
 <script src="scripts/jquery.js"></script>
	
		<script src="scripts/modernizr.js"></script>

  
    </head>
    
    <body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">Paws 'n' Tails</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
   
             
                <li class="active">
                <li><a href="${pageContext.request.contextPath}/About.jsp">About Us</a></li>
                <li><a href="${pageContext.request.contextPath}/Feedback.jsp">Feedback</a></li>
                <li><a href="${pageContext.request.contextPath}/Contact.jsp">Contact Us</a></li>
                
                
            </ul>   
         
  
  </div>
</nav>
               
                
                <div class="container">
                    <div class="row container secondsection">
                         <div class="col-md-6 firstsection">
                
        
         <div class="servicestitle">
             <h2>
                 Services
                           </h2>
       </div>
        
        <div class="petstitle">
            <h4>
              Pets  
              
            </h4>
            
            
        </div>
                         
                            
                             
                             <div class="spacebetween">
                                 <hr>
                             </div>
        <div class="product clear">
			<header>
				<hgroup>
					<h1>Golden Labrador</h1>
					<h4>The most amazing dog yet.</h4>
				</hgroup>
			</header>
			<figure>
				<img src="directory/GoldenLabrador.jpg">
			</figure>
            
			<section>
                             <center>
				<p>He'll follow you just about anywhere.
An hour at the park with a Lab might help explain why he’s got the best pillow in the house in millions of Indian homes. With enough energy for the busiest family and a heart as big as his otter-like tail, the typical Labrador brings a spark to any gathering.</p>
				<details>
					<summary>Characteristics</summary>
						<ul>
							<li>Is large and bouncy, with an enthusiastic attitude toward life</li>
							<li>Has a short easy-care coat</li>
							<li>Has a cheerful, tail-wagging nature</li>
							<li>Thrives on exercise and athletic activities</li>
							<li>Is steady-tempered and dependable with everyone</li>
							<li>Is peaceful with other animals</li>
                                                        <li>Rs 7000</li>
                                                </ul>
				</details>
            </center>
            
				<form class="form-horizontal"  method="POST" action="log.jsp" name="Registration">
                                  
        <div class="row container">
       <div class="col-md-6 text-center ">
        <br>
        <div class="buttonforward">
            <button type="submit" class="btn btn-success " >Buy</button>
            
       </div>
        </div>
        </div>
			</section>
            
		</div>
		<script>
			if ($('html').hasClass('no-details')) {
				
				var summary = $('details summary');

				summary.siblings().wrapAll('<div class="slide"></div>');

				$('details:not(.open) summary').siblings('div').hide();

				summary.click(function() { 
					$(this).siblings('div').toggle();
	          			$('details').toggleClass('open');
       			});
			 }
		</script>
</form>
            
                
                 <div class="product clear">
			<header>
				<hgroup>
					<h1>German Shepherd</h1>
					<h4>Family. Friend. Defender.</h4>
				</hgroup>
			</header>
			<figure>
				<img src="directory/GermanShepherd.jpg">
			</figure>
                    
			<section>
                             <center>
				<p>The noble German Shepherd. From the way he struts to the way he guards his owners, there's something very safe and loving about this breed. We already knew they make great pets ... Do you?</p>
				<details>
					<summary>Characteristics</summary>
						<ul>
							<li>Is strong, athletic, and natural-looking</li>
							<li>Thrives on challenging activities and exercise</li>
							<li>Looks stern and imposing, so makes an effective deterrent</li>
                                                        <li>Is exceptionally intelligent, loyal, and versatile -- when well-socialized and well-trained, can learn and do almost anything</li>
                                                        <li>Rs. 8500</li>
                                                </ul>
                                        
				</details>
                             </center>
				<form class="form-horizontal"  method="POST" action="log.jsp" name="Registration">
        
       <div class="row container">
       <div class="col-md-6 text-center ">
        
        <br>
       <div class="buttonforward">
           
            <button type="submit" class="btn btn-success" >Buy</button>
           
       </div>
       </div>
        </div>
			</section>
		</div>
		<script>
			if ($('html').hasClass('no-details')) {
				
				var summary = $('details summary');

				summary.siblings().wrapAll('<div class="slide"></div>');

				$('details:not(.open) summary').siblings('div').hide();

				summary.click(function() { 
					$(this).siblings('div').toggle();
	          			$('details').toggleClass('open');
       			});
			 }
		</script>
</form>
                                
                                   <div class="product clear">
			<header>
				<hgroup>
					<h1>Beagle</h1>
					<h4>Finders. Keepers.</h4>
				</hgroup>
			</header>
			<figure>
				<img src="directory/Beagle.jpg">
			</figure>
			<section>
                            <center>
				<p>Beagles are known for their overall good health and single tracked mind. They like to follow their noses and see where it leads them. This can make them difficult to train but it is not impossible.</p>
				<details>
					<summary>Characteristics</summary>
						<ul>
							<li>Is conveniently-sized, sturdy, and athletic</li>
							<li>Is completely natural in appearance</li>
							<li>Has a short easy-care coat</li>
                                                        <li>Loves exercise, play, and outdoor activities</li>
                                                        <li>Is good-natured and peaceful with everyone</li>
                                                        
                                                        <li>Rs. 7000</li>
                                                </ul>
				</details>
                            </center>
				<form class="form-horizontal"  method="POST" action="log.jsp" name="Registration">
        
        <div class="row container">
       <div class="col-md-6 text-center ">
        
        
        <br>
       <div class="buttonforward">
           
            <button type="submit" class="btn btn-success" >Buy</button>
           
       </div>
       </div>
        </div>
			</section>
		</div>
		<script>
			if ($('html').hasClass('no-details')) {
				
				var summary = $('details summary');

				summary.siblings().wrapAll('<div class="slide"></div>');

				$('details:not(.open) summary').siblings('div').hide();

				summary.click(function() { 
					$(this).siblings('div').toggle();
	          			$('details').toggleClass('open');
       			});
			 }
		</script>
</form>
                                
                                   <div class="product clear">
			<header>
				<hgroup>
					<h1>Persian</h1>
					<h4>A purrfect companion. For one.</h4>
				</hgroup>
			</header>
			<figure>
				<img src="directory/PersianCat.jpg">
			</figure>
                                       <center>
			<section>
				<p>An old breed, it shall come to no surprise To those who love this elegant cat whose origins lies in the cradle of civilization.</p>
				<details>
					<summary>Characteristics</summary>
						<ul>
							<li>Tendency to Vocalize</li>
							<li>Kid Friendly</li>
							<li>Potential for Playfulness</li>
                                                        <li>Affectionate with Family</li>
                                                        <li>Rs. 9500</li>
                                                </ul>
                                </details>
                                       </center>
				<form class="form-horizontal"  method="POST" action="log.jsp" name="Registration">
        
        
        <div class="row container">
       <div class="col-md-6 text-center ">
        
        
        <br>
       <div class="buttonforward">
           
            <button type="submit" class="btn btn-success" >Buy</button>
           
       </div>
       </div>
        </div>
			</section>
		</div>
		<script>
			if ($('html').hasClass('no-details')) {
				
				var summary = $('details summary');

				summary.siblings().wrapAll('<div class="slide"></div>');

				$('details:not(.open) summary').siblings('div').hide();

				summary.click(function() { 
					$(this).siblings('div').toggle();
	          			$('details').toggleClass('open');
       			});
			 }
		</script>
</form>
                                
                                   <div class="product clear">
			<header>
				<hgroup>
					<h1>Siamese</h1>
					<h4></h4>
				</hgroup>
			</header>
			<figure>
				<img src="directory/Siamese.jpg">
			</figure>
                                       <center>
			<section>
				<p>A long, elegant cat, who is not only beautiful, but also highly intelligent. An affectionate cat that requires her parent to be as dedicated to herself.</p>
				<details>
					<summary>Characteristics</summary>
						<ul>
							<li>Known for being very social and loving.</li>
							<li>Very intelligent, which makes them easy to train</li>
							<li>very healthy animals, and live a long life of around 15-20 years. </li>
                                                        <li>Temperament is affectionate, calm, loyal and full of character.</li>
                                                        <li>Rs. 5000</li>
                                                </ul>
				</details>
                                       </center>
				<form class="form-horizontal"  method="POST" action="log.jsp" name="Registration">
        
      <div class="row container">
       <div class="col-md-6 text-center ">
        
        <br>
       <div class="buttonforward">
           
            <button type="submit" class="btn btn-success" >Buy</button>
           
       </div>
       </div>
        </div>
			</section>
		</div>
		<script>
			if ($('html').hasClass('no-details')) {
				
				var summary = $('details summary');

				summary.siblings().wrapAll('<div class="slide"></div>');

				$('details:not(.open) summary').siblings('div').hide();

				summary.click(function() { 
					$(this).siblings('div').toggle();
	          			$('details').toggleClass('open');
       			});
			 }
		</script>
</form>
                                
                                  <div class="petstitle">
            <h4>
              Accessories
              
            </h4>
            
            
        </div>
        <div class="spacebetween">
                                 <hr>
                             </div>     
                    <div class="product clear">
			<header>
				<hgroup>
					<h1>Chester</h1>
					<h4></h4>
				</hgroup>
			</header>
			<figure>
				<img src="directory/Chester.jpg">
			</figure>
                        <center>
			<section>
				<p></p>
				<details>
					<summary>Characteristics</summary>
						<ul>
							<li>Classically designed collar with oval cut outs revealing brown leather underlay.</li>
							<li>Real leather. </li>
							<li>Adjustable collar with contour quick release buckle and solid d ring.</li>
                                                        <li>Machine washable.</li>
                                                        <li>Rs. 5000</li>
                                                </ul>
				</details>
                        </center>
				<form class="form-horizontal"  method="POST" action="log.jsp" name="Registration">
        
        <div class="row container">
       <div class="col-md-6 text-center ">
        
        <br>
       <div class="buttonforward">
           
            <button type="submit" class="btn btn-success" >Buy</button>
           
       </div>
       </div>
        </div>
			</section>
		</div>
		<script>
			if ($('html').hasClass('no-details')) {
				
				var summary = $('details summary');

				summary.siblings().wrapAll('<div class="slide"></div>');

				$('details:not(.open) summary').siblings('div').hide();

				summary.click(function() { 
					$(this).siblings('div').toggle();
	          			$('details').toggleClass('open');
       			});
			 }
		</script>
</form>
                   
                                      <div class="product clear">
			<header>
				<hgroup>
					<h1>Calibra</h1>
					<h4></h4>
				</hgroup>
			</header>
			<figure>
				<img src="directory/Calibra.jpg">
			</figure>
                                          <center>
			<section>
				<p></p>
				<details>
					<summary>Characteristics</summary>
						<ul>
							<li>Dry dog and cat food of veterinary diets.</li>
							<li>Super premium canned food line for dogs and cats.</li>
							<li>Meat treats for cats and dental treats for dogs.</li>
                                                        <li>Timeless, high quality packaging.</li>
                                                        <li>Rs. 6000</li>
                                                </ul>
				</details>
                                          </center>
				<form class="form-horizontal"  method="POST" action="log.jsp" name="Registration">
        
     <div class="row container">
       <div class="col-md-6 text-center ">
        
        <br>
       <div class="buttonforward">
           
            <button type="submit" class="btn btn-success" >Buy</button>
           
       </div>
       </div>
        </div>
			</section>
		</div>
		<script>
			if ($('html').hasClass('no-details')) {
				
				var summary = $('details summary');

				summary.siblings().wrapAll('<div class="slide"></div>');

				$('details:not(.open) summary').siblings('div').hide();

				summary.click(function() { 
					$(this).siblings('div').toggle();
	          			$('details').toggleClass('open');
       			});
			 }
		</script>
                                      
</form>
                                          
       <div class="product clear">
			<header>
				<hgroup>
					<h1>Simplicity Plus</h1>
					<h4></h4>
				</hgroup>
			</header>
			<figure>
				<img src="directory/Simplicityplus.jpg">
			</figure>
                                          <center>
			<section>
				<p></p>
				<details>
					<summary>Characteristics</summary>
						<ul>
							<li>Specially formulated with a pleasing natural fresh scent.</li>
							<li>Baking soda for long lasting odour control.</li>
							<li>Contains only premium, earth friendly ingredients.</li>
                                                        <li>Easy waste removal.</li>
                                                        <li>Rs. 2500</li>
                                                </ul>
				</details>
                                          </center>
				<form class="form-horizontal"  method="POST" action="log.jsp" name="Registration">
        
     <div class="row container">
       <div class="col-md-6 text-center ">
        
        <br>
       <div class="buttonforward">
           
            <button type="submit" class="btn btn-success" >Buy</button>
           
       </div>
       </div>
        </div>
			</section>
		</div>
		<script>
			if ($('html').hasClass('no-details')) {
				
				var summary = $('details summary');

				summary.siblings().wrapAll('<div class="slide"></div>');

				$('details:not(.open) summary').siblings('div').hide();

				summary.click(function() { 
					$(this).siblings('div').toggle();
	          			$('details').toggleClass('open');
       			});
			 }
		</script>
                  
</form>
                                    </div>
                    </div>        
                                      </div>                                
    
	</body>
</html>