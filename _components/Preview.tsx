export interface PreviewProps {
	src: string;
}

export function Preview({src}: PreviewProps) {
	return <object data={src + "#view=fit"} type="application/pdf" className="w-full h-full" width="100%" height="100%">
		<param name="view" value="fit" />
	</object>;
}