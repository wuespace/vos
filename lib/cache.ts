import {hash} from "./hash.ts";

const cacheKeys = new Map<string, string>();

/**
 * Check if the content of a file has changed since the last time it was checked.
 * Stores the hash of the content in a cache to compare it later.
 *
 * @param path the path to the file
 * @param content the content of the file
 * @returns an object with the cache key and a boolean indicating if the content has changed since the last time it was checked
 *
 * @example
 * ```ts
 * const {cacheKey, shouldRecompile} = checkForChanges(
 *   "file.txt",
 *   "Hello, world!"
 * );
 *
 * if (shouldRecompile) {
 *   // Recompile the file
 *   // ...
*  }
 * console.log("The cache key is", cacheKey);
 * ```
 */
export function checkForChanges(path: string, content: string) {
  const cacheKey = hash(content)
  const shouldRecompile = cacheKeys.get(path) !== cacheKey;
  cacheKeys.set(path, cacheKey);
  return {cacheKey, shouldRecompile};
}