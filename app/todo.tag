<todo>

  <!-- 布局 -->
  <h3>TODO</h3>

  <ul>
    <li each={item, i in items}>{item}</li>
  </ul>

  <form onsubmit={handleSubmit}>
    <input><br><input type="hidden" />
    <button>Add #{items.length+1}</button>
  </form>

  <!-- css -->
  <style scoped>
    h3 {
      font-size: 14px;
      color: #7d7d7d;
    }
    h1 {
      font-size: 12px;
      color: #999;
    }
    ul {
      list-style: none;
      margin: 0;
      padding: 0;
    }
  </style>

  <!-- 业务逻辑 -->
  <script>
    this.items = []

    handleSubmit(e) {
      console.group('单击事件开始')
      console.log(e)
      console.log(e.target)
      console.log(e.target[1])
      console.groupEnd('单击事件结束')
      var input = e.target[0]
      this.items.push(input.value)
      input.value = ''
    }
  </script>
</todo>
