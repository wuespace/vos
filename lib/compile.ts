export async function compileTypst(filePath: string, outPath: string) {
  // Run `typst compile` on the file
  const process = new Deno.Command("typst", {
    args: ["compile", filePath, outPath],
    stdout: "piped",
    stderr: "piped",
  });

  const { code, stderr } = await process.output();
  if (code !== 0) {
    const errorString = new TextDecoder().decode(stderr);
    console.error(errorString);
    throw new Error(`Failed to compile ${filePath}`);
  }
}
