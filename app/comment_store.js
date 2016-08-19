function CommentStore() {
    riot.observable(this) // riot providers our event
}

riot.commentStore = new CommentStore()