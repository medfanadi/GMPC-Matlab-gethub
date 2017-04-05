!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = mm  &
   angle = rad  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 50.0  &
   spacing_for_grid = 1000.0
!
!--------------------------- Plugins used by Model ----------------------------!
!
!
plugin load  &
   plugin_name = .MDI.plugins.controls
!
!------------------------------ Adams/View Model ------------------------------!
!
!
model create  &
   model_name = V12
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .V12.AccelMoteur  &
   adams_id = 14  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.AngleBraquageAV  &
   adams_id = 17  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.AngleBraquageArriere  &
   adams_id = 20  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.SteerFunction  &
   adams_id = 42  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.Stab_function  &
   adams_id = 43  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.ang_roll  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.force_verin  &
   adams_id = 62  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.roulis  &
   adams_id = 65  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.vitesse_out  &
   adams_id = 66  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.couple_in_FR  &
   adams_id = 67  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.couple_in_FL  &
   adams_id = 68  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.couple_in_RR  &
   adams_id = 69  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.couple_in_RL  &
   adams_id = 70  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.FZRR  &
   adams_id = 96  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.FZFR  &
   adams_id = 97  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.FZFL  &
   adams_id = 98  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .V12.FZRL  &
   adams_id = 99  &
   initial_condition = 0.0  &
   function = ""
!
!--------------------------------- Materials ----------------------------------!
!
!
material create  &
   material_name = .V12.steel  &
   adams_id = 9  &
   youngs_modulus = 2.07E+005  &
   poissons_ratio = 0.29  &
   density = 7.801E-006
!
material create  &
   material_name = .V12.steel_2  &
   adams_id = 2  &
   youngs_modulus = 2.07E+005  &
   poissons_ratio = 0.29  &
   density = 7.801E-006
!
material create  &
   material_name = .V12.aluminum  &
   adams_id = 3  &
   youngs_modulus = 7.1705E+004  &
   poissons_ratio = 0.33  &
   density = 2.74E-006
!
material create  &
   material_name = .V12.cast_iron  &
   adams_id = 4  &
   youngs_modulus = 1.0E+005  &
   poissons_ratio = 0.211  &
   density = 7.08E-006  &
   comments = "ASTM 35 Cast Iron"
!
material create  &
   material_name = .V12.steel_2_2  &
   adams_id = 5  &
   youngs_modulus = 2.07E+005  &
   poissons_ratio = 0.29  &
   density = 7.801E-006
!
material create  &
   material_name = .V12.steel_3  &
   adams_id = 6  &
   youngs_modulus = 2.07E+005  &
   poissons_ratio = 0.29  &
   density = 7.801E-006
!
material create  &
   material_name = .V12.steel_4  &
   adams_id = 7  &
   youngs_modulus = 2.07E+005  &
   poissons_ratio = 0.29  &
   density = 7.801E-006
!
material create  &
   material_name = .V12.steel_5  &
   adams_id = 8  &
   youngs_modulus = 2.07E+005  &
   poissons_ratio = 0.29  &
   density = 7.801E-006
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.ground.PSMAR111  &
   adams_id = 138  &
   location = 7.0E+004, -3100.0, -9.0E+004  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .V12.ground.PSMAR111  &
   visibility = off
!
marker create  &
   marker_name = .V12.ground.PSMAR111_3  &
   adams_id = 507  &
   location = 7.0E+004, -3100.0, -9.0E+004  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .V12.ground.PSMAR111_3  &
   visibility = off
!
marker create  &
   marker_name = .V12.ground.PSMAR111_4  &
   adams_id = 509  &
   location = 7.0E+004, -3100.0, -9.0E+004  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker attributes  &
   marker_name = .V12.ground.PSMAR111_4  &
   visibility = off
!
marker create  &
   marker_name = .V12.ground.MARKER_580  &
   adams_id = 580  &
   location = -1.89E+004, -300.0, -4.7E+004  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
part create rigid_body mass_properties  &
   part_name = .V12.ground  &
   material_type = .V12.steel
!
! ****** Graphics for current part ******
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground.MARKER_580
!
geometry create shape extrusion  &
   extrusion_name = .V12.ground.EXTRUSION_3503  &
   reference_marker = .V12.ground.MARKER_580  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 0.0, -5.0E+004, 0.0  &
      , 8.5E+004, -5.0E+004, 0.0  &
      , 8.5E+004, 0.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 50.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry attributes  &
   geometry_name = .V12.ground.EXTRUSION_3503  &
   color = BLACK  &
   transparency = 80
!
part attributes  &
   part_name = .V12.ground  &
   name_visibility = off
!
!---------------------------------- CHASSIS -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.CHASSIS  &
   adams_id = 7  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_496  &
   adams_id = 496  &
   location = -511.058073544, 456.9738861315, -498.7816396001  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_271  &
   adams_id = 271  &
   location = 272.6504780707, 175.1050613309, -651.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.cm  &
   adams_id = 112  &
   location = -628.0107243794, 374.9451565327, -496.4868626177  &
   orientation = 4.7285245614, 1.5454506987, 1.5757370955
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_294  &
   adams_id = 294  &
   location = 272.6504780707, 178.2099224975, -357.0376380301  &
   orientation = 1.5707963268, 1.5707963268, 0.6208851275
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_30  &
   adams_id = 30  &
   location = -170.0, 407.2650768004, -393.6524016804  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_32  &
   adams_id = 32  &
   location = 200.0, 200.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_34  &
   adams_id = 34  &
   location = 200.0, 0.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_65  &
   adams_id = 65  &
   location = -170.0, 200.0, -600.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.cm_2  &
   adams_id = 66  &
   location = 0.0, 200.0, -500.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_67  &
   adams_id = 67  &
   location = -170.0, 350.0, -450.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_68  &
   adams_id = 68  &
   location = 200.0, 200.0, -600.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_69  &
   adams_id = 69  &
   location = 200.0, 350.0, -450.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_70  &
   adams_id = 70  &
   location = -170.0, 400.0, -600.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_72  &
   adams_id = 72  &
   location = -200.0, 200.0, -600.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_73  &
   adams_id = 73  &
   location = -200.0, 0.0, -600.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_198  &
   adams_id = 198  &
   location = 170.0, 350.0, -550.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_263  &
   adams_id = 263  &
   location = 272.6504780707, 175.1050613309, -651.7588508563  &
   orientation = 1.5658934055, 1.5750700724, 1.5707753729
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_1061  &
   adams_id = 106  &
   location = 394.7679062886, 177.3056755384, -498.9754354791  &
   orientation = 5.5170495068, 7.5177287238E-003, 0.7661499191
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_199  &
   adams_id = 199  &
   location = 170.0, 200.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_295  &
   adams_id = 295  &
   location = 357.1370239987, 178.2099224975, -357.0376380301  &
   orientation = 6.2216661217, 3.1296483786, 1.5092815185
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_300  &
   adams_id = 300  &
   location = 272.6504780707, 178.2099224975, -357.0376380301  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_2711  &
   adams_id = 337  &
   location = -977.3495219293, 175.1050613309, -651.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_2941  &
   adams_id = 339  &
   location = -977.3495219293, 178.2099224975, -357.0376380301  &
   orientation = 1.5707963268, 1.5707963268, 0.6208851275
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_211  &
   adams_id = 340  &
   location = -1450.0, 200.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_221  &
   adams_id = 341  &
   location = -1450.0, 350.0, -550.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_301  &
   adams_id = 342  &
   location = -1420.0, 407.2650768004, -393.6524016804  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_321  &
   adams_id = 343  &
   location = -1050.0, 200.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_341  &
   adams_id = 344  &
   location = -1050.0, 0.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_651  &
   adams_id = 345  &
   location = -1420.0, 200.0, -600.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.cm_21  &
   adams_id = 346  &
   location = -1250.0, 200.0, -500.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_671  &
   adams_id = 347  &
   location = -1420.0, 350.0, -450.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_681  &
   adams_id = 348  &
   location = -1050.0, 200.0, -600.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_691  &
   adams_id = 349  &
   location = -1050.0, 350.0, -450.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_701  &
   adams_id = 350  &
   location = -1420.0, 400.0, -600.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_721  &
   adams_id = 351  &
   location = -1450.0, 200.0, -600.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_731  &
   adams_id = 352  &
   location = -1450.0, 0.0, -600.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_2631  &
   adams_id = 354  &
   location = -977.3495219293, 175.1050613309, -651.7588508563  &
   orientation = 1.5658934055, 1.5750700724, 1.5707753729
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_10611  &
   adams_id = 356  &
   location = -855.2320937114, 177.3056755384, -498.9754354791  &
   orientation = 5.5170495068, 7.5177287238E-003, 0.7661499191
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_1471  &
   adams_id = 359  &
   location = -1080.0, 200.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_1481  &
   adams_id = 360  &
   location = -1080.0, 350.0, -550.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_2951  &
   adams_id = 362  &
   location = -892.8629760013, 178.2099224975, -357.0376380301  &
   orientation = 6.2216661217, 3.1296483786, 1.5092815185
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_3001  &
   adams_id = 363  &
   location = -977.3495219293, 178.2099224975, -357.0376380301  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_499  &
   adams_id = 499  &
   location = -200.0, 200.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_500  &
   adams_id = 500  &
   location = -200.0, 350.0, -550.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_501  &
   adams_id = 501  &
   location = 200.0, -20.0, -400.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_502  &
   adams_id = 502  &
   location = 390.0, 180.0, -400.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_503  &
   adams_id = 503  &
   location = -1380.0, 180.0, -560.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_504  &
   adams_id = 504  &
   location = -790.0, 20.0, -260.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.CHASSIS.Marker_9  &
   adams_id = 512  &
   location = -170.0, 407.2650768004, -393.6524016804  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.CHASSIS.Marker_11  &
   adams_id = 514  &
   location = -170.0, 400.0, -600.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.CHASSIS.Marker_17  &
   adams_id = 516  &
   location = -1420.0, 407.2650768004, -393.6524016804  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.CHASSIS.Marker_19  &
   adams_id = 518  &
   location = -1420.0, 400.0, -600.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.CHASSIS.Marker_21  &
   adams_id = 520  &
   location = -170.0, 407.2650768004, -393.6524016804  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.CHASSIS.Marker_23  &
   adams_id = 522  &
   location = -170.0, 400.0, -600.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.CHASSIS.Marker_28  &
   adams_id = 524  &
   location = -1420.0, 407.2650768004, -393.6524016804  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.CHASSIS.Marker_41  &
   adams_id = 526  &
   location = -1420.0, 400.0, -600.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.CHASSIS.MARKERREF  &
   adams_id = 608  &
   location = -653.0107243794, 147.9451565327, -501.4868626177  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_609  &
   adams_id = 609  &
   location = -653.0107243794, 93.9451565327, -473.4868626177  &
   orientation = 1.5707963268, 1.5707963268, 5.87194401
!
marker create  &
   marker_name = .V12.CHASSIS.MARKER_610  &
   adams_id = 610  &
   location = -653.0107243794, 93.9451565327, -473.4868626177  &
   orientation = 1.5707963268, 1.5707963268, 5.87194401
!
part create rigid_body mass_properties  &
   part_name = .V12.CHASSIS  &
   mass = 300.0  &
   center_of_mass_marker = .V12.CHASSIS.cm  &
   ixx = 6.2527576637E+007  &
   iyy = 6.1564153098E+007  &
   izz = 4.0E+006  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS.MARKER_199
!
geometry create shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_10  &
   reference_marker = .V12.CHASSIS.MARKER_199  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 0.0, -200.0, 0.0  &
      , -200.0, -200.0, 0.0  &
      , -200.0, 0.0, 0.0  &
      , -200.0, 200.0, 0.0  &
      , 0.0, 200.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = -30.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS.MARKER_198
!
geometry create shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_11  &
   reference_marker = .V12.CHASSIS.MARKER_198  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 100.0, 0.0, 0.0  &
      , 100.0, -300.0, 0.0  &
      , 0.0, -300.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = -30.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS
!
geometry create shape csg  &
   csg_name = .V12.CHASSIS.CSG_631  &
   adams_id = 631  &
   base_object = .V12.CHASSIS.EXTRUSION_10  &
   object = .V12.CHASSIS.EXTRUSION_11  &
   type = difference
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS.MARKER_1471
!
geometry create shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_2711  &
   reference_marker = .V12.CHASSIS.MARKER_1471  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 0.0, -200.0, 0.0  &
      , -200.0, -200.0, 0.0  &
      , -200.0, 0.0, 0.0  &
      , -200.0, 200.0, 0.0  &
      , 0.0, 200.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = -30.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS.MARKER_1481
!
geometry create shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_4  &
   reference_marker = .V12.CHASSIS.MARKER_1481  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 100.0, 0.0, 0.0  &
      , 100.0, -300.0, 0.0  &
      , 0.0, -300.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = -30.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS
!
geometry create shape csg  &
   csg_name = .V12.CHASSIS.CSG_6321  &
   adams_id = 1576  &
   base_object = .V12.CHASSIS.EXTRUSION_2711  &
   object = .V12.CHASSIS.EXTRUSION_4  &
   type = difference
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS.MARKER_211
!
geometry create shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_7  &
   reference_marker = .V12.CHASSIS.MARKER_211  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 0.0, -200.0, 0.0  &
      , -200.0, -200.0, 0.0  &
      , -200.0, 0.0, 0.0  &
      , -200.0, 200.0, 0.0  &
      , 0.0, 200.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = -30.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS.MARKER_221
!
geometry create shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_8  &
   reference_marker = .V12.CHASSIS.MARKER_221  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 100.0, 0.0, 0.0  &
      , 100.0, -300.0, 0.0  &
      , 0.0, -300.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = -30.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS
!
geometry create shape csg  &
   csg_name = .V12.CHASSIS.CSG_6501  &
   adams_id = 1615  &
   base_object = .V12.CHASSIS.EXTRUSION_7  &
   object = .V12.CHASSIS.EXTRUSION_8  &
   type = difference
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS.MARKER_499
!
geometry create shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_5  &
   reference_marker = .V12.CHASSIS.MARKER_499  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 0.0, -200.0, 0.0  &
      , -200.0, -200.0, 0.0  &
      , -200.0, 0.0, 0.0  &
      , -200.0, 200.0, 0.0  &
      , 0.0, 200.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = -30.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS.MARKER_500
!
geometry create shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_6  &
   reference_marker = .V12.CHASSIS.MARKER_500  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 100.0, 0.0, 0.0  &
      , 100.0, -300.0, 0.0  &
      , 0.0, -300.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = -30.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS
!
geometry create shape csg  &
   csg_name = .V12.CHASSIS.CSG  &
   adams_id = 2611  &
   base_object = .V12.CHASSIS.EXTRUSION_5  &
   object = .V12.CHASSIS.EXTRUSION_6  &
   type = difference
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS.MARKER_502
!
geometry create shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_2755  &
   reference_marker = .V12.CHASSIS.MARKER_502  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , -1850.0, 0.0, 0.0  &
      , -1850.0, 200.0, 0.0  &
      , 0.0, 200.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 40.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS.MARKER_503
!
geometry create shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_2791  &
   reference_marker = .V12.CHASSIS.MARKER_503  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 1700.0, 0.0, 0.0  &
      , 1700.0, -120.0, 0.0  &
      , 0.0, -120.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 60.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS
!
geometry create shape csg  &
   csg_name = .V12.CHASSIS.CSG_2827  &
   adams_id = 2827  &
   base_object = .V12.CHASSIS.EXTRUSION_2755  &
   object = .V12.CHASSIS.EXTRUSION_2791  &
   type = difference
!
geometry attributes  &
   geometry_name = .V12.CHASSIS.CSG_2827  &
   color = BLUE
!
geometry create shape cylinder  &
   cylinder_name = .V12.CHASSIS.CYLINDER_852  &
   adams_id = 852  &
   center_marker = .V12.CHASSIS.MARKER_263  &
   angle_extent = 6.2831853072  &
   length = 84.271628447  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .V12.CHASSIS.CYLINDER_1196  &
   adams_id = 1196  &
   center_marker = .V12.CHASSIS.MARKER_295  &
   angle_extent = 6.2831853072  &
   length = 295.1024174772  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .V12.CHASSIS.CYLINDER_1195  &
   adams_id = 1195  &
   center_marker = .V12.CHASSIS.MARKER_294  &
   angle_extent = 6.2831853072  &
   length = 84.486545928  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .V12.CHASSIS.CYLINDER_8521  &
   adams_id = 1771  &
   center_marker = .V12.CHASSIS.MARKER_2631  &
   angle_extent = 6.2831853072  &
   length = 84.271628447  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .V12.CHASSIS.CYLINDER_11961  &
   adams_id = 1797  &
   center_marker = .V12.CHASSIS.MARKER_2951  &
   angle_extent = 6.2831853072  &
   length = 295.1024174772  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .V12.CHASSIS.CYLINDER_11951  &
   adams_id = 1810  &
   center_marker = .V12.CHASSIS.MARKER_2941  &
   angle_extent = 6.2831853072  &
   length = 84.486545928  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS.MARKER_501
!
geometry create shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_2719  &
   reference_marker = .V12.CHASSIS.MARKER_501  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , -1650.0, 0.0, 0.0  &
      , -1650.0, 200.0, 0.0  &
      , 0.0, 200.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 40.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS.MARKER_504
!
geometry create shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_3109  &
   reference_marker = .V12.CHASSIS.MARKER_504  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 0.0, 180.0, 0.0  &
      , -260.0, 180.0, 0.0  &
      , -260.0, -20.0, 0.0  &
      , 0.0, -20.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 100.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.CHASSIS
!
geometry attributes  &
   geometry_name = .V12.CHASSIS.EXTRUSION_3109  &
   visibility = off  &
   render = wireframe
!
part attributes  &
   part_name = .V12.CHASSIS  &
   color = BLUE
!
!------------------------------------ TINF ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.TINF  &
   adams_id = 3  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TINF
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.TINF.cm  &
   adams_id = 113  &
   location = 9.4810591383, -30.5864334935, -263.744030699  &
   orientation = 3.116467824, 2.9014993089, 1.5517750933
!
marker create  &
   marker_name = .V12.TINF.MARKER_4  &
   adams_id = 4  &
   location = -200.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF.MARKER_5  &
   adams_id = 5  &
   location = 100.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF.MARKER_6  &
   adams_id = 6  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.TINF.MARKER_29  &
   adams_id = 29  &
   location = -156.8841457443, -63.2298689181, -88.688438945  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.TINF.MARKER_33  &
   adams_id = 33  &
   location = 200.0, 0.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.TINF.MARKER_118  &
   adams_id = 118  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.TINF.MARKER_248  &
   adams_id = 248  &
   location = -156.8841457443, -70.4949457185, -95.0360372646  &
   orientation = 3.129218615, 1.3257086178, 3.1340101225
!
marker create  &
   marker_name = .V12.TINF.MARKER_249  &
   adams_id = 249  &
   location = 152.6504780707, -74.8949386691, -92.7588508563  &
   orientation = 3.129218615, 1.3257086178, 3.1340101225
!
marker create  &
   marker_name = .V12.TINF.MARKER_254  &
   adams_id = 254  &
   location = -0.266513125, -30.2973253931, -263.487912811  &
   orientation = 1.5458074817, 3.1479488901E-004, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF.MARKER_255  &
   adams_id = 255  &
   location = 266.9059410856, -36.975046486, -263.572043603  &
   orientation = 1.5458074817, 3.1479488901E-004, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF.MARKER_252  &
   adams_id = 252  &
   location = -200.0, 0.0, -400.0  &
   orientation = 3.1415926536, 1.3258176637, 2.0224297679
!
marker create  &
   marker_name = .V12.TINF.MARKER_277  &
   adams_id = 277  &
   location = 266.9059410856, -36.975046486, -263.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.TINF.Marker_8  &
   adams_id = 511  &
   location = -156.8841457443, -63.2298689181, -88.688438945  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.TINF.Marker_20  &
   adams_id = 519  &
   location = -156.8841457443, -63.2298689181, -88.688438945  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .V12.TINF  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TINF.MARKER_252
!
geometry create shape extrusion  &
   extrusion_name = .V12.TINF.EXTRUSION_81  &
   reference_marker = .V12.TINF.MARKER_252  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 458.2575694956, 2.1963109775E-010, 0.0  &
      , 174.5743121886, 359.8941643371, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TINF
!
geometry create shape link  &
   link_name = .V12.TINF.LINK_48  &
   i_marker = .V12.TINF.MARKER_248  &
   j_marker = .V12.TINF.MARKER_249  &
   width = 30.9574270339  &
   depth = 15.478713517
!
geometry create shape csg  &
   csg_name = .V12.TINF.CSG_945  &
   adams_id = 945  &
   base_object = .V12.TINF.EXTRUSION_81  &
   object = .V12.TINF.LINK_48  &
   type = union
!
geometry create shape cylinder  &
   cylinder_name = .V12.TINF.CYLINDER_5  &
   adams_id = 5  &
   center_marker = .V12.TINF.MARKER_4  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.TINF.CSG_949  &
   adams_id = 949  &
   base_object = .V12.TINF.CYLINDER_5  &
   object = .V12.TINF.CSG_945  &
   type = union
!
geometry create shape link  &
   link_name = .V12.TINF.LINK_799  &
   i_marker = .V12.TINF.MARKER_254  &
   j_marker = .V12.TINF.MARKER_255  &
   width = 26.7255906064  &
   depth = 13.3627953032
!
geometry create shape csg  &
   csg_name = .V12.TINF.CSG_969  &
   adams_id = 969  &
   base_object = .V12.TINF.CSG_949  &
   object = .V12.TINF.LINK_799  &
   type = union
!
geometry create shape cylinder  &
   cylinder_name = .V12.TINF.CYLINDER_6  &
   adams_id = 6  &
   center_marker = .V12.TINF.MARKER_5  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.TINF.CSG_4597  &
   adams_id = 4597  &
   base_object = .V12.TINF.CSG_969  &
   object = .V12.TINF.CYLINDER_6  &
   type = union
