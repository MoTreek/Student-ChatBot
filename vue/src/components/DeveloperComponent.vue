<template>
<div class = 'flex'> 
<div class="row">
  <div class="column">
    <div class="DevCard">
      <img src=".\Treek_Headshot (2).jpg" alt="Mohamed" style="width:auto" height="130px">
      <div class="container">
        <h2>Mohamed Treek</h2>
        <p class="title"> Developer</p>
        <p>Ehhhh he's alright - Mohamed</p>
        <p> - Seung</p>
        <p> Mohamed never fails to make the team laugh and knows how to stay calm when an issue arises. He is extremely driven and knowledgeable. - Lauren</p>
        <p> Mohamed is an individual of true vision and talent who will see success wherever he goes! - Kourtney</p>
        <p>TreekMohamed@gmail.com</p>
      
        <p><button class="button" onClick="javascript:window.open('https://www.linkedin.com/in/motreek', '_blank');" >Contact</button></p>
      </div>
    </div>
  </div>
  

  <div class="column">
    <div class="DevCard">
      <img  src=".\Seung.jpg" alt="Seung" style="width:auto" height="130px">
      <div class="container">
        <h2>Seung Kim</h2>
        <p class="title">Developer</p>
        <p>Any company worth their salt, would hire a driven, friendly, and diligent man like Seung. Looking forward to his next endeavors</p>
        <p> - Seung</p>
        <p> Throughout the project, Seung gave a meticulous attention to detail, allowing him to solve any problem he was faced with. He is an awesome team player and communicator. - Lauren</p>
        <p> Seung is a supportive teammate who excels at problem-solving! He will be an amazing asset to his future team.- Kourtney</p>
        <p>seungkuk36kim@gmail.com</p>
        
          <p><button class="button" onClick="javascript:window.open('https://www.linkedin.com/in/s36', '_blank');" >Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="DevCard">
      <img src=".\Lauren.jpg" alt="Lauren" style="width:auto" height="130px">
      <div class="container">
        <h2>Lauren Davidson</h2>
        <p class="title">Developer</p>
        <p>Watching someone be both artistically inclined and a masterful programmer is just not fair. I'm glad she was on my team for this capstone - Mohamed</p>
        <p> - Seung</p>
        <p> What an experience! Beyond grateful to have worked with this team. Everyone was able to use their strengths to pull together a working chatbot. - Lauren</p>
        <p> Lauren is awesome at creating functioning and aesthetic programs. If you want beautiful code then call her! - Kourtney</p>
        <p>Laurensaradav34@gmail.com</p>
        <p><button class="button" onClick="javascript:window.open('https://www.linkedin.com/in/lauren-davidsonn/', '_blank');" >Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="DevCard">
      <img src=".\Kourtney.jpg" alt="Kourtney" style="width:auto" height="130px">
      <div class="container">
        <h2>Kourtney Lark</h2>
        <p class="title">Developer</p>
        <p>Hardworking doesn't begin to describe her - Mohamed</p>
        <p> - Seung</p>
        <p> Kourtney has an impressive set of technical skills and the ability to see the larger picture when it comes to a project. She is never short of new ideas when it comes to solving a daunting problem. - Lauren</p>
        <p> Incredibly greateful to have worked with such an amazing group. We're developers now!- Kourtney</p>
        <p>Larkkourtney@gmail.com</p>
          <p><button class="button" onClick="javascript:window.open('https://www.linkedin.com/in/kourtneykl', '_blank');" >Contact</button></p>
      </div>
    </div>
  </div>
</div>
</div>

</template>



<style >

img {
  /* border: 5px solid black; */
  border-radius: 25px;
  /* background-color: black; */
}

.row {
    display: flex;
    align-self: flex-end;
    flex-direction: row;
    justify-content: space-evenly;
    color: white;
    font-size: 20px;
    background-color: linear-gradient(rgb(255, 255, 255), rgba(74, 152, 216, 0.753));
    height: 100vh;

}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

/* Display the columns below each other instead of side by side on small screens */
@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

/* Add some shadows to create a card effect */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  
}

/* Some left and right padding inside the container */
.container {
  padding: 0 16px;
  
}

/* Clear floats */
.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #f3853096;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

</style>
