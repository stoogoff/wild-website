<template>
	<section class="bg-white bg-opacity-80 p-6 mb-12">
		<slot></slot>
	</section>
</template>
<script>
import Vue from 'vue'

export default Vue.component('SectionBox', {})
</script>
<style scoped>
p:first-child {
	@apply mt-0 text-lg;
}
p:last-child {
	@apply mb-0;
}
</style>