<template>
  <div class="soundboard-button-container">
      <div class="soundboard-button"
           v-on:click="playSound(button)"
           :style="'background-color: ' + button.bg"
           v-for="button in buttons">
        <div class="soundboard-button-title">
          {{ button.title }}
        </div>
        <div class="soundboard-button-image-container">
          <img :src="button.gif" class="soundboard-button-img" />
        </div>
      </div>
  </div>
</template>

<style>
  .soundboard-button-container {
    @apply flex px-10 justify-center mt-10 flex-wrap
  }
  .soundboard-button-title {
    @apply font-bold text-gray-800 text-center
  }
  .soundboard-button {
    @apply w-40 p-3 rounded shadow mx-2 cursor-pointer mt-4
  }
  .soundboard-button-title-separator {
    height: 3px;
    width: 20%;
    @apply bg-white mt-2
  }
  .soundboard-button-img {
    @apply rounded
  }
  .soundboard-button-image-container {
    @apply flex items-center mt-4
  }
</style>

<script>
  export default {
    data () {
      return {
        buttons: [
          {
            title: 'Slow clap',
            internal_title: 'slow-clap',
            gif: '/sbi/slow-clap.gif',
            sound: '/sbs/slow-clap.mp3',
            bg: '#42f5f5'
          },
          {
            title: 'Drum roll',
            internal_title: "drum-roll",
            gif: '/sbi/drumroll.gif',
            sound: '/sbs/drumroll.wav',
            bg: '#f54242'
          },
          {
            title: 'Bad feeling',
            internal_title: 'bad_feeling',
            gif: '/sbi/badfeeling.gif',
            sound: '/sbs/badfeeling.mp3',
            bg: '#818cec'
          },
          {
            title: 'Ba dum tss',
            internal_title: 'ba-dum-tss',
            gif: '/sbi/badumts.gif',
            sound: '/sbs/badumts.mp3',
            bg: '#dbd467'
          },
          {
            title: 'Clapping',
            internal_title: 'clapping',
            gif: '/sbi/clapping.gif',
            sound: '/sbs/clapping.mp3',
            bg: '#a1db67'
          },
          {
            title: 'Sad trombone',
            internal_title: 'sadtrombone',
            gif: '/sbi/sadtrombone.gif',
            sound: '/sbs/sadtrombone.mp3',
            bg: '#9f67db'
          },
          {
            title: 'Laughing',
            internal_title: 'laughing',
            gif: '/sbi/laughing.gif',
            sound: '/sbs/laughing.mp3',
            bg: '#db9367'
          },
          {
            title: 'No no no',
            internal_title: 'nonono',
            gif: '/sbi/nonono.gif',
            sound: '/sbs/nonono.mp3',
            bg: '#db6767'
          },
          {
            title: 'Crickets',
            internal_title: 'crickets',
            gif: '/sbi/crickets.gif',
            sound: '/sbs/crickets.mp3',
            bg: '#67dbd3'
          },
          {
            title: 'Tada',
            internal_title: 'tada',
            gif: '/sbi/tada.gif',
            sound: '/sbs/tada.mp3',
            bg: '#f7f01b'
          }
        ]
      }
    },

    methods: {
      async playSound (button) {
       await this.$axios.post('http://localhost:3300/event', {
         "title": button.title,
         "internal_title": button['internal_title'],
         "source": {
           "name": "Soundboard Frontend",
           "triggered_by": "Ruudniew"
         }
       })
      }
    }
  }
</script>