!
geometry create shape ellipsoid  &
   ellipsoid_name = .V12.TINF.ELLIPSOID_7  &
   adams_id = 360  &
   center_marker = .V12.TINF.MARKER_6  &
   x_scale_factor = 40.0  &
   y_scale_factor = 40.0  &
   z_scale_factor = 40.0
!
part attributes  &
   part_name = .V12.TINF  &
   color = MAIZE
!
!------------------------------------ TSUP ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.TSUP  &
   adams_id = 4  &
   location = 0.0, 207.2650768004, 6.3475983196  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.TSUP.cm  &
   adams_id = 8  &
   location = -3.4280190916, -21.7091851984, -298.8124194976  &
   orientation = 2.9467765191, 2.8971120187, 1.3819598341
!
marker create  &
   marker_name = .V12.TSUP.MARKER_4  &
   adams_id = 9  &
   location = -200.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TSUP.MARKER_5  &
   adams_id = 10  &
   location = 100.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TSUP.MARKER_6  &
   adams_id = 11  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.TSUP.MARKER_7  &
   adams_id = 12  &
   location = -200.0, 0.0, -400.0  &
   orientation = 3.1415926536, 1.3258176637, 2.0224297679
!
marker create  &
   marker_name = .V12.TSUP.MARKER_13  &
   adams_id = 13  &
   location = -149.7644287657, -8.4462177104, -366.215129159  &
   orientation = 3.1415926536, 1.3258176637, 2.0224297679
!
marker create  &
   marker_name = .V12.TSUP.MARKER_31  &
   adams_id = 31  &
   location = 200.0, 0.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.TSUP.MARKER_37  &
   adams_id = 37  &
   location = 0.0, -100.0, 0.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
part create rigid_body mass_properties  &
   part_name = .V12.TSUP  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP.MARKER_7
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP.EXTRUSION_1_2  &
   reference_marker = .V12.TSUP.MARKER_7  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 458.2575694956, 2.1923558088E-010, 0.0  &
      , 174.5743121886, 359.8941643371, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP.MARKER_13
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP.EXTRUSION_2_2  &
   reference_marker = .V12.TSUP.MARKER_13  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 135.0, 275.0, 0.0  &
      , 360.0, -5.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP
!
geometry create shape csg  &
   csg_name = .V12.TSUP.CSG_20  &
   adams_id = 20  &
   base_object = .V12.TSUP.EXTRUSION_1_2  &
   object = .V12.TSUP.EXTRUSION_2_2  &
   type = difference
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP.MARKER_7
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP.EXTRUSION_1  &
   reference_marker = .V12.TSUP.MARKER_7  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 458.2575694956, 2.1923558088E-010, 0.0  &
      , 174.5743121886, 359.8941643371, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP.MARKER_13
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP.EXTRUSION_2  &
   reference_marker = .V12.TSUP.MARKER_13  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 135.0, 275.0, 0.0  &
      , 360.0, -5.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP
!
geometry create shape csg  &
   csg_name = .V12.TSUP.CSG_902  &
   adams_id = 902  &
   base_object = .V12.TSUP.EXTRUSION_1  &
   object = .V12.TSUP.EXTRUSION_2  &
   type = difference
!
geometry create shape cylinder  &
   cylinder_name = .V12.TSUP.CYLINDER_5  &
   adams_id = 11  &
   center_marker = .V12.TSUP.MARKER_4  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .V12.TSUP.CYLINDER_6  &
   adams_id = 14  &
   center_marker = .V12.TSUP.MARKER_5  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape ellipsoid  &
   ellipsoid_name = .V12.TSUP.ELLIPSOID_7  &
   adams_id = 17  &
   center_marker = .V12.TSUP.MARKER_6  &
   x_scale_factor = 40.0  &
   y_scale_factor = 40.0  &
   z_scale_factor = 40.0
!
part attributes  &
   part_name = .V12.TSUP  &
   color = BLUE_GRAY
!
!------------------------------------ FUSE ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.FUSE  &
   adams_id = 5  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.FUSE
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.FUSE.MARKER_16  &
   adams_id = 16  &
   location = 0.0, 0.0, 150.0  &
   orientation = 1.5707963268, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.FUSE.MARKER_14  &
   adams_id = 14  &
   location = 0.0, 100.0, 0.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.FUSE.cm  &
   adams_id = 114  &
   location = 7.4908057103E-005, 5.662043638E-004, 67.689322991  &
   orientation = 6.1807947326, 2.8122399792E-005, 0.1023615189
!
marker create  &
   marker_name = .V12.FUSE.MARKER_38  &
   adams_id = 38  &
   location = 0.0, 100.0, 0.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.FUSE.MARKER_125  &
   adams_id = 125  &
   location = 0.0, 0.0, 150.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.FUSE.MARKER_119  &
   adams_id = 119  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.FUSE.MARKER_532  &
   adams_id = 532  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.FUSE.MARKER_611  &
   adams_id = 611  &
   location = 0.0, 0.0, 150.0  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .V12.FUSE  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.FUSE.CYLINDER_25  &
   adams_id = 25  &
   center_marker = .V12.FUSE.MARKER_16  &
   angle_extent = 6.2831853072  &
   length = 160.0  &
   radius = 45.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .V12.FUSE.CYLINDER_23  &
   adams_id = 23  &
   center_marker = .V12.FUSE.MARKER_14  &
   angle_extent = 6.2831853072  &
   length = 200.0  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.FUSE.CSG_26  &
   adams_id = 26  &
   base_object = .V12.FUSE.CYLINDER_25  &
   object = .V12.FUSE.CYLINDER_23  &
   type = union
!
part attributes  &
   part_name = .V12.FUSE  &
   color = GREEN
!
!------------------------------------ roue ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.roue  &
   adams_id = 6  &
   location = -230.0, 0.0, -1530.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
defaults coordinate_system  &
   default_coordinate_system = .V12.roue
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.roue.MARKER_1  &
   adams_id = 1  &
   location = 380.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue.MARKER_2  &
   adams_id = 2  &
   location = 380.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue.MARKER_15  &
   adams_id = 15  &
   location = 375.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue.cm  &
   adams_id = 115  &
   location = 452.2026304859, 4.3699980768E-010, -230.0000000003  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.roue.MARKER_128  &
   adams_id = 128  &
   location = 380.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 4.0863720428
!
marker create  &
   marker_name = .V12.roue.MARKER_423  &
   adams_id = 423  &
   location = 380.0, 0.0, 1020.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue.MARKER_424  &
   adams_id = 424  &
   location = 380.0, 0.0, 1020.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue.MARKER_425  &
   adams_id = 425  &
   location = 375.0, 0.0, 1020.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue.cm_2  &
   adams_id = 426  &
   location = 452.2026304859, 0.0, 1020.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue.MARKER_427  &
   adams_id = 427  &
   location = 380.0, 0.0, 1020.0  &
   orientation = 1.5707963268, 1.5707963268, 4.0863720428
!
marker create  &
   marker_name = .V12.roue.MARKER_614  &
   adams_id = 614  &
   location = 380.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
part create rigid_body mass_properties  &
   part_name = .V12.roue  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.roue.CYLINDER_1  &
   adams_id = 1  &
   center_marker = .V12.roue.MARKER_1  &
   angle_extent = 6.2831853072  &
   length = 150.0  &
   radius = 250.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create feature blend  &
   blend_name = .V12.roue.CYLINDER_1.BLEND_1  &
   subtype = edge  &
   radius1 = 20.0  &
   radius2 = 20.0  &
   reference_marker = .V12.roue.MARKER_1  &
   locations = -250.0, 0.0, 0.0, 250.0, 0.0, 150.0  &
   chamfer = no
!
geometry create shape cylinder  &
   cylinder_name = .V12.roue.CYLINDER_2  &
   adams_id = 2  &
   center_marker = .V12.roue.MARKER_2  &
   angle_extent = 6.2831853072  &
   length = 150.0  &
   radius = 170.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.roue.CSG_3  &
   adams_id = 3  &
   base_object = .V12.roue.CYLINDER_1  &
   object = .V12.roue.CYLINDER_2  &
   type = difference
!
geometry create shape cylinder  &
   cylinder_name = .V12.roue.CYLINDER_24  &
   adams_id = 24  &
   center_marker = .V12.roue.MARKER_15  &
   angle_extent = 6.2831853072  &
   length = 10.0  &
   radius = 160.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create feature hole  &
   hole_name = .V12.roue.CYLINDER_24.HOLE_1  &
   center = -80.0, 0.0, -1155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.roue.CYLINDER_24.HOLE_2  &
   center = 0.0, 80.0, -1155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.roue.CYLINDER_24.HOLE_3  &
   center = 80.0, 0.0, -1155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.roue.CYLINDER_24.HOLE_4  &
   center = 0.0, -80.0, -1155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry attributes  &
   geometry_name = .V12.roue.CYLINDER_24  &
   color = BLUE
!
part attributes  &
   part_name = .V12.roue  &
   color = MAGENTA
!
!----------------------------------- TINF_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.TINF_2  &
   adams_id = 8  &
   location = 0.0, 0.0, -1000.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TINF_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.TINF_2.MARKER_7  &
   adams_id = 41  &
   location = -200.0, 0.0, -400.0  &
   orientation = 3.1415926536, 1.3258176637, 2.0224297679
!
marker create  &
   marker_name = .V12.TINF_2.cm  &
   adams_id = 42  &
   location = -10.0400468209, -30.513850069, -262.7865493527  &
   orientation = 2.9261666373, 2.8961995627, 1.3632013381
!
marker create  &
   marker_name = .V12.TINF_2.MARKER_4  &
   adams_id = 43  &
   location = -200.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF_2.MARKER_5  &
   adams_id = 44  &
   location = 100.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF_2.MARKER_6  &
   adams_id = 45  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.TINF_2.MARKER_25  &
   adams_id = 46  &
   location = -156.8841457443, -70.4949457185, -95.0360372646  &
   orientation = 3.129218615, 1.3257086178, 3.1340101225
!
marker create  &
   marker_name = .V12.TINF_2.MARKER_26  &
   adams_id = 47  &
   location = 152.6504780707, -74.8949386691, -92.7588508563  &
   orientation = 3.129218615, 1.3257086178, 3.1340101225
!
marker create  &
   marker_name = .V12.TINF_2.MARKER_27  &
   adams_id = 48  &
   location = 152.6504780707, -74.8949386691, -92.7588508563  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.TINF_2.MARKER_33  &
   adams_id = 50  &
   location = 200.0, 0.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.TINF_2.MARKER_35  &
   adams_id = 78  &
   location = 0.0, -100.0, 0.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.TINF_2.MARKER_260  &
   adams_id = 260  &
   location = -0.3141297918, -33.2153504577, -249.1440053676  &
   orientation = 4.714026803, 3.138906726, 1.5707963268
!
marker create  &
   marker_name = .V12.TINF_2.MARKER_261  &
   adams_id = 261  &
   location = -266.9059410856, -33.6519809341, -248.427956397  &
   orientation = 4.714026803, 3.138906726, 1.5707963268
!
marker create  &
   marker_name = .V12.TINF_2.MARKER_279  &
   adams_id = 279  &
   location = -266.9059410856, -33.6519809341, -248.427956397  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF_2.Marker_10  &
   adams_id = 513  &
   location = 152.6504780707, -74.8949386691, -92.7588508563  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.TINF_2.Marker_22  &
   adams_id = 521  &
   location = 152.6504780707, -74.8949386691, -92.7588508563  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .V12.TINF_2  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TINF_2.MARKER_7
!
geometry create shape extrusion  &
   extrusion_name = .V12.TINF_2.EXTRUSION_1_2  &
   reference_marker = .V12.TINF_2.MARKER_7  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 458.2575694956, 2.2100724027E-010, 0.0  &
      , 174.5743121886, 359.8941643371, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TINF_2
!
geometry create shape link  &
   link_name = .V12.TINF_2.LINK_2_2  &
   i_marker = .V12.TINF_2.MARKER_25  &
   j_marker = .V12.TINF_2.MARKER_26  &
   width = 30.9574270339  &
   depth = 15.478713517
!
geometry create shape csg  &
   csg_name = .V12.TINF_2.CSG_49  &
   adams_id = 133  &
   base_object = .V12.TINF_2.EXTRUSION_1_2  &
   object = .V12.TINF_2.LINK_2_2  &
   type = union
!
geometry create shape link  &
   link_name = .V12.TINF_2.LINK_825  &
   i_marker = .V12.TINF_2.MARKER_260  &
   j_marker = .V12.TINF_2.MARKER_261  &
   width = 26.6593130484  &
   depth = 13.3296565242
!
geometry create shape csg  &
   csg_name = .V12.TINF_2.CSG_4643  &
   adams_id = 4643  &
   base_object = .V12.TINF_2.CSG_49  &
   object = .V12.TINF_2.LINK_825  &
   type = union
!
geometry create shape link  &
   link_name = .V12.TINF_2.LINK_2  &
   i_marker = .V12.TINF_2.MARKER_25  &
   j_marker = .V12.TINF_2.MARKER_26  &
   width = 30.9574270339  &
   depth = 15.478713517
!
geometry create shape csg  &
   csg_name = .V12.TINF_2.CSG_4685  &
   adams_id = 4685  &
   base_object = .V12.TINF_2.CSG_4643  &
   object = .V12.TINF_2.LINK_2  &
   type = union
!
geometry create shape link  &
   link_name = .V12.TINF_2.LINK_48  &
   i_marker = .V12.TINF_2.MARKER_25  &
   j_marker = .V12.TINF_2.MARKER_26  &
   width = 30.9574270339  &
   depth = 15.478713517
!
geometry create shape csg  &
   csg_name = .V12.TINF_2.CSG_4728  &
   adams_id = 4728  &
   base_object = .V12.TINF_2.CSG_4685  &
   object = .V12.TINF_2.LINK_48  &
   type = union
!
geometry create shape cylinder  &
   cylinder_name = .V12.TINF_2.CYLINDER_5  &
   adams_id = 76  &
   center_marker = .V12.TINF_2.MARKER_4  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.TINF_2.CSG_4910  &
   adams_id = 4910  &
   base_object = .V12.TINF_2.CSG_4728  &
   object = .V12.TINF_2.CYLINDER_5  &
   type = union
!
geometry create shape cylinder  &
   cylinder_name = .V12.TINF_2.CYLINDER_6  &
   adams_id = 91  &
   center_marker = .V12.TINF_2.MARKER_5  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.TINF_2.CSG_4952  &
   adams_id = 4952  &
   base_object = .V12.TINF_2.CSG_4910  &
   object = .V12.TINF_2.CYLINDER_6  &
   type = union
!
geometry create shape ellipsoid  &
   ellipsoid_name = .V12.TINF_2.ELLIPSOID_7  &
   adams_id = 106  &
   center_marker = .V12.TINF_2.MARKER_6  &
   x_scale_factor = 40.0  &
   y_scale_factor = 40.0  &
   z_scale_factor = 40.0
!
part attributes  &
   part_name = .V12.TINF_2  &
   color = MAIZE
!
!----------------------------------- TSUP_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.TSUP_2  &
   adams_id = 9  &
   location = 0.0, 200.0, -1000.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.TSUP_2.cm  &
   adams_id = 51  &
   location = -3.4280190916, -21.7091851984, -298.8124194976  &
   orientation = 2.9467765191, 2.8971120187, 1.3819598341
!
marker create  &
   marker_name = .V12.TSUP_2.MARKER_4  &
   adams_id = 52  &
   location = -200.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TSUP_2.MARKER_5  &
   adams_id = 53  &
   location = 100.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TSUP_2.MARKER_6  &
   adams_id = 54  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.TSUP_2.MARKER_7  &
   adams_id = 55  &
   location = -200.0, 0.0, -400.0  &
   orientation = 3.1415926536, 1.3258176637, 2.0224297679
!
marker create  &
   marker_name = .V12.TSUP_2.MARKER_13  &
   adams_id = 56  &
   location = -149.7644287657, -8.4462177104, -366.215129159  &
   orientation = 3.1415926536, 1.3258176637, 2.0224297679
!
marker create  &
   marker_name = .V12.TSUP_2.MARKER_31  &
   adams_id = 57  &
   location = 200.0, 0.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.TSUP_2.MARKER_37  &
   adams_id = 58  &
   location = 0.0, -100.0, 0.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
part create rigid_body mass_properties  &
   part_name = .V12.TSUP_2  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_2.MARKER_7
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP_2.EXTRUSION_1_2  &
   reference_marker = .V12.TSUP_2.MARKER_7  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 458.2575694956, 2.2007048961E-010, 0.0  &
      , 174.5743121886, 359.8941643371, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_2
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_2.MARKER_13
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP_2.EXTRUSION_2_2  &
   reference_marker = .V12.TSUP_2.MARKER_13  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 135.0, 275.0, 0.0  &
      , 360.0, -5.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_2
!
geometry create shape csg  &
   csg_name = .V12.TSUP_2.CSG_20  &
   adams_id = 202  &
   base_object = .V12.TSUP_2.EXTRUSION_1_2  &
   object = .V12.TSUP_2.EXTRUSION_2_2  &
   type = difference
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_2.MARKER_7
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP_2.EXTRUSION_1  &
   reference_marker = .V12.TSUP_2.MARKER_7  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 458.2575694956, 2.2007048961E-010, 0.0  &
      , 174.5743121886, 359.8941643371, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_2
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_2.MARKER_13
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP_2.EXTRUSION_2  &
   reference_marker = .V12.TSUP_2.MARKER_13  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 135.0, 275.0, 0.0  &
      , 360.0, -5.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_2
!
geometry create shape csg  &
   csg_name = .V12.TSUP_2.CSG_918  &
   adams_id = 918  &
   base_object = .V12.TSUP_2.EXTRUSION_1  &
   object = .V12.TSUP_2.EXTRUSION_2  &
   type = difference
!
geometry create shape cylinder  &
   cylinder_name = .V12.TSUP_2.CYLINDER_5  &
   adams_id = 169  &
   center_marker = .V12.TSUP_2.MARKER_4  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .V12.TSUP_2.CYLINDER_6  &
   adams_id = 180  &
   center_marker = .V12.TSUP_2.MARKER_5  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape ellipsoid  &
   ellipsoid_name = .V12.TSUP_2.ELLIPSOID_7  &
   adams_id = 191  &
   center_marker = .V12.TSUP_2.MARKER_6  &
   x_scale_factor = 40.0  &
   y_scale_factor = 40.0  &
   z_scale_factor = 40.0
!
part attributes  &
   part_name = .V12.TSUP_2  &
   color = BLUE_GRAY
!
!----------------------------------- FUSE_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.FUSE_2  &
   adams_id = 10  &
   location = 0.0, 0.0, -1000.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.FUSE_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.FUSE_2.MARKER_14  &
   adams_id = 59  &
   location = 0.0, 100.0, 0.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.FUSE_2.cm  &
   adams_id = 60  &
   location = 7.4908057103E-005, 5.662043638E-004, 67.689322991  &
   orientation = 6.1807947326, 2.8122399792E-005, 0.1023615189
!
marker create  &
   marker_name = .V12.FUSE_2.MARKER_16  &
   adams_id = 61  &
   location = 0.0, 0.0, 150.0  &
   orientation = 1.5707963268, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.FUSE_2.MARKER_36  &
   adams_id = 62  &
   location = 0.0, -100.0, 0.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.FUSE_2.MARKER_127  &
   adams_id = 127  &
   location = 0.0, 0.0, 150.0  &
   orientation = 3.7676095912, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.FUSE_2.MARKER_552  &
   adams_id = 552  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.FUSE_2.MARKER_613  &
   adams_id = 613  &
   location = 0.0, 0.0, 150.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
part create rigid_body mass_properties  &
   part_name = .V12.FUSE_2  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.FUSE_2.CYLINDER_25  &
   adams_id = 241  &
   center_marker = .V12.FUSE_2.MARKER_16  &
   angle_extent = 6.2831853072  &
   length = 160.0  &
   radius = 45.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .V12.FUSE_2.CYLINDER_23  &
   adams_id = 250  &
   center_marker = .V12.FUSE_2.MARKER_14  &
   angle_extent = 6.2831853072  &
   length = 200.0  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.FUSE_2.CSG_26  &
   adams_id = 232  &
   base_object = .V12.FUSE_2.CYLINDER_25  &
   object = .V12.FUSE_2.CYLINDER_23  &
   type = union
!
part attributes  &
   part_name = .V12.FUSE_2  &
   color = GREEN
!
!----------------------------------- roue_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.roue_2  &
   adams_id = 19  &
   location = 230.0, 0.0, 530.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
defaults coordinate_system  &
   default_coordinate_system = .V12.roue_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.roue_2.MARKER_126  &
   adams_id = 126  &
   location = 380.0, 0.0, -230.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.roue_2.MARKER_1  &
   adams_id = 120  &
   location = 380.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue_2.MARKER_2  &
   adams_id = 121  &
   location = 380.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue_2.MARKER_15  &
   adams_id = 122  &
   location = 375.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue_2.cm  &
   adams_id = 123  &
   location = 452.2026304859, 4.2621328035E-010, -230.0000000004  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.roue_2.MARKER_39  &
   adams_id = 124  &
   location = 380.0, 0.0, -230.0  &
   orientation = 4.7123889804, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.roue_2.MARKER_428  &
   adams_id = 428  &
   location = 380.0, 0.0, -1480.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.roue_2.MARKER  &
   adams_id = 429  &
   location = 380.0, 0.0, -1480.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue_2.MARKER_3  &
   adams_id = 430  &
   location = 380.0, 0.0, -1480.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue_2.MARKER_4  &
   adams_id = 431  &
   location = 375.0, 0.0, -1480.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue_2.cm_2  &
   adams_id = 432  &
   location = 452.2026304859, 0.0, -1480.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue_2.MARKER_5  &
   adams_id = 433  &
   location = 380.0, 0.0, -1480.0  &
   orientation = 4.7123889804, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.roue_2.MARKER_612  &
   adams_id = 612  &
   location = 380.0, 0.0, -230.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
