<template>
	<header class="mb-12 pt-48 pb-4 block">
		<h1 class="m-0 text-center">WILD</h1>
		<h2 class="text-center">
			<span><em>WAKE</em></span>
			<span><strong>&middot;</strong> <em>INITIATED</em></span>
			<span><strong>&middot;</strong> <em>LUCID</em></span>
			<span><strong>&middot;</strong> <em>DREAMING</em></span>
		</h2>
	</header>
</template>
<script>
import Vue from 'vue'

export default Vue.component('AnimatedHeader', {})
</script>
<style scoped>
h1 {
	line-height: 100%;
	transition: all .5s ease-in;
	transition-property: opacity;
	font-size: 120pt;
	color: rgb(59,17,64);
}

h2 strong {
	color: rgb(194,36,59);
}

h2 span {
	animation: 2s ease-in 0s 1 fade-in;
	animation-fill-mode: forwards;
	opacity: 0;
}

h2 span em {
	font-style: normal;
	display: inline-block;
	background-color: rgba(255,255,255,0.7);
	padding: 0.1rem;
}

h2 span:nth-child(2) {
	animation-delay: 1.5s;
}

h2 span:nth-child(3) {
	animation-delay: 3s;
}

h2 span:nth-child(4) {
	animation-delay: 4.5s;
}

/* animations */
@keyframes fade-in {
	0% {
		opacity: 0;
		color: rgb(233,141,137);
	}
	100% {
		opacity: 1;
		color: rgb(59,17,64);
	}
}

</style>