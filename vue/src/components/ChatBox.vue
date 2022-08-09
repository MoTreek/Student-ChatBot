<template>
    <section class="Chat-box">
        <div class="Chat-box-response" ref="chatbox">

        </div>

        <div class="Chat-input">
            <input type="text"
            v-model="message"
            @keyup.enter="sendMessage" />
        </div>


    </section>
</template>

<script>
export default {
    name: "ChatBox",
    data()  {
        return {
        message: '',
        messages: []
        }
    },
    
    methods: {
        sendMessage() {
            this.messages.push({
                text:this.message,
                author: 'client'
            })

            this.message = '',
            this.$nextTick(() => {
                this.$refs.chatbox.scrollTop = this.$refs.chatbox.scrollHeight
            })

            //Connect and search database
        }
    }
}
</script>

<style>
.Chat-box,
.Chat-box-reponse{
    display: flex;
    flex-direction: column;
    list-style-type: none;
}

.Chat-box-reponse{
    overflow: scroll;
}

.Chat-bot-response{
    padding-left: 0;

    
}

.Chat-box{
    border: 1px solid red;
    width: 50vw;
    border-radius: 4px;

}

</style>