import { Aside } from "./_components/Aside.tsx";

export const layout = "index.tsx";

export default function Index({ vos, ...data }: Lume.Data, helpers: Lume.Helpers) {
  return <>
    <Aside data={data} />
    <main className="justify-center flex-1 hidden text-gray-100 bg-gray-700 place-items-center md:flex">
      <p className="text-2xl text-center">
        &larr; VO auswählen.
      </p>
    </main>
  
  </>
}
