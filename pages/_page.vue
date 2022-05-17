<template>
	<div class="pt-24">
		<section-box>
			<nuxt-content :document="document" />
		</section-box>
	</div>
</template>
<script>
import { meta, title, url } from '~/utils/meta'

export default {
	async fetch() {
		const { params } = this.$nuxt.context

		try {
			this.document = await this.$content(params.page).fetch()
		}
		catch(error) {
			this.document = await this.$content('404').fetch()
		}
	},

	data() {
		return {
			document: null
		}
	},

	head() {
		if(!this.document) return {}

		const metadata = {
			type: 'article',
			title: this.document.title,
			description: this.document.summary,
			url: `/${this.$route.params.page}/`,
		}

		return {
			title: title(metadata),
			meta: meta(metadata),
			link: [
				{ hid: 'canonical', rel: 'canonical', href: url(metadata) },
			]
		}
	},
}
</script>
