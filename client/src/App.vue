<template>
   <div>
       <p>Hello World</p>
   </div>
</template>
<script lang="ts">
import Vue from "vue";
import Component from "vue-class-component";
import * as request from "request-promise-native";

@Component({})
export default class App extends Vue {
   constructor() {
       super();
       this.test();
   }

   private async test() {
       const result = await request.get({ uri: "http://localhost:9000" });
       console.log("result: ", result);
   }
}

</script>
<style scoped>
</style>
