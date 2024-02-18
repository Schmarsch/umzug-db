<script lang="ts" setup>
const { data, pending, status } = await useLazyFetch("/api/room/all", {
	server: false,
});

// add a custompending property that is true for the first 2 seconds
// and then false
const customPending = ref(true);
setTimeout(() => {
	customPending.value = false;
}, 1500);
</script>

<template>
	<div
		class="grid gap-4 xl:grid-cols-5 lg:grid-cols-4 md:grid-cols-3 sm:grid-cols-2"
	>
		<template
			v-for="index in 4"
			v-if="pending || customPending"
		>
			<Card>
				<CardHeader>
					<CardTitle>
						<Skeleton class="h-6 w-[200px]" />
					</CardTitle>
					<CardDescription>
						<Skeleton class="h-5 w-[70px]" />
					</CardDescription>
				</CardHeader>
				<CardFooter class="flex justify-between w-full">
					<Skeleton class="h-10 w-[73px]" />
					<Skeleton class="h-10 w-[97px]" />
				</CardFooter>
			</Card>
		</template>
		<template
			v-else
			v-for="room in data?.rooms"
			:key="room.id"
		>
			<Card>
				<CardHeader>
					<CardTitle>{{ room.name }}</CardTitle>
					<CardDescription>{{ room.boxCount }} Boxes</CardDescription>
				</CardHeader>
				<CardFooter class="flex justify-between w-full">
					<Button variant="destructive"> Delete </Button>
					<Button
						variant="outline"
						class="border-primary"
						@click="$router.push(`/room/${room.id}`)"
					>
						More Info
					</Button>
				</CardFooter>
			</Card>
		</template>
	</div>
</template>
