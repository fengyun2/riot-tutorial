require('./name.tag');
require('./todo.tag')
require('./timer.tag')
require('./comments.tag')
require('./comment_store.js')
<app>
<name first="hello" last="world"></name>
<name first="Ola" last="Mundo"></name>
<todo></todo>
<timer start="0"></timer>
<timer start="10"></timer>
<timer start="20"></timer>
<comments/>


<script>

this.on('mount', function() {
  const comments = this.tags.comments
  comments.tags['comment-form'].add()
  //- console.log(comments.tags['comment-form'])
})
</script>
</app>
