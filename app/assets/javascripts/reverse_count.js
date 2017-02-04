let reverse_count = () => {
  let reverse_count = new Vue({
    el: '#reverse_count_modal',
    data: {
      randomNumber: null,
      reverseNumbers: []
    },
    methods: {
      generateValues: function(rnum) {
        for(var x=100; x>0; x-rnum) {
          this.reverseNumbers.push({value: x})
        }
      },
      generateRandom: function() {
        this.randomNumber = Math.floor(Math.random() * (17)) + 1
        this.generateValues(this.randomNumber)
      }
    }
  })
}
