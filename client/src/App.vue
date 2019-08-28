<style lang="less" scoped>
   @import "style.less";

</style>

<template>
   <div>
       <p>Hello World</p>
       <p> Results: {{ display }} </p>
       <button v-on:click="test()">Load Results</button>
       <button v-on:click="first()">Show one entry at a time</button>
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

   public display = [];
   public result = [];
   public index = 0;

   private async test() {
       this.result = await request.get({ uri: "http://localhost:9000" });
       console.log("result: ", this.result);
       this.display = this.result;
       this.parseResult();
   }

   private first() {
       console.log(this.index);
       if (this.index === this.result.length) {
           this.index = 0;
       }
       this.display = this.result[this.index];
       this.index++;
   }

   private parseResult() {
       this.result = JSON.parse(this.result as any);
   }
}

</script>
<style scoped>
</style>
 