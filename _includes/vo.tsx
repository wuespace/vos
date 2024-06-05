export const layout = "index.tsx";

export default function (data: Lume.Data) {
  return (
    <>
      <data.comp.Aside data={data} hide />
      <main className="flex-1">
        <data.comp.Preview src={data.content?.toString()} />
      </main>
    </>
  );
}
