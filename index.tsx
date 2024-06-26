export const layout = "index.tsx";
export const title = "WüSpace VOS: Satzung und Vereinsordnungen des WüSpace e. V.";

export default function Index({ comp, ...data }: Lume.Data) {
  return <>
    <comp.Aside data={data} />
    <main className="justify-center flex-1 hidden text-gray-100 bg-gray-700 place-items-center md:flex">
      <p className="text-2xl text-center">
        &larr; VO auswählen.
      </p>
    </main>
  </>
}
