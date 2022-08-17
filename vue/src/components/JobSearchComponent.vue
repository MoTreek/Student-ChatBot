<template>
  <div class="idk" >
    <div v-for="job in jobsLimited" v-bind:key="job.id">
  
        <container  >
                <div class="card">
                    <p v-html="job.company.name"></p>
                    <p v-html="job.name"></p>
                    <p v-html="job.locations.name"></p>
                    <p>Flexible/Remote</p>
                    <a v-bind:href="job.refs.landing_page">Job Page</a>
                </div>
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
      return this.jobs.slice(0, 3);
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
  background-color:  #69d2e7;
  border-radius: 10px;
  padding-top: 5px;
  padding-bottom: 5px;
  text-align: center;
  color: white;
   background-color: red;
   height: 250px;
  width: 250px;
    font-size: 1vw;
}
.card:first-child{
  background-color: #f38630;
  border: 1px solid #703206;
}
</style>