part create rigid_body mass_properties  &
   part_name = .V12.roue_2  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.roue_2.CYLINDER_1_2  &
   adams_id = 368  &
   center_marker = .V12.roue_2.MARKER_1  &
   angle_extent = 6.2831853072  &
   length = 150.0  &
   radius = 250.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create feature blend  &
   blend_name = .V12.roue_2.CYLINDER_1_2.BLEND_1  &
   subtype = edge  &
   radius1 = 20.0  &
   radius2 = 20.0  &
   reference_marker = .V12.roue_2.MARKER_1  &
   locations = -250.0, 0.0, 0.0, 250.0, 0.0, 150.0  &
   chamfer = no
!
geometry create shape cylinder  &
   cylinder_name = .V12.roue_2.CYLINDER_2  &
   adams_id = 369  &
   center_marker = .V12.roue_2.MARKER_2  &
   angle_extent = 6.2831853072  &
   length = 150.0  &
   radius = 170.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.roue_2.CSG_3  &
   adams_id = 367  &
   base_object = .V12.roue_2.CYLINDER_1_2  &
   object = .V12.roue_2.CYLINDER_2  &
   type = difference
!
geometry create shape cylinder  &
   cylinder_name = .V12.roue_2.CYLINDER_24  &
   adams_id = 370  &
   center_marker = .V12.roue_2.MARKER_15  &
   angle_extent = 6.2831853072  &
   length = 10.0  &
   radius = 160.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create feature hole  &
   hole_name = .V12.roue_2.CYLINDER_24.HOLE_1  &
   center = 80.0, 0.0, 155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.roue_2.CYLINDER_24.HOLE_2  &
   center = 0.0, 80.0, 155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.roue_2.CYLINDER_24.HOLE_3  &
   center = -80.0, 0.0, 155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.roue_2.CYLINDER_24.HOLE_4  &
   center = 0.0, -80.0, 155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry attributes  &
   geometry_name = .V12.roue_2.CYLINDER_24  &
   color = BLUE
!
part attributes  &
   part_name = .V12.roue_2  &
   color = MAGENTA
!
!----------------------------------- verin ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.verin  &
   adams_id = 37  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.verin
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.verin.MARKER_303  &
   adams_id = 303  &
   location = 272.6504780707, 275.1050613309, -651.7588508563  &
   orientation = 0.0, 0.5889752446, 0.0
!
marker create  &
   marker_name = .V12.verin.cm  &
   adams_id = 319  &
   location = 272.6504780707, 205.6664088322, -547.8200537728  &
   orientation = 3.1415926536, 2.552617409, 1.5707963268
!
marker create  &
   marker_name = .V12.verin.MARKER_308  &
   adams_id = 308  &
   location = 272.6504780707, 275.1050613309, -651.7588508563  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.verin.MARKER_309  &
   adams_id = 309  &
   location = 272.6504780707, 189.3117664973, -523.3397133624  &
   orientation = 3.1415926536, 2.552617409, 3.1415926536
!
marker create  &
   marker_name = .V12.verin.MARKER_322  &
   adams_id = 322  &
   location = 272.6504780707, 275.1050613309, -651.7588508563  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.verin.MARKER_604  &
   adams_id = 604  &
   location = 272.6504780707, 205.666408831, -547.8200537736  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .V12.verin  &
   material_type = .V12.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.verin.CYLINDER_1423  &
   adams_id = 1423  &
   center_marker = .V12.verin.MARKER_303  &
   angle_extent = 6.2831853072  &
   length = 250.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .V12.verin  &
   color = GREEN  &
   name_visibility = off
!
!-------------------------------- Trig_gauche ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.Trig_gauche  &
   adams_id = 20  &
   location = 20.0, 353.3149838284, -599.7964888864  &
   orientation = 0.0, 3.1415926536, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.Trig_gauche
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.Trig_gauche.MARKER_141  &
   adams_id = 141  &
   location = 252.6504780707, 175.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.Trig_gauche.MARKER_142  &
   adams_id = 142  &
   location = 246.9059410856, 173.024953514, -342.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.Trig_gauche.MARKER_143  &
   adams_id = 143  &
   location = 252.6504780707, 275.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.Trig_gauche.cm  &
   adams_id = 174  &
   location = 252.6776813957, 209.9858545439, -276.6161476752  &
   orientation = 1.7278573185E-003, 2.3238575897, 1.7194527989E-003
!
marker create  &
   marker_name = .V12.Trig_gauche.MARKER_299  &
   adams_id = 299  &
   location = 252.6504780707, 175.1050613309, -242.7588508563  &
   orientation = 1.5707963268, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.Trig_gauche.MARKER_302  &
   adams_id = 302  &
   location = 246.9059410856, 173.024953514, -342.572043603  &
   orientation = 1.5904648566, 1.5725625734, 1.5708310707
!
marker create  &
   marker_name = .V12.Trig_gauche.MARKER_306  &
   adams_id = 306  &
   location = 252.6504780707, 275.1050613309, -242.7588508563  &
   orientation = 0.0, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.Trig_gauche.MARKER_434  &
   adams_id = 434  &
   location = -997.3495219293, 175.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.Trig_gauche.MARKER_435  &
   adams_id = 435  &
   location = -1003.0940589144, 173.024953514, -342.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.Trig_gauche.MARKER_436  &
   adams_id = 436  &
   location = -997.3495219293, 275.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.Trig_gauche.cm_2  &
   adams_id = 437  &
   location = -997.3333103208, 209.6573262936, -277.0432244448  &
   orientation = 1.1021888221E-003, 2.3300862276, 1.1530823856E-003
!
part create rigid_body mass_properties  &
   part_name = .V12.Trig_gauche  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
geometry create shape plate  &
   plate_name = .V12.Trig_gauche.PLATE_415  &
   marker_name = .V12.Trig_gauche.MARKER_141, .V12.Trig_gauche.MARKER_142,  &
                 .V12.Trig_gauche.MARKER_143  &
   width = 30.0  &
   radius = 20.0
!
geometry create feature hole  &
   hole_name = .V12.Trig_gauche.PLATE_415.HOLE_1  &
   center = 297.6504780707, 78.2099224975, -357.0376380301  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.Trig_gauche.PLATE_415.HOLE_2  &
   center = 291.3028797511, 173.024953514, -257.2244452834  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.Trig_gauche.PLATE_415.HOLE_3  &
   center = 297.6504780707, 178.9302983284, -358.2329156901  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.Trig_gauche.PLATE_415.HOLE_4  &
   center = 271.1295129296, 200.1853773443, -262.4545562326  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
part attributes  &
   part_name = .V12.Trig_gauche  &
   color = RED  &
   name_visibility = off
!
!---------------------------------- cylindre ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.cylindre  &
   adams_id = 38  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.cylindre
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.cylindre.MARKER_304  &
   adams_id = 304  &
   location = 272.6504780707, 78.2099224975, -357.0376380301  &
   orientation = 3.1415926536, 2.552617409, 3.1415926536
!
marker create  &
   marker_name = .V12.cylindre.cm  &
   adams_id = 320  &
   location = 272.6504780701, 133.7608444956, -440.1886756974  &
   orientation = 0.0, 0.5889752446, 0.0
!
marker create  &
   marker_name = .V12.cylindre.MARKER_305  &
   adams_id = 305  &
   location = 272.6504780707, 78.2099224975, -357.0376380301  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.cylindre.MARKER_310  &
   adams_id = 310  &
   location = 272.6504780707, 189.3117664973, -523.3397133624  &
   orientation = 3.1415926536, 2.552617409, 3.1415926536
!
marker create  &
   marker_name = .V12.cylindre.MARKER_321  &
   adams_id = 321  &
   location = 272.6504780707, 78.2099224975, -357.0376380301  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.cylindre.MARKER_605  &
   adams_id = 605  &
   location = 272.6504780707, 133.7608444974, -440.1886756963  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .V12.cylindre  &
   material_type = .V12.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.cylindre.CYLINDER_1424  &
   adams_id = 1424  &
   center_marker = .V12.cylindre.MARKER_304  &
   angle_extent = 6.2831853072  &
   length = 200.0  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .V12.cylindre  &
   color = MAIZE  &
   name_visibility = off
!
!---------------------------------- lever_G2 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.lever_G2  &
   adams_id = 34  &
   location = 0.0, 7.2650768004, 6.3475983196  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.lever_G2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.lever_G2.MARKER_253  &
   adams_id = 253  &
   location = 266.9059410856, 173.024953514, -263.572043603  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.lever_G2.cm  &
   adams_id = 290  &
   location = 266.9059410856, 63.024953514, -263.5720436036  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.lever_G2.MARKER_278  &
   adams_id = 278  &
   location = 266.9059410856, -36.975046486, -263.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.lever_G2.MARKER_301  &
   adams_id = 301  &
   location = 266.9059410856, 173.024953514, -263.572043603  &
   orientation = 1.551127797, 1.5690300802, 4.7124237243
!
part create rigid_body mass_properties  &
   part_name = .V12.lever_G2  &
   material_type = .V12.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.lever_G2.CYLINDER_798  &
   adams_id = 798  &
   center_marker = .V12.lever_G2.MARKER_253  &
   angle_extent = 6.2831853072  &
   length = 220.0  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .V12.lever_G2  &
   color = CYAN  &
   name_visibility = off
!
!---------------------------------- lever_D2 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.lever_D2  &
   adams_id = 36  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.lever_D2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.lever_D2.MARKER_259  &
   adams_id = 259  &
   location = 266.9059410856, 173.024953514, -751.572043603  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.lever_D2.cm  &
   adams_id = 291  &
   location = 266.9059410856, 69.68648629, -751.5720436035  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.lever_D2.MARKER_280  &
   adams_id = 280  &
   location = 266.9059410856, -33.6519809341, -751.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.lever_D2.MARKER_282  &
   adams_id = 282  &
   location = 266.9059410856, 173.024953514, -751.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
part create rigid_body mass_properties  &
   part_name = .V12.lever_D2  &
   material_type = .V12.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.lever_D2.CYLINDER_824  &
   adams_id = 824  &
   center_marker = .V12.lever_D2.MARKER_259  &
   angle_extent = 6.2831853072  &
   length = 206.6769344481  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .V12.lever_D2  &
   color = RED  &
   name_visibility = off
!
!-------------------------------- trig_droite ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.trig_droite  &
   adams_id = 26  &
   location = 20.0, 0.0, -409.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.trig_droite
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.trig_droite.MARKER_307  &
   adams_id = 307  &
   location = 252.6504780707, 275.1050613309, -242.7588508563  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.trig_droite.MARKER_272  &
   adams_id = 272  &
   location = 252.6504780707, 175.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite.MARKER_281  &
   adams_id = 281  &
   location = 246.9059410856, 173.024953514, -342.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite.MARKER_141  &
   adams_id = 160  &
   location = 252.6504780707, 175.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite.MARKER_142  &
   adams_id = 161  &
   location = 246.9059410856, 173.024953514, -342.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite.MARKER_143  &
   adams_id = 162  &
   location = 252.6504780707, 275.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite.cm  &
   adams_id = 163  &
   location = 252.5845392657, 209.819605981, -277.109648311  &
   orientation = 6.2787051148, 2.3372332572, 6.2790538295
!
marker create  &
   marker_name = .V12.trig_droite.MARKER  &
   adams_id = 444  &
   location = -997.3495219293, 175.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite.MARKER_2  &
   adams_id = 445  &
   location = -1003.0940589144, 173.024953514, -342.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite.MARKER_3  &
   adams_id = 446  &
   location = -997.3495219293, 275.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite.cm_2  &
   adams_id = 447  &
   location = -997.3976470852, 209.6626309498, -277.3022949064  &
   orientation = 6.2796517534, 2.3395910178, 6.2797956819
!
part create rigid_body mass_properties  &
   part_name = .V12.trig_droite  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
geometry create shape plate  &
   plate_name = .V12.trig_droite.PLATE_415  &
   marker_name = .V12.trig_droite.MARKER_141, .V12.trig_droite.MARKER_142,  &
                 .V12.trig_droite.MARKER_143  &
   width = 30.0  &
   radius = 20.0
!
geometry create feature hole  &
   hole_name = .V12.trig_droite.PLATE_415.HOLE_1  &
   center = 297.6504780707, 275.1050613309, -651.7588508563  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.trig_droite.PLATE_415.HOLE_2  &
   center = 297.6504780707, 173.024953514, -751.572043603  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.trig_droite.PLATE_415.HOLE_3  &
   center = 297.6504780707, 174.3846855, -650.5635731963  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.trig_droite.PLATE_415.HOLE_4  &
   center = 280.6610934278, 153.0786533578, -748.7868992899  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
part attributes  &
   part_name = .V12.trig_droite  &
   color = RED  &
   name_visibility = off
!
!----------------------------------- TINF_3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.TINF_3  &
   adams_id = 39  &
   location = -1250.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TINF_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.TINF_3.cm  &
   adams_id = 323  &
   location = 9.4810591383, -30.5864334935, -263.744030699  &
   orientation = 3.116467824, 2.9014993089, 1.5517750933
!
marker create  &
   marker_name = .V12.TINF_3.MARKER_4  &
   adams_id = 324  &
   location = -200.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF_3.MARKER_5  &
   adams_id = 325  &
   location = 100.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF_3.MARKER_6  &
   adams_id = 326  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.TINF_3.MARKER_29  &
   adams_id = 327  &
   location = -156.8841457443, -63.2298689181, -88.688438945  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.TINF_3.MARKER_33  &
   adams_id = 328  &
   location = 200.0, 0.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.TINF_3.MARKER_581  &
   adams_id = 581  &
   location = 0.0, -100.0, 0.0  &
   orientation = 1.7115828708, 1.1342212942, 4.6072406394
!
marker create  &
   marker_name = .V12.TINF_3.MARKER_248  &
   adams_id = 330  &
   location = -156.8841457443, -70.4949457185, -95.0360372646  &
   orientation = 3.129218615, 1.3257086178, 3.1340101225
!
marker create  &
   marker_name = .V12.TINF_3.MARKER_249  &
   adams_id = 331  &
   location = 152.6504780707, -74.8949386691, -92.7588508563  &
   orientation = 3.129218615, 1.3257086178, 3.1340101225
!
marker create  &
   marker_name = .V12.TINF_3.MARKER_254  &
   adams_id = 332  &
   location = -0.266513125, -30.2973253931, -263.487912811  &
   orientation = 1.5458074817, 3.1479488901E-004, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF_3.MARKER_255  &
   adams_id = 333  &
   location = 266.9059410856, -36.975046486, -263.572043603  &
   orientation = 1.5458074817, 3.1479488901E-004, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF_3.MARKER_252  &
   adams_id = 334  &
   location = -200.0, 0.0, -400.0  &
   orientation = 3.1415926536, 1.3258176637, 2.0224297679
!
marker create  &
   marker_name = .V12.TINF_3.MARKER_277  &
   adams_id = 335  &
   location = 266.9059410856, -36.975046486, -263.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.TINF_3.Marker_12  &
   adams_id = 515  &
   location = -156.8841457443, -63.2298689181, -88.688438945  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.TINF_3.Marker_24  &
   adams_id = 523  &
   location = -156.8841457443, -63.2298689181, -88.688438945  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .V12.TINF_3  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TINF_3.MARKER_252
!
geometry create shape extrusion  &
   extrusion_name = .V12.TINF_3.EXTRUSION_81  &
   reference_marker = .V12.TINF_3.MARKER_252  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 458.2575694956, 2.1963109775E-010, 0.0  &
      , 174.5743121886, 359.8941643371, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TINF_3
!
geometry create shape link  &
   link_name = .V12.TINF_3.LINK_48  &
   i_marker = .V12.TINF_3.MARKER_248  &
   j_marker = .V12.TINF_3.MARKER_249  &
   width = 30.9574270339  &
   depth = 15.478713517
!
geometry create shape csg  &
   csg_name = .V12.TINF_3.CSG_945  &
   adams_id = 1493  &
   base_object = .V12.TINF_3.EXTRUSION_81  &
   object = .V12.TINF_3.LINK_48  &
   type = union
!
geometry create shape cylinder  &
   cylinder_name = .V12.TINF_3.CYLINDER_5  &
   adams_id = 1478  &
   center_marker = .V12.TINF_3.MARKER_4  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.TINF_3.CSG_949  &
   adams_id = 1463  &
   base_object = .V12.TINF_3.CYLINDER_5  &
   object = .V12.TINF_3.CSG_945  &
   type = union
!
geometry create shape link  &
   link_name = .V12.TINF_3.LINK_799  &
   i_marker = .V12.TINF_3.MARKER_254  &
   j_marker = .V12.TINF_3.MARKER_255  &
   width = 26.7255906064  &
   depth = 13.3627953032
!
geometry create shape csg  &
   csg_name = .V12.TINF_3.CSG_969  &
   adams_id = 1448  &
   base_object = .V12.TINF_3.CSG_949  &
   object = .V12.TINF_3.LINK_799  &
   type = union
!
geometry create shape cylinder  &
   cylinder_name = .V12.TINF_3.CYLINDER_6  &
   adams_id = 1550  &
   center_marker = .V12.TINF_3.MARKER_5  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.TINF_3.CSG_4874  &
   adams_id = 4874  &
   base_object = .V12.TINF_3.CSG_969  &
   object = .V12.TINF_3.CYLINDER_6  &
   type = union
!
geometry create shape ellipsoid  &
   ellipsoid_name = .V12.TINF_3.ELLIPSOID_7  &
   adams_id = 1563  &
   center_marker = .V12.TINF_3.MARKER_6  &
   x_scale_factor = 40.0  &
   y_scale_factor = 40.0  &
   z_scale_factor = 40.0
!
part attributes  &
   part_name = .V12.TINF_3  &
   color = MAIZE
!
!----------------------------------- TSUP_3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.TSUP_3  &
   adams_id = 41  &
   location = -1250.0, 207.2650768004, 6.3475983196  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.TSUP_3.cm  &
   adams_id = 364  &
   location = -3.4280190916, -21.7091851984, -298.8124194976  &
   orientation = 2.9467765191, 2.8971120187, 1.3819598341
!
marker create  &
   marker_name = .V12.TSUP_3.MARKER_4  &
   adams_id = 365  &
   location = -200.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TSUP_3.MARKER_5  &
   adams_id = 366  &
   location = 100.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TSUP_3.MARKER_6  &
   adams_id = 367  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.TSUP_3.MARKER_7  &
   adams_id = 368  &
   location = -200.0, 0.0, -400.0  &
   orientation = 3.1415926536, 1.3258176637, 2.0224297679
!
marker create  &
   marker_name = .V12.TSUP_3.MARKER_13  &
   adams_id = 369  &
   location = -149.7644287657, -8.4462177104, -366.215129159  &
   orientation = 3.1415926536, 1.3258176637, 2.0224297679
!
marker create  &
   marker_name = .V12.TSUP_3.MARKER_31  &
   adams_id = 370  &
   location = 200.0, 0.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.TSUP_3.MARKER_583  &
   adams_id = 583  &
   location = 0.0, -100.0, 0.0  &
   orientation = 1.5707963268, 1.5707963268, 2.8494655951
!
part create rigid_body mass_properties  &
   part_name = .V12.TSUP_3  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_3.MARKER_7
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP_3.EXTRUSION_1_2  &
   reference_marker = .V12.TSUP_3.MARKER_7  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 458.2575694956, 2.1759800185E-010, 0.0  &
      , 174.5743121886, 359.8941643371, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_3
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_3.MARKER_13
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP_3.EXTRUSION_2_2  &
   reference_marker = .V12.TSUP_3.MARKER_13  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 135.0, 275.0, 0.0  &
      , 360.0, -5.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_3
!
geometry create shape csg  &
   csg_name = .V12.TSUP_3.CSG_20  &
   adams_id = 1823  &
   base_object = .V12.TSUP_3.EXTRUSION_1_2  &
   object = .V12.TSUP_3.EXTRUSION_2_2  &
   type = difference
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_3.MARKER_7
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP_3.EXTRUSION_1  &
   reference_marker = .V12.TSUP_3.MARKER_7  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 458.2575694956, 2.1759800185E-010, 0.0  &
      , 174.5743121886, 359.8941643371, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_3
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_3.MARKER_13
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP_3.EXTRUSION_2  &
   reference_marker = .V12.TSUP_3.MARKER_13  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 135.0, 275.0, 0.0  &
      , 360.0, -5.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_3
!
geometry create shape csg  &
   csg_name = .V12.TSUP_3.CSG_902  &
   adams_id = 1862  &
   base_object = .V12.TSUP_3.EXTRUSION_1  &
   object = .V12.TSUP_3.EXTRUSION_2  &
   type = difference
!
geometry create shape cylinder  &
   cylinder_name = .V12.TSUP_3.CYLINDER_5  &
   adams_id = 1901  &
   center_marker = .V12.TSUP_3.MARKER_4  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .V12.TSUP_3.CYLINDER_6  &
   adams_id = 1914  &
   center_marker = .V12.TSUP_3.MARKER_5  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape ellipsoid  &
   ellipsoid_name = .V12.TSUP_3.ELLIPSOID_7  &
   adams_id = 1927  &
   center_marker = .V12.TSUP_3.MARKER_6  &
   x_scale_factor = 40.0  &
   y_scale_factor = 40.0  &
   z_scale_factor = 40.0
!
part attributes  &
   part_name = .V12.TSUP_3  &
   color = BLUE_GRAY
!
!----------------------------------- TINF_4 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.TINF_4  &
   adams_id = 42  &
   location = -1250.0, 0.0, -1000.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TINF_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.TINF_4.MARKER_7  &
   adams_id = 372  &
   location = -200.0, 0.0, -400.0  &
   orientation = 3.1415926536, 1.3258176637, 2.0224297679
!
marker create  &
   marker_name = .V12.TINF_4.cm  &
   adams_id = 373  &
   location = -10.0400468209, -30.513850069, -262.7865493527  &
   orientation = 2.9261666373, 2.8961995627, 1.3632013381
!
marker create  &
   marker_name = .V12.TINF_4.MARKER_4  &
   adams_id = 374  &
   location = -200.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF_4.MARKER_5  &
   adams_id = 375  &
   location = 100.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF_4.MARKER_6  &
   adams_id = 376  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.TINF_4.MARKER_25  &
   adams_id = 377  &
   location = -156.8841457443, -70.4949457185, -95.0360372646  &
   orientation = 3.129218615, 1.3257086178, 3.1340101225
