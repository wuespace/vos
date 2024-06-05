(function fixPdfOverflow() {
  const pdfPreview = document.querySelector("iframe");

  if (!pdfPreview) {
    return;
  }
  pdfPreview.onload = function () {
    pdfPreview.contentWindow.document.body.style.overflow = "hidden";
  };
})();
