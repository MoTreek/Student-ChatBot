<template>
  <div class="home">
    <h1>Home </h1>

    <p>{{this.quote}}</p>
    <p>Welcome {{this.$store.state.user.username}}</p>
    <motivation-component />
  </div>
</template>

<script>

import MotivationComponent from '../components/MotivationComponent.vue'

export default {
  name: "home",

  components: {
      MotivationComponent
  }
};
</script>
