import { createStore } from 'vuex'
import users from './users'

export default createStore({
  state: {
    test: 'xxxabc'
  },
  mutations: {},
  actions: {},
  modules: {
    users
  },
  getters: {
    testText: state => {
      return `HAHAHA: ${state.test} !!!`
    }
  }
})
