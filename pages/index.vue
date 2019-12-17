<template>
  <div>
    <div class="flex justify-center mt-4">
      <img src="/img/logo.png" class="w-32"/>
    </div>
    <h1 class="title text-center font-bold text-xl text-gray-800 mt-8">
      Interactive Soundboard
    </h1>
    <soundboard-buttons />
  </div>
</template>

<script>
  import SoundboardButtons from '~/components/SoundboardButtons'

  export default {
    components: {
      SoundboardButtons
    }
  }
</script>