!
marker create  &
   marker_name = .V12.TINF_4.MARKER_26  &
   adams_id = 378  &
   location = 152.6504780707, -74.8949386691, -92.7588508563  &
   orientation = 3.129218615, 1.3257086178, 3.1340101225
!
marker create  &
   marker_name = .V12.TINF_4.MARKER_27  &
   adams_id = 379  &
   location = 152.6504780707, -74.8949386691, -92.7588508563  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.TINF_4.MARKER_33  &
   adams_id = 380  &
   location = 200.0, 0.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.TINF_4.MARKER_35  &
   adams_id = 381  &
   location = 0.0, -100.0, 0.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.TINF_4.MARKER_260  &
   adams_id = 382  &
   location = -0.3141297918, -33.2153504577, -249.1440053676  &
   orientation = 4.714026803, 3.138906726, 1.5707963268
!
marker create  &
   marker_name = .V12.TINF_4.MARKER_261  &
   adams_id = 383  &
   location = -266.9059410856, -33.6519809341, -248.427956397  &
   orientation = 4.714026803, 3.138906726, 1.5707963268
!
marker create  &
   marker_name = .V12.TINF_4.MARKER_279  &
   adams_id = 384  &
   location = -266.9059410856, -33.6519809341, -248.427956397  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TINF_4.Marker_18  &
   adams_id = 517  &
   location = 152.6504780707, -74.8949386691, -92.7588508563  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.TINF_4.Marker_40  &
   adams_id = 525  &
   location = 152.6504780707, -74.8949386691, -92.7588508563  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .V12.TINF_4  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TINF_4.MARKER_7
!
geometry create shape extrusion  &
   extrusion_name = .V12.TINF_4.EXTRUSION_1_2  &
   reference_marker = .V12.TINF_4.MARKER_7  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 458.2575694956, 2.2006355072E-010, 0.0  &
      , 174.5743121886, 359.8941643371, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TINF_4
!
geometry create shape link  &
   link_name = .V12.TINF_4.LINK_2_2  &
   i_marker = .V12.TINF_4.MARKER_25  &
   j_marker = .V12.TINF_4.MARKER_26  &
   width = 30.9574270339  &
   depth = 15.478713517
!
geometry create shape csg  &
   csg_name = .V12.TINF_4.CSG_49  &
   adams_id = 1940  &
   base_object = .V12.TINF_4.EXTRUSION_1_2  &
   object = .V12.TINF_4.LINK_2_2  &
   type = union
!
geometry create shape link  &
   link_name = .V12.TINF_4.LINK_825  &
   i_marker = .V12.TINF_4.MARKER_260  &
   j_marker = .V12.TINF_4.MARKER_261  &
   width = 26.6593130484  &
   depth = 13.3296565242
!
geometry create shape csg  &
   csg_name = .V12.TINF_4.CSG_4772  &
   adams_id = 4772  &
   base_object = .V12.TINF_4.CSG_49  &
   object = .V12.TINF_4.LINK_825  &
   type = union
!
geometry create shape cylinder  &
   cylinder_name = .V12.TINF_4.CYLINDER_5  &
   adams_id = 1978  &
   center_marker = .V12.TINF_4.MARKER_4  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.TINF_4.CSG_4806  &
   adams_id = 4806  &
   base_object = .V12.TINF_4.CSG_4772  &
   object = .V12.TINF_4.CYLINDER_5  &
   type = union
!
geometry create shape cylinder  &
   cylinder_name = .V12.TINF_4.CYLINDER_6  &
   adams_id = 1990  &
   center_marker = .V12.TINF_4.MARKER_5  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.TINF_4.CSG_4840  &
   adams_id = 4840  &
   base_object = .V12.TINF_4.CSG_4806  &
   object = .V12.TINF_4.CYLINDER_6  &
   type = union
!
geometry create shape ellipsoid  &
   ellipsoid_name = .V12.TINF_4.ELLIPSOID_7  &
   adams_id = 2002  &
   center_marker = .V12.TINF_4.MARKER_6  &
   x_scale_factor = 40.0  &
   y_scale_factor = 40.0  &
   z_scale_factor = 40.0
!
part attributes  &
   part_name = .V12.TINF_4  &
   color = MAIZE
!
!----------------------------------- TSUP_4 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.TSUP_4  &
   adams_id = 43  &
   location = -1250.0, 200.0, -1000.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.TSUP_4.cm  &
   adams_id = 385  &
   location = -3.4280190916, -21.7091851984, -298.8124194976  &
   orientation = 2.9467765191, 2.8971120187, 1.3819598341
!
marker create  &
   marker_name = .V12.TSUP_4.MARKER_4  &
   adams_id = 386  &
   location = -200.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TSUP_4.MARKER_5  &
   adams_id = 387  &
   location = 100.0, 0.0, -400.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.TSUP_4.MARKER_6  &
   adams_id = 388  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.TSUP_4.MARKER_7  &
   adams_id = 389  &
   location = -200.0, 0.0, -400.0  &
   orientation = 3.1415926536, 1.3258176637, 2.0224297679
!
marker create  &
   marker_name = .V12.TSUP_4.MARKER_13  &
   adams_id = 390  &
   location = -149.7644287657, -8.4462177104, -366.215129159  &
   orientation = 3.1415926536, 1.3258176637, 2.0224297679
!
marker create  &
   marker_name = .V12.TSUP_4.MARKER_31  &
   adams_id = 391  &
   location = 200.0, 0.0, -400.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.TSUP_4.MARKER_37  &
   adams_id = 392  &
   location = 0.0, -100.0, 0.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
part create rigid_body mass_properties  &
   part_name = .V12.TSUP_4  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_4.MARKER_7
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP_4.EXTRUSION_1_2  &
   reference_marker = .V12.TSUP_4.MARKER_7  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 458.2575694956, 2.2106969031E-010, 0.0  &
      , 174.5743121886, 359.8941643371, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_4
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_4.MARKER_13
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP_4.EXTRUSION_2_2  &
   reference_marker = .V12.TSUP_4.MARKER_13  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 135.0, 275.0, 0.0  &
      , 360.0, -5.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_4
!
geometry create shape csg  &
   csg_name = .V12.TSUP_4.CSG_20  &
   adams_id = 2081  &
   base_object = .V12.TSUP_4.EXTRUSION_1_2  &
   object = .V12.TSUP_4.EXTRUSION_2_2  &
   type = difference
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_4.MARKER_7
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP_4.EXTRUSION_1  &
   reference_marker = .V12.TSUP_4.MARKER_7  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 458.2575694956, 2.2106969031E-010, 0.0  &
      , 174.5743121886, 359.8941643371, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_4
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_4.MARKER_13
!
geometry create shape extrusion  &
   extrusion_name = .V12.TSUP_4.EXTRUSION_2  &
   reference_marker = .V12.TSUP_4.MARKER_13  &
   analytical = yes  &
   points_for_profile = 0.0, 0.0, 0.0  &
      , 135.0, 275.0, 0.0  &
      , 360.0, -5.0, 0.0  &
      , 0.0, 0.0, 0.0  &
   length_along_z_axis = 10.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.TSUP_4
!
geometry create shape csg  &
   csg_name = .V12.TSUP_4.CSG_918  &
   adams_id = 2096  &
   base_object = .V12.TSUP_4.EXTRUSION_1  &
   object = .V12.TSUP_4.EXTRUSION_2  &
   type = difference
!
geometry create shape cylinder  &
   cylinder_name = .V12.TSUP_4.CYLINDER_5  &
   adams_id = 2111  &
   center_marker = .V12.TSUP_4.MARKER_4  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .V12.TSUP_4.CYLINDER_6  &
   adams_id = 2116  &
   center_marker = .V12.TSUP_4.MARKER_5  &
   angle_extent = 6.2831853072  &
   length = 100.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape ellipsoid  &
   ellipsoid_name = .V12.TSUP_4.ELLIPSOID_7  &
   adams_id = 2121  &
   center_marker = .V12.TSUP_4.MARKER_6  &
   x_scale_factor = 40.0  &
   y_scale_factor = 40.0  &
   z_scale_factor = 40.0
!
part attributes  &
   part_name = .V12.TSUP_4  &
   color = BLUE_GRAY
!
!----------------------------------- FUSE_3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.FUSE_3  &
   adams_id = 44  &
   location = -1250.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.FUSE_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.FUSE_3.MARKER_16  &
   adams_id = 393  &
   location = 0.0, 0.0, 150.0  &
   orientation = 1.5707963268, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.FUSE_3.MARKER_14  &
   adams_id = 394  &
   location = 0.0, 100.0, 0.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.FUSE_3.cm  &
   adams_id = 395  &
   location = 7.4908057103E-005, 5.662043638E-004, 67.689322991  &
   orientation = 6.1807947326, 2.8122399792E-005, 0.1023615189
!
marker create  &
   marker_name = .V12.FUSE_3.MARKER_125  &
   adams_id = 397  &
   location = 0.0, 0.0, 150.0  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.FUSE_3.MARKER_119  &
   adams_id = 398  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.FUSE_3.MARKER_588  &
   adams_id = 588  &
   location = 2.5000002069E-009, 3.6325384001, 3.1737991623  &
   orientation = 3.1415926534, 1.5401803881, 5.1791350286
!
marker create  &
   marker_name = .V12.FUSE_3.MARKER_615  &
   adams_id = 615  &
   location = 0.0, 0.0, 150.0  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .V12.FUSE_3  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.FUSE_3.CYLINDER_25  &
   adams_id = 2137  &
   center_marker = .V12.FUSE_3.MARKER_16  &
   angle_extent = 6.2831853072  &
   length = 160.0  &
   radius = 45.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .V12.FUSE_3.CYLINDER_23  &
   adams_id = 2138  &
   center_marker = .V12.FUSE_3.MARKER_14  &
   angle_extent = 6.2831853072  &
   length = 200.0  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.FUSE_3.CSG_26  &
   adams_id = 2136  &
   base_object = .V12.FUSE_3.CYLINDER_25  &
   object = .V12.FUSE_3.CYLINDER_23  &
   type = union
!
part attributes  &
   part_name = .V12.FUSE_3  &
   color = GREEN
!
!----------------------------------- FUSE_4 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.FUSE_4  &
   adams_id = 45  &
   location = -1250.0, 0.0, -1000.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.FUSE_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.FUSE_4.MARKER_14  &
   adams_id = 399  &
   location = 0.0, 100.0, 0.0  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.FUSE_4.cm  &
   adams_id = 400  &
   location = 7.4908057103E-005, 5.662043638E-004, 67.689322991  &
   orientation = 6.1807947326, 2.8122399792E-005, 0.1023615189
!
marker create  &
   marker_name = .V12.FUSE_4.MARKER_16  &
   adams_id = 401  &
   location = 0.0, 0.0, 150.0  &
   orientation = 1.5707963268, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.FUSE_4.MARKER_36  &
   adams_id = 402  &
   location = 0.0, -100.0, 0.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.FUSE_4.MARKER_127  &
   adams_id = 404  &
   location = 0.0, 0.0, 150.0  &
   orientation = 3.7676095912, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.FUSE_4.MARKER_562  &
   adams_id = 562  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.FUSE_4.MARKER_617  &
   adams_id = 617  &
   location = 0.0, 0.0, 150.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
part create rigid_body mass_properties  &
   part_name = .V12.FUSE_4  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.FUSE_4.CYLINDER_25  &
   adams_id = 2140  &
   center_marker = .V12.FUSE_4.MARKER_16  &
   angle_extent = 6.2831853072  &
   length = 160.0  &
   radius = 45.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape cylinder  &
   cylinder_name = .V12.FUSE_4.CYLINDER_23  &
   adams_id = 2141  &
   center_marker = .V12.FUSE_4.MARKER_14  &
   angle_extent = 6.2831853072  &
   length = 200.0  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.FUSE_4.CSG_26  &
   adams_id = 2139  &
   base_object = .V12.FUSE_4.CYLINDER_25  &
   object = .V12.FUSE_4.CYLINDER_23  &
   type = union
!
part attributes  &
   part_name = .V12.FUSE_4  &
   color = GREEN
!
!---------------------------------- verin_2 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.verin_2  &
   adams_id = 46  &
   location = -1250.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.verin_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.verin_2.MARKER_303  &
   adams_id = 405  &
   location = 272.6504780707, 275.1050613309, -651.7588508563  &
   orientation = 0.0, 0.5889752446, 0.0
!
marker create  &
   marker_name = .V12.verin_2.cm  &
   adams_id = 406  &
   location = 272.6504780707, 205.6664088322, -547.8200537728  &
   orientation = 3.1415926536, 2.552617409, 1.5707963268
!
marker create  &
   marker_name = .V12.verin_2.MARKER_308  &
   adams_id = 407  &
   location = 272.6504780707, 275.1050613309, -651.7588508563  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.verin_2.MARKER_309  &
   adams_id = 408  &
   location = 272.6504780707, 189.3117664973, -523.3397133624  &
   orientation = 3.1415926536, 2.552617409, 3.1415926536
!
marker create  &
   marker_name = .V12.verin_2.MARKER_322  &
   adams_id = 409  &
   location = 272.6504780707, 275.1050613309, -651.7588508563  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.verin_2.MARKER_606  &
   adams_id = 606  &
   location = 272.6504780707, 205.666408831, -547.8200537736  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .V12.verin_2  &
   material_type = .V12.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.verin_2.CYLINDER_1423  &
   adams_id = 2142  &
   center_marker = .V12.verin_2.MARKER_303  &
   angle_extent = 6.2831853072  &
   length = 250.0  &
   radius = 20.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .V12.verin_2  &
   color = GREEN  &
   name_visibility = off
!
!--------------------------------- cylindre_2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.cylindre_2  &
   adams_id = 47  &
   location = -1250.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.cylindre_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.cylindre_2.MARKER_304  &
   adams_id = 410  &
   location = 272.6504780707, 78.2099224975, -357.0376380301  &
   orientation = 3.1415926536, 2.552617409, 3.1415926536
!
marker create  &
   marker_name = .V12.cylindre_2.cm  &
   adams_id = 411  &
   location = 272.6504780701, 133.7608444956, -440.1886756974  &
   orientation = 0.0, 0.5889752446, 0.0
!
marker create  &
   marker_name = .V12.cylindre_2.MARKER_305  &
   adams_id = 412  &
   location = 272.6504780707, 78.2099224975, -357.0376380301  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.cylindre_2.MARKER_310  &
   adams_id = 413  &
   location = 272.6504780707, 189.3117664973, -523.3397133624  &
   orientation = 3.1415926536, 2.552617409, 3.1415926536
!
marker create  &
   marker_name = .V12.cylindre_2.MARKER_321  &
   adams_id = 414  &
   location = 272.6504780707, 78.2099224975, -357.0376380301  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.cylindre_2.MARKER_607  &
   adams_id = 607  &
   location = 272.6504780707, 133.7608444974, -440.1886756963  &
   orientation = 0.0, 0.0, 0.0
!
part create rigid_body mass_properties  &
   part_name = .V12.cylindre_2  &
   material_type = .V12.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.cylindre_2.CYLINDER_1424  &
   adams_id = 2143  &
   center_marker = .V12.cylindre_2.MARKER_304  &
   angle_extent = 6.2831853072  &
   length = 200.0  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .V12.cylindre_2  &
   color = MAIZE  &
   name_visibility = off
!
!--------------------------------- lever_G2_2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.lever_G2_2  &
   adams_id = 48  &
   location = -1250.0, 7.2650768004, 6.3475983196  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.lever_G2_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.lever_G2_2.MARKER_253  &
   adams_id = 415  &
   location = 266.9059410856, 173.024953514, -263.572043603  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.lever_G2_2.cm  &
   adams_id = 416  &
   location = 266.9059410856, 63.024953514, -263.5720436036  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.lever_G2_2.MARKER_278  &
   adams_id = 417  &
   location = 266.9059410856, -36.975046486, -263.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.lever_G2_2.MARKER_301  &
   adams_id = 418  &
   location = 266.9059410856, 173.024953514, -263.572043603  &
   orientation = 1.551127797, 1.5690300802, 4.7124237243
!
part create rigid_body mass_properties  &
   part_name = .V12.lever_G2_2  &
   material_type = .V12.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.lever_G2_2.CYLINDER_798  &
   adams_id = 2144  &
   center_marker = .V12.lever_G2_2.MARKER_253  &
   angle_extent = 6.2831853072  &
   length = 220.0  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .V12.lever_G2_2  &
   color = CYAN  &
   name_visibility = off
!
!--------------------------------- lever_D2_2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.lever_D2_2  &
   adams_id = 49  &
   location = -1250.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.lever_D2_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.lever_D2_2.MARKER_259  &
   adams_id = 419  &
   location = 266.9059410856, 173.024953514, -751.572043603  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.lever_D2_2.cm  &
   adams_id = 420  &
   location = 266.9059410856, 69.68648629, -751.5720436035  &
   orientation = 0.0, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.lever_D2_2.MARKER_280  &
   adams_id = 421  &
   location = 266.9059410856, -33.6519809341, -751.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.lever_D2_2.MARKER_282  &
   adams_id = 422  &
   location = 266.9059410856, 173.024953514, -751.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
part create rigid_body mass_properties  &
   part_name = .V12.lever_D2_2  &
   material_type = .V12.steel_2
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.lever_D2_2.CYLINDER_824  &
   adams_id = 2145  &
   center_marker = .V12.lever_D2_2.MARKER_259  &
   angle_extent = 6.2831853072  &
   length = 206.6769344481  &
   radius = 10.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
part attributes  &
   part_name = .V12.lever_D2_2  &
   color = RED  &
   name_visibility = off
!
!----------------------------------- roue_3 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.roue_3  &
   adams_id = 50  &
   location = -1020.0, 0.0, 530.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
defaults coordinate_system  &
   default_coordinate_system = .V12.roue_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.roue_3.MARKER_126  &
   adams_id = 449  &
   location = 380.0, 0.0, -230.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.roue_3.MARKER_1  &
   adams_id = 450  &
   location = 380.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue_3.MARKER_2  &
   adams_id = 451  &
   location = 380.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue_3.MARKER_15  &
   adams_id = 452  &
   location = 375.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue_3.cm  &
   adams_id = 453  &
   location = 452.2026304859, 4.2621335892E-010, -230.0000000004  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.roue_3.MARKER_39  &
   adams_id = 454  &
   location = 380.0, 0.0, -230.0  &
   orientation = 4.7123889804, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.roue_3.MARKER_428_2  &
   adams_id = 461  &
   location = 380.0, 0.0, -230.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.roue_3.MARKER_616  &
   adams_id = 616  &
   location = 374.9999999936, -6.379264959E-009, -230.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
part create rigid_body mass_properties  &
   part_name = .V12.roue_3  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.roue_3.CYLINDER_1_2  &
   adams_id = 2147  &
   center_marker = .V12.roue_3.MARKER_1  &
   angle_extent = 6.2831853072  &
   length = 150.0  &
   radius = 250.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create feature blend  &
   blend_name = .V12.roue_3.CYLINDER_1_2.BLEND_1  &
   subtype = edge  &
   radius1 = 20.0  &
   radius2 = 20.0  &
   reference_marker = .V12.roue_3.MARKER_1  &
   locations = -250.0, 0.0, 0.0, 250.0, 0.0, 150.0  &
   chamfer = no
!
geometry create shape cylinder  &
   cylinder_name = .V12.roue_3.CYLINDER_2  &
   adams_id = 2148  &
   center_marker = .V12.roue_3.MARKER_2  &
   angle_extent = 6.2831853072  &
   length = 150.0  &
   radius = 170.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.roue_3.CSG_3  &
   adams_id = 2146  &
   base_object = .V12.roue_3.CYLINDER_1_2  &
   object = .V12.roue_3.CYLINDER_2  &
   type = difference
!
geometry create shape cylinder  &
   cylinder_name = .V12.roue_3.CYLINDER_24  &
   adams_id = 2149  &
   center_marker = .V12.roue_3.MARKER_15  &
   angle_extent = 6.2831853072  &
   length = 10.0  &
   radius = 160.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create feature hole  &
   hole_name = .V12.roue_3.CYLINDER_24.HOLE_1  &
   center = -1170.0, 0.0, 155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.roue_3.CYLINDER_24.HOLE_2  &
   center = -1250.0, 80.0, 155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.roue_3.CYLINDER_24.HOLE_3  &
   center = -1330.0, 0.0, 155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.roue_3.CYLINDER_24.HOLE_4  &
   center = -1250.0, -80.0, 155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry attributes  &
   geometry_name = .V12.roue_3.CYLINDER_24  &
   color = BLUE
!
part attributes  &
   part_name = .V12.roue_3  &
   color = MAGENTA
!
!----------------------------------- roue_4 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.roue_4  &
   adams_id = 51  &
   location = -1480.0, 0.0, -1530.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
defaults coordinate_system  &
   default_coordinate_system = .V12.roue_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.roue_4.MARKER_1  &
   adams_id = 462  &
   location = 380.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue_4.MARKER_2  &
   adams_id = 463  &
   location = 380.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue_4.MARKER_15  &
   adams_id = 464  &
   location = 375.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 0.0
!
marker create  &
   marker_name = .V12.roue_4.cm  &
   adams_id = 465  &
   location = 452.2026304859, 4.3699988624E-010, -230.0000000003  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.roue_4.MARKER_128  &
   adams_id = 466  &
   location = 380.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 4.0863720428
!
marker create  &
   marker_name = .V12.roue_4.MARKER_427_2  &
   adams_id = 472  &
   location = 380.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 4.0863720428
!
marker create  &
   marker_name = .V12.roue_4.MARKER_618  &
   adams_id = 618  &
   location = 380.0, 0.0, -230.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
part create rigid_body mass_properties  &
   part_name = .V12.roue_4  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
