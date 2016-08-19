function CommentStore() {
    // 使 CommentStore 的实例 成为 observable
    // 该 CommentStore 的实例就可以触发和监听事件了
    riot.observable(this) // riot providers our event
}

riot.commentStore = new CommentStore()