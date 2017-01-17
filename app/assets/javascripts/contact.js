let contact_function = () => {
  let contact_form = new Vue({
    el: '#contact-form',
    data: {
      message: 'Some message this is!'
    },
    methods: {
      reverseMessage: function () {
        this.message = this.message.split('').reverse().join('')
      }
    }
  })
}
