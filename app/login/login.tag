//- login 视图

<login>
  <form onsubmit="{login}">
    <input name="username" type="text" placeholder="username"/>
    <input name="password" type="password" placeholder="password"/>
    <input type="submit" value="Login"/>
  </form>

  login() {
    riot.auth.login({
      username: this.username.value,
      password: this.password.value
    })
  }

  //- any tag on the system can listen to login event
  riot.auth.on('login', function() {
    document.querySelector('body').classList.add('logined')
    console.log('login')
  })
  console.log(riot.auth)
</login>