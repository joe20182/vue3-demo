export default {
  state: {
    users: []
  },
  mutations: {
    SET_USER(state, data) {
      state.users = data
    }
  },
  actions: {
    getUsers({ commit }) {
      const list = [
        { id: 1, name: 'Bob' },
        { id: 2, name: 'Jeff' },
        { id: 3, name: 'Candy' }
      ]
      commit('SET_USER', list)
    }
  }
}
