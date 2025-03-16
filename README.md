# cs357s_project
Project repo for cs357s

Rocket RISC-V CPU: https://github.com/chipsalliance/rocket-chip
RTL2MuPATH: https://github.com/yaohsiaopid/synthlc/blob/master/03-rtl2mupath.md
YoSys: https://github.com/YosysHQ/yosys
Verific: https://www.verific.com/evaluation-package/

change in 
hdl.f.template for design files
jg_base.tcl.template for clock and reset
setup_scripts.sh for top module
env.sh for all 3 env para
in RUN_JG.sh, change for top module

to rerun run_duvpls.sh  
rm xDUVPLs/reachable_duvpls.sv  
rm -r xDUVPLs/xDUVPLs_rundir/xDUVPLs_jgsession*  

to rerun run_gendfg.sh  
rm -r synthlc/xGenPerfLocDfgDiv/tmp_rundir/tmp_jgsession*  
then try: BYPASS=0 ./run_gendfg.sh  

Changes in run_gendfg.sh to avoid overwriting the generated dfg_e.txt  
