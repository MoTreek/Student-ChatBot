import axios from 'axios';

const http = axios.create({
  baseURL: "https://www.themuse.com/api/public/jobs?"
});

export default {

  getTheJob() {
    return http.get('category=Software%20Engineering&level=Entry%20Level&location=Flexible%20%2F%20Remote&page=0');
  }
}