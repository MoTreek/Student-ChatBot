<template>
    <div class="QCS">
        <h2>
           " {{quote.quote}} " {{quote.person}}
        </h2>

    </div>
</template>

<script>

import QuoteService from '../services/QuoteService'

export default {
    data () {
        return {
                quote: {}
        }
    },

    created() {QuoteService.getQuotes().then(response => {
      this.quote = response.data;
    })
    
    }
    
}
</script>

<style>
div.QCS{
    font-style: italic;
    color: rgb(216, 236, 252);
}
</style>