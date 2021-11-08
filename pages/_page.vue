<template>
	<div class="pt-24">
		<section-box>
			<nuxt-content :document="document" />
		</section-box>
	</div>
</template>
<script>
import meta from '~/utils/meta'

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

	computed: {
		title() {
			return this.document ? this.document.title : ''
		},

		baseUrl() {
			return this.$nuxt.context.env.baseUrl
		},

		meta() {
			if(!this.document) return []

			return meta({
				type: 'article',
				title: this.title,
				description: this.document.summary,
				url: `/${this.$route.params.page}`,
			})
		}
	},

	head() {
		return {
			title: this.title,
			meta: this.meta,
			link: [
				{ hid: 'canonical', rel: 'canonical', href: `${this.baseUrl}/${this.$route.params.page}` },
			]
		}
	},
}
</script>
