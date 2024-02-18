import prisma from "~/lib/prisma";

export default defineEventHandler(async (event) => {
	const query = getQuery(event);
	const room = await prisma.room.findUnique({
		where: { id: query.id as string },
	});
	if (!room) {
		throw createError({
			statusCode: 404,
			message: "Room not found",
		});
	}
	return room;
});
