setMode -bs
setMode -bs
setCable -port auto
Identify 
identifyMPM 
assignFile -p 1 -file "C:/Documents and Settings/kloftis/Desktop/CENG 450 - KL/count_mem_sch/count_mem.bit"
Program -p 1 
saveProjectFile -file "C:/Documents and Settings/kloftis/Desktop/CENG 450 - KL/count_mem_sch/count_mem_sch.ipf"
setMode -bs
deleteDevice -position 1
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
setMode -bs
