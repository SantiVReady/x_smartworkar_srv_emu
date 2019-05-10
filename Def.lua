-- esta es la funcion que simula el motor de BPM
-- responde lo proximo que hay que hacer revisando que falta
function proximo()
    if (getEstado("pdfURL")==null) then
      setCmdWidget("PDF")
      setCmdParam("Celia Hodent.pdf","pdfURL")
      setCmdParam("0","initialPage")
      setCmdParam("true","showBookmarks")
      setCmdParam("true","showTopBar")
      setCmdParam("false","showVertialScroll")
      setProcStatus("MORE")
      return
end
  setProcStatus("DONE")
end
