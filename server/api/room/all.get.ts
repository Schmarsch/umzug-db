import prisma from "@/lib/prisma";

export default defineEventHandler(async (event) => {
	const rooms = await prisma.room.findMany();
	// get the amount of boxes in each room
	const roomsWithBoxCount = await Promise.all(
		rooms.map(async (room) => {
			const boxCount = await prisma.box.count({
				where: {
					roomId: room.id,
				},
			});
			return {
				...room,
				boxCount,
			};
		})
	);
	return {
		rooms: roomsWithBoxCount,
	};
});
