***BREAST CANCER***;

filename seer9 '\\nova.auburn.edu\holtkat\SEER_1973_2011_TEXTDATA\incidence\yr1973_2011.seer9/BREAST.TXT';
ods listing close;
ods html file='I:\My Project\';
data in; 
  infile seer9 lrecl=348;
  input
    @ 1   CASENUM              $char8.  /* Patient ID number*/
    @ 9   REG                  $char10. /* Registry ID */
    @ 19  MAR_STAT             $char1.  /* Marital Status at DX */
    @ 20  RACE                 $char2.  /* Race/Ethnicity */
    @ 22  ORIGIN               $char1.  /* Spanish/Hispanic Origin */
    @ 23  NHIA                 $char1.  /* NHIA Derived Hispanic Origin */
    @ 24  SEX                  $char1.  /* Sex */
    @ 25  AGE_DX               $char3.  /* Age at diagnosis */
    @ 28  YR_BRTH              $char4.  /* Year of birth */
    @ 35  SEQ_NUM              $char2.  /* Sequence Number--Central */
    @ 37  DATE_mo              $char2.  /* Month of diagnosis */
    @ 39  DATE_yr              $char4.  /* Year of diagnosis */
    @ 43  SITEO2V              $char4.  /* Primary site */
    @ 47  LATERAL              $char1.  /* Laterality */
    @ 48  HISTO2V              $char4.  /* Histology (92-00) ICD-O-2 */
    @ 52  BEHO2V               $char1.  /* Behavior (92-00) ICD-O-2*/
    @ 53  HISTO3V              $char4.  /* Histologic Type ICD-O-3 */
    @ 57  BEHO3V               $char1.  /* Behavior Code ICD-O-3 */
    @ 58  GRADE                $char1.  /* Grade */
    @ 59  DX_CONF              $char1.  /* Diagnostic Confirmation */
    @ 60  REPT_SRC             $char1.  /* Type of Reporting Source */
    @ 61  EOD10_SZ             $char3.  /* EOD 10--Tumor size */
    @ 64  EOD10_EX             $char2.  /* EOD 10--Extension */
    @ 66  EOD10_PE             $char2.  /* EOD 10--Extension Prost Path */
    @ 68  EOD10_ND             $char1.  /* EOD 10--Lymph Node Involv */
    @ 69  EOD10_PN             $char2.  /* Regional Nodes Positive */
    @ 71  EOD10_NE             $char2.  /* Regional Nodes Examined */
    @ 73  EOD13                $char13. /* EOD--Old 13 digit */
    @ 86  EOD2                 $char2.  /* EOD--Old 2 digit */
    @ 88  EOD4                 $char4.  /* EOD--Old 4 digit */
    @ 92  EODCODE              $char1.  /* Coding System for EOD */
    @ 93  TUMOR_1V             $char1.  /* Tumor Marker 1 */
    @ 94  TUMOR_2V             $char1.  /* Tumor Marker 2 */
    @ 95  TUMOR_3V             $char1.  /* Tumor Marker 3 */
    @ 96  CS_SIZE              $char3.  /* CS Tumor size */
    @ 99  CS_EXT               $char3.  /* CS Extension */
    @ 102 CS_NODE              $char3.  /* CS Lymph Nodes */
    @ 105 CS_METS              $char2.  /* CS Mets at DX */
    @ 107 CS_SSF1              $char3.  /* CS Site-Specific Factor 1 */ 
    @ 110 CS_SSF2              $char3.  /* CS Site-Specific Factor 2 */ 
    @ 113 CS_SSF3              $char3.  /* CS Site-Specific Factor 3 */ 
    @ 116 CS_SSF4              $char3.  /* CS Site-Specific Factor 4 */ 
    @ 119 CS_SSF5              $char3.  /* CS Site-Specific Factor 5 */ 
    @ 122 CS_SSF6              $char3.  /* CS Site-Specific Factor 6 */ 
    @ 125 CS_SSF25             $char3.  /* CS Site-Specific Factor 25 */     
    @ 128 D_AJCC_T             $char2.  /* Derived AJCC T */
    @ 130 D_AJCC_N             $char2.  /* Derived AJCC N */
    @ 132 D_AJCC_M             $char2.  /* Derived AJCC M */
    @ 134 D_AJCC_S             $char2.  /* Derived AJCC Stage Group */
    @ 136 D_SSG77              $char1.  /* Derived SS1977 */
    @ 137 D_SSG00              $char1.  /* Derived SS2000 */
    @ 138 D_AJCC_F             $char1.  /* Derived AJCC - flag */
    @ 139 D_SSG77F             $char1.  /* Derived SS1977 - flag */
    @ 140 D_SSG00F             $char1.  /* Derived SS2000 - flag */
    @ 141 CSV_ORG              $char6.  /* CS Version Input Original */
    @ 147 CSV_DER              $char6.  /* CS Version Derived */
    @ 153 CSV_CUR              $char6.  /* CS Version Input Current */
    @ 159 SURGPRIM             $char2.  /* RX Summ--Surg Prim Site */
    @ 161 SCOPE                $char1.  /* RX Summ--Scope Reg LN Sur*/
    @ 162 SURGOTH              $char1.  /* RX Summ--Surg Oth Reg/Dis */
    @ 163 SURGNODE             $char2.  /* RX Summ--Reg LN Examined */
    @ 165 RECONST              $char1.  /* RX Summ--Reconstruct 1st  */
    @ 166 NO_SURG              $char1.  /* Reason for no surgery */
    @ 167 RADIATN              $char1.  /* RX Summ--Radiation */
    @ 168 RAD_BRN              $char1.  /* RX Summ--Rad to CNS */
    @ 169 RAD_SURG             $char1.  /* RX Summ--Surg/Rad Seq */
    @ 170 SS_SURG              $char2.  /* RX Summ--Surgery Type */
    @ 174 SCOPE02              $char1.  /* RX Summ--Scope Reg 98-02 */
    @ 175 SRGOTH02             $char1.  /* RX Summ--Surg Oth 98-02 */
    @ 176 REC_NO               $char2.  /* SEER Record number */
    @ 178 O_SITAGE             $char1.  /* Over-ride age/site/morph */
    @ 179 O_SEQCON             $char1.  /* Over-ride seqno/dxconf */
    @ 180 O_SEQLAT             $char1.  /* Over-ride site/lat/seqno */
    @ 181 O_SURCON             $char1.  /* Over-ride surg/dxconf */
    @ 182 O_SITTYP             $char1.  /* Over-ride site/type */
    @ 183 H_BENIGN             $char1.  /* Over-ride histology */
    @ 184 O_RPTSRC             $char1.  /* Over-ride report source */
    @ 185 O_DFSITE             $char1.  /* Over-ride ill-define site */
    @ 186 O_LEUKDX             $char1.  /* Over-ride Leuk, Lymph */
    @ 187 O_SITBEH             $char1.  /* Over-ride site/behavior */
    @ 188 O_EODDT              $char1.  /* Over-ride site/cod/dx dt */
    @ 189 O_SITEOD             $char1.  /* Over-ride site/lat/eod  */
    @ 190 O_SITMOR             $char1.  /* Over-ride site/lat/morph */
    @ 191 TYPEFUP              $char1.  /* SEER Type of followup */
    @ 192 AGE_REC              $char2.  /* Age Recode <1 Year olds */
    @ 199 SITERWHO             $char5.  /* Site recode ICD-O-3/WHO 2008 */
    @ 204 ICDOTO9V             $char4.  /* Recode ICD-O-2 to 9 */
    @ 208 ICDOT10V             $char4.  /* Recode ICD-O-2 to 10 */
    @ 218 ICCC3WHO             $char3.  /* ICCC site recode ICD-O-3/WHO 2008 */
    @ 221 ICCC3XWHO            $char3.  /* ICCC site rec extended ICD-O-3/WHO 2008 */
    @ 224 BEHANAL              $char1.  /* Behavior Recode for Analysis */
    @ 226 HISTREC              $char2.  /* Histology Recode--Broad Groupings */
    @ 228 BRAINREC             $char2.  /* Histology Recode--Brain Groupings */
    @ 230 CS0204SCHEMA         $char3.  /* CS Schema v0204*/   
    @ 233 RAC_RECA             $char1.  /* Race recode (White, Black, Other) */
    @ 234 RAC_RECY             $char1.  /* Race recode (W, B, AI, API */
    @ 235 NHIAREC              $char1.  /* Origin Recode NHIA(Hispanic,Non-Hisp) */
    @ 236 HST_STGA             $char1.  /* SEER historic stage A */
    @ 237 AJCC_STG             $char2.  /* AJCC stage 3rd edition (1988-2003) */
    @ 239 AJ_3SEER             $char2.  /* SEER modified AJCC stage 3rd ed (1988-2003) */
    @ 241 SSG77                $char1.  /* SEER Summary Stage 1977 (1995-2000) */
    @ 242 SSG2000              $char1.  /* SEER Summary Stage 2000 2000 (2001-2003) */
    @ 243 NUMPRIMS             $char2.  /* Number of primaries */
    @ 245 FIRSTPRM             $char1.  /* First malignant primary indicator */
    @ 246 STCOUNTY             $char5.  /* State-county recode */
    @ 255 ICD_5DIG             $char5.  /* Cause of death to SEER site recode */
    @ 260 CODKM                $char5.  /* COD to site rec KM */
    @ 265 STAT_REC             $char1.  /* Vital status recode (study cutoff used) */
    @ 266 IHS                  $char1.  /* IHS link */
    @ 267 HIST_SSG_2000        $char1.  /* Summary stage 2000 (1998+) */
    @ 268 AYA_RECODE           $char2.  /* AYA site recode/WHO 2008 */
    @ 270 LYMPHOMA_RECODE      $char2.  /* Lymphoma subtype recode/WHO 2008 */
    @ 272 DTH_CLASS            $char1.  /* SEER Cause-Specific Death Classification */
    @ 273 O_DTH_CLASS          $char1.  /* SEER Other Cause of Death Classification */
    @ 274 EXTEVAL              $char1.  /* CS Tumor Size/Ext Eval */
    @ 275 NODEEVAL             $char1.  /* CS Lymph Nodes Eval */
    @ 276 METSEVAL             $char1.  /* CS Mets Eval */    
    @ 277 INTPRIM              $char1.  /* Primary by international rules */
    @ 278 ERSTATUS             $char1.  /* ER Status Recode Breast Cancer (1990+)*/
    @ 279 PRSTATUS             $char1.  /* PR Status Recode Breast Cancer (1990+)*/
    @ 280 CSSCHEMA             $char2.  /* CS Schema - AJCC 6th ed(previously called v1) */
    @ 282 CS_SSF8              $char3.  /* CS Site-Specific Factor 8 */
    @ 285 CS_SSF10             $char3.  /* CS Site-Specific Factor 10*/
    @ 288 CS_SSF11             $char3.  /* CS Site-Specific Factor 11*/
    @ 291 CS_SSF13             $char3.  /* CS Site-Specific Factor 13*/
    @ 294 CS_SSF15             $char3.  /* CS Site-Specific Factor 15*/
    @ 297 CS_SSF16             $char3.  /* CS Site-Specific Factor 16*/
    @ 300 VASINV               $char1.  /* Lymph-vascular Invasion (2004+)*/
    @ 301 SRV_TIME_MON         $char4.  /* Survival months */
    @ 305 SRV_TIME_MON_FLAG    $char1.  /* Survival months flag */
    @ 306 SRV_TIME_MON_PA      $char4.  /* Survival months - presumed alive */
    @ 310 SRV_TIME_MON_FLAG_PA $char1.  /* Survival months flag - presumed alive */
    @ 311 INSREC_PUB           $char1.  /* Insurance Recode (2007+) */
    @ 312 DAJCC7T              $char3.  /* Derived AJCC T 7th ed */
    @ 315 DAJCC7N              $char3.  /* Derived AJCC N 7th ed */
    @ 318 DAJCC7M              $char3.  /* Derived AJCC M 7th ed */
    @ 321 DAJCC7STG            $char3.  /* Derived AJCC 7 Stage Group */
    @ 324 ADJTM_6VALUE         $char2.  /* Adjusted AJCC 6th T with mets (1988+) */
    @ 326 ADJNM_6VALUE         $char2.  /* Adjusted AJCC 6th N with mets (1988+) */
    @ 328 ADJM_6VALUE          $char2.  /* Adjusted AJCC 6th M */
    @ 330 ADJAJCCSTG           $char2.  /* Adjusted AJCC 6th Stage (1988+) */
    @ 332 CS7SITE              $char3.  /* CS Site-Specific Factor 7 */
    @ 335 CS9SITE              $char3.  /* CS Site-specific Factor 9 */
    @ 338 CS12SITE             $char3.  /* CS Site-Specific Factor 12 */
    @ 341 HER2                 $char1.  /* Derived HER2 Recode (2010+) */
    @ 342 BRST_SUB             $char1.  /* Breast Subtype (2010+) */
    @ 343 PLC_BRTH_CNTRY       $char3.  /* Birthplace-country */
    @ 346 PLC_BRTH_STATE       $char2.  /* Birthplace-state */
    @ 348 ANNARBOR             $char1.  /* Lymphoma - Ann Arbor Stage (1983+) */
    ;
	run;quit;

ods html;
symbol1 interpol=join
        value=dot;

data breast;
	set in (keep= DATE_yr CASENUM);
run;quit;
proc freq data=breast;
	tables DATE_yr/ out=freq;
run;quit;
proc statespace data=freq out=forecastbreast lead=4;
var Count;
id DATE_yr;
run;quit;

data forecastbreast;
	set forecastbreast;
	input t;
	datalines;
	1973 
1974 
1975
1976
1977
1978
1979
1980
1981
1982
1983
1984
1985
1986
1987
1988
1989
1990
1991
1992
1993
1994
1995
1996
1997
1998
1999
2000
2001
2002
2003
2004
2005
2006
2007
2008
2009
2010
2011
2012
2013
2014
2015
	;
run;quit;
proc print data=forecastbreast;
run;quit;

proc gplot data=forecastbreast;
	plot count*t for1*t /overlay;
run;quit;

ods html close;
