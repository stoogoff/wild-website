<template>
	<footer class="bg-white bg-opacity-80 p-5">
		<div class="flex flex-col md:flex-row justify-center">
			<a class="block mx-auto md:mx-0" href="https://www.drivethrurpg.com/product/359987/WILD-Dream-Dive-Training-Simulation">
				<img src="/img/drivethrurpg.png" alt="DriveThruRPG" class="w-56 m-4" />
			</a>
			<a class="block mx-auto md:mx-0" href="https://gamefound.com/projects/stoo/wild-dream-dive-training-simulation">
				<img src="/img/gamefound.svg" alt="GameFound" class="w-56 m-4" />
			</a>
		</div>
		<div class="flex justify-center">
			<span class="p-2 text-center" v-for="(link, idx) in links" :key="`link_${idx}`">
				<a :href="link.href"><icon-view :icon="link.icon" /> {{ link.text }}</a>
			</span>
		</div>
		<div class="flex justify-center">
			<div class="text-center">
				<a href="https://we-evolve.co.uk/"><img src="/img/we-evolve-transparent.png" alt="we evolve" class="mb-2 max-w-xs" /></a>
				<p>&copy; 2020&ndash;2021 David F. Chapman and we evolve</p>
				<p>Illustration &copy; 2020, Qistina Khalidah</p>
			</div>
		</div>
	</footer>
</template>
<script>
import Vue from 'vue'

export default Vue.component('FooterSection', {
	data() {
		return {
			links: [
				{ icon: 'web', href: 'https://www.autocratik.com/', text: 'Autocratik' },
				{ icon: 'facebook', href: 'https://www.facebook.com/WILDRPG/', text: 'Facebook' },
				{ icon: 'twitter', href: 'https://twitter.com/autocratik', text: 'Twitter' },
				{ icon: 'itch', href: 'https://we-evolve.itch.io/wild-dream-dive-training-simulation', text: 'itch.io' },
			]
		}
	}
})
</script>
<style>