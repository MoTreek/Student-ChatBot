<template>
    <div>
        <h2>
            {{quote.quote}} {{quote.person}}
        </h2>

    </div>
</template>

<script>

import MotivationQuotes from '../services/MotivationQuote'

export default {
    data () {
        return {
                quote: {}
        }
    },

    created() {MotivationQuotes.getQuotes().then(response => {
      this.quote = response.data;
    })
    
    }
    
}
</script>