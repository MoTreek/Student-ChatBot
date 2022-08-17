<template>
  <div id="register" class="text-center">
    <form class="form-register" @submit.prevent="register">
      <h1 class="h3 mb-3 font-weight-normal">Create Account</h1>
      <div class="alert alert-danger" role="alert" v-if="registrationErrors">
        {{ registrationErrorMsg }}
      </div>
      <section>
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
      <section>
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
      <section>
      <input
        type="password"
        id="confirmPassword"
        class="form-control"
        placeholder="Confirm Password"
        v-model="user.confirmPassword"
        required
      />
      </section>
      <section>
      <button class="btn btn-lg btn-primary btn-block" type="submit">
        
      
      
      
        Create Account
      </button>
      </section>
      <section>
        <router-link :to="{ name: 'login' }">Have an account?</router-link>
      </section>
    </form>
  </div>
</template>

<script>
import authService from '../services/AuthService';

export default {
  name: 'register',
  data() {
    return {
      user: {
        username: '',
        password: '',
        confirmPassword: '',
        role: 'user',
      },
      registrationErrors: false,
      registrationErrorMsg: 'There were problems registering this user.',
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = 'Password & Confirm Password do not match.';
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.$router.push({
                path: '/login',
                query: { registration: 'success' },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = 'Bad Request: Validation Errors';
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = 'There were problems registering this user.';
    },
  },
};
</script>

<style>
*{
  font-family: "Quicksand", sans-serif;
  
 


}
body.register{ background-color: #a7dbd8 ;}

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


#register{
  display: flex;
  justify-content: center;
  align-content: center;
    background-color: #a7dbd8;
  zoom: 2; 
    -moz-transform: scale(0); 
    -moz-transform-origin: 0 0;
    overflow: hidden;
   
}


    
form{
  background-color:  #69d2e7;
  padding: 20px;
  padding-bottom: 50px;
  border-radius: 10px;
  text-align: center;
}
section{
  flex-direction: column;
  padding-top: 10px;
  padding-bottom: 10px;

  width: 100%;
}
</style>
