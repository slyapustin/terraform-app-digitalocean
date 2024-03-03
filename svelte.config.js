import node from '@sveltejs/adapter-node';
import { vitePreprocess } from "@sveltejs/vite-plugin-svelte";

const config = {
	preprocess: [vitePreprocess({})],
	kit: {
		adapter: node()
	}
};

export default config;
