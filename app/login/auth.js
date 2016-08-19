// Login API

const auth = riot.observable()

auth.login = function(params) {
    const json = { username: 'yy', password: 188 }
    auth.trigger('login', { username: 'yy', password: 188 })
    console.log(json)
}

riot.auth = auth