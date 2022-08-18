<template>
  <div id="app">
    <div id="nav">
      <router-link class="homebtn" v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;&nbsp;
      <router-link class="logoutbtn" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
      <router-link class="devbtn" v-bind:to="{ name: 'Developer' }">Meet the Developers</router-link>

      <br>
    </div>
    <router-view />
  </div>
</template>

<style scoped>


html {
  background-color: linear-gradient(rgb(0, 195, 255), rgb(74, 152, 216));
}

#app{
  text-align: center;
  margin-bottom: 1px;
  background-color: linear-gradient(rgb(0, 195, 255), rgb(74, 152, 216));
}
#nav{
   padding-top: 15px;
   margin-bottom: 25px;
   background-color: linear-gradient(rgb(0, 195, 255), rgb(74, 152, 216));

}
.homebtn{
 border: 1px solid #f38630;
 border-radius: 15px;
 padding: 5px;
 background-color:  #f3853096;
 color: white;
 text-decoration: none;
}

.logoutbtn{
border: 1px solid #f38630;
 border-radius: 15px;
 padding: 5px;
 background-color: #f3853096;
 color: white;
 text-decoration: none;
}

.devbtn{
  border: 1px solid #f38630;
 border-radius: 15px;
 padding: 5px;
 background-color: #f3853096;
 color: white;
 text-decoration: none;
 margin: 5px;
}



</style>

