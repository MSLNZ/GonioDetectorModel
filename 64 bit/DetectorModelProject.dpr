program DetectorModelProject;

uses
  Forms,
  SysUtils,
  ComplexNumbers in 'ComplexNumbers.pas',
  DetColumnFormatDlg in 'DetColumnFormatDlg.pas',
  DetGlobal in 'DetGlobal.pas',
  DetGraph in 'DetGraph.pas',
  DetGraphAxisDlg in 'DetGraphAxisDlg.pas',
  DetLineStyleDlg in 'DetLineStyleDlg.pas',
  DetMainForm in 'DetMainForm.pas',
  DetSpreadsheet in 'DetSpreadsheet.pas',
  LinearAlgebra in 'LinearAlgebra.pas',
  Reflectance3D in 'Reflectance3D.pas',
  ViewFactors in 'ViewFactors.pas',
  DirectPrint in 'DirectPrint.pas';

{$R *.RES}

begin
	Application.Initialize;
	if ParamCount>0 then
	begin
		MainForm.LoadFile(ParamStr(1));
		FileDirectory:=ExtractFileDir(ParamStr(1));
	end;
	Application.Run;
end.
