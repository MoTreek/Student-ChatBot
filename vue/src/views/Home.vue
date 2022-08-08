<template>
  <div class="home">
    <h1>Home </h1>

    <p>{{this.quote}}</p>
    <p>Welcome {{this.$store.state.user.username}}</p>
    
    <motivation-component />
    <help-component/>
  </div>
</template>

<script>
import HelpComponent from '../components/HelpComponent.vue';

import MotivationComponent from '../components/MotivationComponent.vue'

export default {
  name: "home",

  components: {
      MotivationComponent,
      HelpComponent
  }
};
</script>

<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap');
.home { 
    font-family:'Quicksand', sans-serif;
    color: #69D2E7;
    background-color: #f0e6de;
}
</style>

