<template>
  <section class="chat-box">
    <div class="chat-box-list-container" ref="chatbox">
        <!-- <div class="DivToScroll"> -->
<!-- 
        <div>
          {{ this.keywords }};
        </div> -->

       
          <div v-show="found"><!-- <div v-if="isVisible === true"> -->
<job-search-component />
</div>
      <ul class="chat-box-list">


        <li
          class="message"
          v-for="(message, idx) in messages"
          :key="idx"
          :class="message.author"
        >

          <p v-if="message.author == 'client'">
            <img src="https://htc-wallpaper.com/wp-content/uploads/2014/08/Small-bird.jpg" /><span >{{ message.text }}</span>
          </p>
          <p v-else-if="message.author == 'server'">
            <img src = "\images\Untitled-Artwork.jpg"/><span>{{message.text}}</span>
          </p>



              

        </li>
      </ul>
    </div>

 <div class = "buttons" v-if="!clicked">
          <div class = "button-one">
              <button v-on:click="onButtonClick()" @click="clicked = !clicked" > What is MVC?
                </button>
                </div>

                <button  v-on:click="onButtonClick()" @click="clicked = !clicked"> Find job postings.
                </button>

                <button  v-on:click="onButtonClick()" @click="clicked = !clicked"> How to write a resume. 
                  </button>

                  
          </div>


    <div class="chat-inputs">
      <input
        type="text" placeholder="ask me a question"
        v-model.lazy="message"
        @keyup.enter="sendMessage"
      />
      <button @click="sendMessage" >Send</button>
      <!-- </div> -->
    </div>
    <!-- </div> -->
  </section>
</template>

<script>

import ChatBotService from '../services/ChatBotService';
import JobSearchComponent from './JobSearchComponent.vue';




