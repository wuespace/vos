export async function checkPrerequisities() {
	const process = new Deno.Command("typst", {
		args: ["--version"],
	});

	const { code, stderr } = await process.output();
	if (code !== 0) {
		const errorString = new TextDecoder().decode(stderr);
		console.error(errorString);
		throw new Error(`Failed to check typst version. Please make sure typst is installed.`);
	}
}