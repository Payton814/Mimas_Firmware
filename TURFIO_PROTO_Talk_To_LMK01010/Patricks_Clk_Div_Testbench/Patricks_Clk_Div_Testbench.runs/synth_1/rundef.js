//
// Vivado(TM)
// rundef.js: a Vivado-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
  PathVal = "C:/Users/Payton/Vivado/2020.2/ids_lite/ISE/bin/nt64;C:/Users/Payton/Vivado/2020.2/ids_lite/ISE/lib/nt64;C:/Users/Payton/Vivado/2020.2/bin;";
} else {
  PathVal = "C:/Users/Payton/Vivado/2020.2/ids_lite/ISE/bin/nt64;C:/Users/Payton/Vivado/2020.2/ids_lite/ISE/lib/nt64;C:/Users/Payton/Vivado/2020.2/bin;" + PathVal;
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


ISEStep( "vivado",
         "-log clk_div_test.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source clk_div_test.tcl" );



function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
