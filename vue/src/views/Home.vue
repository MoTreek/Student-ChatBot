<template>
  


    <div class="Main">
  

      <div class="MainBox">
       
        <h1 id="Welcome">Welcome to Betta Bot, {{ this.$store.state.user.username }}</h1>
        <h1 id="Quote">{{ this.quote }}</h1>
        <quote-component />
       
        <chat-box/>  

      </div>

      
    </div>
 
</template>

<script>
import ChatBox from '../components/ChatBox.vue';



import QuoteComponent from "../components/QuoteComponent.vue";

export default {
  name: "home",
 

  components: {
    QuoteComponent,
    
    ChatBox,
 
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap");

h1 {
  color: white;
  
}

html{
  background-color: linear-gradient(rgb(0, 195, 255), rgb(74, 152, 216));
}

.home {
  font-family: "Quicksand", sans-serif;
  color: #69d2e7;
  background-color: #f0e6de;
}

  
  .MainBox {
  background-image: linear-gradient(#A7DBD8, rgb(95, 136, 182)); 
  border-color: #a7dbd8;
  border-radius: 25px;
  text-align: center;
  font-family: "Quicksand", sans-serif;
  height: 100%;
  padding-left: 25px;
  padding-right: 25px;
  
}

.job{
  font-size: 10px
}


</style>

