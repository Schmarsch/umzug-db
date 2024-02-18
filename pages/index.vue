<script lang="ts" setup>
import {
	OverviewBoxes,
	OverviewItems,
	OverviewRooms,
} from "@/components/Overview";
const activeTab = ref("rooms");
</script>

<template>
	<div class="p-8 pt-6 space-y-4">
		<div class="flex items-center justify-between space-y-2">
			<h2 class="text-3xl font-bold tracking-tight">Overview</h2>
		</div>
		<Tabs v-model="activeTab">
			<div class="flex justify-between w-full">
				<TabsList>
					<TabsTrigger
						class="px-5"
						value="rooms"
					>
						Rooms
					</TabsTrigger>
					<TabsTrigger
						class="px-5"
						value="boxes"
					>
						Boxes
					</TabsTrigger>
					<TabsTrigger
						class="px-5"
						value="items"
					>
						Items
					</TabsTrigger>
				</TabsList>
			</div>
			<TabsContent value="rooms">
				<OverviewRooms ref="rooms" />
			</TabsContent>
			<TabsContent value="boxes">
				<OverviewBoxes ref="boxes" />
			</TabsContent>
			<TabsContent value="items">
				<OverviewItems ref="items" />
			</TabsContent>
		</Tabs>
	</div>
</template>
