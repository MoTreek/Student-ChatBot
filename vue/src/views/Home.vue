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

    HelpComponent