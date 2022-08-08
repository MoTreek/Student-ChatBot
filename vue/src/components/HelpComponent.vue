<template>
    <div id= "help">
        <form>
            <!--   v-on:click='getHelp' -->
            <input type = "text" v-model='userInput' @keyup.enter="getHelp()" />
        <!-- Add Styling for button -->
            <button type="submit" v-on:click.prevent="getHelp()">Submit</button>
            <h1 v-if="isHelpStringNeeded === true">{{this.helpString}}</h1>
            </form>
    </div>
</template>

<script>

export default {
  data() {
    return {
      name: "",
      userInput:  "",
      //Todo Change the String to actually be helpful
      helpString: "Hello, This is how you use me! Enter a command and I will provide help",
      isHelpStringNeeded: false
    };
  },
  methods: {
    getHelp(){
        if (this.userInput.includes('Help')){
            this.isHelpStringNeeded = true;
        } else {
            this.isHelpStringNeeded = false;
        }
    }
}
}

</script>


<style scoped>

</style>