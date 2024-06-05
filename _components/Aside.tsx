import {clsx} from "@nick/clsx";
import {z} from "https://deno.land/x/zod@v3.23.8/mod.ts";
import {MetadataSchema} from "../lib/metadata.ts";

export interface AsideProps {
  data: Lume.Data;
  hide?: boolean;
}

const PropsSchema = z.object({
  data: z.object({
    url: z.string(),
    page: z.object({
      data: z.object({
        vos: z.record(z.string(), MetadataSchema),
      }),
    }),
  }),
  hide: z.boolean().default(false),
});

export default function (props: z.input<typeof PropsSchema>) {
  const {data, hide} = PropsSchema.parse(props);

  const liStyle = (targetUrl: string) =>
    clsx(
      "block p-3 hover:bg-gray-100",
      data.url === targetUrl && "bg-gray-200",
    );

  return (
    <aside className={asideClass(hide ?? false)}>
      <a href="/" className="block">
        <img
          src="/assets/logo.svg"
          alt="WüSpace"
          className="block w-32 mx-auto"
        />
        <h1 className="mx-2 my-4 text-xl text-center text-gray-900">
          VOS: Vereinsordnungssystem
        </h1>
      </a>
      <ul>
        {Object.entries(data.page.data.vos).sort(comparator).map(
          ([url, metadata]) => {
            const { abbreviation, title, resolution } = MetadataSchema.parse(
              metadata,
            );
            return (
              <li key={url}>
                <a href={url} className={liStyle(url)} title={title}>
                  <p className="text-lg text-gray-900">
                    {abbreviation}
                  </p>
                  <p className="line-clamp-1">
                    {title}
                  </p>
                  <p className="line-clamp-1">
                    <small>
                      {resolution}
                    </small>
                  </p>
                </a>
              </li>
            );
          },
        )}
      </ul>
    </aside>
  );
}

const asideClass = (hide: boolean) =>
  clsx(
    "h-full overflow-y-auto md:max-w-64",
    hide && "hidden md:block",
  );

const comparator = ([urlA]: [string, unknown], [urlB]: [string, unknown]) => {
  return urlA.localeCompare(urlB);
};
