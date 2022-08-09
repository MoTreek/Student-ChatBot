<template>
  <div id="help">
    <form>
      <!--   v-on:click='getHelp' -->
      <input type="text" text="Type Here" v-model="userInput" @keyup.enter="getHelp()" >
      <!-- Add Styling for button -->
      <button class="btn" type="submit" v-on:click.prevent="getHelp()">
        Submit
      </button>
      <h1 v-if="isHelpStringNeeded === true">{{ this.helpString }}</h1>
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      name: "",
      userInput: "",
      //Todo Change the String to actually be helpful
      helpString:
        "Hello, " + this.$store.state.user.username + " This is how you use me! Enter a command and I will provide help",
      isHelpStringNeeded: false,
    };
  },
  methods: {
    getHelp() {
      if (this.userInput.includes("Help",) || this.userInput.includes("help",)) {
        this.isHelpStringNeeded = true;
      } else {
        this.isHelpStringNeeded = false;
      }
    },
  },
};
</script>


<style scoped>
input[type="text"] {
  background-color: #A7DBD8;
  border: 10px solid #E0E4CC;
  border: #69d2e7;
  border-radius: 10px;
}
.btn {
  
  border-radius: 10px;
}
</style>