geometry create shape cylinder  &
   cylinder_name = .V12.roue_4.CYLINDER_1  &
   adams_id = 2151  &
   center_marker = .V12.roue_4.MARKER_1  &
   angle_extent = 6.2831853072  &
   length = 150.0  &
   radius = 250.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create feature blend  &
   blend_name = .V12.roue_4.CYLINDER_1.BLEND_1  &
   subtype = edge  &
   radius1 = 20.0  &
   radius2 = 20.0  &
   reference_marker = .V12.roue_4.MARKER_1  &
   locations = -250.0, 0.0, 0.0, 250.0, 0.0, 150.0  &
   chamfer = no
!
geometry create shape cylinder  &
   cylinder_name = .V12.roue_4.CYLINDER_2  &
   adams_id = 2152  &
   center_marker = .V12.roue_4.MARKER_2  &
   angle_extent = 6.2831853072  &
   length = 150.0  &
   radius = 170.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create shape csg  &
   csg_name = .V12.roue_4.CSG_3  &
   adams_id = 2150  &
   base_object = .V12.roue_4.CYLINDER_1  &
   object = .V12.roue_4.CYLINDER_2  &
   type = difference
!
geometry create shape cylinder  &
   cylinder_name = .V12.roue_4.CYLINDER_24  &
   adams_id = 2153  &
   center_marker = .V12.roue_4.MARKER_15  &
   angle_extent = 6.2831853072  &
   length = 10.0  &
   radius = 160.0  &
   side_count_for_body = 20  &
   segment_count_for_ends = 20
!
geometry create feature hole  &
   hole_name = .V12.roue_4.CYLINDER_24.HOLE_1  &
   center = -1330.0, 0.0, -1155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.roue_4.CYLINDER_24.HOLE_2  &
   center = -1250.0, 80.0, -1155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.roue_4.CYLINDER_24.HOLE_3  &
   center = -1170.0, 0.0, -1155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.roue_4.CYLINDER_24.HOLE_4  &
   center = -1250.0, -80.0, -1155.0  &
   radius = 40.0  &
   depth = 0.0  &
   countersink = no
!
geometry attributes  &
   geometry_name = .V12.roue_4.CYLINDER_24  &
   color = BLUE
!
part attributes  &
   part_name = .V12.roue_4  &
   color = MAGENTA
!
!------------------------------- Trig_gauche_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.Trig_gauche_2  &
   adams_id = 52  &
   location = -1230.0, 353.3149838284, -599.7964888864  &
   orientation = 0.0, 3.1415926536, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.Trig_gauche_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.Trig_gauche_2.MARKER_438_2  &
   adams_id = 438  &
   location = 252.6504780707, 175.1050613309, -242.7588508563  &
   orientation = 1.5707963268, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.Trig_gauche_2.MARKER_439_2  &
   adams_id = 439  &
   location = 246.9059410856, 173.024953514, -342.572043603  &
   orientation = 1.5904648566, 1.5725625734, 1.5708310707
!
marker create  &
   marker_name = .V12.Trig_gauche_2.MARKER_440_2  &
   adams_id = 440  &
   location = 252.6504780707, 275.1050613309, -242.7588508563  &
   orientation = 0.0, 3.1415926536, 0.0
!
marker create  &
   marker_name = .V12.Trig_gauche_2.MARKER_141  &
   adams_id = 473  &
   location = 252.6504780707, 175.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.Trig_gauche_2.MARKER_142  &
   adams_id = 474  &
   location = 246.9059410856, 173.024953514, -342.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.Trig_gauche_2.MARKER_143  &
   adams_id = 475  &
   location = 252.6504780707, 275.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.Trig_gauche_2.cm  &
   adams_id = 476  &
   location = 252.6776813957, 209.9858545439, -276.6161476752  &
   orientation = 1.7278573184E-003, 2.3238575897, 1.7194527989E-003
!
marker create  &
   marker_name = .V12.Trig_gauche_2.MARKER_299  &
   adams_id = 477  &
   location = 252.6504780707, 175.1050613309, -242.7588508563  &
   orientation = 1.5707963268, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.Trig_gauche_2.MARKER_302  &
   adams_id = 478  &
   location = 246.9059410856, 173.024953514, -342.572043603  &
   orientation = 1.5904648566, 1.5725625734, 1.5708310707
!
marker create  &
   marker_name = .V12.Trig_gauche_2.MARKER_306  &
   adams_id = 479  &
   location = 252.6504780707, 275.1050613309, -242.7588508563  &
   orientation = 0.0, 3.1415926536, 0.0
!
part create rigid_body mass_properties  &
   part_name = .V12.Trig_gauche_2  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
geometry create shape plate  &
   plate_name = .V12.Trig_gauche_2.PLATE_415  &
   marker_name = .V12.Trig_gauche_2.MARKER_141,  &
                 .V12.Trig_gauche_2.MARKER_142, .V12.Trig_gauche_2.MARKER_143  &
   width = 30.0  &
   radius = 20.0
!
geometry create feature hole  &
   hole_name = .V12.Trig_gauche_2.PLATE_415.HOLE_1  &
   center = -952.3495219293, 78.2099224975, -357.0376380301  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.Trig_gauche_2.PLATE_415.HOLE_2  &
   center = -958.6971202489, 173.024953514, -257.2244452834  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.Trig_gauche_2.PLATE_415.HOLE_3  &
   center = -952.3495219293, 178.9302983284, -358.2329156901  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.Trig_gauche_2.PLATE_415.HOLE_4  &
   center = -978.8704870704, 200.1853773443, -262.4545562326  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
part attributes  &
   part_name = .V12.Trig_gauche_2  &
   color = RED  &
   name_visibility = off
!
!------------------------------- trig_droite_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.trig_droite_2  &
   adams_id = 53  &
   location = -1230.0, 0.0, -409.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.trig_droite_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.trig_droite_2.MARKER_441_2  &
   adams_id = 441  &
   location = 252.6504780707, 275.1050613309, -242.7588508563  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.trig_droite_2.MARKER_442_2  &
   adams_id = 442  &
   location = 252.6504780707, 175.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite_2.MARKER_443_2  &
   adams_id = 443  &
   location = 246.9059410856, 173.024953514, -342.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite_2.MARKER_307  &
   adams_id = 487  &
   location = 252.6504780707, 275.1050613309, -242.7588508563  &
   orientation = 0.0, 0.0, 0.0
!
marker create  &
   marker_name = .V12.trig_droite_2.MARKER_272  &
   adams_id = 488  &
   location = 252.6504780707, 175.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite_2.MARKER_281  &
   adams_id = 489  &
   location = 246.9059410856, 173.024953514, -342.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite_2.MARKER_141  &
   adams_id = 490  &
   location = 252.6504780707, 175.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite_2.MARKER_142  &
   adams_id = 491  &
   location = 246.9059410856, 173.024953514, -342.572043603  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite_2.MARKER_143  &
   adams_id = 492  &
   location = 252.6504780707, 275.1050613309, -242.7588508563  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.trig_droite_2.cm  &
   adams_id = 493  &
   location = 252.5845392657, 209.819605981, -277.109648311  &
   orientation = 6.2787051148, 2.3372332572, 6.2790538295
!
part create rigid_body mass_properties  &
   part_name = .V12.trig_droite_2  &
   density = 7.8E-007
!
! ****** Graphics for current part ******
!
geometry create shape plate  &
   plate_name = .V12.trig_droite_2.PLATE_415  &
   marker_name = .V12.trig_droite_2.MARKER_141,  &
                 .V12.trig_droite_2.MARKER_142, .V12.trig_droite_2.MARKER_143  &
   width = 30.0  &
   radius = 20.0
!
geometry create feature hole  &
   hole_name = .V12.trig_droite_2.PLATE_415.HOLE_1  &
   center = -952.3495219293, 275.1050613309, -651.7588508563  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.trig_droite_2.PLATE_415.HOLE_2  &
   center = -952.3495219293, 173.024953514, -751.572043603  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.trig_droite_2.PLATE_415.HOLE_3  &
   center = -952.3495219293, 174.3846855, -650.5635731963  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
geometry create feature hole  &
   hole_name = .V12.trig_droite_2.PLATE_415.HOLE_4  &
   center = -969.3389065722, 153.0786533578, -748.7868992899  &
   radius = 10.0  &
   depth = 0.0  &
   countersink = no
!
part attributes  &
   part_name = .V12.trig_droite_2  &
   color = RED  &
   name_visibility = off
!
!------------------------------------ ADD1 ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.ADD1  &
   adams_id = 54  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ADD1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.ADD1.MARKER_527  &
   adams_id = 527  &
   location = 0.0, 107.2650768004, 6.3475983196  &
   orientation = 0.0, 3.0615938858E-002, 4.7123889804
!
marker create  &
   marker_name = .V12.ADD1.MARKER_528  &
   adams_id = 528  &
   location = 0.0, -100.0, 0.0  &
   orientation = 0.0, 3.0615938858E-002, 4.7123889804
!
marker create  &
   marker_name = .V12.ADD1.cm  &
   adams_id = 547  &
   location = 0.0, 3.6325384002, 3.1737991598  &
   orientation = 3.1415926536, 1.5401803881, 1.5707963283
!
marker create  &
   marker_name = .V12.ADD1.MARKER_38  &
   adams_id = 529  &
   location = 0.0, 100.0, 0.0  &
   orientation = 4.7123889804, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.ADD1.MARKER_119  &
   adams_id = 530  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
marker create  &
   marker_name = .V12.ADD1.MARKER_531  &
   adams_id = 531  &
   location = 0.0, -100.0, 0.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
part create rigid_body mass_properties  &
   part_name = .V12.ADD1  &
   material_type = .V12.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .V12.ADD1.LINK_3430  &
   i_marker = .V12.ADD1.MARKER_527  &
   j_marker = .V12.ADD1.MARKER_528  &
   width = 20.7362253232  &
   depth = 10.3681126616
!
part attributes  &
   part_name = .V12.ADD1  &
   color = GREEN  &
   name_visibility = off
!
!------------------------------------ ADD2 ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.ADD2  &
   adams_id = 55  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ADD2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.ADD2.MARKER_38  &
   adams_id = 63  &
   location = 0.0, 100.0, -1000.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.ADD2.MARKER_548  &
   adams_id = 548  &
   location = 0.0, 100.0, -1000.0  &
   orientation = 4.7123889804, 0.0, 0.0
!
marker create  &
   marker_name = .V12.ADD2.MARKER_549  &
   adams_id = 549  &
   location = 0.0, -100.0, -1000.0  &
   orientation = 4.7123889804, 0.0, 0.0
!
marker create  &
   marker_name = .V12.ADD2.cm  &
   adams_id = 577  &
   location = 0.0, 0.0, -1000.0  &
   orientation = 3.1415926536, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.ADD2.MARKER_36  &
   adams_id = 550  &
   location = 0.0, -100.0, -1000.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.ADD2.MARKER_551  &
   adams_id = 551  &
   location = 0.0, -100.0, -1000.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
part create rigid_body mass_properties  &
   part_name = .V12.ADD2  &
   material_type = .V12.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .V12.ADD2.LINK_3431  &
   i_marker = .V12.ADD2.MARKER_548  &
   j_marker = .V12.ADD2.MARKER_549  &
   width = 20.0  &
   depth = 10.0
!
part attributes  &
   part_name = .V12.ADD2  &
   color = GREEN  &
   name_visibility = off
!
!------------------------------------ ADD4 ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.ADD4  &
   adams_id = 57  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ADD4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.ADD4.MARKER_38  &
   adams_id = 403  &
   location = -1250.0, 100.0, -1000.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.ADD4.MARKER_558  &
   adams_id = 558  &
   location = -1250.0, 100.0, -1000.0  &
   orientation = 4.7123889804, 0.0, 0.0
!
marker create  &
   marker_name = .V12.ADD4.MARKER_559  &
   adams_id = 559  &
   location = -1250.0, -100.0, -1000.0  &
   orientation = 4.7123889804, 0.0, 0.0
!
marker create  &
   marker_name = .V12.ADD4.cm  &
   adams_id = 579  &
   location = -1250.0, 0.0, -1000.0  &
   orientation = 3.1415926536, 1.5707963268, 1.5707963268
!
marker create  &
   marker_name = .V12.ADD4.MARKER_36  &
   adams_id = 560  &
   location = -1250.0, -100.0, -1000.0  &
   orientation = 1.5707963268, 1.5707963268, 4.7123889804
!
marker create  &
   marker_name = .V12.ADD4.MARKER_561  &
   adams_id = 561  &
   location = -1250.0, -100.0, -1000.0  &
   orientation = 3.1415926536, 1.5707963268, 3.1415926536
!
part create rigid_body mass_properties  &
   part_name = .V12.ADD4  &
   material_type = .V12.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .V12.ADD4.LINK_3433  &
   i_marker = .V12.ADD4.MARKER_558  &
   j_marker = .V12.ADD4.MARKER_559  &
   width = 20.0  &
   depth = 10.0
!
part attributes  &
   part_name = .V12.ADD4  &
   color = GREEN  &
   name_visibility = off
!
!------------------------------------ ADD3 ------------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
part create rigid_body name_and_position  &
   part_name = .V12.ADD3  &
   adams_id = 58  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ADD3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .V12.ADD3.MARKER_582  &
   adams_id = 582  &
   location = -1250.0, -100.0, 0.0  &
   orientation = 1.7115828708, 1.1342212942, 4.6072406394
!
marker create  &
   marker_name = .V12.ADD3.MARKER_584  &
   adams_id = 584  &
   location = -1250.0, 107.2650768004, 6.3475983196  &
   orientation = 1.5707963268, 1.5707963268, 2.8494655951
!
marker create  &
   marker_name = .V12.ADD3.MARKER_585  &
   adams_id = 585  &
   location = -1250.0, 107.2650768004, 6.3475983196  &
   orientation = 1.5408532691, 0.7967397894, 3.1844137027
!
marker create  &
   marker_name = .V12.ADD3.MARKER_586  &
   adams_id = 586  &
   location = -1250.0, -100.0, 0.0  &
   orientation = 1.5408532691, 0.7967397894, 3.1844137027
!
marker create  &
   marker_name = .V12.ADD3.cm  &
   adams_id = 603  &
   location = -1249.9999999975, 3.6325384001, 3.1737991623  &
   orientation = 1.5329056813E-010, 1.6014122655, 0.7745149734
!
marker create  &
   marker_name = .V12.ADD3.MARKER_587  &
   adams_id = 587  &
   location = -1249.9999999975, 3.6325384001, 3.1737991623  &
   orientation = 3.1415926534, 1.5401803881, 5.1791350286
!
part create rigid_body mass_properties  &
   part_name = .V12.ADD3  &
   material_type = .V12.steel
!
! ****** Graphics for current part ******
!
geometry create shape link  &
   link_name = .V12.ADD3.LINK_3924  &
   i_marker = .V12.ADD3.MARKER_585  &
   j_marker = .V12.ADD3.MARKER_586  &
   width = 20.7362253232  &
   depth = 10.3681126616
!
part attributes  &
   part_name = .V12.ADD3  &
   color = RED  &
   name_visibility = off
!
!---------------------------------- Contacts ----------------------------------!
!
!
contact create  &
   contact_name = .V12.CONTACT_FR  &
   adams_id = 1  &
   i_geometry_name = .V12.roue_2.CSG_3  &
   j_geometry_name = .V12.ground.EXTRUSION_3503  &
   stiffness = 10.0  &
   damping = 10.0  &
   exponent = 2.0  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.2  &
   mu_dynamic = 1.2  &
   stiction_transition_velocity = 1.0  &
   friction_transition_velocity = 50.0
!
contact create  &
   contact_name = .V12.CONTACT_FL  &
   adams_id = 2  &
   i_geometry_name = .V12.roue.CSG_3  &
   j_geometry_name = .V12.ground.EXTRUSION_3503  &
   stiffness = 10.0  &
   damping = 10.0  &
   exponent = 2.0  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.2  &
   mu_dynamic = 1.2  &
   stiction_transition_velocity = 1.0  &
   friction_transition_velocity = 50.0
!
contact create  &
   contact_name = .V12.CONTACT_RR  &
   adams_id = 3  &
   i_geometry_name = .V12.roue_3.CSG_3  &
   j_geometry_name = .V12.ground.EXTRUSION_3503  &
   stiffness = 10.0  &
   damping = 10.0  &

   exponent = 2.0  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.2  &
   mu_dynamic = 1.2  &
   stiction_transition_velocity = 1.0  &
   friction_transition_velocity = 50.0
!
contact create  &
   contact_name = .V12.CONTACT_RL  &
   adams_id = 4  &
   i_geometry_name = .V12.roue_4.CSG_3  &
   j_geometry_name = .V12.ground.EXTRUSION_3503  &
   stiffness = 10.0  &
   damping = 10.0  &
   exponent = 2.0  &
   dmax = 0.1  &
   coulomb_friction = on  &
   mu_static = 1.2  &
   mu_dynamic = 1.2  &
   stiction_transition_velocity = 1.0  &
   friction_transition_velocity = 50.0
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint revolute  &
   joint_name = .V12.JTSUPCHASSIS  &
   adams_id = 1  &
   i_marker_name = .V12.TSUP.MARKER_31  &
   j_marker_name = .V12.CHASSIS.MARKER_32
!
constraint attributes  &
   constraint_name = .V12.JTSUPCHASSIS  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.JTINFCHASSIS  &
   adams_id = 2  &
   i_marker_name = .V12.TINF.MARKER_33  &
   j_marker_name = .V12.CHASSIS.MARKER_34
!
constraint attributes  &
   constraint_name = .V12.JTINFCHASSIS  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.ROTINF_1  &
   adams_id = 19  &
   i_marker_name = .V12.TINF.MARKER_118  &
   j_marker_name = .V12.ADD1.MARKER_119
!
constraint attributes  &
   constraint_name = .V12.ROTINF_1  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .V12.ROTSUP  &
   adams_id = 4  &
   i_marker_name = .V12.TSUP.MARKER_37  &
   j_marker_name = .V12.ADD1.MARKER_38
!
constraint attributes  &
   constraint_name = .V12.ROTSUP  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.ROTROUE  &
   adams_id = 20  &
   i_marker_name = .V12.FUSE.MARKER_125  &
   j_marker_name = .V12.roue_2.MARKER_126
!
constraint attributes  &
   constraint_name = .V12.ROTROUE  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.JTSUPCHASSIS_2  &
   adams_id = 6  &
   i_marker_name = .V12.TSUP_2.MARKER_31  &
   j_marker_name = .V12.CHASSIS.MARKER_72
!
constraint attributes  &
   constraint_name = .V12.JTSUPCHASSIS_2  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.JTINFCHASSIS_2  &
   adams_id = 7  &
   i_marker_name = .V12.TINF_2.MARKER_33  &
   j_marker_name = .V12.CHASSIS.MARKER_73
!
constraint attributes  &
   constraint_name = .V12.JTINFCHASSIS_2  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.ROTINF_2  &
   adams_id = 8  &
   i_marker_name = .V12.TINF_2.MARKER_35  &
   j_marker_name = .V12.ADD2.MARKER_36
!
constraint attributes  &
   constraint_name = .V12.ROTINF_2  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .V12.ROTSUP_2  &
   adams_id = 9  &
   i_marker_name = .V12.TSUP_2.MARKER_37  &
   j_marker_name = .V12.ADD2.MARKER_38
!
constraint attributes  &
   constraint_name = .V12.ROTSUP_2  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.JOINT_34  &
   adams_id = 34  &
   i_marker_name = .V12.cylindre.MARKER_305  &
   j_marker_name = .V12.Trig_gauche.MARKER_306
!
constraint attributes  &
   constraint_name = .V12.JOINT_34  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.JOINT_35  &
   adams_id = 35  &
   i_marker_name = .V12.trig_droite.MARKER_307  &
   j_marker_name = .V12.verin.MARKER_308
!
constraint attributes  &
   constraint_name = .V12.JOINT_35  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.JOINT_25  &
   adams_id = 25  &
   i_marker_name = .V12.CHASSIS.MARKER_271  &
   j_marker_name = .V12.trig_droite.MARKER_272
!
constraint attributes  &
   constraint_name = .V12.JOINT_25  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.JOINT_32  &
   adams_id = 32  &
   i_marker_name = .V12.Trig_gauche.MARKER_299  &
   j_marker_name = .V12.CHASSIS.MARKER_300
!
constraint attributes  &
   constraint_name = .V12.JOINT_32  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.JOINT_28  &
   adams_id = 28  &
   i_marker_name = .V12.TINF.MARKER_277  &
   j_marker_name = .V12.lever_G2.MARKER_278
!
constraint attributes  &
   constraint_name = .V12.JOINT_28  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.JOINT_29  &
   adams_id = 29  &
   i_marker_name = .V12.TINF_2.MARKER_279  &
   j_marker_name = .V12.lever_D2.MARKER_280
!
constraint attributes  &
   constraint_name = .V12.JOINT_29  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.ROTROUE_2  &
   adams_id = 21  &
   i_marker_name = .V12.FUSE_2.MARKER_127  &
   j_marker_name = .V12.roue.MARKER_128
!
constraint attributes  &
   constraint_name = .V12.ROTROUE_2  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.JOINT_30  &
   adams_id = 30  &
   i_marker_name = .V12.trig_droite.MARKER_281  &
   j_marker_name = .V12.lever_D2.MARKER_282
!
constraint attributes  &
   constraint_name = .V12.JOINT_30  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.JOINT_33  &
   adams_id = 33  &
   i_marker_name = .V12.lever_G2.MARKER_301  &
   j_marker_name = .V12.Trig_gauche.MARKER_302
!
constraint attributes  &
   constraint_name = .V12.JOINT_33  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .V12.VERIN_AVANT  &
   adams_id = 36  &
   i_marker_name = .V12.verin.MARKER_309  &
   j_marker_name = .V12.cylindre.MARKER_310
!
constraint attributes  &
   constraint_name = .V12.VERIN_AVANT  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.JTSUPCHASSIS_3  &
   adams_id = 37  &
   i_marker_name = .V12.TSUP_3.MARKER_31  &
   j_marker_name = .V12.CHASSIS.MARKER_321
