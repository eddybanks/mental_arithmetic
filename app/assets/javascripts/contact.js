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
        this.count = this.message.length
        return this.count
      },
      limitMessage: function() {
        if(this.countMessage() > 500) {
          let extra = this.countMessage() - 500
          this.warning = "The message has " + extra + "extra words"
        }
        else{
          this.warning = null
        }
        return this.warning
      }
    }
  })
}
