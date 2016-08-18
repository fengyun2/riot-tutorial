<timer>
<h3>Seconds Elapseds: {time}</h3>

this.time = opts.start || 0

this.tick = (() => {
  this.update({
    time: ++this.time
  })
})

var timer = setInterval(this.tick, 1000)

this.on('unmount', () => {
  console.log('timer cleared')
  clearInterval(timer)
})
</timer>
