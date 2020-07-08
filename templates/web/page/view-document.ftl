<!DOCTYPE html>
<html>
  <head>
    <title>PDF Viewer PDF.js</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="/static-assets/css/styles.css" />
  </head>

  <body>
    <div id="app">
      <div role="toolbar" id="toolbar">
        <div id="pager">
          <button data-pager="prev">prev</button>
          <button data-pager="next">next</button>
        </div>
        <div id="page-mode">
          <label>Page Mode <input type="number" value="1" min="1"/></label>
        </div>
      </div>
      <div id="viewport-container"><div role="main" id="viewport"></div></div>
    </div>
    <script src="https://unpkg.com/pdfjs-dist@2.0.489/build/pdf.min.js"></script>
    <script src="/static-assets/js/index.js"></script>
    <script>
      initPDFViewer("/static-assets/images/libraries/sample-signed.pdf");
    </script>
  </body>
</html>
