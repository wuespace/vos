import z from "https://deno.land/x/zod@v3.23.8/mod.ts";

export type MetadataField =
  | "title"
  | "abbreviation"
  | "resolution"
  | "in-effect";

export const MetadataSchema = z.object({
  title: z.string(),
  abbreviation: z.string(),
  resolution: z.string(),
  inEffect: z.string(),
});

export type Metadata = z.infer<typeof MetadataSchema>;

const metadataCache = new Map<string, Metadata>();

/**
 * Reads metadata from a file using the typst CLI.
 * The metadata is cached to avoid reading the same file multiple times, which is slow.
 * @param filePath The path to the file to read metadata from
 * @param cacheKey A key to use for caching the metadata.
 * This should be a hash of the file content.
 */
export async function readMetadata(filePath: string, cacheKey: string): Promise<Metadata> {
  if (!metadataCache.has(cacheKey)) {
    metadataCache.set(cacheKey, {
      title: await readMetadataField(filePath, "title"),
      abbreviation: await readMetadataField(filePath, "abbreviation"),
      resolution: await readMetadataField(filePath, "resolution"),
      inEffect: await readMetadataField(filePath, "in-effect"),
    });
  }
  return metadataCache.get(cacheKey)!;
}

export async function readMetadataField(
  filePath: string,
  field: MetadataField,
) {
  const process = new Deno.Command("typst", {
    args: ["query", filePath, `<${field}>`, "--field", "value"],
  });

  const { code, stdout, stderr } = await process.output();
  if (code !== 0) {
    const errorString = new TextDecoder().decode(stderr);
    console.error(errorString);
    throw new Error(`Failed to read metadata for ${filePath}`);
  }

  const result = JSON.parse(new TextDecoder().decode(stdout));
  if (result.length === 0) {
    throw new Error(`No metadata found for ${filePath}`);
  }
  return result[0];
}
