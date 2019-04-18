#
# --- CLIMATE -------------------------------------------------------
#
# set climate feedback
ea_36=n
# scaling for atmospheric CO2 radiative forcing (190 ppm), relative to 278.0e-6
ea_radfor_scl_co2=0.683
# scaling for atmospheric CH4 radiative forcing (350 ppb), relative to 700.e-9
ea_radfor_scl_ch4=0.5
#### scaling for atmospheric N2O radiative forcing (), relative to 275.e-9
###ea_radfor_scl_no2=1.0
#
# --- BIOLOGICAL NEW PRODUCTION -------------------------------------
#
# biological scheme ID string
bg_par_bio_prodopt="bio_PFeSi"
# biological uptake time-scale
bg_par_bio_tau_sp=60
bg_par_bio_tau_nsp=180
#
# --- ORGANIC MATTER EXPORT RATIOS ----------------------------------
#
# production fraction of dissolved organic matter
bg_par_bio_red_DOMfrac=0.66
#
# --- INORGANIC MATTER EXPORT RATIOS --------------------------------
#
# underlying export CaCO3 as a proportion of particulate organic matter (i.e., CaCO3/POC)
bg_par_bio_red_POC_CaCO3=0.0485
# exponent for modifier of CaCO3:POC export ratio
bg_par_bio_red_POC_CaCO3_pP=0.7440
#
# --- REMINERALIZATION ----------------------------------------------
#
# DOC lifetime (yrs)
bg_par_bio_remin_DOMlifetime=1.0
# initial fractional abundance of POC component #2
bg_par_bio_remin_POC_frac2=0.055
# depth of remineralization or particulate organic matter
bg_par_bio_remin_POC_eL1=589.9451
# remineralization length #2 for POC
bg_par_bio_remin_POC_eL2=1000000.0
# initial fractional abundance of CaCO3 component #2
bg_par_bio_remin_CaCO3_frac2=0.45
# depth of remineralization or CaCO3
bg_par_bio_remin_CaCO3_eL1=1.8905e+003
# remineralization length #2 for CaCO3
bg_par_bio_remin_CaCO3_eL2=1000000.0
#
# --- IRON ----------------------------------------------------------
#
bg_opt_geochem_Fe='hybrid'
# aeolian Fe solubility
bg_par_det_Fe_sol=0.002014275
#exponent for aeolian Fe solubility [use 1.0 for uniform solubility]
bg_par_det_Fe_sol_exp=0.500
# modifier of the scavenging rate of dissolved Fe
bg_par_scav_Fe_sf_POC=0.344104
bg_par_scav_Fe_sf_CaCO3=0.000
bg_par_scav_Fe_sf_opal=0.000
bg_par_scav_Fe_sf_det=0.000
# no scavenged regeneration
bg_par_scav_fremin=0.0
# return POFe
bg_ctrl_bio_NO_fsedFe=.false.
# Variable Fe:C
bg_ctrl_bio_red_fixedFetoC=.false.
# adjust pK'(FeL)
bg_par_K_FeL_pP=11.0
#(max) C/Fe organic matter ratio
bg_par_bio_red_POFe_POC=250000.0
#[FeT] dependent Fe:C ratio [Ridgwell, 2001] -- power
bg_par_bio_FetoC_pP=-0.4225
#[FeT] dependent Fe:C ratio [Ridgwell, 2001] -- scaling
bg_par_bio_FetoC_K=103684.0
#[FeT] dependent Fe:C ratio [Ridgwell, 2001] -- constant
bg_par_bio_FetoC_C=0.0
# use combined (homogeneous Corg) Fe:C parameterization [DEFAULT: .false.]
bg_ctrl_bio_red_Ridgwell2001FetoC=.false.
#
# --- Si ----------------------------------------------
#
# Si:C [DEFAULT: 0.175]
bg_par_bio_red_POC_opal=0.19911
# remin
bg_ctrl_bio_remin_opal_fixed=.false.
bg_par_bio_remin_sinkingrate=60.002
# 30Si
# epsilon 30Si associated with opal formation [DEFAULT: -1.1]
bg_par_d30Si_opal_epsilon=-1.1
#
# --- Fe_Si ------------------------------------------
# adopt new FeSi scheme
bg_opt_bio_red_SitoC='Jones2018'
#Fe half-saturation constant (nM)
bg_par_part_red_opal_FeTKSp=0.50E-9
# [Fe] conc offset (nM)
bg_par_part_red_opal_FeToff=0.09E-9
#
# --- SEDIMENTS ------------------------------------------------
#
# Sediment grid
SEDGEMNLONSOPTS='$(DEFINE)SEDGEMNLONS=36'
SEDGEMNLATSOPTS='$(DEFINE)SEDGEMNLATS=36'
# sediment  grid options
sg_par_sed_Dmax_neritic=175.0
sg_par_sed_topo_D_name="worlg4.depth.36x36x16"
sg_par_sed_reef_mask_name="worlg4.reefmask.36x36x16"
sg_par_sedcore_save_mask_name="worlg4.sedcoremask.36x36x16.NONE"
# sediment diagenesis options
sg_par_sed_diagen_CaCO3opt="NONE"
sg_par_sed_diagen_opalopt="ridgwelletal2003lookup"
sg_ctrl_sed_bioturb=.false.
sg_ctrl_sed_bioturb_Archer=.false.
sg_par_n_sed_mix=20
# set invarient surface bioturbation mixing rate
sg_par_sed_mix_k_sur_max=0.15
sg_par_sed_mix_k_sur_min=0.15
# no additional detrital flux
sg_par_sed_fdet=0.0
#
# --- WEATHERING -----------------------------------------------
#
# set a 'CLOSED' system
bg_ctrl_force_sed_closedsystem=.true.
# set quartz weathering rate
rg_par_weather_SiO2=6.0E12
# set quartz isotopic composition
rg_par_weather_SiO2_d30Si=0.0
#
# --- DATA SAVING -----------------------------------------------------
#
bg_par_data_save_level=5
bg_ctrl_debug_lvl0=.true.
ma_debug_loop=1
#
# --- FORCINGS ------------------------------------------------------
#
# specify forcings
bg_par_forcing_name="worlg4.RpCO2_Rp13CO2.FeMahowald2006_LGM"
bg_par_atm_force_scale_val_3=278.0E-06
bg_par_atm_force_scale_val_4=-6.5
# impose detrital + caco3 accumulation rate forcing fields
sg_ctrl_sed_Fcaco3=.true.
sg_par_sed_Fcaco3_name='worlg4.Fsed_caco3.36x36'
sg_ctrl_force_sed_closedsystem_CaCO3=.true.
sg_ctrl_sed_Fdet=.true.
sg_par_sed_Fdet_name='worlg4.Fsed_det.36x36'
sg_par_output_years_file_0d='sedgem_output_years_0d.dat'
#
#
# --- MISC ----------------------------------------------------------
#
#runoff directly scales solute fluxes
rg_opt_weather_runoff=.TRUE.

#simple glacial albedo parameters
ea_albedop_offs=0.200
ea_albedop_amp=0.360
ea_albedop_skew=0.0
ea_albedop_skewp=4
ea_albedop_mod2=-15.000
ea_albedop_mod4=-2.500
ea_albedop_mod6=0.000

# Orbital parameters
ea_par_orbit_osce=0.018994 # eccentricity
ea_par_orbit_oscsob=0.389911 # sine of obliquity
ea_par_orbit_oscgam=114.42 # longitude of perihelion (degrees)

# SclFWF
ea_28=0.8

#add water mass age tracer
bg_ctrl_force_ocn_age=.true.
#add preformed tracers
bg_ctrl_bio_preformed=.true.
#
# --- END -----------------------------------------------------------
#Ensemble created: 190320
go_13=0.88948
ea_11=0.88948
go_15=1.2084e-05
