<template>
  <div>
    <p>{{ msg }}</p>
    <hr />
    <p v-for="item in list" :key="item.id">{{ convertName(item.name) }}</p>
  </div>
</template>

<script>
import { onMounted, ref, reactive } from 'vue'

export default {
  setup() {
    console.log('setup created!')
    onMounted(() => {
      console.log('mounted!')
    })
    const msg = ref('Hello Vue3')
    const list = reactive([
      { id: 1, name: 'one' },
      { id: 2, name: 'two' },
      { id: 3, name: 'three' }
    ])

    const convertName = str => {
      return `name-${str}`
    }

    return { msg, list, convertName }
  }
}
</script>