!
constraint attributes  &
   constraint_name = .V12.JTSUPCHASSIS_3  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.JTINFCHASSIS_3  &
   adams_id = 38  &
   i_marker_name = .V12.TINF_3.MARKER_33  &
   j_marker_name = .V12.CHASSIS.MARKER_341
!
constraint attributes  &
   constraint_name = .V12.JTINFCHASSIS_3  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.ROTINF3  &
   adams_id = 61  &
   i_marker_name = .V12.TINF_3.MARKER_581  &
   j_marker_name = .V12.ADD3.MARKER_582
!
constraint attributes  &
   constraint_name = .V12.ROTINF3  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .V12.ROTSUP_3  &
   adams_id = 62  &
   i_marker_name = .V12.TSUP_3.MARKER_583  &
   j_marker_name = .V12.ADD3.MARKER_584
!
constraint attributes  &
   constraint_name = .V12.ROTSUP_3  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.ROTROUE_3  &
   adams_id = 41  &
   i_marker_name = .V12.FUSE_3.MARKER_125  &
   j_marker_name = .V12.roue_3.MARKER_428_2
!
constraint attributes  &
   constraint_name = .V12.ROTROUE_3  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.JTSUPCHASSIS_4  &
   adams_id = 42  &
   i_marker_name = .V12.TSUP_4.MARKER_31  &
   j_marker_name = .V12.CHASSIS.MARKER_721
!
constraint attributes  &
   constraint_name = .V12.JTSUPCHASSIS_4  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.JTINFCHASSIS_4  &
   adams_id = 43  &
   i_marker_name = .V12.TINF_4.MARKER_33  &
   j_marker_name = .V12.CHASSIS.MARKER_731
!
constraint attributes  &
   constraint_name = .V12.JTINFCHASSIS_4  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.ROTINF_3  &
   adams_id = 44  &
   i_marker_name = .V12.TINF_4.MARKER_35  &
   j_marker_name = .V12.ADD4.MARKER_36
!
constraint attributes  &
   constraint_name = .V12.ROTINF_3  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .V12.ROTSUP_4  &
   adams_id = 45  &
   i_marker_name = .V12.TSUP_4.MARKER_37  &
   j_marker_name = .V12.ADD4.MARKER_38
!
constraint attributes  &
   constraint_name = .V12.ROTSUP_4  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.JOINT_46  &
   adams_id = 46  &
   i_marker_name = .V12.cylindre_2.MARKER_305  &
   j_marker_name = .V12.Trig_gauche_2.MARKER_440_2
!
constraint attributes  &
   constraint_name = .V12.JOINT_46  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.JOINT_47  &
   adams_id = 47  &
   i_marker_name = .V12.trig_droite_2.MARKER_441_2  &
   j_marker_name = .V12.verin_2.MARKER_308
!
constraint attributes  &
   constraint_name = .V12.JOINT_47  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.JOINT_48  &
   adams_id = 48  &
   i_marker_name = .V12.CHASSIS.MARKER_2711  &
   j_marker_name = .V12.trig_droite_2.MARKER_442_2
!
constraint attributes  &
   constraint_name = .V12.JOINT_48  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.JOINT_49  &
   adams_id = 49  &
   i_marker_name = .V12.Trig_gauche_2.MARKER_438_2  &
   j_marker_name = .V12.CHASSIS.MARKER_3001
!
constraint attributes  &
   constraint_name = .V12.JOINT_49  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.JOINT_50  &
   adams_id = 50  &
   i_marker_name = .V12.TINF_3.MARKER_277  &
   j_marker_name = .V12.lever_G2_2.MARKER_278
!
constraint attributes  &
   constraint_name = .V12.JOINT_50  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.JOINT_51  &
   adams_id = 51  &
   i_marker_name = .V12.TINF_4.MARKER_279  &
   j_marker_name = .V12.lever_D2_2.MARKER_280
!
constraint attributes  &
   constraint_name = .V12.JOINT_51  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.ROTROUE_4  &
   adams_id = 53  &
   i_marker_name = .V12.FUSE_4.MARKER_127  &
   j_marker_name = .V12.roue_4.MARKER_427_2
!
constraint attributes  &
   constraint_name = .V12.ROTROUE_4  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.JOINT_54  &
   adams_id = 54  &
   i_marker_name = .V12.trig_droite_2.MARKER_443_2  &
   j_marker_name = .V12.lever_D2_2.MARKER_282
!
constraint attributes  &
   constraint_name = .V12.JOINT_54  &
   name_visibility = off
!
constraint create joint spherical  &
   joint_name = .V12.JOINT_55  &
   adams_id = 55  &
   i_marker_name = .V12.lever_G2_2.MARKER_301  &
   j_marker_name = .V12.Trig_gauche_2.MARKER_439_2
!
constraint attributes  &
   constraint_name = .V12.JOINT_55  &
   name_visibility = off
!
constraint create joint cylindrical  &
   joint_name = .V12.VERIN_ARRIERE  &
   adams_id = 56  &
   i_marker_name = .V12.verin_2.MARKER_309  &
   j_marker_name = .V12.cylindre_2.MARKER_310
!
constraint attributes  &
   constraint_name = .V12.VERIN_ARRIERE  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.STEERAVD  &
   adams_id = 57  &
   i_marker_name = .V12.ADD1.MARKER_531  &
   j_marker_name = .V12.FUSE.MARKER_532
!
constraint attributes  &
   constraint_name = .V12.STEERAVD  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.STEERAVG  &
   adams_id = 58  &
   i_marker_name = .V12.ADD2.MARKER_551  &
   j_marker_name = .V12.FUSE_2.MARKER_552
!
constraint attributes  &
   constraint_name = .V12.STEERAVG  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.STEERARG  &
   adams_id = 60  &
   i_marker_name = .V12.ADD4.MARKER_561  &
   j_marker_name = .V12.FUSE_4.MARKER_562
!
constraint attributes  &
   constraint_name = .V12.STEERARG  &
   name_visibility = off
!
constraint create joint revolute  &
   joint_name = .V12.STEERARD  &
   adams_id = 63  &
   i_marker_name = .V12.ADD3.MARKER_587  &
   j_marker_name = .V12.FUSE_3.MARKER_588
!
constraint attributes  &
   constraint_name = .V12.STEERARD  &
   name_visibility = off
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .V12.SFORCE_5  &
   adams_id = 5  &
   type_of_freedom = translational  &
   i_marker_name = .V12.verin.MARKER_604  &
   j_marker_name = .V12.cylindre.MARKER_605  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .V12.SFORCE_6  &
   adams_id = 6  &
   type_of_freedom = translational  &
   i_marker_name = .V12.verin_2.MARKER_606  &
   j_marker_name = .V12.cylindre_2.MARKER_607  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .V12.SFORCE_7  &
   adams_id = 7  &
   type_of_freedom = rotational  &
   i_marker_name = .V12.CHASSIS.MARKER_609  &
   j_marker_name = .V12.CHASSIS.MARKER_610  &
   action_only = on  &
   function = ""
!
force attributes  &
   force_name = .V12.SFORCE_7  &
   active = off
!
force create direct single_component_force  &
   single_component_force_name = .V12.coupleFR  &
   adams_id = 12  &
   type_of_freedom = rotational  &
   i_marker_name = .V12.FUSE.MARKER_611  &
   j_marker_name = .V12.roue_2.MARKER_612  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .V12.couple_FL  &
   adams_id = 13  &
   type_of_freedom = rotational  &
   i_marker_name = .V12.FUSE_2.MARKER_613  &
   j_marker_name = .V12.roue.MARKER_614  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .V12.couple_RR  &
   adams_id = 14  &
   type_of_freedom = rotational  &
   i_marker_name = .V12.FUSE_3.MARKER_615  &
   j_marker_name = .V12.roue_3.MARKER_616  &
   action_only = off  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .V12.couple_RL  &
   adams_id = 15  &
   type_of_freedom = rotational  &
   i_marker_name = .V12.FUSE_4.MARKER_617  &
   j_marker_name = .V12.roue_4.MARKER_618  &
   action_only = off  &
   function = ""
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .V12.Empattement  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1150.0
!
variable create  &
   variable_name = .V12.Voie  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1200.0
!
variable create  &
   variable_name = .V12.RaideurSuspension  &
   units = "torsion_stiffness"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 11.0
!
variable create  &
   variable_name = .V12.ViscositeSuspension  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0
!
variable create  &
   variable_name = .V12.precharge  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1000.0
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .V12.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=5.0 number_of_steps=500 model_name=.V12 initial_static=no"
!
simulation script create  &
   sim_script_name = .V12.Last_Sim_2  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=5.0 number_of_steps=500 model_name=.V53 initial_static=no"
!
simulation script create  &
   sim_script_name = .V12.SIM_SCRIPT_1  &
   type = auto_select  &
   initial_static = yes  &
   number_of_steps = 50  &
   end_time = 5.0
!
simulation script create  &
   sim_script_name = .V12.Last_Sim_3  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=8.0 number_of_steps=6000 model_name=.BAR3 initial_static=no"
!
simulation script create  &
   sim_script_name = .V12.Last_Sim_4  &
   commands =   &
              "simulation single_run transient type=auto_select end_time=8.0 number_of_steps=6000 model_name=.BAR3 initial_static=no"
!
!-------------------------- Adams/View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .V12.SPRING_FR  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 7.2650768004, 6.3475983196  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .V12.SPRING_FR  &
   color = RED
!
ude create instance  &
   instance_name = .V12.SPRING_FL  &
   definition_name = .MDI.Forces.spring  &
   location = 0.0, 0.0, -1000.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
ude attributes  &
   instance_name = .V12.SPRING_FL  &
   color = RED
!
ude create instance  &
   instance_name = .V12.TRACTION_FR  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .V12.TRACTION_FL  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .V12.SPRING_RR  &
   definition_name = .MDI.Forces.spring  &
   location = -1250.0, 7.2650768004, 6.3475983196  &
   orientation = 0.0, 0.0, 0.0
!
ude attributes  &
   instance_name = .V12.SPRING_RR  &
   color = RED
!
ude create instance  &
   instance_name = .V12.SPRING_RL  &
   definition_name = .MDI.Forces.spring  &
   location = -1250.0, 0.0, -1000.0  &
   orientation = 3.1415926536, 3.1415926536, 0.0
!
ude attributes  &
   instance_name = .V12.SPRING_RL  &
   color = RED
!
ude create instance  &
   instance_name = .V12.TRACTION_RR  &
   definition_name = .MDI.Constraints.general_motion  &
   location = -1250.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .V12.TRACTION_RL  &
   definition_name = .MDI.Constraints.general_motion  &
   location = -1250.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .V12.VERINARRIERE  &
   definition_name = .MDI.Constraints.general_motion  &
   location = -1250.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .V12.DIRECTION_FR  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .V12.DIRECTION_FL  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .V12.DIRECTION_RL  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .V12.DIRECTION_RR  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .V12.Controls_Plant_1  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .V12.general_motion_1  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .V12.general_motion_2  &
   definition_name = .MDI.Constraints.general_motion  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.SPRING_FR.i_marker  &
   object_value = .V12.TINF.Marker_20
!
variable modify  &
   variable_name = .V12.SPRING_FR.j_marker  &
   object_value = .V12.CHASSIS.Marker_21
!
variable modify  &
   variable_name = .V12.SPRING_FR.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .V12.SPRING_FR.stiffness_coefficient  &
   real_value = (.V12.RaideurSuspension)
!
variable modify  &
   variable_name = .V12.SPRING_FR.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .V12.SPRING_FR.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .V12.SPRING_FR.damping_coefficient  &
   real_value = (.V12.ViscositeSuspension)
!
variable modify  &
   variable_name = .V12.SPRING_FR.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .V12.SPRING_FR.free_length_mode  &
   string_value = "Design_Length"
!
variable modify  &
   variable_name = .V12.SPRING_FR.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .V12.SPRING_FR.preload  &
   real_value = (.V12.precharge)
!
variable modify  &
   variable_name = .V12.SPRING_FR.i_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .V12.SPRING_FR.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .V12.SPRING_FR.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .V12.SPRING_FR.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .V12.SPRING_FR
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.SPRING_FL.i_marker  &
   object_value = .V12.TINF_2.Marker_22
!
variable modify  &
   variable_name = .V12.SPRING_FL.j_marker  &
   object_value = .V12.CHASSIS.Marker_23
!
variable modify  &
   variable_name = .V12.SPRING_FL.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .V12.SPRING_FL.stiffness_coefficient  &
   real_value = (.V12.RaideurSuspension)
!
variable modify  &
   variable_name = .V12.SPRING_FL.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .V12.SPRING_FL.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .V12.SPRING_FL.damping_coefficient  &
   real_value = (.V12.ViscositeSuspension)
!
variable modify  &
   variable_name = .V12.SPRING_FL.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .V12.SPRING_FL.free_length_mode  &
   string_value = "Design_Length"
!
variable modify  &
   variable_name = .V12.SPRING_FL.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .V12.SPRING_FL.preload  &
   real_value = (.V12.precharge)
!
variable modify  &
   variable_name = .V12.SPRING_FL.i_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .V12.SPRING_FL.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .V12.SPRING_FL.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .V12.SPRING_FL.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .V12.SPRING_FL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.TRACTION_FR.i_marker  &
   object_value = (.V12.FUSE.MARKER_125)
!
variable modify  &
   variable_name = .V12.TRACTION_FR.j_marker  &
   object_value = (.V12.roue_2.MARKER_126)
!
variable modify  &
   variable_name = .V12.TRACTION_FR.constraint  &
   object_value = (.V12.ROTROUE)
!
variable modify  &
   variable_name = .V12.TRACTION_FR.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.r3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_FR.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_FR.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_FR.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_FR.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_FR.r3_func  &
   string_value = "varval(AccelMoteur)"
!
variable modify  &
   variable_name = .V12.TRACTION_FR.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FR.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .V12.TRACTION_FR
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.TRACTION_FL.i_marker  &
   object_value = (.V12.FUSE_2.MARKER_127)
!
variable modify  &
   variable_name = .V12.TRACTION_FL.j_marker  &
   object_value = (.V12.roue.MARKER_128)
!
variable modify  &
   variable_name = .V12.TRACTION_FL.constraint  &
   object_value = (.V12.ROTROUE_2)
!
variable modify  &
   variable_name = .V12.TRACTION_FL.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.r3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_FL.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_FL.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_FL.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_FL.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_FL.r3_func  &
   string_value = "varval(AccelMoteur)"
!
variable modify  &
   variable_name = .V12.TRACTION_FL.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_FL.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .V12.TRACTION_FL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.SPRING_RR.i_marker  &
   object_value = .V12.TINF_3.Marker_24
!
variable modify  &
   variable_name = .V12.SPRING_RR.j_marker  &
   object_value = .V12.CHASSIS.Marker_28
!
variable modify  &
   variable_name = .V12.SPRING_RR.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .V12.SPRING_RR.stiffness_coefficient  &
   real_value = (.V12.RaideurSuspension)
!
variable modify  &
   variable_name = .V12.SPRING_RR.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .V12.SPRING_RR.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .V12.SPRING_RR.damping_coefficient  &
   real_value = (.V12.ViscositeSuspension)
!
variable modify  &
   variable_name = .V12.SPRING_RR.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .V12.SPRING_RR.free_length_mode  &
   string_value = "Design_Length"
!
variable modify  &
   variable_name = .V12.SPRING_RR.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .V12.SPRING_RR.preload  &
   real_value = (.V12.precharge)
!
variable modify  &
   variable_name = .V12.SPRING_RR.i_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .V12.SPRING_RR.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .V12.SPRING_RR.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .V12.SPRING_RR.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .V12.SPRING_RR
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.SPRING_RL.i_marker  &
   object_value = .V12.TINF_4.Marker_40
!
variable modify  &
   variable_name = .V12.SPRING_RL.j_marker  &
   object_value = .V12.CHASSIS.Marker_41
!
variable modify  &
   variable_name = .V12.SPRING_RL.stiffness_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .V12.SPRING_RL.stiffness_coefficient  &
   real_value = (.V12.RaideurSuspension)
!
variable modify  &
   variable_name = .V12.SPRING_RL.stiffness_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .V12.SPRING_RL.damping_mode  &
   string_value = "linear"
!
variable modify  &
   variable_name = .V12.SPRING_RL.damping_coefficient  &
   real_value = (.V12.ViscositeSuspension)
!
variable modify  &
   variable_name = .V12.SPRING_RL.damping_spline  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .V12.SPRING_RL.free_length_mode  &
   string_value = "Design_Length"
!
variable modify  &
   variable_name = .V12.SPRING_RL.free_length  &
   real_value = 1.0
!
variable modify  &
   variable_name = .V12.SPRING_RL.preload  &
   real_value = (.V12.precharge)
!
variable modify  &
   variable_name = .V12.SPRING_RL.i_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .V12.SPRING_RL.j_dynamic_visibility  &
   string_value = "Off"
!
variable modify  &
   variable_name = .V12.SPRING_RL.spring_visibility  &
   string_value = "depends"
!
variable modify  &
   variable_name = .V12.SPRING_RL.damper_visibility  &
   string_value = "depends"
!
ude modify instance  &
   instance_name = .V12.SPRING_RL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.TRACTION_RR.i_marker  &
   object_value = (.V12.FUSE_3.MARKER_125)
!
variable modify  &
   variable_name = .V12.TRACTION_RR.j_marker  &
   object_value = (.V12.roue_3.MARKER_428_2)
!
variable modify  &
   variable_name = .V12.TRACTION_RR.constraint  &
   object_value = (.V12.ROTROUE_3)
!
variable modify  &
   variable_name = .V12.TRACTION_RR.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.r3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_RR.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_RR.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_RR.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_RR.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_RR.r3_func  &
   string_value = "varval(AccelMoteur)"
!
variable modify  &
   variable_name = .V12.TRACTION_RR.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RR.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .V12.TRACTION_RR
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.TRACTION_RL.i_marker  &
   object_value = (.V12.FUSE_4.MARKER_127)
!
variable modify  &
   variable_name = .V12.TRACTION_RL.j_marker  &
   object_value = (.V12.roue_4.MARKER_427_2)
!
variable modify  &
   variable_name = .V12.TRACTION_RL.constraint  &
   object_value = (.V12.ROTROUE_4)
!
variable modify  &
   variable_name = .V12.TRACTION_RL.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.r3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_RL.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_RL.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_RL.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_RL.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.TRACTION_RL.r3_func  &
   string_value = "varval(AccelMoteur)"
!
variable modify  &
   variable_name = .V12.TRACTION_RL.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.TRACTION_RL.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .V12.TRACTION_RL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.VERINARRIERE.i_marker  &
   object_value = (.V12.verin_2.MARKER_309)
!
variable modify  &
   variable_name = .V12.VERINARRIERE.j_marker  &
   object_value = (.V12.cylindre_2.MARKER_310)
!
variable modify  &
   variable_name = .V12.VERINARRIERE.constraint  &
   object_value = (.V12.VERIN_ARRIERE)
!
variable modify  &
   variable_name = .V12.VERINARRIERE.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.r3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.VERINARRIERE.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.VERINARRIERE.t3_func  &
   string_value = "varval(stab_function)"
!
variable modify  &
   variable_name = .V12.VERINARRIERE.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.VERINARRIERE.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.VERINARRIERE.r3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.VERINARRIERE.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.VERINARRIERE.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .V12.VERINARRIERE
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.i_marker  &
   object_value = (.V12.ADD1.MARKER_531)
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.j_marker  &
   object_value = (.V12.FUSE.MARKER_532)
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.constraint  &
   object_value = (.V12.STEERAVD)
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.r3_type  &
   integer_value = 1
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.r3_func  &
   string_value = "-ATAN(  Empattement*TAN(varval(AngleBraquageAV))/( Empattement + Voie* ( TAN(varval(AngleBraquageAV))-TAN(varval(AngleBraquageArriere)) ) /2 ) )"
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FR.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .V12.DIRECTION_FR
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.i_marker  &
   object_value = (.V12.ADD2.MARKER_551)
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.j_marker  &
   object_value = (.V12.FUSE_2.MARKER_552)
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.constraint  &
   object_value = (.V12.STEERAVG)
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.r3_type  &
   integer_value = 1
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.r3_func  &
   string_value = "-ATAN(  Empattement*TAN(varval(AngleBraquageAV))/( Empattement - Voie* ( TAN(varval(AngleBraquageAV))-TAN(varval(AngleBraquageArriere)) ) /2 ) ) "
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_FL.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .V12.DIRECTION_FL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.i_marker  &
   object_value = (.V12.ADD4.MARKER_561)
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.j_marker  &
   object_value = (.V12.FUSE_4.MARKER_562)
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.constraint  &
   object_value = (.V12.STEERARG)
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.r3_type  &
   integer_value = 1
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.r3_func  &
   string_value = "-ATAN(  Empattement*TAN(varval(AngleBraquageArriere))/( Empattement - Voie* ( TAN(varval(AngleBraquageAV))-TAN(varval(AngleBraquageArriere)) ) /2 ) ) "
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RL.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .V12.DIRECTION_RL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.i_marker  &
   object_value = (.V12.ADD3.MARKER_587)
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.j_marker  &
   object_value = (.V12.FUSE_3.MARKER_588)
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.constraint  &
   object_value = (.V12.STEERARD)
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.r3_type  &
   integer_value = 1
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.r3_func  &
   string_value = "-ATAN(  Empattement*TAN(varval(AngleBraquageArriere))/( Empattement + Voie* ( TAN(varval(AngleBraquageAV))-TAN(varval(AngleBraquageArriere)) ) /2 ) ) "
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.DIRECTION_RR.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .V12.DIRECTION_RR
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.Controls_Plant_1.input_channels  &
   object_value =   &
      .V12.force_verin,  &
      .V12.AngleBraquageAV,  &
      .V12.AngleBraquageArriere,  &
      .V12.couple_in_FR,  &
      .V12.couple_in_FL,  &
      .V12.couple_in_RR,  &
      .V12.couple_in_RL
!
variable modify  &
   variable_name = .V12.Controls_Plant_1.output_channels  &
   object_value =   &
      .V12.roulis,  &
      .V12.vitesse_out,  &
      .V12.FZFR,  &
      .V12.FZFL,  &
      .V12.FZRR,  &
      .V12.FZRL
