<template>

  <div id="login" class="text-center">
    <div id="color">
    <form class="form-signin" @submit.prevent="login" id="flex" >
      <h1 class="h3 mb-3 font-weight-normal">Login</h1>
      <div
        class="alert alert-danger"
        role="alert"
        v-if="invalidCredentials"
      >Invalid Log-in!</div>
      <div
        class="alert alert-success"
        role="alert"
        v-if="this.$route.query.registration"
      >Thank you for registering, please sign in.</div>
      <section class="user"> 
      <label for="username" class="sr-only"></label>
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      />
      </section>
      <section class="password">
      <label for="password" class="sr-only"></label>
      <input 
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      />
      </section>
      <section class="submit">
      <button type="submit">Sign in</button>  <br> <br>
      <router-link :to="{ name: 'register' }">Need an account?</router-link>
      </section>
    </form>
    </div>
  </div>

</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: ""
      },
      invalidCredentials: false
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then(response => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/");
          }
        })
        .catch(error => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    }
  }
};
</script>

<style>
@import url("https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap");
*{
  font-family: "Quicksand", sans-serif;
}
 
.color {
background-color: #a7dbd8;
}



#login { 
  background-color: #a7dbd8;
  zoom: 2; 
    -moz-transform: scale(0); 
    -moz-transform-origin: 0 0;
    overflow: hidden;
    }

input {
  border: 0px;
 border-radius: 5px;
 text-align: center;
 align-self: center;
 
}

button{
   border: 0px;
  border-radius: 5px;
}


#login{
  display: flex;
  justify-content: center;
  align-content: center;
   
}
form{
  background-color:  #69d2e7;
  padding: 20px;
  padding-bottom: 50px;
  border-radius: 10px;
  text-align: center;
   background-color: #a7dbd8;
}
section{
  flex-direction: column;
  padding-top: 10px;
  padding-bottom: 10px;

  width: 100%;
}

</style>
