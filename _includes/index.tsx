export default function({content, title}: Lume.Data, helpers: Lume.Helpers) {
	return <html>
		<head>
			<title>{title}</title>
			<link rel="stylesheet" href={helpers.url('/styles.css')} />
		</head>
		<body className="flex w-full h-full">
			{content}
		</body>
	</html>
}