!
variable modify  &
   variable_name = .V12.Controls_Plant_1.file_name  &
   string_value = "Controls_Plant_1"
!
variable modify  &
   variable_name = .V12.Controls_Plant_1.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .V12.Controls_Plant_1.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .V12.Controls_Plant_1.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .V12.Controls_Plant_1.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .V12.Controls_Plant_1.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .V12.Controls_Plant_1.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .V12.Controls_Plant_1.host  &
   string_value = "krid.isir.upmc.fr"
!
variable modify  &
   variable_name = .V12.Controls_Plant_1.dynamic_state  &
   string_value = "on"
!
ude modify instance  &
   instance_name = .V12.Controls_Plant_1
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.general_motion_1.i_marker  &
   object_value = (.V12.cylindre.MARKER_305)
!
variable modify  &
   variable_name = .V12.general_motion_1.j_marker  &
   object_value = (.V12.Trig_gauche.MARKER_306)
!
variable modify  &
   variable_name = .V12.general_motion_1.constraint  &
   object_value = (.V12.JOINT_34)
!
variable modify  &
   variable_name = .V12.general_motion_1.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.general_motion_1.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.general_motion_1.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.general_motion_1.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.general_motion_1.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.general_motion_1.r3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.general_motion_1.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.general_motion_1.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.general_motion_1.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.general_motion_1.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.general_motion_1.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.general_motion_1.r3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.general_motion_1.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_1.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_1.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_1.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_1.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_1.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_1.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_1.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_1.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_1.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_1.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_1.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .V12.general_motion_1
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .V12.general_motion_2.i_marker  &
   object_value = (.V12.verin.MARKER_309)
!
variable modify  &
   variable_name = .V12.general_motion_2.j_marker  &
   object_value = (.V12.cylindre.MARKER_310)
!
variable modify  &
   variable_name = .V12.general_motion_2.constraint  &
   object_value = (.V12.VERIN_AVANT)
!
variable modify  &
   variable_name = .V12.general_motion_2.t1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.general_motion_2.t2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.general_motion_2.t3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.general_motion_2.r1_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.general_motion_2.r2_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.general_motion_2.r3_type  &
   integer_value = 0
!
variable modify  &
   variable_name = .V12.general_motion_2.t1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.general_motion_2.t2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.general_motion_2.t3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.general_motion_2.r1_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.general_motion_2.r2_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.general_motion_2.r3_func  &
   string_value = "0 * time"
!
variable modify  &
   variable_name = .V12.general_motion_2.t1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_2.t2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_2.t3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_2.r1_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_2.r2_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_2.r3_ic_disp  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_2.t1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_2.t2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_2.t3_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_2.r1_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_2.r2_ic_velo  &
   real_value = 0.0
!
variable modify  &
   variable_name = .V12.general_motion_2.r3_ic_velo  &
   real_value = 0.0
!
ude modify instance  &
   instance_name = .V12.general_motion_2
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry create shape force  &
   force_name = .V12.JOINT_28_force_graphic_1  &
   adams_id = 971  &
   joint_name = .V12.JOINT_28  &
   applied_at_marker_name = .V12.TINF.MARKER_277
!
geometry create shape force  &
   force_name = .V12.JOINT_29_force_graphic_1  &
   adams_id = 972  &
   joint_name = .V12.JOINT_29  &
   applied_at_marker_name = .V12.TINF_2.MARKER_279
!
geometry create shape force  &
   force_name = .V12.JOINT_25_force_graphic_1  &
   adams_id = 973  &
   joint_name = .V12.JOINT_25  &
   applied_at_marker_name = .V12.CHASSIS.MARKER_271
!
geometry create shape force  &
   force_name = .V12.SFORCE_5_force_graphic_1  &
   adams_id = 4229  &
   force_element_name = .V12.SFORCE_5  &
   applied_at_marker_name = .V12.verin.MARKER_604
!
geometry create shape force  &
   force_name = .V12.SFORCE_6_force_graphic_1  &
   adams_id = 4230  &
   force_element_name = .V12.SFORCE_6  &
   applied_at_marker_name = .V12.verin_2.MARKER_606
!
geometry create shape force  &
   force_name = .V12.SFORCE_7_force_graphic_1  &
   adams_id = 4587  &
   force_element_name = .V12.SFORCE_7  &
   applied_at_marker_name = .V12.CHASSIS.MARKER_609
!
geometry attributes  &
   geometry_name = .V12.SFORCE_7_force_graphic_1  &
   active = off
!
geometry create shape force  &
   force_name = .V12.SFORCE_8_force_graphic_1  &
   adams_id = 5211  &
   force_element_name = .V12.coupleFR  &
   applied_at_marker_name = .V12.FUSE.MARKER_611
!
geometry create shape force  &
   force_name = .V12.SFORCE_8_force_graphic_2  &
   adams_id = 5212  &
   force_element_name = .V12.couple_FL  &
   applied_at_marker_name = .V12.FUSE_2.MARKER_613
!
geometry create shape force  &
   force_name = .V12.SFORCE_8_force_graphic_3  &
   adams_id = 5213  &
   force_element_name = .V12.couple_RR  &
   applied_at_marker_name = .V12.FUSE_3.MARKER_615
!
geometry create shape force  &
   force_name = .V12.SFORCE_8_force_graphic_4  &
   adams_id = 5214  &
   force_element_name = .V12.couple_RL  &
   applied_at_marker_name = .V12.FUSE_4.MARKER_617
!
geometry create shape gcontact  &
   contact_force_name = .V12.GCONTACT_381  &
   adams_id = 381  &
   contact_element_name = .V12.CONTACT_FR  &
   force_display = components
!
geometry attributes  &
   geometry_name = .V12.GCONTACT_381  &
   color = YELLOW
!
geometry create shape gcontact  &
   contact_force_name = .V12.GCONTACT_382  &
   adams_id = 382  &
   contact_element_name = .V12.CONTACT_FL  &
   force_display = components
!
geometry attributes  &
   geometry_name = .V12.GCONTACT_382  &
   color = YELLOW
!
geometry create shape gcontact  &
   contact_force_name = .V12.GCONTACT_2262  &
   adams_id = 2262  &
   contact_element_name = .V12.CONTACT_RR  &
   force_display = components
!
geometry attributes  &
   geometry_name = .V12.GCONTACT_2262  &
   color = RED
!
geometry create shape gcontact  &
   contact_force_name = .V12.GCONTACT_2265  &
   adams_id = 2265  &
   contact_element_name = .V12.CONTACT_RL  &
   force_display = components
!
geometry attributes  &
   geometry_name = .V12.GCONTACT_2265  &
   color = RED
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = gravity  &
   x_component_gravity = 0.0  &
   y_component_gravity = -9800.0  &
   z_component_gravity = 0.0
!
!----------------------------- Analysis settings ------------------------------!
!
!
executive_control set numerical_integration_parameters  &
   model_name = V12  &
   error_tolerance = 1.0
!
executive_control set kinematics_parameters  &
   model_name = V12  &
   error = 1.0E-002
!
executive_control set preferences  &
   model_name = V12  &
   contact_faceting_tolerance = 800.0
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create object  &
   measure_name = .V12.verin_2_MEA_1  &
   from_first = no  &
   object = .V12.verin_2  &
   characteristic = cm_position  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .V12.verin_2_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .V12.verin_MEA_1  &
   from_first = no  &
   object = .V12.verin  &
   characteristic = cm_position  &
   component = y_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .V12.verin_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .V12.verin_2_MEA_2  &
   from_first = no  &
   object = .V12.verin_2  &
   characteristic = cm_position  &
   component = x_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .V12.verin_2_MEA_2  &
   color = WHITE
!
measure create object  &
   measure_name = .V12.verin_2_MEA_3  &
   from_first = no  &
   object = .V12.verin_2  &
   characteristic = cm_position  &
   component = y_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .V12.verin_2_MEA_3  &
   color = WHITE
!
measure create orient  &
   measure_name = .V12.ORIENT_cm_2_MEA_1  &
   to_frame = .V12.CHASSIS.cm_2  &
   characteristic = euler_angles  &
   component = angle_3_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .V12.ORIENT_cm_2_MEA_1  &
   color = WHITE
!
measure create orient  &
   measure_name = .V12.ORIENT_cm_2_MEA_2  &
   to_frame = .V12.CHASSIS.cm_2  &
   characteristic = euler_angles  &
   component = angle_3_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .V12.ORIENT_cm_2_MEA_2  &
   color = WHITE
!
measure create orient  &
   measure_name = .V12.ORIENT_cm_2_MEA_3  &
   to_frame = .V12.CHASSIS.cm_2  &
   characteristic = euler_angles  &
   component = angle_3_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .V12.ORIENT_cm_2_MEA_3  &
   color = WHITE
!
measure create orient  &
   measure_name = .V12.ang_roulis  &
   to_frame = .V12.CHASSIS.MARKER_496  &
   characteristic = body_2_1_3  &
   component = angle_2_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .V12.ang_roulis  &
   color = WHITE
!
measure create point  &
   measure_name = .V12.vit_roulis  &
   point = .V12.CHASSIS.cm  &
   coordinate_rframe = .V12.CHASSIS.cm  &
   characteristic = angular_velocity  &
   component = x_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .V12.vit_roulis  &
   color = WHITE
!
measure create point  &
   measure_name = .V12.accel_y  &
   point = .V12.CHASSIS.cm  &
   coordinate_rframe = .V12.CHASSIS.cm  &
   characteristic = translational_acceleration  &
   component = y_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .V12.accel_y  &
   color = WHITE
!
measure create point  &
   measure_name = .V12.accely  &
   point = .V12.CHASSIS.cm  &
   coordinate_rframe = .V12.CHASSIS.cm  &
   characteristic = translational_acceleration  &
   component = y_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .V12.accely  &
   color = WHITE
!
measure create point  &
   measure_name = .V12.vitesse  &
   point = .V12.CHASSIS.cm  &
   characteristic = translational_velocity  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .V12.vitesse  &
   color = WHITE
!
measure create pt2pt  &
   measure_name = .V12.MEA_PT2PT_8  &
   from_point = .V12.cylindre.MARKER_321  &
   to_point = .V12.verin.MARKER_322  &
   characteristic = translational_displacement  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .V12.MEA_PT2PT_8  &
   color = WHITE
!
measure create computed  &
   measure_name = .V12.SPRING_3_MEA_1  &
   text_of_expression = "0"  &
   create_measure_display = no
!
entity attributes  &
   entity_name = .V12.SPRING_3_MEA_1  &
   color = WHITE
!
measure create computed  &
   measure_name = .V12.SPRING_4_MEA_1  &
   text_of_expression = "0"  &
   create_measure_display = no
!
entity attributes  &
   entity_name = .V12.SPRING_4_MEA_1  &
   color = WHITE
!
measure create computed  &
   measure_name = .V12.SPRING_2_MEA_1  &
   text_of_expression = "0"  &
   create_measure_display = no
!
entity attributes  &
   entity_name = .V12.SPRING_2_MEA_1  &
   color = WHITE
!
measure create computed  &
   measure_name = .V12.SPRING_MEA_1  &
   text_of_expression = "0"  &
   create_measure_display = no
!
entity attributes  &
   entity_name = .V12.SPRING_MEA_1  &
   color = WHITE
!
!---------------------------- Adams/View Variables ----------------------------!
!
!
variable create  &
   variable_name = .V12.MasseRobu  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = .V12.SuspElast  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 8.0
!
variable create  &
   variable_name = .V12.SuspAmort  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.5
!
variable create  &
   variable_name = .V12.MasseRoue  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 10.0
!
variable create  &
   variable_name = .V12.MasseMobile  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 100.0
!
variable create  &
   variable_name = .V12.RayonRoue  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 250.0
!
variable create  &
   variable_name = .V12.LargeurPneu  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 200.0
!
variable create  &
   variable_name = .V12.CongPneu  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 20.0
!
variable create  &
   variable_name = .V12.AngleSusp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 9.2329334732E-002
!
variable create  &
   variable_name = .V12.LongueurSusp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 903.8497908637
!
variable create  &
   variable_name = .V12.Hauteur  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1000.0
!
variable create  &
   variable_name = .V12.LongueurCDG  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 575.0
!
variable create  &
   variable_name = .V12.HauteurCDG  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 125.0
!
variable create  &
   variable_name = .V12.PneuStiffness  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 10.0
!
variable create  &
   variable_name = .V12.PneuExp  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.1
!
variable create  &
   variable_name = .V12.PneuDamping  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 50.0
!
variable create  &
   variable_name = .V12.PneuPenet  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .V12.PneuStatCoeff  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .V12.PneuDynCoeff  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.95
!
variable create  &
   variable_name = .V12.PneuStiction  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2000.0
!
variable create  &
   variable_name = .V12.PneuTransVel  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 5000.0
!
variable create  &
   variable_name = .V12.vitesseAng  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .V12.ACCMAX  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 6000.0
!
variable create  &
   variable_name = .V12.VITMAX  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 8000.0
!
variable create  &
   variable_name = .V12.TACC  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.3333333333
!
variable create  &
   variable_name = .V12.RayonCourbure  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0E+004
!
variable create  &
   variable_name = .V12.ANGBRAQUAGE  &
   units = "angle"  &
   range = -1.745329252E-002, 1.745329252E-002  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.1144970268
!
variable create  &
   variable_name = .V12.ViscositeContact  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 10.0
!
variable create  &
   variable_name = .V12.FrottementStatique  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.2
!
variable create  &
   variable_name = .V12.RaideurContact  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 10.0
!
variable create  &
   variable_name = .V12.StictionTransition  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 1.0
!
variable create  &
   variable_name = .V12.FrictionTransitionVel  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 50.0
!
variable create  &
   variable_name = .V12.vit_roll  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 0.0
!
variable create  &
   variable_name = .V12.ForceExponent  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = 2.0
!
variable create  &
   variable_name = .V12.ROULIS_MAX  &
   units = "no_units"  &
   range = -1.0, 1.0  &
   use_allowed_values = no  &
   delta_type = relative  &
   real_value = -0.2617993878
!
variable create  &
   variable_name = .V12.fbFuncName  &
   string_value = "fea_otable_filt"
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .V12.AccelMoteur  &
   function = "IF(TIME-.V12.TACC:(.V12.ACCMAX/.V12.RayonRoue),0,0)"
!
data_element modify variable  &
   variable_name = .V12.AngleBraquageAV  &
   function = "IF(TIME-.V12.TACC:0,0,varval(.V12.SteerFunction))"
!
data_element modify variable  &
   variable_name = .V12.AngleBraquageArriere  &
   function = "-varval(.V12.AngleBraquageAV)"
!
data_element modify variable  &
   variable_name = .V12.SteerFunction  &
   function = "IF(TIME-.V12.TACC-1.: .V12.ANGBRAQUAGE*(TIME-.V12.TACC),.V12.ANGBRAQUAGE,.V12.ANGBRAQUAGE)*0."
!
data_element modify variable  &
   variable_name = .V12.Stab_function  &
   function = "(IF(TIME-.V12.TACC:0,0,IF(TIME-.V12.TACC-1:.V12.ROULIS_MAX*(TIME-.V12.TACC),.V12.ROULIS_MAX,.V12.ROULIS_MAX)))*280*0+0.3*time*280*0."
!
data_element modify variable  &
   variable_name = .V12.ang_roll  &
   function = ".V12.vit_roll*time  "
!
data_element modify variable  &
   variable_name = .V12.force_verin  &
   function = "1000000"
!
data_element modify variable  &
   variable_name = .V12.roulis  &
   function = ".V12.ang_roulis"
!
data_element modify variable  &
   variable_name = .V12.vitesse_out  &
   function = ".V12.vitesse"
!
data_element modify variable  &
   variable_name = .V12.couple_in_FR  &
   function = "0"
!
data_element modify variable  &
   variable_name = .V12.couple_in_FL  &
   function = "0"
!
data_element modify variable  &
   variable_name = .V12.couple_in_RR  &
   function = "0"
!
data_element modify variable  &
   variable_name = .V12.couple_in_RL  &
   function = "0"
!
data_element modify variable  &
   variable_name = .V12.FZRR  &
   function = "CONTACT( .V12.CONTACT_RR,0,3,0)"
!
data_element modify variable  &
   variable_name = .V12.FZFR  &
   function = "CONTACT( .V12.CONTACT_FR,0,3,0)"
!
data_element modify variable  &
   variable_name = .V12.FZFL  &
   function = "CONTACT( .V12.CONTACT_FL,0,3,0)"
!
data_element modify variable  &
   variable_name = .V12.FZRL  &
   function = "CONTACT( .V12.CONTACT_RL,0,3,0)"
!
force modify direct single_component_force  &
   single_component_force_name = .V12.SFORCE_5  &
   function = "varval(.V12.force_verin)/280"
!
force modify direct single_component_force  &
   single_component_force_name = .V12.SFORCE_6  &
   function = "varval(.V12.force_verin)/280"
!
force modify direct single_component_force  &
   single_component_force_name = .V12.SFORCE_7  &
   function = "IF(TIME-1:0,0,IF(TIME-1.1:1000000,0,0))*0."
!
force modify direct single_component_force  &
   single_component_force_name = .V12.coupleFR  &
   function = "varval(.V12.couple_in_FR)"
!
force modify direct single_component_force  &
   single_component_force_name = .V12.couple_FL  &
   function = "varval(.V12.couple_in_FL)"
!
force modify direct single_component_force  &
   single_component_force_name = .V12.couple_RR  &
   function = "varval(.V12.couple_in_RR)"
!
force modify direct single_component_force  &
   single_component_force_name = .V12.couple_RL  &
   function = "varval(.V12.couple_in_RL)"
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.SPRING_FR
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.SPRING_FL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.TRACTION_FR
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.TRACTION_FL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.SPRING_RR
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.SPRING_RL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.TRACTION_RR
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.TRACTION_RL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.VERINARRIERE
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.DIRECTION_FR
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.DIRECTION_FL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.DIRECTION_RL
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.DIRECTION_RR
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.Controls_Plant_1
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.general_motion_1
!
!-------------------------- Adams/View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .V12.general_motion_2
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape extrusion  &
   extrusion_name = .V12.ground.EXTRUSION_3503  &
   length_along_z_axis = (5.0cm)
!
material modify  &
   material_name = .V12.steel  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .V12.steel_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .V12.aluminum  &
   youngs_modulus = (7.1705E+010(Newton/meter**2))  &
   density = (2740.0(kg/meter**3))
!
material modify  &
   material_name = .V12.cast_iron  &
   youngs_modulus = (1.0E+011(Newton/meter**2))  &
   density = (7080.0(kg/meter**3))
!
material modify  &
   material_name = .V12.steel_2_2  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .V12.steel_3  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .V12.steel_4  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
material modify  &
   material_name = .V12.steel_5  &
   youngs_modulus = (2.07E+011(Newton/meter**2))  &
   density = (7801.0(kg/meter**3))
