% Adams / MATLAB Interface - Release 2006.1.0
machine=computer;
datestr(now)
if strcmp(machine, 'SOL2')
   arch = 'ultra';
elseif strcmp(machine, 'SGI')
   arch = 'irix32';
elseif strcmp(machine, 'GLNX86')
   arch = 'rh_linux';
elseif strcmp(machine, 'HPUX')
   arch = 'hpux11';
elseif strcmp(machine, 'IBM_RS')
   arch = 'ibmrs';
else
   arch = 'win32';
end
[flag, topdir]=unix('adamsmdr2 -top');
if flag == 0
  temp_str=strcat(topdir, arch);
  addpath(temp_str)
  temp_str=strcat(topdir, '/controls/', arch);
  addpath(temp_str)
  temp_str=strcat(topdir, '/controls/', 'matlab');
  addpath(temp_str)
  ADAMS_sysdir = strcat(topdir, '');
else
  addpath( '/home/roland/Adams/rh_linux' ) ;
  addpath( '/home/roland/Adams/controls/rh_linux' ) ;
  addpath( '/home/roland/Adams/controls/matlab' ) ;
  ADAMS_sysdir = '/home/roland/Adams/' ;
end
ADAMS_exec = '' ;
ADAMS_host = 'krid.isir.upmc.fr' ;
ADAMS_cwd ='/home/roland/Bureau/Simulateur/SimulateurAdamsFaizRobuFASTB2'  ;
ADAMS_prefix = 'Controls_Plant_1' ;
ADAMS_static = 'yes' ;
ADAMS_solver_type = 'C++' ;
if exist([ADAMS_prefix,'.adm']) == 0
   disp( ' ' ) ;
   disp( '%%% Warning : missing ADAMS plant model file.' ) ;
   disp( '%%% Please copy the exported plant model files in working directory.' ) ;
   disp( '%%% However,  it is OK if the simulation is TCP/IP-based.' ) ;
   disp( ' ' ) ;
end
ADAMS_init = '' ;
ADAMS_inputs  = 'AngleBraquageAV!AngleBraquageArriere!AccelMoteur!Stab_function' ;
ADAMS_outputs = 'PosX!PosY!PosXAvant!PosYAvant!MesureVitesse!AngleAVG!AngleAVD!AngleARG!AngleARD!VitesseRoueARD!VitesseRoueARG!VitesseLacet!roulis' ;
ADAMS_pinput  = '.V12.Controls_Plant_1.ctrl_pinput';
ADAMS_poutput = '.V12.Controls_Plant_1.ctrl_poutput';
ADAMS_uy_ids  = [
                   17
                   20
                   14
                   43
                   125
                   126
                   127
                   128
                   129
                   133
                   134
                   132
                   135
                   130
                   136
                   162
                   65
                ] ;
ADAMS_mode   = 'non-linear' ;
tmp_in  = decode( ADAMS_inputs  ) ;
tmp_out = decode( ADAMS_outputs ) ;
disp( ' ' ) ;
disp( '%%% INFO : ADAMS plant actuators names :' ) ;
disp( [int2str([1:size(tmp_in,1)]'),blanks(size(tmp_in,1))',tmp_in] ) ;
disp( '%%% INFO : ADAMS plant sensors   names :' ) ;
disp( [int2str([1:size(tmp_out,1)]'),blanks(size(tmp_out,1))',tmp_out] ) ;
disp( ' ' ) ;
clear tmp_in tmp_out ;
% Adams / MATLAB Interface - Release 2006.1.0
