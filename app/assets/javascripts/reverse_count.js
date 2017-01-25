let reverse_count = () => {
  let reverse_count = new Vue({
    el: '#reverse_count_modal',
    data: {
      randomNumber: 0
    },
    methods: {
      generateRandom: function() {
        this.randomNumber = Math.random() * (16) + 1
      }
    }
  })
}
