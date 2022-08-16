import axios from 'axios';

const http = axios.create({
    baseURL: "http://localhost:9000"
});

export default {
    getKeywords(){
        return http.get('/keywords/')
    },
    getSql(){
        return http.get('/keywords/Sql')
    },
    getKeyword(keyword) {
        return http.get(`/keywords/${keyword}`)
    },
    getTopic(topic) {
        return http.get(`/topic/${topic}`)
    },

    getVideoRef(keyword) {
        return http.get(`topic/video/${keyword}`)
    },
    getTextRef(keyword) {
        return http.get(`topic/text/${keyword}`)
    },
    getWebRef(keyword) {
        return http.get(`topic/web/${keyword}`)
    },
    getQuestionTechnical(){
        return http.get(`/questions/questionType/technical`)
    },
    getQuestionPathway(){
        return http.get(`/questions/questionType/pathway`)
    },
    getQuestionTechnicalRandom(question){
        return http.get(`questions/questionType/technical/${question}`)
    }

}