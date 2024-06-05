import { Aside } from "../_components/Aside.tsx";
import { Preview } from "../_components/Preview.tsx";

export const layout = "index.tsx";
export default function (data: Lume.Data, helpers: Lume.Helpers) {
  return (
    <>
      <Aside vos={data.page.data.vos} data={data} hide />
      <main className="flex-1">
        <Preview src={data.content as string} />
      </main>
    </>
  );
}