export default {
  components: {
    JobSearchComponent
  
  },
  name: 'ChatBox',
  data: () => ({

    dif: '',
    message: '',
    messages: [],
    keywords: [],
    keyword: 'oop',
    sql: [],
    technicalQuestion: [],
    pathwayQuestion: [],
    randomTechnicalQuestion: [],
    clicked: false,
    questionObject: {},
    mvc : "mvc is model view controller",
  isVisible: false,
    found: false
    
  }),

  computed: {
    
  },

  methods: {
showJobs(){
      if (this.message.includes('test')){
          this.isVisible = true
      } 
       return this.isVisible;
    },
    sendMessage() {
      const message = this.message
      this.messages.push({
        text: message,
        author: 'client'
      })
      this.$nextTick(() => {
          this.$refs.chatbox.scrollTop = this.$refs.chatbox.scrollHeight
        })
      if (this.message.toLowerCase().includes("job") || this.message.toLowerCase().includes("jobs") || this.message.toLowerCase().includes("position")) {
        this.found = true;
      }
      if (this.message.toLowerCase().includes("help")) {
        this.message = ''
        this.messages.push({
          text: "Hello, " + this.$store.state.user.username + " This is how you use me! Enter a command and I will provide help",
          author: 'server'
        })
      }

        else if (this.message.toLowerCase().includes("question")) {
        if (this.message.toLowerCase().includes("technical")) {

           ChatBotService.getQuestionTechnical().then(response => {
           this.technicalQuestion = response.data
          
             const randomIndex = Math.floor(Math.random() * this.technicalQuestion.length);
              this.questionObject = this.technicalQuestion[randomIndex]
           
           this.messages.push({
        text: this.questionObject.theQuestion,
        author: 'server'
        })
          
      
        })
        } 
        else if (this.message.toLowerCase().includes("pathway")) {
           ChatBotService.getQuestionPathway().then(response => {
           this.pathwayQuestion = response.data
          
             const randomIndex = Math.floor(Math.random() * this.pathwayQuestion.length);
              this.questionObject = this.pathwayQuestion[randomIndex]
           
           this.messages.push({
        text: this.questionObject.theQuestion,
        author: 'server'
        })
          
        })
           }



           
      }  
      else if (this.message.toLowerCase().includes("answer")){
            this.messages.push({
            text: this.questionObject.questionAnswer,
            author: 'server'
            })
      }else if (this.message.toLowerCase().includes("video")){
        this.selectDisplayChoice(this.dif, "video")
      } else if (this.message.toLowerCase().includes("text") || this.message.toLowerCase().includes("description")) {
        this.selectDisplayChoice(this.dif, "text")
      } else if (this.message.toLowerCase().includes("web")) {
        this.selectDisplayChoice(this.dif, "web")
      }
      
      else {
        let keywordArr = [];
        for(let i = 0; i < this.keywords.length; i++) {
          keywordArr.push(this.keywords[i].keywordDescription.toLowerCase())
        }
        // this.message = keywordArr;
        let arr = this.message.toLowerCase().replace(/[.,/#!$%^?&*;:{}=\-_`~()]/g,"")
.split(' ');
        let isFound = false;
        for (let i = 0; i < arr.length; i++) {
          const match = keywordArr.find(element => {
            if (element.includes(arr[i])) {
              return true;
            }
            else {
              return false;
            }
          })
          if(match){
        this.promptForDisplayChoice()
        // this.readUserInput()
        // this.selectDisplayChoice("oop")
        this.message = ''
        
        ChatBotService.getKeyword(arr[i]).then(response => {
        this.dif = response.data.keywordDescription
       
        // this.promptForDisplayChoice().addEventListener('keypress', function(e){
        //   if (e.key === "Enter"){
        //     this.selectDisplayChoice(this.dif)
        //   }
        // }),
        // this.selectDisplayChoice(this.dif)

        // this.messages.push({
        // text: this.dif,
        // author: 'server'
        //   })
        })
        isFound = true;
        break;
      } 
          
      }
      if(isFound == false) {
        this.messages.push({
          text: "Hello, " + this.$store.state.user.username + " Please ask me a questions related to the tech elevator course. You can ask me 'What is sql injection?' for example",
          author: 'server'
      })
      }
      this.message = ''  ;  
      
      //this.message = ''
      //this.$axios.get(`https://www.cleverbot.com/getreply?key=CC8uqcCcSO3VsRFvp5-uW5Nxvow&input=${message}`)

      // this.messages.push({
      //   text: "Welcome",
      //   author: 'server'
      // })
      // .then(res => {
      //   this.messages.push({
      //     text: res.data.output,
      //     author: 'server'
      //   })
        // this.$nextTick(() => {
        //   this.$refs.chatbox.scrollTop = this.$refs.chatbox.scrollHeight
        // })
      //})
      }
    },   
    onButtonClick() {
    this.message = ''
        this.messages.push({
          text: 'MVC is Model–view–controller is a software architectural pattern commonly used for developing user interfaces that divide the related program logic into three interconnected elements. This is done to separate internal representations of information from the ways information is presented to and accepted from the user.',
          author: 'server'
        })
        this.button.style.display="none"
  },

    promptForDisplayChoice() {
    this.message = ''
     this.messages.push({
      text: 'Would you like the explanation to be a video, webpage, or short description?',
      author: 'server'
  })
  },
    readUserInput() {
      setTimeout(this.selectDisplayChoice('oop'), 5000)
    },

  selectDisplayChoice(keyword, type) {
    //  this.messages.push({
    //     text: this.message,
    //     author: 'client'
    //   })
      if (type == 'video') {
        ChatBotService.getVideoRef(keyword).then(response => {
      
        this.messages.push({
        text: response.data,
        author: 'server'
      })
        })
      } else if (type == 'text') {
        ChatBotService.getTextRef(keyword).then(response => {
        
        this.messages.push({
        text: response.data,
        author: 'server'
      })
        })
      } else if (type == 'web') {
        ChatBotService.getWebRef(keyword).then(response => {
        
        this.messages.push({
        text: response.data,
        author: 'server'
      })
        })
      }
  }
  },

  
    created() {
      ChatBotService.getKeywords().then(response => {
      this.keywords = response.data;
  }),
    ChatBotService.getSql().then(response => {
      this.sql = response.data;
    }), 
    ChatBotService.getQuestionTechnical().then(response => {
      this.technicalQuestion = response.data;
    }),
    ChatBotService.getQuestionPathway().then(response => {
      this.pathwayQuestion = response.data;
    } ),
    ChatBotService.getQuestionTechnicalRandom().then(response => {
      this.randomTechnicalQuestion = response.data;
    })
}
}
  

</script>

<style scoped>

@import url("https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap");


.chat-box,
.chat-box-list {
  display: flex;
  flex-direction: column;
  list-style-type: none;
}
.chat-box-list-container {
  height: 100vh;
  overflow: scroll;
  margin-bottom: 1px;
}
.chat-box-list {
  height: 70vh;
  padding-left: 10px;
  padding-right: 10px;
}
 .chat-box-list span {
    padding: 8px;
    color:white;
    border-radius: 4px;
  }
  
.chat-box-list .server p span {
      background: linear-gradient(rgb(0, 195, 255), rgb(74, 152, 216));
      font-size: 18px;
      border-radius: 10px;
      /* box-shadow:
    0 0 60px 10px rgba(255, 255, 255, 0.226),  
    0 0 100px 10px rgba(255, 0, 255, 0.295), 
    0 0 140px 60px rgba(0, 255, 255, 0.377);    */
    }
    
  .chat-box-list .server p {
      display: flex;
      float: left;
    }
  
  .chat-box-list .client p span {
      background: #0070C8;
      font-size: 18px;
      border-radius: 10px;
         
    }

    .chat-box-list .client p {
      display: flex;
      float: right;
    }

    
    .DivToScroll{   
    background-color: #f5f5f51f;
    /* border: 1px solid #DDDDDD; */
    border-radius: 4px 0 4px 0;
    color: #3B3C3E;
    font-size: 12px;
    /* font-weight: bold; */
    left: -1px;
    padding: 10px 7px 5px;
    border-radius: 10px;
   
}

::-webkit-scrollbar {
  width: 20px;
  
}

/* Track */
::-webkit-scrollbar-track {
  box-shadow: inset 0 0 5px grey; 
  border-radius: 10px;
  
}
 
/* Handle */
::-webkit-scrollbar-thumb {
  background: rgba(255, 255, 255, 0.39); 
  border-radius: 10px;
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background: rgba(255, 255, 255, 0.459); 
}
/* 
.DivWithScroll{
    height:120px;
    overflow:scroll;
    overflow-x:hidden;
} */
    
  

.chat-box {
  margin: 10px;
  /* border: 1px solid #999; */
  width: 60vw;
  height: 70vh;
  border-radius: 4px;
  margin-left: auto;
  margin-right: auto;
  align-items: space-between;
  justify-content: space-between;
}

.chat-inputs {
  display: flex;
  border: 2px solid rgba(233, 233, 233, 0.849);
  border-radius: 8px;
  
  
}
  
    .chat-inputs input {
    line-height: 3;
    width: 100%;
    height: auto;
    border: 1px solid #999;
    border-left: none;
    border-bottom: none;
    border-right: none;
    border-bottom-left-radius: 4px;
    padding-left: 15px;
    font-family: "Quicksand", sans-serif;
    background-color: rgba(255, 255, 255, 0.63);
    border-radius: 8px;
  }

  .chat-inputs button {
    width: 145px;
    color: rgb(119, 103, 103); 
    background: linear-gradient(rgb(169, 196, 230), rgb(111, 128, 173));
    border-color: rgba(243, 242, 242, 0.692);
    border-bottom: none;
    border-right:none;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 3px;
    font-family: "Quicksand", sans-serif;
    font-size: 18px;
  }

  .buttons {
    display: flex;
    justify-content: flex-end;
    padding: 10px;
    background-color: #fcf5f51f;
    

  }

  .buttons button {
    /* background: linear-gradient(rgb(255, 244, 221), rgb(247, 191, 88)); */
    color: black;
    border: 2px solid rgb(230, 174, 110);
    font-size: 18px;
    font-family: "Quicksand", sans-serif;
    padding: 10px;
    cursor: pointer;
    border-radius: 9px;

  }
  img {
    width: 27px;
    height: 19px;
    padding: 2px; 
  }
 
 

</style>
