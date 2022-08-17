<template>
  <div id="app">
    <div id="nav">
      <router-link class="homebtn" v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;&nbsp;
      <router-link class="logoutbtn" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
      <br>
    </div>
    <router-view />
  </div>
</template>

<style scoped>

*{
  border: 0px solid red;
}
#app{
  text-align: center;
  margin-bottom: 1px;
  
  background-color: #a7dbd8;
}
#nav{
   padding-top: 15px;
   margin-bottom: 25px;
 background-color: #a7dbd8;

}
.homebtn{
 border: 1px solid #f38630;
 border-radius: 15px;
 padding: 5px;
 background-color:  #f38630;
 color: white;
 text-decoration: none;
}

.logoutbtn{
border: 1px solid #f38630;
 border-radius: 15px;
 padding: 5px;
 background-color: #f38630;
 color: white;
 text-decoration: none;
}

</style>

