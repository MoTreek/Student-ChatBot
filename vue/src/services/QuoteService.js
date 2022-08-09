import axios from 'axios';

const http = axios.create({
  baseURL: "https://motivational-quote-api.herokuapp.com"
});

export default {

  getQuotes() {
    return http.get('/quotes/random');
  }
}