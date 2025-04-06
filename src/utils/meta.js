
const OG_TYPE = 'website'
const BASE_URL = 'https://www.wildrpg.com'
const BASE_TITLE = 'WILD'
const BASE_DESCRIPTION = 'WILD, a role-playing game of dream simulation using Tarot cards for task resolution.'
const BASE_IMAGE = `${BASE_URL}/img/cover-title.jpg`

export const title = meta => meta && meta.title ? `${meta.title} | WILD` : BASE_TITLE

export const url = meta => meta && meta.url ? `${BASE_URL}${meta.url}` : `${BASE_URL}/`

export const image = meta => meta && meta.image ? `${BASE_URL}${meta.image}` : BASE_IMAGE
 
export const meta = meta => {
	const newTitle = title(meta)
	const combinedUrl = url(meta)
	const newImage = image(meta)
	const newDescription = (meta && meta.description) || BASE_DESCRIPTION

	return [
		{
			hid: 'description',
			name: 'description',
			content: newDescription,
		},
		{
			hid: 'og:type',
			property: 'og:type',
			content: (meta && meta.type) || OG_TYPE,
		},
		{
			hid: 'og:url',
			property: 'og:url',
			content: combinedUrl,
		},
		{
			hid: 'og:title',
			property: 'og:title',
			content: newTitle,
		},
		{
			hid: 'og:description',
			property: 'og:description',
			content: newDescription,
		},
		{
			hid: 'og:image',
			property: 'og:image',
			content: newImage,
		},
		{
			hid: 'twitter:url',
			name: 'twitter:url',
			content: combinedUrl,
		},
		{
			hid: 'twitter:title',
			name: 'twitter:title',
			content: newTitle,
		},
		{
			hid: 'twitter:description',
			name: 'twitter:description',
			content: newDescription,
		},
		{
			hid: 'twitter:image',
			name: 'twitter:image',
			content: newImage,
		},
	]
}
