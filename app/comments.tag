<comments>
  <div class="commentBox">
    <h1>Comments</h1>
    <comment-list/>
    <comment-form/>
  </div>
</comments>

<comment-list>
  <div class="commentList" each={comment in comments} >
    <comment author='{comment.author}' text='{comment.text}'/>
  </div>

  <script>
    this.comments = opts.comments || []
    const self = this
    riot.commentStore.on('add_comment', (comment) => {
      console.log('trigger')
      self.comments.push(comment)
      self.update()
    })
  </script>
</comment-list>

<comment>
  <div class="comment">
    <h2 class="commentAuthor">{opts.author}</h2>
    <span>{opts.text}</span>
  </div>
</comment>


<comment-form>
  <form class="commentForm" onsubmit={add}>
    <input type="text" placeholder="Input your name" name="author"/>
    <input type="text" placeholder="Say something..." name="content"/>
    <input type="submit" value="Post"/>
  </form>

  <script>
    this.add = () => {
      const author = this.author.value.trim()
      const content = this.content.value.trim()
      if(author && content) {
        riot.commentStore.trigger('add_comment', {author: author, text: content})

        this.author.value = ''
        this.content.value = ''
      }
    }
  </script>
</comment-form>

