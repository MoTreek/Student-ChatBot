<template>
  <section class="chat-box">
    <div class="chat-box-list-container" ref="chatbox">
        <div class="DivToScroll">
            <!-- <div class = DivWithScroll> -->
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
<!-- 
          <div class="help-needed" v-if="isHelpStringNeeded === true">{{ this.helpString }}</div> -->
              

        </li>
      </ul>
    </div>
    <div class="chat-inputs">
      <input
        type="text"
        v-model="message"
        @keyup.enter="sendMessage"
      />
      <button @click="sendMessage">Send</button>
      <!-- </div> -->
    </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'ChatBox',
  data: () => ({
    userInput: '',
    helpString:
        "Hello, " + this.$store.state.user.username + " This is how you use me! Enter a command and I will provide help",
      isHelpStringNeeded: false,
    message: '',
    messages: []
  }),

  methods: {
    sendMessage() {
      const message = this.message
      this.messages.push({
        text: message,
        author: 'client'
      })
      this.message = ''
      this.$axios.get(`https://motivational-quote-api.herokuapp.com/random/quote=${message}`)
      .then(res => {
        this.messages.push({
          text: res.data.output,
          author: 'server'
        })
        // this.$nextTick(() => {
        //   this.$refs.chatbox.scrollTop = this.$refs.chatbox.scrollHeight
        // })
      })
    }
  }
}
</script>

<style scoped>
.chat-box,
.chat-box-list {
  display: flex;
  flex-direction: column;
  list-style-type: none;
}
.chat-box-list-container {
  overflow: scroll;
  margin-bottom: 1px;
}
.chat-box-list {
  padding-left: 10px;
  padding-right: 10px;
}
 .chat-box-list span {
    padding: 8px;
    color: black;
    border-radius: 4px;
  }
  
  .chat-box-list.server span {
      background: #99cc00;
    }
    
    .chat-box-list.server p {
      float: right;
    }
  
  .chat-box-list.client span {
      background: #0070C8;
    }

    .chat-box-list.client p {
      float: left;
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
  width: 50vw;
  height: 50vh;
  border-radius: 4px;
  margin-left: auto;
  margin-right: auto;
  align-items: space-between;
  justify-content: space-between;
}
.chat-inputs {
  display: flex;
  
}
  
    .chat-inputs input {
    line-height: 3;
    width: 100%;
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
    background: #0070C8;
    border-color: #999;
    border-bottom: none;
    border-right:none;
    border-bottom-right-radius: 3px;
  }

  .help-needed {

  }

</style>