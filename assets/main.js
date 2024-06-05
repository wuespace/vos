const pdfPreview = document.querySelector("iframe");

if (pdfPreview) {
	pdfPreview.onload = function () {
		pdfPreview.contentWindow.document.body.style.overflow = "hidden";
	};
}
