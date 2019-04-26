  -- esta es la funcion que simula el motor de BPM
  -- responde lo proximo que hay que hacer revisando que falta
  function proximo() 
  if (getEstado(""paso1foto"")==null) then 
    setCmdWidget(""TakePic"")
    setCmdParam(""dst"",""paso1foto"")
    setProcStatus(""MORE"")
    return
  end
  -- A: si llego aca ya termino paso1
  if (getEstado(""paso2mostre"")==null) then
    setCmdWidget(""ShowPicture"")
    setCmdParam(""dst"",""paso2mostre"")
    setCmdParam(""foto"", getEstado(""paso1foto""))
    setProcStatus(""MORE"")
    return
  end
  -- A: si llego aca ya termino paso2
  if (getEstado(""Edad"")==null) then
        setCmdWidget(""Form"")
        setCmdParam(""Edad"",""AlphaNumeric"")
        setCmdParam(""Nombre"", ""AlphaNumeric"")
        setProcStatus(""MORE"")
        return
  end
  -- A: si llego aca ya termino paso2
  setProcStatus(""DONE"")
end
