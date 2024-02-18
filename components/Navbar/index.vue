<script lang="ts" setup>
import { Package } from "lucide-vue-next";
</script>

<template>
	<div class="border-b">
		<div class="flex items-center h-16 px-4">
			<Package :size="32" />
			<NavbarMainNav class="mx-6" />
			<div class="flex items-center ml-auto space-x-4">
				<NavbarSearch />
				<ColorToggle />
				<NavbarUserNav />
			</div>
		</div>
	</div>
</template>
