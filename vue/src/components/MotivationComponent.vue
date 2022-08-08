<template>
    <div>
        <h2>
            {{quote}}
        </h2>

    </div>
</template>

<script>

import MotivationQuotes from '../src/services/MotivationQuote'

export default {
    data () {
        return {
                quote: {}
        }
    },

    created() {MotivationQuotes.getQuotes().then(response => {
      this.quote = response;
    })
    
    }
    
}
</script>