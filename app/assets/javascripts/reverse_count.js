let reverse_count = () => {
  let reverse_count = new Vue({
    el: '#reverse_count_modal',
    data: {
      randomNumber: null,
      reverseNumbers: [],
      mod_10: null
    },
    methods: {
      generateValues: function(rnum) {
        var x = 100
        while(x > 0) {
          this.reverseNumbers.push({value: x})
          x = x - rnum
        }
      },
      generateRandom: function() {
        this.reverseNumbers = []
        this.randomNumber = Math.floor(Math.random() * (17)) + 1
        this.generateValues(this.randomNumber)
      },
      randCol: function() {
        let x = "col-sm-" + this.reverseNumbers.length % 10
        this.mod_10 = x
        return x
      }
    }
  })
}
