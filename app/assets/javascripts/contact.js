let contact_function = () => {
  let contact_form = new Vue({
    el: '#contact-form',
    data: {
      message: '',
      count: 0,
      limit: 500,
      warning: ''
    },
    methods: {
      reverseMessage: function() {
        this.message = this.message.split('').reverse().join('')
      },
      countMessage: function() {
        x = this.message.length + " letter"
        this.count = this.message.length == 1 ? x : x + "s"
        return this.count
      },
      limitMessage: function() {
        if(this.message.length > 500) {
          x = this.message.length - 500
          this.warning = "The message has " + x + " extra letter" + (x == 1 ? "" : "s")
        }
        else{
          this.warning = this.countMessage()
        }
        return this.warning
      }
    }
  })
}
