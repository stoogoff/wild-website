<template>
	<nav class="fixed p-4 top-0 right-0 left-0 bg-white block bg-opacity-80 z-30">
		<div class="max-w-2xl mx-auto flex px-6">
			<span class="font-bold tracking-wider leading-relaxed"><nuxt-link to="/">WILD</nuxt-link></span>
			<div class="lowercase">
				<nuxt-link to="/">Home</nuxt-link> &middot;
				<nuxt-link to="/setting">Setting</nuxt-link> &middot;
				<nuxt-link to="/game">Game</nuxt-link> &middot;
				<a href="https://app.wildrpg.com/">App</a>
			</div>
		</div>
	</nav>
</template>
<script>
import Vue from 'vue'

export default Vue.component('NavBar', {})
</script>
<style scoped>

</style>