<script lang="ts" setup>
const route = useRoute();
const { data, pending, status } = await useFetch(`/api/room/:id`, {
	query: { id: route.params.id },
});
</script>

<template>
	<div class="p-8 pt-6 space-y-4">
		<div class="flex items-center justify-between space-y-2">
			<h2
				class="text-3xl font-bold tracking-tight"
				v-if="status === 'success' && data"
			>
				Room {{ data.name }}
			</h2>
		</div>
	</div>
</template>
