<template>
  <section class="chat-box">
    <div class="chat-box-list-container" ref="chatbox">
        <div class="DivToScroll">
            

        <!-- <div>
          {{ this.keywords }};
        </div> -->

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
    <div class="chat-inputs">
      <input
        type="text"
        v-model="message"
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



export default {
  name: 'ChatBox',
  data: () => ({
    // userInput: '',
    // helpString:
    //     "Hello, " + this.$store.state.user.username + " This is how you use me! Enter a command and I will provide help",
    //   isHelpStringNeeded: false,
    message: '',
    messages: [],
    keywords: [],
    sql: [],
    clicked: false,
    mvc : "mvc is model view controller",
    
  }),

  methods: {
    sendMessage() {
      const message = this.message
      this.messages.push({
        text: message,
        author: 'client'
      })

      if (this.message.toLowerCase().includes("help")) {
        this.message = ''
        this.messages.push({
          text: "Hello, " + this.$store.state.user.username + " This is how you use me! Enter a command and I will provide help",
          author: 'server'
        })

        
      } else {
        // let arr = this.message.split(' ');
          // if(arr.includes("Sql")){
        this.message = ''
         ChatBotService.getKeyword("sql").then(response => {
        this.message = response.data.keywordDescription
        })
        this.messages.push({
        text: message,
        author: 'server'
          } 
        
       
      
      )
      // }
      }

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
    },
    onButtonClick() {
    this.message = ''
        this.messages.push({
          text: 'mvc is when ',
          author: 'server'
        })
        this.button.style.display="none"
  },


},
    created() {
      ChatBotService.getKeywords().then(response => {
      this.keywords = response.data;
  }),
    ChatBotService.getSql().then(response => {
      this.sql = response.data;
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