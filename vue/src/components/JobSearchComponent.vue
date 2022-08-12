<template>
    <div >
        <div class="card" v-for="job in jobsLimited" v-bind:key="job.id">
            <h1 v-html="job.contents"></h1>
            </div>

    </div>
</template>

<script>
import JobSearchService from '../services/JobSearchService'
export default {
    data () {
        return {
                jobs: [],
                job: {
                    contents: "",
                    name: "",
                    type: "",
                    publication_date: "",
                    short_name: "",
                    model_type: "",
                    id: 0,
                    locations: [{
                        name: "",
                    }],
                    categories: [{
                        name: "",
                    }],
                    levels: [{
                        name: "",
                        short_name: ""
                    }],
                    tags: [],
                    refs: {
                        landing_page: ""
                    },
                    company: {
                        id: 0,
                        short_name: "",
                        name: ""
                }
        }
        }
    },
    computed: {
    jobsLimited() {
        return this.jobs.slice(0, 1)
    }
},
    created() {JobSearchService.getTheJob().then(response => {
      this.jobs = response.data.results;
    })
    
    }
    
}
</script>

<style>

.card{

height: 10px;
width: 10px;
}
</style>