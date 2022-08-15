<template>
  <div class="idk" >
    <div v-for="job in jobsLimited" v-bind:key="job.id">
        
      <!-- <p v-html="job.contents" class="card"></p>
            <p v-html="job.name"></p>
            <p v-html="job.type"></p>
            <p v-html="job.publication_date"></p>
            <p v-html="job.short_name"></p>
            <p v-html="job.model_type"></p>
            <p v-html="job.id"></p>
            <p v-html="job.locations"></p>
            <p v-html="job.categories"></p>
            <p v-html="job.levels"></p>
            <p v-html="job.tags"></p>
            <p v-html="job.refs"></p>
            <p v-html="job.company"></p> -->
        <container  >
                <div class="card">
                    <p v-html="job.company.name"></p>
                    <p v-html="job.name"></p>
                    <p v-html="job.locations.name"></p>
                    <p>Flexible/Remote</p>
                    <a v-bind:href="job.refs.landing_page">Job Page</a>
                    <button class="button" @click="clickCard()" />
                    
                </div>
      <!-- <div class="Info" v-if="clickBoolean === true">
          {{ job.content }}
        </div> -->
      </container>
    </div>
     
  </div>
</template>

<script>
import JobSearchService from "../services/JobSearchService";
export default {
  data() {
    return {
      clickBoolean: false,
      jobs: [],
      job: {
        contents: "",
        name: "",
        type: "",
        publication_date: "",
        short_name: "",
        model_type: "",
        id: 0,
        locations: [
          {
            name: "",
          },
        ],
        categories: [
          {
            name: "",
          },
        ],
        levels: [
          {
            name: "",
            short_name: "",
          },
        ],
        tags: [],
        refs: {
          landing_page: "",
        },
        company: {
          id: 0,
          short_name: "",
          name: "",
        },
      },
    };
  },
  computed: {
    jobsLimited() {
      return this.jobs.slice(0, 5);
    },
  },
  created() {
    JobSearchService.getTheJob().then((response) => {
      this.jobs = response.data.results;
    });
  },
  methods:{
  clickCard() {
    this.clickBoolean = true;
    return this.clickBoolean;
  },        
  }
};
</script>
<style>
.idk {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  border: 5px solid green;
 

}
.info {
  background-color: yellow;
  height: 1000px;
  width: 1000px;
}

.button {
  height: 25px;
  width: 25px;
}

.card {
      
  color: white;
  background-color: blue;
  border: 1px solid black;
  border-radius: 5px;
 width: 200px;
    height: 200px;
  padding: 0px;
  font-size: 15px;

  
  /* flex: 1; */
 
  text-align: center;
  cursor: pointer;
  width: 60%;
}
</style>
