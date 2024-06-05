export interface PreviewProps {
  src: string;
}

export interface PreviewOptions {
  page?: number;
  zoom?: number | "page-fit" | "auto";
  pagemode?: "bookmarks" | "thumbs" | "none";
}

const defaultOptions: PreviewOptions = {
  page: 2,
  zoom: "page-fit",
  pagemode: "bookmarks",
};

function buildViewerUrl(src: string, options: PreviewOptions = defaultOptions) {
  const { zoom, page, pagemode } = { ...defaultOptions, ...options };
  const encodedSrc = encodeURIComponent(src);
  return `/pdfjs/web/viewer.html?file=${encodedSrc}#zoom=${zoom}&page=${page}&pagemode=${pagemode}`;
}

export function Preview({ src }: PreviewProps) {
  return (
    <iframe
      src={buildViewerUrl(src)}
      className="w-full h-full"
      width="100%"
      height="100%"
    />
  );
}
