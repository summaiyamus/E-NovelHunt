<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="ENovelHunt.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
           body {
  padding: 5px;
  background: #ddc0db;
 
}

.about-container {
   display: flex;
     flex-direction: row;
     justify-content: center;

  align-items: stretch;
}
.about-container > div {
     background-color: #e0b1cb;
opacity:1.8;
box-shadow: 8px 5px 15px  #512d38;
border-radius:20px;
  color: #512d38;
  margin: 10px;
  text-align: center;
  line-height: 25px;
  font-size: 20px;
}
.about {
  text-align: center;
  font-weight: bold;
  text-shadow: 10px 10px 10px #512d38;
  font-family: 'Courgette', cursive;
  font-size: 3.5em;
  padding:50px;
  padding-top: 150px;
  white-space: nowrap;
  overflow:visible;
  text-overflow: ellipsis;

}
.about-content {
    font-size:large;
    font-style:italic;
  padding: 20px;
  max-width: 50%; /* Adjust the max-width value to control the width of the "about-content" */
}

        @media screen and (max-width: 700px) {
            .about-container {
                flex-direction: column;
            }
        }


      
        /*mission*/


        
.mission-container {
   display: flex;
     flex-direction: row-reverse;
     justify-content: center;
       align-content: space-around;

  align-items: stretch;
}
.mission-container > div {
     background-color: #896978;
box-shadow: 8px 5px 15px  #512d38;
border-radius:20px;
  color: #f4bfdb;
  margin: 10px;
  text-align: justify;
  line-height: 25px;
  font-size: 20px;
}
.mission {
  text-align: center;
  font-weight: bold;
  text-shadow: 10px 10px 10px #512d38;
  font-family: 'Courgette', cursive;
  font-size: 40px;
  padding:50px;
  padding-top: 150px;
  white-space: nowrap;
  overflow:visible;
  text-overflow: ellipsis;

}
.mission-content {
    font-size:large;
    font-style:italic;
  padding: 40px;
  max-width: 50%; /* Adjust the max-width value to control the width of the "about-content" */
}

        @media screen and (max-width: 700px) {
            .mission-container {
                flex-direction: column;
            }
        }

/*contactus*/

.contact-form {
  margin-top: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.contact-form label {
  display: block;
  margin-bottom: 5px;
}

.contact-form textarea {
  width: 70%;
  height: 100px;
  padding: 10px;
  background: #f4bfdb;
  border: none;
  border-radius: 10px;
  box-shadow: 8px 5px 15px #f4bfdb;
  outline: none; /* Remove the border when clicked */
}

.contact-form button {
      background-color: #512d38;

  padding: 10px 20px;
  border: none;
  border-radius: 10px;
  cursor: pointer;
  margin-top: 10px; /* Add margin to separate the button from the textarea */
  font-size: 30px; /* Increase the button font size */
}

.contact-form button:hover {
  background-color: #b27092;
  padding-left:30px;
    padding-right:30px;

}
.contact-form label ,h2 {
    font-weight: bold;
    font-size:30px;
  text-shadow: 10px 10px 10px #512d38;
  font-family: 'Courgette', cursive;
}
#contact{
    background:#512d38;
    color:#f4bfdb;
      font-family: 'Courgette', cursive;
      padding:30px;
      font-size:20px;
    box-shadow: 8px 5px 15px  #512d38;
border-radius:20px;

}
 #contact a:hover {
            font-size: 1.7em;
            color: #f4bfdb;
             font-weight:bold;

        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <br />

 <section>

                
<div class="about-container">
  <div class="about"> <h1>About Us <br /> E-Novel Hunt</h1></div>
  <div class="about-content">
      <h3>Welcome to E-Novel Hunt!</h3>
  <p>At E-Novel Hunt, we are passionate about bringing the joy of reading to book enthusiasts worldwide. Our platform provides a vast collection of novels from various genres, offering an immersive reading experience.</p>
  <p>With our user-friendly interface, you can easily browse through an extensive library, discover new authors, and dive into captivating stories. Whether you prefer romance, fantasy, thriller, or any other genre, we have something for everyone.</p>
  <p>Our mission is to foster a community of book lovers, connecting readers with their favorite authors and creating a platform that celebrates the beauty of storytelling. We strive to make reading accessible, convenient, and enjoyable for readers of all ages.</p>
  <p>Join us on this literary adventure and embark on a journey through the pages of captivating novels. Start exploring our collection today and let your imagination soar!</p></div>
</div>
    <br /> <br /><br />
  <div  class="mission-container">
  <div class="mission" style="align-self: center"><h2>Mission and Vision</h2></div>
  <div class="mission-content"><p>At E-Novel Hunt, our mission is to revolutionize the way people discover and experience the world of novels. We are committed to providing a platform that connects readers with captivating stories and empowers authors to share their work with a global audience.</p>
  <p>Our vision is to create a thriving community of book lovers, where individuals can indulge in their passion for reading, explore diverse genres, and connect with like-minded individuals. We aim to foster a love for literature and inspire a lifelong journey of learning and imagination.</p>
  <p>Our goals are centered around:</p>
  <ul>
    <li>Curating a vast and diverse collection of novels from various genres, ensuring there is something for every reader.</li>
    <li>Creating a seamless and intuitive platform that provides a user-friendly browsing and reading experience.</li>
    <li>Supporting and promoting talented authors, helping them reach a wider audience and establish meaningful connections with readers.</li>
    <li>Encouraging active engagement and interaction among our community members through discussions, reviews, and recommendations.</li>
    <li>Continuously improving and expanding our platform to meet the evolving needs and preferences of our readers and authors.</li>
  </ul>
  <p>With our unwavering commitment to quality, innovation, and a shared love for literature, we are dedicated to being a premier destination for novel enthusiasts worldwide.</p>
</div></div>



<br /> <br /> <br />

     <div class="about-container">
         <div class="about" style="align-self: center">
             <h2>Testimonials</h2>
         </div>
          <div class="about-content"> <blockquote>
                <p>"E-Novel Hunt has completely transformed my reading experience. I love the curated book recommendations and the active community."</p>
                <cite>John Smith</cite>
              </blockquote>
            </div>
     </div>

     
  <br /><br />

<section id="contact" >
  <h2>Contact Us</h2>
  <p>Get in touch with us for any questions, feedback, or collaboration opportunities.</p>
  <ul>
    <li>Email: info@enovelhunt.com</li>
    <li>Phone: 123-456-7890</li>
    <li>Follow us on social media: <a href="https://twitter.com/enovelhunt">Twitter</a>, <a href="https://www.facebook.com/enovelhunt">Facebook</a>, <a href="https://www.instagram.com/enovelhunt">Instagram</a></li>
  </ul>
  
  <div class="contact-form">
    <label for="message">Send Your Feedback:</label>
      <br />
    <textarea id="message" name="message" rows="4" cols="40" placeholder="Enter your message"></textarea>
      <br />
    <button type="submit">Send</button>
  </div>
</section>

       <br />
     <br />

 </section>
</asp:Content>