!
geometry modify shape extrusion  &
   extrusion_name = .V12.CHASSIS.CSG_6321.EXTRUSION_2711  &
   length_along_z_axis = (-3.0cm)  &
   relative_to = .V12.CHASSIS
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape extrusion  &
   extrusion_name = .V12.CHASSIS.CSG_6321.EXTRUSION_4  &
   length_along_z_axis = (-3.0cm)  &
   relative_to = .V12.CHASSIS
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape extrusion  &
   extrusion_name = .V12.CHASSIS.CSG_2827.EXTRUSION_2755  &
   length_along_z_axis = (4.0cm)  &
   relative_to = .V12.CHASSIS
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape extrusion  &
   extrusion_name = .V12.CHASSIS.CSG_2827.EXTRUSION_2791  &
   length_along_z_axis = (6.0cm)  &
   relative_to = .V12.CHASSIS
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape cylinder  &
   cylinder_name = .V12.CHASSIS.CYLINDER_852  &
   radius = (1.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.CHASSIS.CYLINDER_1196  &
   length = (295.1024174772mm)  &
   radius = (1.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.CHASSIS.CYLINDER_1195  &
   length = (84.486545928mm)  &
   radius = (1.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.CHASSIS.CYLINDER_8521  &
   radius = (1.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.CHASSIS.CYLINDER_11961  &
   length = (295.1024174772mm)  &
   radius = (1.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.CHASSIS.CYLINDER_11951  &
   length = (84.486545928mm)  &
   radius = (1.0cm)
!
geometry modify shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_2719  &
   length_along_z_axis = (4.0cm)  &
   relative_to = .V12.CHASSIS
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape extrusion  &
   extrusion_name = .V12.CHASSIS.EXTRUSION_3109  &
   length_along_z_axis = (10cm)  &
   relative_to = .V12.CHASSIS
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TINF.CSG_4597.CSG_969.CSG_949.CYLINDER_5  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape extrusion  &
   extrusion_name = .V12.TINF.CSG_4597.CSG_969.CSG_949.CSG_945.EXTRUSION_81  &
   length_along_z_axis = (1.0cm)  &
   relative_to = .V12.TINF
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape link  &
   link_name = .V12.TINF.CSG_4597.CSG_969.LINK_799  &
   width = (26.7255906064mm)  &
   depth = (13.3627953032mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TINF.CSG_4597.CYLINDER_6  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape ellipsoid  &
   ellipsoid_name = .V12.TINF.ELLIPSOID_7  &
   x_scale_factor = (2 * 2.0cm)  &
   y_scale_factor = (2 * 2.0cm)  &
   z_scale_factor = (2 * 2.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.TINF  &
   density = (780.0(kg/meter**3))
!
geometry modify shape extrusion  &
   extrusion_name = .V12.TSUP.CSG_20.EXTRUSION_1_2  &
   length_along_z_axis = (1.0cm)  &
   relative_to = .V12.TSUP
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape extrusion  &
   extrusion_name = .V12.TSUP.CSG_20.EXTRUSION_2_2  &
   length_along_z_axis = (1.0cm)  &
   relative_to = .V12.TSUP
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TSUP.CYLINDER_5  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TSUP.CYLINDER_6  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape ellipsoid  &
   ellipsoid_name = .V12.TSUP.ELLIPSOID_7  &
   x_scale_factor = (2 * 2.0cm)  &
   y_scale_factor = (2 * 2.0cm)  &
   z_scale_factor = (2 * 2.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.TSUP  &
   density = (780.0(kg/meter**3))
!
geometry modify shape cylinder  &
   cylinder_name = .V12.FUSE.CSG_26.CYLINDER_25  &
   length = (160.0mm)  &
   radius = (45mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.FUSE.CSG_26.CYLINDER_23  &
   length = (200.0mm)  &
   radius = (10.0mm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.FUSE  &
   density = (780.0(kg/meter**3))
!
geometry modify feature hole  &
   hole_name = .V12.roue.CYLINDER_24.HOLE_1  &
   center = -80.0, 0.0, -1155.0  &
   radius = (4.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue.CYLINDER_24.HOLE_2  &
   center = 0.0, 80.0, -1155.0  &
   radius = (4.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue.CYLINDER_24.HOLE_3  &
   center = 80.0, 0.0, -1155.0  &
   radius = (4.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue.CYLINDER_24.HOLE_4  &
   center = 0.0, -80.0, -1155.0  &
   radius = (4.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.roue.CYLINDER_24  &
   length = (10.0mm)  &
   radius = (160.0mm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.roue  &
   density = (780.0(kg/meter**3))
!
geometry modify feature blend  &
   blend_name = .V12.roue.CSG_3.CYLINDER_1.BLEND_1  &
   radius1 = (2.0cm)  &
   radius2 = (2.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.roue.CSG_3.CYLINDER_1  &
   length = (150.0mm)  &
   radius = (250mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.roue.CSG_3.CYLINDER_2  &
   length = (15cm)  &
   radius = (17cm)
!
geometry modify shape extrusion  &
   extrusion_name = .V12.TINF_2.CSG_4952.CSG_4910.CSG_4728.CSG_4685.CSG_4643.CSG_49.EXTRUSION_1_2  &
   length_along_z_axis = (1.0cm)  &
   relative_to = .V12.TINF_2
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape link  &
   link_name = .V12.TINF_2.CSG_4952.CSG_4910.CSG_4728.CSG_4685.CSG_4643.CSG_49.LINK_2_2  &
   width = (30.9574270339mm)  &
   depth = (15.478713517mm)
!
geometry modify shape link  &
   link_name = .V12.TINF_2.CSG_4952.CSG_4910.CSG_4728.CSG_4685.CSG_4643.LINK_825  &
   width = (26.6593130484mm)  &
   depth = (13.3296565242mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TINF_2.CSG_4952.CSG_4910.CYLINDER_5  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TINF_2.CSG_4952.CYLINDER_6  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape ellipsoid  &
   ellipsoid_name = .V12.TINF_2.ELLIPSOID_7  &
   x_scale_factor = (2 * 2.0cm)  &
   y_scale_factor = (2 * 2.0cm)  &
   z_scale_factor = (2 * 2.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.TINF_2  &
   density = (780.0(kg/meter**3))
!
geometry modify shape extrusion  &
   extrusion_name = .V12.TSUP_2.CSG_20.EXTRUSION_1_2  &
   length_along_z_axis = (1.0cm)  &
   relative_to = .V12.TSUP_2
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape extrusion  &
   extrusion_name = .V12.TSUP_2.CSG_20.EXTRUSION_2_2  &
   length_along_z_axis = (1.0cm)  &
   relative_to = .V12.TSUP_2
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TSUP_2.CYLINDER_5  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TSUP_2.CYLINDER_6  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape ellipsoid  &
   ellipsoid_name = .V12.TSUP_2.ELLIPSOID_7  &
   x_scale_factor = (2 * 2.0cm)  &
   y_scale_factor = (2 * 2.0cm)  &
   z_scale_factor = (2 * 2.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.TSUP_2  &
   density = (780.0(kg/meter**3))
!
geometry modify shape cylinder  &
   cylinder_name = .V12.FUSE_2.CSG_26.CYLINDER_25  &
   length = (160.0mm)  &
   radius = (45mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.FUSE_2.CSG_26.CYLINDER_23  &
   length = (200.0mm)  &
   radius = (10.0mm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.FUSE_2  &
   density = (780.0(kg/meter**3))
!
geometry modify feature hole  &
   hole_name = .V12.roue_2.CYLINDER_24.HOLE_1  &
   center = 80.0, 0.0, 155.0  &
   radius = (4.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue_2.CYLINDER_24.HOLE_2  &
   center = 0.0, 80.0, 155.0  &
   radius = (4.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue_2.CYLINDER_24.HOLE_3  &
   center = -80.0, 0.0, 155.0  &
   radius = (4.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue_2.CYLINDER_24.HOLE_4  &
   center = 0.0, -80.0, 155.0  &
   radius = (4.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.roue_2.CYLINDER_24  &
   length = (10.0mm)  &
   radius = (160.0mm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.roue_2  &
   density = (780.0(kg/meter**3))
!
geometry modify feature blend  &
   blend_name = .V12.roue_2.CSG_3.CYLINDER_1_2.BLEND_1  &
   radius1 = (2.0cm)  &
   radius2 = (2.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.roue_2.CSG_3.CYLINDER_1_2  &
   length = (150.0mm)  &
   radius = (250mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.roue_2.CSG_3.CYLINDER_2  &
   length = (15cm)  &
   radius = (17cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.verin.CYLINDER_1423  &
   radius = (2.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.Trig_gauche.PLATE_415.HOLE_1  &
   center = 297.6504780707, 78.2099224975, -357.0376380301  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.Trig_gauche.PLATE_415.HOLE_2  &
   center = 291.3028797511, 173.024953514, -257.2244452834  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.Trig_gauche.PLATE_415.HOLE_3  &
   center = 297.6504780707, 178.9302983284, -358.2329156901  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.Trig_gauche.PLATE_415.HOLE_4  &
   center = 271.1295129296, 200.1853773443, -262.4545562326  &
   radius = (1.0cm)
!
geometry modify shape plate  &
   plate_name = .V12.Trig_gauche.PLATE_415  &
   width = (3.0cm)  &
   radius = (2.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.Trig_gauche  &
   density = (780.0(kg/meter**3))
!
geometry modify shape cylinder  &
   cylinder_name = .V12.cylindre.CYLINDER_1424  &
   length = (200mm)  &
   radius = (1.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.lever_G2.CYLINDER_798  &
   radius = (1.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.lever_D2.CYLINDER_824  &
   length = (206.6769344481mm)  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.trig_droite.PLATE_415.HOLE_1  &
   center = 297.6504780707, 275.1050613309, -651.7588508563  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.trig_droite.PLATE_415.HOLE_2  &
   center = 297.6504780707, 173.024953514, -751.572043603  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.trig_droite.PLATE_415.HOLE_3  &
   center = 297.6504780707, 174.3846855, -650.5635731963  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.trig_droite.PLATE_415.HOLE_4  &
   center = 280.6610934278, 153.0786533578, -748.7868992899  &
   radius = (1.0cm)
!
geometry modify shape plate  &
   plate_name = .V12.trig_droite.PLATE_415  &
   width = (3.0cm)  &
   radius = (2.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.trig_droite  &
   density = (780.0(kg/meter**3))
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TINF_3.CSG_4874.CSG_969.CSG_949.CYLINDER_5  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape extrusion  &
   extrusion_name = .V12.TINF_3.CSG_4874.CSG_969.CSG_949.CSG_945.EXTRUSION_81  &
   length_along_z_axis = (1.0cm)  &
   relative_to = .V12.TINF_3
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape link  &
   link_name = .V12.TINF_3.CSG_4874.CSG_969.LINK_799  &
   width = (26.7255906064mm)  &
   depth = (13.3627953032mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TINF_3.CSG_4874.CYLINDER_6  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape ellipsoid  &
   ellipsoid_name = .V12.TINF_3.ELLIPSOID_7  &
   x_scale_factor = (2 * 2.0cm)  &
   y_scale_factor = (2 * 2.0cm)  &
   z_scale_factor = (2 * 2.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.TINF_3  &
   density = (780.0(kg/meter**3))
!
geometry modify shape extrusion  &
   extrusion_name = .V12.TSUP_3.CSG_20.EXTRUSION_1_2  &
   length_along_z_axis = (1.0cm)  &
   relative_to = .V12.TSUP_3
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape extrusion  &
   extrusion_name = .V12.TSUP_3.CSG_20.EXTRUSION_2_2  &
   length_along_z_axis = (1.0cm)  &
   relative_to = .V12.TSUP_3
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TSUP_3.CYLINDER_5  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TSUP_3.CYLINDER_6  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape ellipsoid  &
   ellipsoid_name = .V12.TSUP_3.ELLIPSOID_7  &
   x_scale_factor = (2 * 2.0cm)  &
   y_scale_factor = (2 * 2.0cm)  &
   z_scale_factor = (2 * 2.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.TSUP_3  &
   density = (780.0(kg/meter**3))
!
geometry modify shape extrusion  &
   extrusion_name = .V12.TINF_4.CSG_4840.CSG_4806.CSG_4772.CSG_49.EXTRUSION_1_2  &
   length_along_z_axis = (1.0cm)  &
   relative_to = .V12.TINF_4
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape link  &
   link_name = .V12.TINF_4.CSG_4840.CSG_4806.CSG_4772.CSG_49.LINK_2_2  &
   width = (30.9574270339mm)  &
   depth = (15.478713517mm)
!
geometry modify shape link  &
   link_name = .V12.TINF_4.CSG_4840.CSG_4806.CSG_4772.LINK_825  &
   width = (26.6593130484mm)  &
   depth = (13.3296565242mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TINF_4.CSG_4840.CSG_4806.CYLINDER_5  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TINF_4.CSG_4840.CYLINDER_6  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape ellipsoid  &
   ellipsoid_name = .V12.TINF_4.ELLIPSOID_7  &
   x_scale_factor = (2 * 2.0cm)  &
   y_scale_factor = (2 * 2.0cm)  &
   z_scale_factor = (2 * 2.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.TINF_4  &
   density = (780.0(kg/meter**3))
!
geometry modify shape extrusion  &
   extrusion_name = .V12.TSUP_4.CSG_20.EXTRUSION_1_2  &
   length_along_z_axis = (1.0cm)  &
   relative_to = .V12.TSUP_4
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape extrusion  &
   extrusion_name = .V12.TSUP_4.CSG_20.EXTRUSION_2_2  &
   length_along_z_axis = (1.0cm)  &
   relative_to = .V12.TSUP_4
!
defaults coordinate_system  &
   default_coordinate_system = .V12.ground
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TSUP_4.CYLINDER_5  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.TSUP_4.CYLINDER_6  &
   length = (100.0mm)  &
   radius = (20.0mm)
!
geometry modify shape ellipsoid  &
   ellipsoid_name = .V12.TSUP_4.ELLIPSOID_7  &
   x_scale_factor = (2 * 2.0cm)  &
   y_scale_factor = (2 * 2.0cm)  &
   z_scale_factor = (2 * 2.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.TSUP_4  &
   density = (780.0(kg/meter**3))
!
geometry modify shape cylinder  &
   cylinder_name = .V12.FUSE_3.CSG_26.CYLINDER_25  &
   length = (160.0mm)  &
   radius = (45mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.FUSE_3.CSG_26.CYLINDER_23  &
   length = (200.0mm)  &
   radius = (10.0mm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.FUSE_3  &
   density = (780.0(kg/meter**3))
!
geometry modify shape cylinder  &
   cylinder_name = .V12.FUSE_4.CSG_26.CYLINDER_25  &
   length = (160.0mm)  &
   radius = (45mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.FUSE_4.CSG_26.CYLINDER_23  &
   length = (200.0mm)  &
   radius = (10.0mm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.FUSE_4  &
   density = (780.0(kg/meter**3))
!
geometry modify shape cylinder  &
   cylinder_name = .V12.verin_2.CYLINDER_1423  &
   radius = (2.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.cylindre_2.CYLINDER_1424  &
   length = (200mm)  &
   radius = (1.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.lever_G2_2.CYLINDER_798  &
   radius = (1.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.lever_D2_2.CYLINDER_824  &
   length = (206.6769344481mm)  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue_3.CYLINDER_24.HOLE_1  &
   center = -1170.0, 0.0, 155.0  &
   radius = (4.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue_3.CYLINDER_24.HOLE_2  &
   center = -1250.0, 80.0, 155.0  &
   radius = (4.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue_3.CYLINDER_24.HOLE_3  &
   center = -1330.0, 0.0, 155.0  &
   radius = (4.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue_3.CYLINDER_24.HOLE_4  &
   center = -1250.0, -80.0, 155.0  &
   radius = (4.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.roue_3.CYLINDER_24  &
   length = (10.0mm)  &
   radius = (160.0mm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.roue_3  &
   density = (780.0(kg/meter**3))
!
geometry modify feature blend  &
   blend_name = .V12.roue_3.CSG_3.CYLINDER_1_2.BLEND_1  &
   radius1 = (2.0cm)  &
   radius2 = (2.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.roue_3.CSG_3.CYLINDER_1_2  &
   length = (150.0mm)  &
   radius = (250mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.roue_3.CSG_3.CYLINDER_2  &
   length = (15cm)  &
   radius = (17cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue_4.CYLINDER_24.HOLE_1  &
   center = -1330.0, 0.0, -1155.0  &
   radius = (4.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue_4.CYLINDER_24.HOLE_2  &
   center = -1250.0, 80.0, -1155.0  &
   radius = (4.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue_4.CYLINDER_24.HOLE_3  &
   center = -1170.0, 0.0, -1155.0  &
   radius = (4.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.roue_4.CYLINDER_24.HOLE_4  &
   center = -1250.0, -80.0, -1155.0  &
   radius = (4.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.roue_4.CYLINDER_24  &
   length = (10.0mm)  &
   radius = (160.0mm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.roue_4  &
   density = (780.0(kg/meter**3))
!
geometry modify feature blend  &
   blend_name = .V12.roue_4.CSG_3.CYLINDER_1.BLEND_1  &
   radius1 = (2.0cm)  &
   radius2 = (2.0cm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.roue_4.CSG_3.CYLINDER_1  &
   length = (150.0mm)  &
   radius = (250mm)
!
geometry modify shape cylinder  &
   cylinder_name = .V12.roue_4.CSG_3.CYLINDER_2  &
   length = (15cm)  &
   radius = (17cm)
!
geometry modify feature hole  &
   hole_name = .V12.Trig_gauche_2.PLATE_415.HOLE_1  &
   center = -952.3495219293, 78.2099224975, -357.0376380301  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.Trig_gauche_2.PLATE_415.HOLE_2  &
   center = -958.6971202489, 173.024953514, -257.2244452834  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.Trig_gauche_2.PLATE_415.HOLE_3  &
   center = -952.3495219293, 178.9302983284, -358.2329156901  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.Trig_gauche_2.PLATE_415.HOLE_4  &
   center = -978.8704870704, 200.1853773443, -262.4545562326  &
   radius = (1.0cm)
!
geometry modify shape plate  &
   plate_name = .V12.Trig_gauche_2.PLATE_415  &
   width = (3.0cm)  &
   radius = (2.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.Trig_gauche_2  &
   density = (780.0(kg/meter**3))
!
geometry modify feature hole  &
   hole_name = .V12.trig_droite_2.PLATE_415.HOLE_1  &
   center = -952.3495219293, 275.1050613309, -651.7588508563  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.trig_droite_2.PLATE_415.HOLE_2  &
   center = -952.3495219293, 173.024953514, -751.572043603  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.trig_droite_2.PLATE_415.HOLE_3  &
   center = -952.3495219293, 174.3846855, -650.5635731963  &
   radius = (1.0cm)
!
geometry modify feature hole  &
   hole_name = .V12.trig_droite_2.PLATE_415.HOLE_4  &
   center = -969.3389065722, 153.0786533578, -748.7868992899  &
   radius = (1.0cm)
!
geometry modify shape plate  &
   plate_name = .V12.trig_droite_2.PLATE_415  &
   width = (3.0cm)  &
   radius = (2.0cm)
!
part modify rigid_body mass_properties  &
   part_name = .V12.trig_droite_2  &
   density = (780.0(kg/meter**3))
!
geometry modify shape link  &
   link_name = .V12.ADD1.LINK_3430  &
   width = (20.7362253232mm)  &
   depth = (10.3681126616mm)
!
geometry modify shape link  &
   link_name = .V12.ADD2.LINK_3431  &
   width = (20.0mm)  &
   depth = (10.0mm)
!
geometry modify shape link  &
   link_name = .V12.ADD4.LINK_3433  &
   width = (20.0mm)  &
   depth = (10.0mm)
!
geometry modify shape link  &
   link_name = .V12.ADD3.LINK_3924  &
   width = (20.7362253232mm)  &
   depth = (10.3681126616mm)
!
contact modify  &
   contact_name = .V12.CONTACT_FR  &
   stiffness = (.V12.RaideurContact)  &
   damping = (.V12.ViscositeContact)  &
   mu_static = (.V12.FrottementStatique)  &
   mu_dynamic = (.V12.FrottementStatique)  &
   stiction_transition_velocity = (.V12.StictionTransition)  &
   friction_transition_velocity = (.V12.FrictionTransitionVel)
!
contact modify  &
   contact_name = .V12.CONTACT_FL  &
   stiffness = (.V12.RaideurContact)  &
   damping = (.V12.ViscositeContact)  &
   exponent = (.V12.ForceExponent)  &
   mu_static = (.V12.FrottementStatique)  &
   mu_dynamic = (.V12.FrottementStatique)  &
   stiction_transition_velocity = (.V12.StictionTransition)  &
   friction_transition_velocity = (.V12.FrictionTransitionVel)
!
contact modify  &
   contact_name = .V12.CONTACT_RR  &
   stiffness = (.V12.RaideurContact)  &
   damping = (.V12.ViscositeContact)  &
   exponent = (.V12.ForceExponent)  &
   mu_static = (.V12.FrottementStatique)  &
   mu_dynamic = (.V12.FrottementStatique)  &
   stiction_transition_velocity = (.V12.StictionTransition)  &
   friction_transition_velocity = (.V12.FrictionTransitionVel)
!
contact modify  &
   contact_name = .V12.CONTACT_RL  &
   stiffness = (.V12.RaideurContact)  &
   damping = (.V12.ViscositeContact)  &
   exponent = (.V12.ForceExponent)  &
   mu_static = (.V12.FrottementStatique)  &
   mu_dynamic = (.V12.FrottementStatique)  &
   stiction_transition_velocity = (.V12.StictionTransition)  &
   friction_transition_velocity = (.V12.FrictionTransitionVel)
!
variable modify  &
   variable_name = .V12.precharge  &
   real_value = (.V12.MasseRobu * 10)
!
geometry modify shape force  &
   force_name = .V12.JOINT_28_force_graphic_1  &
   applied_at_marker_name = (.V12.JOINT_28.i)
!
geometry modify shape force  &
   force_name = .V12.JOINT_29_force_graphic_1  &
   applied_at_marker_name = (.V12.JOINT_29.i)
!
geometry modify shape force  &
   force_name = .V12.JOINT_25_force_graphic_1  &
   applied_at_marker_name = (.V12.JOINT_25.i)
!
geometry modify shape force  &
   force_name = .V12.SFORCE_5_force_graphic_1  &
   applied_at_marker_name = (.V12.SFORCE_5.i)
!
geometry modify shape force  &
   force_name = .V12.SFORCE_6_force_graphic_1  &
   applied_at_marker_name = (.V12.SFORCE_6.i)
!
geometry modify shape force  &
   force_name = .V12.SFORCE_7_force_graphic_1  &
   applied_at_marker_name = (.V12.SFORCE_7.i)
!
geometry modify shape force  &
   force_name = .V12.SFORCE_8_force_graphic_1  &
   applied_at_marker_name = (.V12.coupleFR.i)
!
geometry modify shape force  &
   force_name = .V12.SFORCE_8_force_graphic_2  &
   applied_at_marker_name = (.V12.couple_FL.i)
!
geometry modify shape force  &
   force_name = .V12.SFORCE_8_force_graphic_3  &
   applied_at_marker_name = (.V12.couple_RR.i)
!
geometry modify shape force  &
   force_name = .V12.SFORCE_8_force_graphic_4  &
   applied_at_marker_name = (.V12.couple_RL.i)
!
measure modify computed  &
   measure_name = .V12.SPRING_3_MEA_1  &
   text_of_expression =   &
      "(.V12.SPRING_RR.deformation)"
!
measure modify computed  &
   measure_name = .V12.SPRING_4_MEA_1  &
   text_of_expression =   &
      "(.V12.SPRING_RL.deformation)"
!
measure modify computed  &
   measure_name = .V12.SPRING_2_MEA_1  &
   text_of_expression =   &
      "(.V12.SPRING_FR.deformation)"
!
measure modify computed  &
   measure_name = .V12.SPRING_MEA_1  &
   text_of_expression =   &
      "(.V12.SPRING_FL.deformation)"
!
variable modify  &
   variable_name = .V12.AngleSusp  &
   real_value = (ATAN(.V12.RayonRoue / 3 / (3 * .V12.Voie / 4)))
!
variable modify  &
   variable_name = .V12.LongueurSusp  &
   real_value = (SQRT((3 * .V12.Voie / 4)**2 + (.V12.RayonRoue / 3)**2))
!
variable modify  &
   variable_name = .V12.LongueurCDG  &
   real_value = (.V12.Empattement * 0.5)
!
variable modify  &
   variable_name = .V12.HauteurCDG  &
   real_value = (0.5 * (.V12.Hauteur / 4))
!
variable modify  &
   variable_name = .V12.TACC  &
   real_value = (.V12.VITMAX / .V12.ACCMAX)
!
variable modify  &
   variable_name = .V12.ANGBRAQUAGE  &
   real_value = (ATAN(.V12.Empattement / .V12.RayonCourbure))
!
variable modify  &
   variable_name = .V12.ROULIS_MAX  &
   real_value = (-(15 * PI / 180))
!
model display  &
   model_name = V12
