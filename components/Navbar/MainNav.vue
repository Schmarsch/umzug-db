<script lang="ts" setup>
import { cn } from '@/lib/utils'
</script>

<template>
    <div
        :class="
            cn('flex items-center space-x-4 lg:space-x-6', $attrs.class ?? '')
        "
    >
        <NuxtLink
            to="/"
            class="text-sm font-medium transition-colors hover:text-primary"
        >
            Home
        </NuxtLink>
        <NuxtLink
            to="/newBox"
            class="text-sm font-medium transition-colors hover:text-primary"
        >
            New Box
        </NuxtLink>
    </div>
</template>
