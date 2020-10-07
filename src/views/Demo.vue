<template>
  <div>
    <p>{{ msg }}</p>
    <hr />
    <p v-for="item in list" :key="item.id">{{ item.name }}</p>
  </div>
</template>

<script>
import { onMounted, ref, reactive } from 'vue'

export default {
  setup() {
    console.log('setup created!'),
      onMounted(() => {
        console.log('mounted!')
      })
    const msg = ref('Hello Vue3')
    const list = reactive([
      { id: 1, name: 'one' },
      { id: 2, name: 'two' },
      { id: 3, name: 'three' }
    ])

    return { msg, list }
  }
}
</script>
