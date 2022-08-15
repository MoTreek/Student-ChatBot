<template>
  <section class="chat-box">
    <div class="chat-box-list-container" ref="chatbox">
        <div class="DivToScroll">
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

          <p>
            <span >{{ message.text }}</span>
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
        type="text"
        v-model.lazy="message"
        @keyup.enter="sendMessage"
      />
      <button @click="sendMessage" >Send</button>
      <!-- </div> -->
    </div>
    </div>
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
    clicked: false,
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
      if (this.message.toLowerCase().includes("job")) {
        this.found = true;
      }
      if (this.message.toLowerCase().includes("help")) {
        this.message = ''
        this.messages.push({
          text: "Hello, " + this.$store.state.user.username + " This is how you use me! Enter a command and I will provide help",
          author: 'server'
        })
      }

        else if (this.message.toLowerCase().includes("question")){
           ChatBotService.getQuestionTechnical().then(response => {
           this.technicalQuestion = response.data
           this.messages.push({
        text: response.data,
        author: 'server'
        })
           })
        
      

        
      } else if (this.message.toLowerCase().includes("video")){
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
          text: 'mvc is when ',
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
    } )
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
  height: 100vh;
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
    }
    
  .chat-box-list .server p {
      display: flex;
      float: left;
    }
  
  .chat-box-list .client p span {
      background: #0070C8;
    }

    .chat-box-list .client p {
      display: flex;
      float: right;
    }

    
    .DivToScroll{   
    background-color: #F5F5F5;
    border: 1px solid #DDDDDD;
    border-radius: 4px 0 4px 0;
    color: #3B3C3E;
    font-size: 12px;
    font-weight: bold;
    left: -1px;
    padding: 10px 7px 5px;
}

.DivWithScroll{
    height:120px;
    overflow:scroll;
    overflow-x:hidden;
}
    
  

.chat-box {
  margin: 10px;
  border: 1px solid #999;
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
  border: 2px solid rgb(233, 233, 233);
  
  
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
  }

  .chat-inputs button {
    width: 145px;
    color: white;
    background: linear-gradient(rgb(169, 196, 230), rgb(111, 128, 173));
    border-color: rgb(243, 242, 242);
    border-bottom: none;
    border-right:none;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 3px;
    font-family: "Quicksand", sans-serif;
  }

  .buttons {
    display: flex;
    flex-direction: column;
    flex-grow: 1;
    padding: 10px;

  }

  .buttons button {
    background: linear-gradient(rgb(255, 244, 221), rgb(247, 191, 88));
    color: black;
    border: 2px solid rgb(243, 234, 224);
    font-family: "Quicksand", sans-serif;
    padding: 10px;
    cursor: pointer;

  }

 

</style>
