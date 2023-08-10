#$ --------------------------------------------------------------------
#$                                 NOTICE
#$
#$         THIS SOFTWARE IS THE PROPERTY OF AND CONTAINS
#$         CONFIDENTIAL INFORMATION OF INFOR AND/OR ITS AFFILIATES
#$         OR SUBSIDIARIES AND SHALL NOT BE DISCLOSED WITHOUT PRIOR
#$         WRITTEN PERMISSION. LICENSED CUSTOMERS MAY COPY AND
#$         ADAPT THIS SOFTWARE FOR THEIR OWN USE IN ACCORDANCE WITH
#$         THE TERMS OF THEIR SOFTWARE LICENSE AGREEMENT.
#$         ALL OTHER RIGHTS RESERVED.
#$
#$         (c) COPYRIGHT 2011 INFOR.  ALL RIGHTS RESERVED.
#$         THE WORD AND DESIGN MARKS SET FORTH HEREIN ARE 
#$         TRADEMARKS AND/OR REGISTERED TRADEMARKS OF INFOR
#$         AND/OR ITS AFFILIATES AND SUBSIDIARIES. ALL RIGHTS
#$         RESERVED.  ALL OTHER TRADEMARKS LISTED HEREIN ARE
#$         THE PROPERTY OF THEIR RESPECTIVE OWNERS.
#$
#$ --------------------------------------------------------------------
#$Log:   /exe/pvcs/inv/ictl/IRSverh_00.4gv  $
 # 
 #    Rev 5.137.1.34   18 Jan 2023 16:52:00   bgomez
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Fix sel_aothd_pu sql to prevent returning multiple rows
 # 
 #    Rev 5.137.1.33   02 Sep 2022 11:01:12   bgomez
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Added po_id to the cvean primary key to prevent duplicate record insert;
 # Put logic to prevent inserting NULL upc_id
 # 
 #    Rev 5.137.1.32   01 Jun 2022 08:31:16   bgomez
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Added ESC key to the UPC scan screen;
 # Only update the last received date on existing UPC;
 # Do not scan again after the first scan of the product
 # regardless of the sequence of pallet scanned.
 # 
 #    Rev 5.137.1.31   19 May 2022 11:09:56   bgomez
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Add code to update the upc lst_rct_dte for 
 # products that had the UPC validated
 # 
 #    Rev 5.137.1.30   08 Mar 2022 14:45:18   bgomez
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 #  # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Display scanned UPC instead of the original code when
 # capturing the UPC of a catchweight item
 # 
 #    Rev 5.137.1.29   07 Mar 2022 11:14:36   bgomez
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Handle scanned barcodes that are prefixed with either
 # "]C1" or "01"
 # 
 #    Rev 5.137.1.28   25 Feb 2022 14:04:44   bgomez
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Cleanup previous comments bad characters; fixed bugs on recent
 # added function - capture_UPC.
 # 
 #    Rev 5.137.1.27   21 Feb 2022 11:45:58   bgomez
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Added form IRSverh_XR.per that will capture the UPC code
 # of the catchweight product's first received pallet. The
 # information will be stored to a new table - CVEAN. The 
 # UPC code will be validated against exsiting codes in IUPC 
 # and IUPCD tables and will be added if it's a new code.
 # 
 #    Rev 5.137.1.26   29 Apr 2021 03:04:44   pkumarbo
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # T20210321.0186 - TRD-EXE-RF Verification
 # buf fix
 # 
 #    Rev 5.137.1.25   15 Apr 2021 01:19:58   lmishra
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # T20210316.0163:Add Repack
 # 
 #    Rev 5.137.1.24   09 Apr 2021 09:30:52   pkumarbo
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # T20210321.0186 - TRD-EXE-RF Verification
 # 
 #    Rev 5.137.1.23   13 Jul 2020 09:47:36   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Added logic to force user to choose PO when two
 # POs w/ same appt have different items which share
 # the same UPC. T20200625.0491
 # 
 #    Rev 5.137.1.22   30 Jun 2020 14:01:58   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Modified to accept products which share the same UPC and/or
 # UCN during print on demand by forcing user to choose.
 # Modified product array to only display products once when
 # they exist on more than on PO.
 # T20200625.0491
 # 
 #    Rev 5.137.1.20   18 Jun 2020 05:54:40   dagarwal
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # T20200602.0320 - Issue with Generic LP's In Mauldin and PC
 # While using Generic LP user is not able to skip UPC field.
 # 
 #    Rev 5.137.1.19   02 Mar 2020 15:32:36   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Added call in print_lp_labels to call function cstm_upd_rpt_desc
 # which will append the report description for labels to include the
 # PO number and product.
 # T20200227.0411 - SPRRC - Append PO Number to Receiving Labels report
 # 
 #    Rev 5.137.1.18   27 Dec 2019 11:45:16   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Modified to switch between Print on Demand or regular verification
 # based upon the ipo.prnt_notice field.
 # T20191219.0211 - Option to utilize Custom RF Verification by Po
 # 
 #    Rev 5.137.1.17   10 Dec 2019 16:15:30   aarietta
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Add in UPC lookup based on length of UPC scanned in.
 # 
 #    Rev 5.137.1.16   07 Nov 2019 16:39:14   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Added SMACB to check for the auto completion of hauling
 # work units after the LP is verified.
 # T20191024.0155 - 3.26.5 - Auto Complete Hauling Work Units
 # 
 #    Rev 5.137.1.15   23 Sep 2019 04:03:20   mmajeed
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Corrected the spacing in Checkin Comments.
 # 
 #    Rev 5.137.1.14   16 Sep 2019 01:19:00   mmajeed
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Show error message Z0101 when dmg qty entered is more than
 # ord qty.
 #
 #    Rev 5.137.1.13   13 Sep 2019 10:27:50   mmajeed
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Show error message Z0101 when dmg qty entered is more than
 # ord qty.
 # 
 #    Rev 5.137.1.12   06 Sep 2019 11:47:56   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Added logic to force user to choose the PO and
 # item after UPC lookup when multiple PO's share 
 # the same item and appointment.
 # FBR 3.13.33 - Custom Verification Print on Demand
 # 
 #    Rev 5.137.1.11   01 Aug 2019 11:40:18   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Modified the c_get_aothd cursor to only look for workunits originating at the
 # door. On failure of add_chck_wku removed return in function process_irctd to
 # allow the creation of irctl records.
 # FBR 3.13.33 - Custom Verification Print on Demand
 # 
 #    Rev 5.137.1.10   25 Jul 2019 16:02:56   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Added logic for RF Custom verification print labels on
 # demand.
 # Richey Rd Project: FBR 3.13.33
 # 
 #    Rev 5.137.1.9   11 Jul 2019 01:43:10   mmajeed
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # T20190710.0009 -- Made code changes to avoid creation of multiple
 # checker records.
 # 
 #    Rev 5.137.1.8   04 Apr 2019 04:46:38   mmajeed
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # FBR 891 -- Reverting code changes done under FBR 891.
 # 
 #    Rev 5.137.1.7   18 Mar 2019 02:13:16   dagarwal
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Allow group_pallet for "V" type location.
 # 
 #    Rev 5.137.1.6   10 Feb 2019 23:36:34   mmajeed
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # T20190108.0563 - Implemented changes done in beth under tickets 
 # T20171207.0086, T20171220.0385, T20180828.0388 to non beth.
 # 
 #    Rev 5.137.1.5   05 Feb 2019 03:06:26   dagarwal
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # T20190201.0002 - PO closing issue due to RSL work unit fixed.
 # 
 #    Rev 5.137.1.4   13 Jan 2019 22:13:08   mmajeed
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # T20190108.0563 - Implemented FBR 891 Code Changes.
 # 
 #    Rev 5.137.1.3   06 Dec 2018 11:53:14   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Added cubiscan field.
 # Project Liberty FBR 897_791_854 Retrofit
 # 
 #    Rev 5.137.1.2   20 Apr 2015 15:29:22   praeside
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Incident 60029519 Modified to function process_close() to COMMIT 
 # after each PO detail line iinvd and ipod is process.
 # 
 #    Rev 5.137.1.1   05 Mar 2015 13:58:28   praeside
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Incident 8289487 - Remove misleading RSL error message. 
 # 
 #    Rev 5.137.1.0   30 Dec 2014 08:24:04   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Changes in input_irctl to prevent user from entering a zero
 # catchweight on a generic LP. T20141230.0083 
 # 
 #    Rev 5.137   08 Aug 2014 09:19:58   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Added check for a swttm.cool_flg equal to 'RO'. swttm.cool_flg.
 # T20140808.0041
 # 
 #    Rev 5.136   01 Apr 2014 10:57:26   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Modified to not use the c_plate_whse cursor if iasnd records
 # for the LP exist. It was preventing verification of
 # warehouse transfer PO's. T20140331.0171
 # 
 #    Rev 5.135   10 Mar 2014 14:11:36   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Changed code in function process_close to not RETURN
 # when an rf unloading standards calculation error occurs.
 # This will allow the user to close the PO.  T20140310.0227
 # 
 #    Rev 5.134   06 Mar 2014 15:53:58   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Added code in the AFTER FIELD for lic_plt_id to initialize
 # values when the user enters an existing LP which populates
 # the fields, then moves back to the LP field and enters a 
 # generic LP. T20140206.0381 
 # 
 #    Rev 5.133   02 May 2013 13:45:32   jgarcia
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Johnny Garcia - 6513688 - Before INSERT INTO aothd in checker workunit, reset m_ret_assg.*
 # 
 #    Rev 5.132   24 Apr 2013 11:32:22   praeside
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Incident 6577864 
 # Remove c_get_close cursor from fucntion get_close_po.  Add c_get_irctd cursor
 # to function updt_m_array to get all rcpt_id per PO/APPT even the ones that
 # have not been scanned.  It is will help determine unverified pallets.  Remove
 # m_cnt_remaining logic to clear array after every attempt to process close.
 # Modified OPEN c_ver_irctd to use m_scr_irctd_rec.appt_id instead of 
 # m_scr_irctl_rec.appt_id making sure that the correct rcpt_id is zero verified
 # and the correct iinvd is removed. 
 # 
 #    Rev 5.131   28 Mar 2013 12:14:00   marogers
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Additional fix to FBR 126, in proc_po_prod(), look at the length
 # of the upc to decide which get_upc() to call. In get_upc_prod()
 # change to open c_upc_cur with f_whse_id and added code to set
 # the m_scr_irctd_rec variables. 
 # FBR 126
 # 
 #    Rev 5.130   26 Mar 2013 14:29:48   praeside
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Incident 6517894 - Modified OPEN c_ipod_cur to use m_scr_irctd_rec.appt_id
 # instead of m_scr_irctl_rec.appt_id.  This was a problem if a user try to
 # close more than 1 appt_id at the same time. Fix begin and commit work logic
 # in process_close function. Restore variable m_cnt_remaining to track open
 # po in the array.  Move logic to set array close_flag = "C" to right after
 # each iaptd.po_closed_flg is set to "Y" so that an accurate po array is
 # flaged.  Change looping logic in get_close_po function so that all array
 # are checked.
 # 
 #    Rev 5.129   21 Mar 2013 15:29:52   marogers
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # FBR 126 - Added code in after field upc to check if the lic_plt_id
 # is not null then to call proc_po_prod(). Added code in proc_po_prod()
 # when f_from_field = "U" and returning from get_upc_prod_ucn() check
 # the return status and choice and exit while. In get_upc_prod_ucn()
 # fixed the fetch of c_upc_cur_ucn to fetch into the correct variables
 # and set the m_scr_irctd_rec variables so they display to the screen.
 # 
 #    Rev 5.128   20 Mar 2013 10:48:48   marogers
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Change for FBR 108 - in input_irctd() changed the criteria
 # for calculated code dates to look at the products variance 
 # instead of the max days when comparing to f_dflt_days
 # 
 #    Rev 5.127   19 Mar 2013 14:32:20   marogers
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Fixed previous revision of code so that the query would look
 # at the last 5 digits of the UPCs.
 # 
 #    Rev 5.126   08 Mar 2013 10:42:04   jomoore
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Changed logic a bit and added a new function get_upc_prod_ucn
 # that's a copy of get_upc_prod().  The new fnction is entered into 
 # if the length of the UPC entered/scanned = 5 (which is probably
 # the UCN).  It does a check then to see if there's a match
 # on the last 5 digits of the ucn (positions 10-14).
 # 
 #    Rev 5.125   04 Feb 2013 15:12:40   switty
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # In the input_irctd function changed the parms passed to
 # the get_code_date_info function when infield upc_id or
 # prod_id. The variables used for po_id and pod_id were 
 # not always populated.
 # T20130204.0344 
 # 
 #    Rev 5.124   14 Jan 2013 18:09:32   praeside
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Incident 6274127 - Penn Raeside - Modified get_po_prod() to use
 # f_whse_id to OPEN c_po_cur if generic lic_plt_id is being verified.
 # 
 #    Rev 5.123   03 Jan 2013 22:01:40   praeside
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Incident 6274127 - Penn Raeside - Add m_gen_lic_flag when a generic
 # lic_plt_id is scan.  Default system_flag to "S" for generic LP so 
 # that IMPdptwy00.4ge will run and a new iinvd will be g 
 # 
 #    Rev 5.122   07 Dec 2012 00:23:04   praeside
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Incident 6216208 - Penn Raeside - Correct code so that ipod.plst_id is not
 # left in "P" and iinvd.ista_id is not left in "P" after a PO closed.
 # 1. Change cursor c_count_unver:  
 # 	a. Remove rcpt_id from query condition.  This query is process at the PO 
 # 	level not receipt level.  The number should reflect the total number of 
 # 	pallets unverified per PO not per receipt.  
 # 	b. Add "AND irct.verify_dtim IS NULL" so that closed receipt pallets are 
 # 	not counted.	
 # 2.  Change cursor c_close_ipo:
 # 	Add "AND irct.verify_dtim IS NULL" to the cusor so that a closed receipt 
 # 	is not fetched  
 # 3.	Remove m_cnt_remaining, this was preventing the array from resetting 
 # 	after F3 completes.  
 # 
 #    Rev 5.121   15 Nov 2012 05:22:06   praeside
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Incident 6172531 Penn Raeside:
 # 1.  WHEN "F3"  (# go thru verification process)
 # 	a.  Remove entire section regarding function check_open_irctd. 
 # 	When there is more than one rcpt_id, the error will always show up 
 # 	and m_no_close_apptd will prevent all po on the appt not to close.  
 # 	There are already a flag on the array that handles po close and multiple
 # 	receipt.
 # 
 # 2.  Function process_close:
 # 	a.  Remove check if f_ret_iaptd.po_closed_flg = 'Y' right after CALL to 
 # 	lkp_iaptd.  This was causing process_close to exit prematurely when there
 # 	are more than one rcpt_id.  The iaptd.po_closed_flag should update to "Y"
 # 	only at the end of the process when all po related data have been properly
 # 	updated.
 # 	b. Remove section of code that UPDATE irctd by settinG receipt_user 
 # 	= g_user.user_id and rdst_id = "V" after delete_zero_out() completes.  
 # 	This already been taken care of in update_zero_out(). 
 # 	c.  Restore original BASE update 5.6 code that was comment out and moved
 # 	to function upd_rdst_id.  Without this, receipt_user and rdst_id are not 
 # 	updating properly at the end of the process_close loop when it should.
 # 	d.  Remove section of code "EXE.252991" that updated irctd to user id if 
 # 	ipod.system_flag <> 'N' but does not specify lic_plt_id.  This updated all
 # 	irctd.receipt_user to user_id for the entire PO before all rcpt_id was 
 # 	process.  The process_zero_out looks at receipt_user = 'IRRVH' and 
 # 	rdst_id ='V'.  Since it did not find these transitional flag, it assume the
 # 	pallets have not been verified.
 # 	e. Remove "LET m_arr_po_close[f_arr_counter].close = "Y" from function
 # 	process_close in the section before it generate driver doc.  It was 
 # 	updating irctd.receipt_user = g_user.user_id id and rdst_id  = "D" for the
 # 	2nd PO even though the user choose to "N" to close.
 # 	f. Remove section of code that UPDATE iaptd set po_closed_flg = N after
 # 	Message I9098 ("Verify Complete").  If a user chose to close one po and 
 # 	zero verified the 2nd po on the same appt_id, both iaptd and iapt flags
 # 	would not close properly.
 # 
 # 3.  Function updt_m_array:
 # 	a.  Remove two line of m_array2 code that break unneccessary, causing 
 # 	the sequence of the array to be off. In addition, this displayed multiple 
 # 	lines per po_id to in the unverified screen.
 # 
 # 4.  Function get_close_po
 # 	a.  Remove line that set f_po_closed_flag = FALSE.  It was set prematurely.
 # 	b.  Change "Return True" if f_rcnt > f_num_recs.  The process needs to exit
 # 	the while loop and continue processing the last rcpt_id.  If it returns
 # 	"TRUE", the process_close will exit prematurely.
 # 
 #    Rev 5.120   25 Oct 2012 18:24:00   kfinney
 # IRSverh_00.4gl checked in to the csdev group. Work Request #
 # Added logic to the close process to re-read all the po and receipts
 # tied to the appointment being closed.  This will allow you go verify
 # part of the pos, then exit and go back in to verify the rest and
 # close.
 # 
 #    Rev 5.119   19 Oct 2012 10:10:56   ptran
 # IRSverh_00.4gl checked in to the csorat group. Work Request #
 # Go-Live fixes: Error was not showing up correctly (full screen vs RF). Only update iaptd.po_close_flg
 # when the po is flagged to be closed. Corrected the logic that updates m_array and m_array2's close_flag
 # to "C". Changed get_close_po not to include POs which have been closed. Removed the "RETURN FALSE"
 # after the call to check_inbd_comp to prevent the function get_close_po from exiting too early.
 # 
 #    Rev 5.118   11 Oct 2012 12:49:00   greed
 # IRSverh_00.4gl checked in to the csorat group. Work Request #
 # Gordon Reed - FBR108 - Added logic to handle system generated code dates
 # properly when the user selects a product with F4.
 # 
 #    Rev 5.117   02 Oct 2012 14:38:58   greed
 # IRSverh_00.4gl checked in to the csorat group. Work Request #
 # Gordon Reed - FBR108 - Modified the "TR" PO type checks to not be fooled 
 # by null values.
 # 
 #    Rev 5.116   03 Jul 2012 23:22:46   greed
 # IRSverh_00.4gl checked in to the csorat group. Work Request #
 # Gordon Reed - FBR108v2 - Do not create system generated code dates for PO's
 # with a PO type of "TR" or vender ID of "00019108".  
 # 
 #    Rev 5.115   02 Jul 2012 15:16:36   greed
 # IRSverh_00.4gl checked in to the csorat group. Work Request #
 # Gordon Reed - 5.6.1 Upgrade - Modified the SELECT COUNT that determines if
 # an ipohl record is to be written, to look at all lines on the PO, not just
 # those on the current appt/receipt.  Only one 1020 record should be produced 
 # for each PO.
 # 
 #    Rev 5.114   29 Jun 2012 11:27:46   kfinney
 # IRSverh_00.4gl checked in to the csorat group. Work Request #
 # Changed the USER to be g_user.user_id for the update statement.
 # 
 #    Rev 5.113   26 Jun 2012 17:13:48   greed
 # IRSverh_00.4gl checked in to the csorat group. Work Request #
 # Gordon Reed - 5.6.1. Upgrade - Repositioned the COMMIT WORK statements to
 # correct an error introduced during the original 5.6.1 retrofit coding.
 # SQL checking after one of the incorrectly positioned COMMIT statements 
 # was returning an error, resulting in a program abend.
 # 
 #    Rev 5.112   12 Jun 2012 04:46:08   upogaku
 # IRSverh_00.4gl checked in to the csorat group. Work Request #
 # 5.6.1 Migration task. Replaced CURRENT with CURRENT YEAR TO SECOND in
 # embedded insert and update statements for FourJ's compatability issue.
 # 
 #    Rev 5.111   19 Apr 2012 16:07:34   exceed
 # IRSverh_00.4gl checked in to the csorat group. Work Request #
 # Gordon Reed - 5.6.1 Upgrade - Retrofitted FBR108 functionality to 
 # calculate system generated code dates for certain items, and to populate
 # a flag on the irctd/iinvd, indicating when the code date is system
 # generated.  FBR108 functionality came from versions 5.15.1.38.1.16 
 # through 5.15.1.38.1.19.  Also corrected several flaws that were
 # introduced in the previous retrofit.
 # 
 #    Rev 5.110   29 Mar 2012 01:07:56   exceed
 # IRSverh_00.4gl checked in to the csorat group. Work Request #
 # Ported customization made over 5.3 to 5.6.1 base.
 # 1.Modified SQL to include lcus-id of "V" for revolving pick slot.
 # 2.Additional changes to incorporate the new exceptions screen for 
 # Inbound Compliance.
 # 3.Added upd_rdst_id() and Moved the call for upd_rdst_id() from the
 # MAIN SECTION to the main_loop(). The reason for this is b/c the    
 # irctd.rdst_id would not get updated correctly when closing PO's.
 # 4.In function group_pallets() deleted the functional variable 
 # f_new_iinvd.* b/c it was not needed. After the function decided
 # which pallet to delete and which pallet to keep, in the update of
 # the iinvd record, changed the qty to be updated by f_prod_qty 
 # (running total) and not f_iinvd.prod_qty which was not a running 
 # total.
 # 5.Added code to generate Driver Document.Changed reference to PO in
 # driver document to use array value instead of fetched value since the
 # PO was null when the driver document was called.
 # 6.Added code to prevent two or more users from closing
 # the same PO/appointment.Recalculate catch wgt based on actual rct_qty
 # and avg_wgt calculated in IRRPA.
 # 7.Reset status and receipt user in irctd when select irctl fails.    
 # This will cause the license plate being processed at the time of the          
 # failure to show up as an unverified license plate.  The user has to 
 # re-scan the license plate in order for the irctl record to be created.
 # 8.Added changes when closing the PO notify user when there is another 
 # receipt for the same PO and appointment.
 # 9.Added code to be able to verify pallets from more than 1 receipt.
 # 10.Added code to update the iaptd.po_closed_flg when there are no ipod's
 # open.
 # 11.Set catch_wgt to m_avg_catch_wgt prior to calling calc_catch_wgt 
 # function.
 # 12.Do not allow a checker to change a license plate if there are two 
 # receipts against the same PO/appointment and one user has initiated 
 # the close process.
 # 13.Utilize the new column iupcd.del_dtim when looking up the UPC.
 # 14.Added nohup to CRRdrvdc00.4ge to print a reports.
 # 15.Changed to ensure that when the po is being closed that the 
 # irctd.rdst_id are not left in an invalid 'V' status.
 # 16.On receiving correction when irctl has not been sent to host, update 
 # irctl.code_date.Added call to check_code_date to check manufactured and
 # expiration code dated products.
 # 17.Added code to populate new fields on the iinvd table.
 # 18.Added calls to val_iprod() before each call to calc_catch_wgt()this 
 # way we get the products catch_wgt_cntl flag and know that the flag has 
 # not been altered by any other process within the program.
 # 
 #    Rev 5.109   02 Feb 2012 13:31:24   exceed
 # Automatically added modifications from customer version 5.15.1.38.1.15 into base code
 # 
 #    Rev 5.108   04 Apr 2011 15:42:58   jeffreyy
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # Infor365-149426: populate lot_no when creating new irctd.
 # 
 #    Rev 5.107   04 Apr 2011 14:35:10   jeffreyy
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # Infor365-149429: revised the SQL in process_irctd() on table aothd.
 # 
 #    Rev 5.106   17 Mar 2011 13:42:04   curtisw
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # Defect 137439 - Was tring to find work unit in available status,
 # But do not care if it is available just need to find the work unit
 # information to create the checker workunit.
 # 
 #    Rev 5.105   08 Feb 2011 23:10:46   jeffreyy
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # replaced 2009 with 2011
 # 
 #    Rev 5.104   31 Jan 2011 21:33:00   jeffreyy
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # added copyright info
 # 
 #    Rev 5.103   07 Jun 2010 00:10:20   jeffreyy
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # 5.6 release:
 # Support encrypted password for oracle database.
 # add call to lib_connectDB() right after MAIN entry!
 # 
 #    Rev 5.102   06 Jun 2010 21:56:16   jeffreyy
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # 5.6 release: replace DATABASE with SCHEMA for encrypted password.
 # 
 #    Rev 5.101   08 Sep 2008 11:09:20   dbarhate
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # SCM-00000-05546 : Inquiry-1971450 : Modified code to take care
 # that the allocate quantity does not become -ve while receiving
 # a mandatory flowthru product. 
 # 
 #    Rev 5.100   02 Sep 2008 11:52:02   dbarhate
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # SCM-00000-05545: Inquiry-2115564 : Modified code to map the
 # select for c_sel_ift to appropriate parameters in the OPEN 
 # c_sel_ift statement so that flowthru product demand header
 # (ift) is updated correctly with the received quantity.
 # 
 #    Rev 5.99   01 Sep 2008 14:21:32   dbarhate
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # SCM-00000-05546 : Inquiry-1971450 : Modified code to accept
 # the last quantity entered when the license plate is re-keyed
 # to the system.
 # 
 #    Rev 5.98   04 Apr 2008 16:55:36   pbirru
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # BUGAWARE item number 8252 for 5.5.6 Oracle 10g - Firefox QA.
 # Added an IF condition in input_irctd() function at AFTER FIELD lic_plt_id
 # for the proper selection of PO number from irctd table during the 
 # verification of warehouse transfer license plate.
 # 
 #    Rev 5.97   09 Aug 2007 16:00:48   sgovalka
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # SCM-00000-02861: Inquiry 887663;Changes for revision 5.83 reverted
 # back,as those changes were against basic bussiness recieving process.
 # Damage quantity should not update recieving quantity.
 # 
 #    Rev 5.96   06 Jun 2007 15:34:54   rdharani
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # SCM-00000-02510, Inquiry: 578512. Modified to add 'rcpt_id' in  parameter 
 # list of po_count_tracked().
 # 
 #    Rev 5.95   21 May 2007 14:36:20   rdharani
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # BUGAWARE item 6758 for the 5.5.5 Rls integration test on oracle.
 # Changed a SELECT statement to DECLARE - FOREACH statement.
 # 
 #    Rev 5.94   18 May 2007 11:34:46   pbirru
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # Bugaware : 6719 - Modified the code so that IRRVH 
 # can work fine for verification of one PO with 
 # multiple warehouse,same appointment and receipt no.
 # 
 #    Rev 5.93   22 Mar 2007 15:30:50   gkumar
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # SCM-00000-01859 ; Inquiry 223924 ; Added code to display correct 
 # received quantity after subtracting damaged quantity.
 # 
 #    Rev 5.92   22 Mar 2007 14:57:12   gkumar
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # SCM-00000-01851 ; Inquiry 223924 Modified AFTER FIELD qty_damaged to
 # adjust damaged and received quantity.
 # 
 #    Rev 5.91   22 Dec 2006 21:38:48   kathyc
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # Kathy Castro - commented out elogs for debugging purpose
 # 
 #    Rev 5.90   14 Dec 2006 02:24:22   kathyc
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # Kathy Castdro - removed code that updated the iinvq.ista_id
 # to "A", since this should ONLY be updated when the 
 # pallet is actually put away
 # 
 #    Rev 5.89   17 Oct 2006 13:22:36   sgovalka
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # BUGAWARE item 4465: for the 5.5.4 Rls integration test
 # The input_irctd() function modified to capture the system_flag
 # for scanned license plate. The sql "UPDATE ipod" modified to
 # update the ipod.system_flag. The sql is incorporated to update
 # the aothd.ptty_id to 'N' whenever QC required flag changed to
 # 'Y'.
 # 
 #    Rev 5.88   04 Oct 2006 16:36:40   rdharani
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # '5.5.4 BA4371' Code modified to update iinvq.ista_id.
 # 
 #    Rev 5.87   21 Sep 2006 09:36:26   rdharani
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # '5.5.4 BA4328' Code modified to give an error message when user tries to
 # change 'QC TRANSIT' flag after put-away is completed i.e. ptwy_at_rc is 'Y'.
 # 
 #    Rev 5.86   13 Sep 2006 15:13:28   sgovalka
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # 5.5.4 BugAware4299:Modified the program to aceept the lot number
 # and code date whenever its mandatory, during verification.
 # 
 #    Rev 5.85   10 Aug 2006 18:26:08   sgovalka
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # WMS2000 5.5.4 QC REC: New field "QC " incorporated to take a user 
 # choice for Putaway. If the user flag 'Y' for QC, then pallet will 
 # go for QC location,else ('N') it will go to selection/reserve location.
 # 
 #    Rev 5.84   31 Jul 2006 11:24:28   dbarhate
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # Inquiry-377044 : SCM-00000-00811 - Modified code so that the
 # zero content file in the $DSCBASE/dat directory is delete.
 # 
 #    Rev 5.83   01 Dec 2005 14:43:30   keithf
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # COOL/BIO - removed some commented code from the previous revision.
 # 
 #    Rev 5.82   01 Dec 2005 14:35:24   keithf
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # COOL/BIO - added license plate to call to get_asn_cool().
 # 
 #    Rev 5.81   18 Nov 2005 02:41:32   dbarhate
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # Inquiry - 229572 : Modified the IF condition in the function
 # main_loop() to check if m_scr_irctd_rec.rct_qty is not null,
 # blank or 0.
 # 
 #    Rev 5.80   15 Nov 2005 12:55:00   sparavat
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # COOL and BIO Phase2. IN Function main_loop() calling function get_asn_cool()
 # if po type is 'WT'  or 'DT' else it will call process_cntry_origin().  so that
 # the cool and bio information will populate automatically if po type is 'WT'  or 'DT'.
 # 
 #    Rev 5.79   09 Nov 2005 15:25:54   sparavat
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # COOL and BIO Phase2. In function process_close(),  corrected the parameter
 # passing for FUNCTION create_asn_iips().
 # 
 #    Rev 5.78   09 Nov 2005 14:48:48   sparavat
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # COOL and BIO Phase2. In function process_close(),  add a call to 
 # new function create_asn_iips() to create iips records for ASN if 
 # the purchase order type is 'WT' or 'DT'
 # 
 #    Rev 5.77   31 Oct 2005 15:03:12   sparavat
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # COOL and BIO Phase2. Defined a new module variable m_ret_swttm.
 # In function main_loop() added a call to library functioin to get
 # information from SMWHE. Added a check on m_ret_swttm.cool_flg in
 # SMWHE before getting COOL info. In function lkp_whse_info(),  added
 # a call to library function to get information from SMWHE. For
 # functions process_irctd() and active_iinvd(),  "whse_id" passed into
 # function call check_track_and_trace(), so flags in SMWHE can be checked on.
 # 
 # 
 #    Rev 5.76   29 Jul 2005 14:03:40   ptran
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # BUGAWARE item 3832 for the 5.5 Release Integration Test: Modified the UPDATE
 # syntax to be compliant with Oracle.
 # 
 #    Rev 5.75   21 Jun 2005 15:14:02   keithb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # Corrected an issue with the receipt ID not getting captured as a result
 # of scanning the LP in as an EAN128.  PMT KBLK-5NKTCC.
 # 
 #    Rev 5.74   08 Jun 2005 19:43:06   keithb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # Bugaware Issue 3720 for the 5.5 release integration test.
 # Corrected an issue with the Select against aassg when looking
 # for a checker assignment.  The select was correct to join aassg
 # and sasso using the column aassg.phys_whse_id .
 # 
 #    Rev 5.73   02 Jun 2005 13:17:54   quachd
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # BUGAWARE item 3627 for the 5.5 Rls integration test: Fixed error 'System 
 # failure' when same receiving license plate number also exists in different
 # WH for same DC.  User will be informed to scan APPT and Receipt ID beside 
 # license plate to continue.
 # 
 #    Rev 5.72   17 May 2005 13:32:54   tobyp
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # BUGAWARE item 3593 for the 5.5 Rls integration test - Corrected check
 # for next PO in function process_close to avoid array bounds error
 # 
 #    Rev 5.71   22 Apr 2005 14:47:54   keithf
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # KBLK-5Z3JUNKBLK-5Z3JUN adjusted the placement of capture_inbound_carrier so it
 # will work with multiple po/rcpts.
 # 
 #    Rev 5.70   20 Apr 2005 13:58:22   keithf
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # KBLK-69F94F alter logic to work with driver directed putaway.
 # 
 #    Rev 5.69   07 Apr 2005 15:41:44   ptran
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # PMT KBLK-5Z3JUN -- added logic to capture_inbound_carrier if required.
 # 
 #    Rev 5.68   31 Mar 2005 11:58:48   ptran
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # KBLK-5Z7KKK: Initialize the m_coo_id.
 # 
 #    Rev 5.67   23 Mar 2005 23:46:20   joosteng
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # KBLK-69F94F: COOL/Bioterroism/GTIN Compliancy - If COOL/Bio product,
 # inv_pos_cat = "P" and lcus_id = "P" or "A" update iinvq after iinvd
 # updates.  Through process_close, only group pallets if lcus_id =
 # "P" or "A". Through delete_zero_out, delete iinvq on zero pallet
 # delete for lcus_id "P" or "A".
 # 
 #    Rev 5.66   14 Mar 2005 00:00:08   smuppall
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # PMT GEAK-67ASYR Corrected the use CURRENT in embedded insert and update
 # statements for FourjS Genero compatability issue.
 # 
 #    Rev 5.65   17 Feb 2005 10:02:42   hildes
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # PMT KCAO-5M2UYN / Applix inquiry 142497 - On warehouse transfers, the
 # program will take the user to the receipt field instead of the
 # damaged field even if the SMACB variable WAREHOUSE_TRANSFER/auto adjust
 # is set to "N".
 # 
 #    Rev 5.64   24 Jan 2005 04:35:12   sparavat
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # PMT AENZ-62HQXM Removed unnecessary lines - deepak
 # 
 #    Rev 5.63   24 Jan 2005 02:40:40   sparavat
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # PMT : AENZ-62HQXM In function main_loop on pressing key F3,
 # calling check_open_irctd function which is newly added and 
 # it checks if there exists multiple receipts for a purchase 
 # order and appointment combination.
 # 
 #    Rev 5.62   22 Dec 2004 10:58:46   jxu
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 1
 # PMT# AURI-66NN9Y, Modified the program to user domain table surcp, icnty
 # correctly in terms of screen display and table access.  
 # 
 #    Rev 5.61   21 Dec 2004 05:16:58   ekuppusa
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 8733
 # PMT KCAO-5TGQ3F When an appointment has multiple PO on
 # it with Different vendors and 1 of the vendor has container
 # tracking = Y and the other vendor has container tracking =N
 # should show only container tracking = Y vendors while
 # container tracking. 
 # 
 #    Rev 5.60   28 Oct 2004 04:45:44   sparavat
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 1612
 # PMT PTRN-54YUDZ The code_date field is updating in irctl table 
 # for the samepallet previously it was not updating.
 # 
 # 
 #    Rev 5.59   30 Sep 2004 10:56:32   alexe
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 1
 # PMT KDWR-4YRJ5R Added code to main_loop when returning true from 
 # function input_irctd update the labor standards before exiting the program.
 # Added code to process_close to do the same thing when exiting from there.
 # Corrected the source of the appt_id for the checking workunit in 
 # function add_chck_wku to come from m_scr_irctd_rec.
 # Also in process_irctd qualified the workunit being copied to the checker 
 # workunit to be only the available since there could be "CMT"'s
 # 
 #    Rev 5.58   24 Sep 2004 14:17:52   alexe
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 1
 # Code for Receiving Standards PMT KDWR-4YRJ5R  Initial revision.
 # Unit testing ok, QA pending.
 # 
 #    Rev 5.57   17 Sep 2004 14:13:56   hildes
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 12345
 # PMT #KATN-5ZBKAX: An invalid code date that is too new causes the
 # program to exit. Modified the program to re-enter the code date field
 # if an invalid date is entered.
 # 
 #    Rev 5.56   23 Jun 2004 08:36:38   gayleb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 12
 # PMT KBLK-5Z3JUN -- added the lib calls of po_count_tracked & create_iips 
 # functions
 # 
 #    Rev 5.55   22 Jun 2004 14:00:36   ptran
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23737
 # KBLK-5Z7KKK: Allowed entry of COOL data during verification.
 # 
 #    Rev 5.54   12 May 2004 13:26:16   marcs
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23456
 # MSTT-5YWP9U Whitespace changes only.
 # 
 #    Rev 5.53   17 Dec 2003 17:49:10   lesterd
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 18888
 # PMT DJOS-5P835N. Do not use the length of f_barcode to decide whether
 # to load the EAN128 info, use f_barcode[1,3] = "]C1" instead.
 # 
 #    Rev 5.52   17 Dec 2003 17:20:48   lesterd
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 18888
 # We don't need to cut the EAN application identifiers in this program. We
 # just call the library function to do this work. (PMT KBLK-5NKTCC)
 # (1)Undo version 5.50.
 # (2)Move the selection of whse_id from irctd after the call of 
 # process_EAN128_scan.
 # 
 #    Rev 5.51   17 Dec 2003 12:23:06   analynu
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 12345
 # PMT# DJOS-5FE6EK - Took out the code to re-calculate the receipt
 # quantity to the unit issue right before the call to the update_wgt
 # function, already in the unit of issue.  Added urcp_id to the 
 # update_wgt function call.
 # 
 #    Rev 5.50   15 Dec 2003 16:33:42   lesterd
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 18888
 # PMT KBLK-5NKTCC. If the user keys in the EAN control character "]C1", cut
 # it off.
 # 
 #    Rev 5.49   22 Oct 2003 11:44:10   informix
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 1234
 # Made changes to support serial key value for ipod/iupcd table GRED-5SJUA9.
 # 
 #    Rev 5.48   17 Oct 2003 13:55:20   jeffreyy
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # JYUN-5EGQUD: changes the outer join into ANSI standard stmt.
 # 
 #    Rev 5.47   28 Jul 2003 12:39:00   gayleb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # PMT AENZ-5PBJQT --  multi-po-array must display if user enters a 
 # generic L/P.
 # 
 # PMT KCAO-5ETTQ6 --- generic L/P gets attached incorrect rcpt Number when
 # 2 POs are on the same appt.
 # 
 # 
 #    Rev 5.46   23 Jul 2003 14:14:28   gayleb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # PMT MGHI-5N93C3 (part 2) --- 
 # Items not on code date
 # control are dropping receipt date when using generic labels.
 # 
 #    Rev 5.45   14 Jul 2003 11:36:16   gayleb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # PMT AENZ-5PBJQT --- alter previous revision --- in process_EAN128_scan()
 # check if gthe f_lic_plt is not null AND LENGTH(f_barcode) > 18.  This way
 # the m_scan_rec.lic_plt_id will only have value if the barcodee is > 18.
 # Then AFTER FIELD lic_plt_id, if the m_scan_rec.lic_plt_id is NOT null, 
 # then assign it to the screen record lic_plt_id to be displayed. 
 # 
 #    Rev 5.44   11 Jul 2003 13:53:42   alexe
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # PMT AENZ-5PBJQT Corrected the warehouse to use in functions
 # get_po_prod and get_upc_prod to use the warehouse from the rcpt header.
 # Changed the calls to populate_from_scanned to only call if there was 
 # something scanned.  Also corrected the calls to IRRdrvdc00.4ge to 
 # not call for duplicate POs.
 # 
 #    Rev 5.43   09 Jul 2003 10:45:08   gayleb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # PMT TPRL-5P8J76 -- In function delete_zero_out, don't return from the function
 # if the cursor c_pp_loc is notfound.  This is to avoid remaining L/Ps
 # having iinvd with zero quantity.
 # 
 #    Rev 5.42   08 Jul 2003 12:49:10   gayleb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # PMT TPRL-5NSKYE ---Issue with upc having different products associated
 # with it.  
 # 
 #    Rev 5.41   06 Jul 2003 11:37:38   gayleb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # PMT GBEK-5NEP2M --- code date issues --- if item has iprod.pwy_dte_ctl = 'N',
 # then code_date should be the rcpt_date.  If item has pwy_dte_ctl = "Y" then
 # allow user to enter the code date...if same pallet is re-scanned and
 # has code date previously entered, display previous code date.
 # 
 #    Rev 5.40   22 Jun 2003 20:51:58   gayleb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # PMT KBLK-5NCQRT --- should be able to enter the catchweight value on the 
 # F3 screen.   Not after every pallet  ... per Brookshires (5.3.5 upgrade).
 # Removed the UF form and all associated code.
 # 
 #    Rev 5.39   19 Jun 2003 15:59:48   lesterd
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 18888
 # PMT KFIY-5JGJKN. Corrected the check_snrng() function.  Also only check
 # for new pallets being created.
 # 
 #    Rev 5.38   18 Jun 2003 13:27:02   macg
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 12345
 # PMT# MGHI-5N93C3
 # Added the check for the condition where cde_dt is equal to "12/21/2099" in
 # the find_iinvd_cde_dt() function.
 # 
 #    Rev 5.37   12 Jun 2003 11:36:42   jxu
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 2261
 # PMT# DJOS-5FF7LL, Add check receipt user when doing close PO for unverified license plate.
 # 
 #    Rev 5.36   06 Jun 2003 01:48:26   macg
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 12345
 # Modified the program to populate the iinvd's cde_dt field with the receitpt
 # date in case of no code date items. This population will only occur if the
 # pwy_dte_ctl for the item is N and the current value in cde_dt is NULL.
 # PMT#MGHI-5N93C3
 # 
 #    Rev 5.35   21 May 2003 15:43:04   alexe
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request #
 # Correction to PMT KATN-5L3K3H Removed the check for the more than 
 # one row error and change error to log and return from function input_irctd
 # 
 #    Rev 5.34   21 May 2003 14:14:52   jeffreyy
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23539
 # ANEL-5KSJ7C: added logic to handle multi-rcpt/appt on the same po.
 # 
 #    Rev 5.33   14 Apr 2003 18:13:32   gordonr
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 1
 # Gordon Reed - GRED-5JNRTK - EAN 128 Barcode Redesign
 # Modified the process_EAN128_scan function to not call the get_EAN128 
 # functions unless the contents of the license plate/barcode field exceed 
 # 18 characters.  Also removed a diagnostic statement left over from 
 # testing.
 # 
 #    Rev 5.32   31 Mar 2003 12:21:30   alexe
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 1
 # PMT KATN-5L3K3H Enhancement to allow receiving of product for multiple
 # warehouses without supervisor intervention.  The warehouse will be taken
 # from the receipt information for the license plate.
 # 
 #    Rev 5.31   26 Mar 2003 11:31:54   alexe
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 1
 # PMT AENZ-5KYLTX Added the unit_ship_cse and the prod_sz to the screen.
 # 
 #    Rev 5.30   04 Mar 2003 14:06:06   gordonr
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 1
 # Gordon Reed - GRED-5JNRTK - EAN 128 Barcode Redesign
 # Modified to use the new EAN128 barcode library functions.  They allow 
 # users to scan barcodes or manually enter data into the same field.
 # 
 #    Rev 5.29   31 Jan 2003 16:51:02   jxu
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 1
 # IAB715,PMT# RBHE-5GZLUT. Phase II, Populate verify datetime during complete_totals().
 # Stop the exception screen cursor on the last row when no more row downward.
 # 
 #    Rev 5.28   27 Jan 2003 08:59:40   jeffreyy
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23539
 # LKUR-5ARTFT: get correct iinvd.prod_qty if irctl record has been extracted.
 # 
 #    Rev 5.27   24 Dec 2002 10:28:44   gayleb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23590
 # PMT LGUE-575TLA --- when L/P rollover, you can't verify the L/Ps that are
 # greater than the current number in the snrng table.  Altered check_snrng() logic
 # to prevent error from happening.
 # (from Nashfinch)
 # 
 #    Rev 5.26   19 Dec 2002 10:47:58   gayleb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23570
 # PMT - GBEK-5A5RHC ---replace calls from lkp_iupcd to lkp_iupc(dc_id,prod_id)...
 # changed display variables to display proper upc_id value
 # 
 #    Rev 5.25   22 Nov 2002 16:48:50   jeffreyy
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23539
 # PMT# RBHE-5AZL33 IAB FBR175: revised the SQL c_inbc_desc into 
 # two separate SQL. and modified related logic for Oracle compliance.
 # 
 #    Rev 5.24   11 Nov 2002 15:36:28   taniab
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23720
 # Fixes for issues raised in testing of EAN128 barcode scanning :
 # - code dates not being incremented/checked correctly
 # - ability to scan for AI 310 or 320 (kgs and pnds respectively)
 # 
 #    Rev 5.23   28 Oct 2002 10:51:36   jeffreyy
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23539
 # JYUN-5EGQUD: added check on SQL error code '-803'. DB2 returns
 # '-803' for any violation of unqiue contraints.
 # 
 #    Rev 5.22   11 Oct 2002 13:48:12   ptran
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23736
 # KBLK-5ESSQ5: Modified to work with new serial keys added for the new UI
 # Interface.
 # 
 #    Rev 5.21   09 Sep 2002 08:51:16   jxu
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 1
 # PMT# RBHE-5AZL33 IAB FBR175, added fixes for the previous revision.
 # 
 #    Rev 5.20   27 Aug 2002 13:27:16   jxu
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 1
 # PMT# RBHE-5AZL33 IAB FBR175, Add Inbound Compliance Functionality.
 # 
 #    Rev 5.19   18 Jun 2002 17:46:02   markw
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23720
 # Allow for scanning of EAN-128 barcode.
 # 
 #    Rev 5.18   20 May 2002 11:31:26   steveb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23703
 # PMT GBEK-59ZJAT - removed whse_id from cursors c_count_unver and 
 # c_ver_irctd so that unscanned lic plates for a different warehouse
 # on a multi-whse PO would be correctly located and closed.
 # 
 # 
 #    Rev 5.17   28 Mar 2002 09:02:24   jeffreyy
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23539
 # changed "C0031" to "I0010", "C0081" to "I0013".
 # 
 #    Rev 5.16   09 Jan 2002 10:39:06   steveb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23703
 # PMT ticket SBLL-562V8F - ignore notfound condition when deleting
 # aothd records in delete_zero_out().
 # 
 #    Rev 5.15   07 Dec 2001 11:37:50   steveb
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23703
 # SBLL-554RT5 - corrected issues with variance checking, and added
 # a new error message to be displayed if the variance is exceeded.
 # 
 #    Rev 5.14   30 Nov 2001 13:11:16   mattr
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23590
 # Deleted testing comments, there were no logic changes only deleted
 # un-necessary comments that would write to the default.log.
 # 
 #    Rev 5.13   30 Nov 2001 12:55:08   mattr
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23590
 # Added code to delete the iinvd record for a pallet when that
 # pallet is going to a PP location and that pallet has been
 # 0 verified. This fix is part of PMT MROS-4YPP6C. 
 # (Matt Rogers 11/30/2001)
 # 
 #    Rev 5.12   07 Nov 2001 15:40:26   dannyw
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23666
 # PMT DWRT-548SK2; USA2001-02432; update catch_wgt on irctd & irctl
 # 
 #    Rev 5.11   07 Nov 2001 14:31:48   dannyw
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23666
 # PMT TPRL-53RP3F; retain irctd/irctl records w/ zero rct_qty;
 # fixed some of the indentation inconsistencies;
 # removed large block of commented-out code
 # 
 #    Rev 5.10   24 Oct 2001 09:33:26   mattr
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23590
 # 10/24/2001 - Matt Rogers - added code to keep the selection 
 # location from disassociating from the product during RF
 # verification when a pallet that has been putaway to the
 # selection location has been zeroed verified.
 # PMT MROS-4YPP6C
 # 
 #    Rev 5.9   22 Oct 2001 15:38:18   jacobt
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23630
 # 10/22/01   JJT   PMT LSTP-52XGNG.
 #            ISSUE: Error Message followed by program exit if user
 #                   received product with zero quantity and doing
 #                   completion.
 #            Reason: SQLCA.SQLCODE testing is performed for <> 0, So
 #                   if SQLCA.SQLCODE = 100 and it is acceptable,
 #                   still system abort the operation. It is corrected.  
 # 
 #    Rev 5.8   18 Oct 2001 15:03:00   normant
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23590
 # Added code to not recreate irctl rows (if plt has already been verified).
 # 
 #    Rev 5.7   27 Sep 2001 10:54:32   dannyw
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23666
 # PMT DWRT-52SMVP; Modified condition for displaying F3 msg in LP field
 # to match new functionality from last revision
 # 
 #    Rev 5.6   24 Sep 2001 10:18:30   dannyw
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23666
 # PMT DWRT-52SMVP; modified to allow F3 key to close PO
 # even if no lic_plt_id has been scanned.  Receipt and Appt
 # are still required;
 # Also only print Driver Doc if the PO is closed;
 # Also prevent user from entering closed appt_id
 # 
 #    Rev 5.5   10 Sep 2001 13:11:48   richards
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23390
 # Corrected DATE <-> DATETIME mismatches for database independance.
 # 
 #    Rev 5.4   27 Aug 2001 20:28:04   markw
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23664
 # PMT ticket DMGL-4Z8KP8 - Code date problems with receiving.
 # Moved the code date increment from this file to the library function
 # get_all, to ensure that the code date is incremented on receiving if
 # entered, and in verification if not entered in receiving.
 # 
 #    Rev 5.3   06 Apr 2001 09:43:10   bryanf
 # IRSverh_00.4gl checked in to the internal_dev group. Work Request # 23590
 # DC to DC Transfer. Added check to make quantity changes for DC transfers
 # behave the same as those for warehouse transfers.
 # 
 #    Rev 5.2   06 Feb 2001 14:50:02   richards
 # IRSverh_00.4gl checked in to the r51_1_dev group. Work Request # 23574
 # Removed system: from definition.
 # 
 #    Rev 5.1   02 Feb 2001 12:18:52   rockym
 # IRSverh_00.4gl checked in to the r51_1_dev group. Work Request # 23506
 # Modified to store ipod.qty_claimed in retail units. Both qty_damaged and 
 # qty_claimed are now stored in ipod as RTU.                                      
 # 
 #    Rev 5.0   17 Nov 2000 14:33:28   lathak
 # IRSverh_00.4gl checked in to the r51_0_dev group. Work Request # 23532
 # Modified so that putaway does not run again even when we enter a wrong pallet 
 # and then enter the correct one .
 # 
 #    Rev 4.71   22 Aug 2000 18:49:02   jianxinz
 # IRSverh_00.4gl checked in to the r46_6_dev group. Work Request # 23430
 # Problem: when verify mutiple for a product and one or more pallets get 0
 # qty, the program still count 0-qty-pallet. As a result, the catch_weight
 # will be divided by all pallets and report show the incorrect catch_weight.
 # Fix: only none-zero-qty pallet has the catch_weight. 
 # 
 #    Rev 4.70   10 Aug 2000 13:37:54   ptran
 # IRSverh_00.4gl checked in to the r46_6_dev group. Work Request # 23356
 # Added msg_send_po and msg_send_appt for EFS Collaborate.
 # 
 #    Rev 4.69   07 Aug 2000 13:24:40   abhim
 # IRSverh_00.4gl checked in to the r46_6_dev group. Work Request # 23386
 # Changed calls to sh_cmd_msg and sh_info_msg to 
 # sh_rf_cmd_msg and sh_rf_info_msg to support d4gl.
 # 
 #    Rev 4.68   04 Aug 2000 10:25:32   richards
 # IRSverh_00.4gl checked in to the r46_6_dev group. Work Request # 23393
 # Corrected all infield() syntax problems.
 # 
 #    Rev 4.67   03 Aug 2000 16:51:04   richards
 # IRSverh_00.4gl checked in to the r46_6_dev group. Work Request # 23393
 # Corrected infield() syntax problem.
 # 
 #    Rev 4.66   20 Jul 2000 15:45:20   richards
 # IRSverh_00.4gl checked in to the r46_6_dev group. Work Request # 23385
 # Passed additional parameter (NULL) to rcv_work_unit.
 # 
 #    Rev 4.65   30 Jun 2000 16:00:26   ptran
 # IRSverh_00.4gl checked in to the r46_6_dev group. Work Request # 23364
 # Eliminate Catch Weight Entry for Warehouse Transfer.
 # 
 #    Rev 4.64   15 Jun 2000 12:12:52   jacobt
 # IRSverh_00.4gl checked in to the r46_5_dev group. Work Request # 23354
 # 06/15/2000 JJT validation of val_sacvv limited to 'WT' only.
 # 
 #    Rev 4.63   14 Jun 2000 13:59:22   jacobt
 # IRSverh_00.4gl checked in to the r46_5_dev group. Work Request # 23354
 # 06/14/2000 jjt - added f_aborted_wt for IAB084
 # 
 #    Rev 4.62   13 Jun 2000 13:50:00   ptran
 # IRSverh_00.4gl checked in to the r46_5_dev group. Work Request # 23356
 # Added new Event Models functionality.
 # 
 #    Rev 4.61   07 Jun 2000 14:03:18   jacobt
 # IRSverh_00.4gl checked in to the r46_5_dev group. Work Request # 23354
 # 06/07/2000 JJT Corrected varaibles in Process_wt_po.
 # 
 #    Rev 4.60   02 Jun 2000 15:36:40   jacobt
 # IRSverh_00.4gl checked in to the r46_5_dev group. Work Request # 23354
 # 06/02/2000 JJT Added - updating to irctd.urcp_id.
 # 
 #    Rev 4.59   02 Jun 2000 08:16:40   jacobt
 # IRSverh_00.4gl checked in to the r46_5_dev group. Work Request # 23354
 # 06/02/2000 JJT - Corrected from warehouse variable in process_wt
 # 
 #    Rev 4.58   02 Jun 2000 07:35:56   jacobt
 # IRSverh_00.4gl checked in to the r46_5_dev group. Work Request # 23354
 # 06/02/2000 JJT PMT # DMGL-4KKH8R  IAB084
 #            Allow Editing on warhouse transfer qty and do adjustment in whse_id.
 # 
 #    Rev 4.57   01 Jun 2000 08:26:14   chanderp
 # IRSverh_00.4gl checked in to the r46_5_dev group. Work Request # 23354
 # when inserting into iupc table value for the upc_type_flg is set to I.
 # 
 #    Rev 4.56   30 May 2000 14:04:18   ptran
 # IRSverh_00.4gl checked in to the r46_5_dev group. Work Request # 23354
 # Remove all the "extra" FOR loops which have been causing a Purchase Order
 # to be closed multiple times if users choose to verify and close multiple
 # POs at the same time. Also pull the call to get_close_po() out of the
 # main WHILE loop so that the pop-up window will only show up once.
 # 
 #    Rev 4.55   30 May 2000 08:28:44   jacobt
 # IRSverh_00.4gl checked in to the r46_5_dev group. Work Request # 23354
 # IAB 084 - ALLOWING TO EDIT QTY - (Warehouse Transfer)
 # 
 #    Rev 4.54   24 Apr 2000 10:41:58   jacobt
 # IRSverh_00.4gl checked in to the r46_5_dev group. Work Request # 23337
 # 04/24/2000 JJT - System displays error Message I1540, even if no pallets
 #            are available for verification. PMT  # JZHG-4JKT5Y
 # 
 #    Rev 4.53   21 Apr 2000 08:41:48   jacobt
 # IRSverh_00.4gl checked in to the r46_5_dev group. Work Request # 23334
 # 04/21/2000 JJT - 
 #            Allowing zero is linked with rct qty (only if rct-qty = 0).
 # 
 #    Rev 4.52   20 Apr 2000 10:26:44   jacobt
 # IRSverh_00.4gl checked in to the r46_5_dev group. Work Request # 23334
 # 04/20/2000 JJT PMT # ESWN-4JBTX5
 #            Allowing entry of ZERO to catch weight field.
 # 
 #    Rev 4.51   10 Mar 2000 11:57:12   jacobt
 # IRSverh_00.4gl checked in to the r46_4_dev group. Work Request # 23304
 # 03/10/2000 Jacob J Thomas - Inventory required to be Active if work unit
 # is resolved.
 # 
 #    Rev 4.50   23 Feb 2000 15:13:14   ptran
 # IRSverh_00.4gl checked in to the r46_4_dev group. Work Request # 23288
 # SPEC061: Added a call to the new library function to check for maximum
 # code date when receiving code-dated products.
 # 
 #    Rev 4.49   24 Jan 2000 14:58:14   jacobt
 # IRSverh_00.4gl checked in to the r46_4_dev group. Work Request # 23163
 # 1//24/2000 JJT Modified to capture temperature.
 # 
 #    Rev 4.48   13 Dec 1999 15:53:16   richards
 # Corrected PVCS branching issue.  No code changes.
 # 
 #    Rev 4.47.1.10   04 Nov 1999 11:45:40   rohanb
 # IRSverh_00.4gl checked in to the r46_3_fix group. Work Request # 23185
 # Changed loc_id IS NULL to loc_id IS NOT NULL in functions
 # get_sel_loc() and process_aothd() to process records. CMS# 23185
 # 
 #    Rev 4.47.1.9   Tue Dec 15 19:26:10 CST 1998   briker
 # Work Request # 22705
 # Changes for technology stack upgrade.
 # 
 #    Rev 4.47.1.8   Mon Nov  2 09:49:34 CST 1998   subrams
 # IRSverh_00.4gl checked in to the r4_6_fix group. Work Request # 22545
 # The outer begin / commit work statements are removed to avoid program crash during P.O close when 
 # the whenever error continue statement is removed.
 # 
 #    Rev 4.47.1.7   Wed Oct 28 15:16:54 CST 1998   subrams
 # IRSverh_00.4gl checked in to the r4_6_fix group. Work Request # 22528
 # The delete statements that delete the records from the tables itctd,irctl,aothd and iinvd during y
 # ou verify a pallet for zero quantity are commented so that the receiptmay not be deleted.
 # 
 #    Rev 4.47.1.6   Tue Oct  6 14:36:26 CDT 1998   jianxinz
 # IRSverh_00.4gl checked in to the r4_6_fix group. Work Request # 22381
 # The program IRSverh_00.4gl should be updated so that references to the
 # s_po_list[x].close_flag value are changed to s_po_list[x].close.
 # 
 #    Rev 4.47.1.5   Tue Sep 29 13:23:02 CDT 1998   rogerd
 # IRSverh_00.4gl checked in to the r4_03_fix group. Work Request # 22281
 # rogerd, 09/29/98, CMS 22281, ITN #TQ98237-014;
 # Corrected a problem with the close function.  When a user does the F3 close,
 # the program prompts the user with "Close PO?" and a list of po's will be 
 # displayed. If a user flags the po as "N" (default value), then the po will not
 # close.  If the user goes thru and scans a unscanned pallet that was not scanned
 # the first time thru, then F3. the first pallets that were scanned are zerod
 # out.  Fixed the code in fun process_close to not update the irctd's if the 
 # po if flagged "N" not close.
 # 
 # 
 #    Rev 4.47.1.4   Mon Mar 30 23:08:32 CST 1998   darylc
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 19884
 # Initialised screen field - qty_claimed.
 # 
 #    Rev 4.47.1.3   Fri Jan 30 00:44:20 CST 1998   darylc
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 18963
 # Further fixes to the previous revision.
 # bkord_qty was being calculated incorrectly when multiple pallets were 
 # involved,
 # problem with handling of backord flag set on ipod reverting to the
 # system wide processing when changed on one line with more lines to be processed
 # 
 #    Rev 4.47.1.2   Sun Jan 18 18:00:32 CST 1998   fabletez
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 18963
 # Updated function input_irctd() by using m_scr_irctd_rec.qty_ord instead of
 # m_scr_irctd_rec.rct_qty to compute for the value of
 # m_orig_qty_arr[f_counter].qty.  This fixes the problem of not creating
 # ipod records for backorders.
 # 
 #    Rev 4.47.1.1   Thu Jan 15 18:12:46 CST 1998   fabletez
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 18960
 # Did a fix to keep program from crashing due to hardcoded date formats.
 # Used the functions YEAR, MONTH and DAY to validate code date.  Also used
 # December 31, 1899 as a check value for uninitialized date variables.
 # Also used variable m_code_date to hold the value of the code date entered 
 # by the user.  Using this field will keep m_scr_irctd_rec.code_date from
 # resetting back to its old value when we pass through the field lic_plt_id.
 # This will also solve the problem of getting out of IRRVH if product is
 # code-dated.
 # 
 #    Rev 4.47.1.0   Fri Dec  5 17:00:14 CST 1997   kevinc
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 18422
 # Modified FlowThru logic to calculate flowthru demand as follows:
 # IF demand has been FOMBed then flowthru demand = SUM(iftd.process_qty)
 # ELSE flowthru demand = ift.tot_demand_qty - ift.tot_recvd_qty.
 # 
 #    Rev 4.47   Thu Oct  9 16:28:56 CDT 1997   kevinc
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 17936
 # Changed cursor defination for zero-po-id SELECT to be an OUTER on the iftd  
 # table. This corrects a failure error caused by duplicate record insertion
 # for mandatory flowthru items.  Also put change to activate flowthru inventory
 # when hold-inven-pend-putaway flag is Yes AND auto-fomb is Yes AND pallet is
 # a flowthru pallet. (CMS 16948).
 # 
 #    Rev 4.46   Tue Oct  7 11:17:24 CDT 1997   prasadk
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 17882
 # The update for ipod is modified not to convert damage qty  into retail units
 # during verification process.
 # 
 #    Rev 4.45   Fri Oct  3 09:53:42 1997   stephenw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 17774
 # Changed run_system_cmd for putaway to place -o switch outside the quotes.
 # Having this inside was causing Informix to think that two seperate
 # parameters were being passed.
 # 
 #    Rev 4.44   Sun Sep 28 11:04:46 1997   stephenw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 17772
 # Changed to allow scanning of plates that have not been put away.  The operator
 # will be warned but can continue.
 # 
 #    Rev 4.43   Sat Sep 27 13:11:38 1997   stephenw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 17773
 # Added update to set irctd.rdst_id to 'V' after putaway is run.  Putaway
 # leaves that field as a 'D' to signal when it is finished, and this was
 # causing verification to think it had not scanned that pallet.
 # 
 #    Rev 4.42   Sat Sep 27 10:34:12 1997   stephenw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 17770
 # Changed to default dammaged qty to 0 when entering a new plate.  This was
 # defaulting to the previous dammaged qty.
 # 
 #    Rev 4.41   Thu Sep 25 17:12:18 CDT 1997   kevinc
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 17808
 # Correctly accumulated the ift.tot_recvd_qty before updating the ift record.
 # 
 #    Rev 4.40   Fri Sep 19 12:42:54 CDT 1997   kevinc
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 17668
 # When Updating/Inserting and ift record, always use "N" for Normal for the
 # ftac_id field. The previous default was "R" for Ration. Also, added logic
 # to evaluate the swhse.flow_auto_ship_flg before allowing the user the
 # option of initiating a FOMB. These changes affect FlowThru only.
 # 
 #    Rev 4.39   Wed Sep 17 09:49:26 CDT 1997   tomd
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 17591
 # Corrected how the tot avil qty on the ift was being updated.  It
 # is now using what the user enters. Also, fixed a problem that 
 # was caused by louisem who was fixing standards violations.
 # 
 #    Rev 4.38   Tue Sep  2 15:58:52 CDT 1997   louisem
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 16567
 # deleted unused variables
 # added key values to sqlcode error messages
 # 
 #    Rev 4.37   Tue Sep  2 15:53:24 CDT 1997   louisem
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 16567
 # added flight plan functionality
 # 
 #    Rev 4.36   Mon Aug 18 10:42:24 CDT 1997   kurth
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 17107
 # Added code to handle license plates that start with 0's. And not read the
 # last digit the check-digit.
 # 
 #    Rev 4.35   Fri Aug  8 18:40:04 CDT 1997   vics
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 15791
 # flowthru changes: put in additional code to insert the ift record if 
 # one does not exist already.
 # 
 #    Rev 4.34   Thu Aug  7 08:38:36 CDT 1997   prasadk
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 16840
 # No changes made. Verified the way program is currently working.
 # 
 #    Rev 4.33   Wed Jun 25 17:19:38 CDT 1997   kevinc
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 16428
 # Changed lkp_swhse() function to use f_dc_id in the function active_iinvd().
 # This fixed a problem with pending pallets going active before the RF work
 # was completed when the Hold Inventory Pending Putaway on SMWHA = Y.
 # 
 #    Rev 4.32   Mon Jun  2 10:12:24 CDT 1997   padmam
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 12395
 # Changed the mesg. # 1169 saying "Not putaway" to #1899 "Unavail for verify".
 # 
 #    Rev 4.31   Tue May  6 15:29:32 CDT 1997   bennief
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 15540
 # Added code which will change the displayed message to indicate the presence of 
 # an F3 flag.
 # 
 #    Rev 4.30   Fri May  2 09:45:02 CDT 1997   jamesw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 15478
 # Changed not to change receipt_user back to the user's ID when the re_scan
 # was aborted.
 # 
 #    Rev 4.29   Fri Apr 25 16:22:38 CDT 1997   bennief
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 14989
 # Added code to correct problem by adding code in the get_close_po().
 # 
 #    Rev 4.28   Tue Apr 22 10:38:32 CDT 1997   phillipm
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 13462
 # mpp_id is now initialized to null when generic license plate
 # added to the system.
 # 
 #    Rev 4.27   Fri Apr 18 18:14:32 CDT 1997   lauras
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 14932
 # WR# 14932 - Expansion initializations.
 # 
 #    Rev 4.26   Fri Apr 18 15:33:04 CDT 1997   alanc
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 13373
 # Put in CMS 13373 and CMS 14199 into code.
 # 
 #    Rev 4.25   Thu Apr 17 12:50:12 CDT 1997   rogerd
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 14932
 # rogerd, 04/17/97 Made changes to accomodate the expansion changes.  Also, corrected a 
 # bug where the lic_plt_id was being verified with the snrng ranges.
 # 
 #    Rev 4.24   Fri Apr 11 17:16:00 CDT 1997   jameyr
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 14932
 # Future dsc_dev CR#14932 jameyr
 # Comments - Changed get_number to get_lic_plt_id and modified the check_snrng
 # function for the expansion project.
 # 
 #    Rev 4.23   Fri Apr 11 15:11:38 CDT 1997   rogerd
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 14932
 # rogerd, cms 14932, 04/11/97,
 # Made more changes due to expansion project.
 # 
 # 
 #    Rev 4.22   Tue Apr  1 10:35:18 CST 1997   rogerd
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 14932
 # Rogerd, 04/01/97, cms 14932
 # Made changes due to the expansion project.
 # 
 # 
 #    Rev 4.21   Tue Mar 25 16:58:00 CST 1997   kevinc
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 14233
 # Added iftd.load_close_flg <> "Y" to the WHERE clause when SUMMING or
 # SELECTING on iftd.process_qty.
 # 
 #    Rev 4.20   Fri Feb 28 13:36:16 CST 1997   pata
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 14233
 # Added SELECT unit_ship_cse statement in Function delete_zero_flow
 # and included ship_cse = ship_cse in the where clause of select 
 # ift_ft_id.
 # 
 #    Rev 4.19   Mon Feb 17 14:54:50 CST 1997   jamesw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 11187
 # Changed to keep the most current iinvd when grouping the pallets.
 # 
 #    Rev 4.18   Mon Feb 17 12:46:38 CST 1997   jamesw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 12539
 # Changed to close po when the appt whse id is different from irctd whse id.
 # 
 #    Rev 4.17   Mon Feb 17 10:10:06 CST 1997   claytonw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 14267
 # wr# 14267 changed the I1540 err msg to only display if there are unverfied pal     
 # pallets.
 # 
 #    Rev 4.16   Fri Feb 14 15:07:22 CST 1997   nolat
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 14530
 # Added SQL error checking.
 # 
 #    Rev 4.15   Wed Feb 12 17:16:04 CST 1997   tomd
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 14269
 # Modified program to call extract only if it is a flowthru
 # product.
 # 
 #    Rev 4.14   Tue Feb 11 14:50:10 CST 1997   nolat
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 14466
 # Modified the program to access the ptwy_anch and flhru_anch from the iplas
 # table.
 # 
 #    Rev 4.13   Fri Jan 24 13:06:16 CST 1997   claytonw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 14267
 # wr 14267 the m_po_arr_form was missing.
 # 
 #    Rev 4.12   Fri Jan 17 14:54:30 CST 1997   claytonw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 12617
 # retro fitted ver 1.42.1.11 for cms 12617 from the present machine.
 # 
 #    Rev 4.11   Fri Jan 17 11:02:38 CST 1997   claytonw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 12704
 # retro fitted ver 1.42.1.10 for cms 12704 from the present machine.
 # 
 #    Rev 4.10   Thu Jan 16 16:36:30 CST 1997   jamesw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 13858
 # Changed the codes related to group_pallets back to the codes before 
 # retrofix from PRESENT.
 # 
 #    Rev 4.9   Tue Jan 14 14:10:32 CST 1997   stephenw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 12568
 # Retrofitted 3.x changes.  Rev 1.42.1.9
 # 
 #    Rev 4.8   Tue Jan 14 14:01:10 CST 1997   stephenw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 12386
 # Retrofitted 3.x changes.  Rev 1.42.1.8.
 # 
 #    Rev 4.7   Tue Jan 14 13:24:16 CST 1997   stephenw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 11187
 # Retrofitted 3.x changes.  Rev 1.42.1.7.
 # 
 #    Rev 4.6   Tue Jan 14 09:42:46 CST 1997   stephenw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 12252
 # Retrofitted 3.x changes.  Rev 1.42.1.6.
 # 
 #    Rev 4.5   Mon Jan 13 14:57:48 CST 1997   stephenw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 11654
 # Retrofitted 3.x changes.  Rev 1.42.1.5.
 # 
 #    Rev 4.4   Mon Jan 13 14:09:14 CST 1997   stephenw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 12455
 # Retrofitted 3.x changes.  Rev 1.42.1.4.
 # 
 #    Rev 4.3   Mon Jan 13 13:20:46 CST 1997   stephenw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 12539
 # Retrofitted 3.x changes. Rev 1.42.1.3
 # 
 #    Rev 4.2   Fri Dec 20 16:10:24 CST 1996   jamesw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 13858
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 13858
 # Combined pallets in a forward reserve location.
 # 
 #    Rev 4.1   Tue Oct 22 16:24:56 CDT 1996   tomd
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 13291
 # Added flowthru / autofomb to this program. See specs.
 # Project #76.
 # 
 #    Rev 4.0   Fri Sep 27 10:02:48 CDT 1996   jamesw
 # IRSverh_00.4gl checked in to the futrdev group. Work Request # 12959
 # DEV CR#12959-Added extract_qty.
 # 
 #    Rev 1.44   Sat Sep 14 15:56:08 CDT 1996   rogerz
 # Promoted dev 1.42.1.2.1.1 to futrdev 
 # rogerz -  as part of reorg process
 # 
 #    Rev 1.42.1.11   Tue Sep 24 10:15:12 1996   stephenw
 # IRSverh_00.4gl checked in to the presfix group. Work Request # 12617
 # Changed close flag to default to 'N' and close list box to display
 # even if all plates have been scanned.
 # 
 #    Rev 1.42.1.10   Mon Sep 23 16:20:06 1996   stephenw
 # IRSverh_00.4gl checked in to the presfix group. Work Request # 12704
 # Corrected bad update of rdst_id.
 # 
 #    Rev 1.42.1.9   Tue Sep 10 10:28:44 CDT 1996   stevenw2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 12568
 # Switched order of vars in execute for p_upd_irctd to correct.
 # 
 #    Rev 1.42.1.8   Tue Sep 10 10:22:24 CDT 1996   stevenw2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 11386
 # Removed extra table iaptd from c_po_cur.
 # 
 #    Rev 1.42.1.7   Thu Sep  5 14:24:44 CDT 1996   stevenw2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 11187
 # Copied IRRVA changes for combining sel locs.
 # 
 #    Rev 1.42.1.6   Wed Sep  4 15:24:06 CDT 1996   stevenw2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 12252
 # Added checks for putaway's having been run and the quantity's having been
 # changed before calling space remaining.
 # 
 #    Rev 1.42.1.5   Wed Sep  4 13:32:22 CDT 1996   stevenw2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 11654
 # Added transaction logging and rollbacks for errors.  Also added
 # set lock mode to wait 30.
 # 
 #    Rev 1.42.1.4   Wed Sep  4 11:06:52 CDT 1996   stevenw2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 12455
 # Added check to prevent scanning until putaway complete.
 # 
 #    Rev 1.42.1.3   Fri Aug 23 16:36:26 CDT 1996   stevenw2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 12539
 # Added multi-warehouse functionality on single or multiple pos.
 # 
 #    Rev 1.42.1.2.1.1   Thu Sep 12 16:45:44 CDT 1996   jamesw
 # IRSverh_00.4gl checked in to the dev group. Work Request # 12451
 # DEV CR#12451-Changed container types from 5 to 100.
 # 
 #    Rev 1.42.1.2.1.0   Wed Sep  4 15:47:34 CDT 1996   johnp
 # IRSverh_00.4gl checked in to the dev group. Work Request # 12451
 # Work Request 12451--added code to process chep this includes input and
 # I/O logic plus error checking
 # 
 #    Rev 1.42.1.2   Tue Aug 20 08:46:50 CDT 1996   stevenw2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 12247
 # Was trying to distinguish between case and shipping units when always
 # dealung with retail units.  Claims box now appears only when qty changed.
 # 
 #    Rev 1.42.1.1   Thu Aug 15 09:52:28 CDT 1996   clayw2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 12446
 # wr#12446 removed the capablities of hitting delete in the claim code screen.
 # You must always enter a valid entry to continue the close of the P.O.
 # 
 #    Rev 1.42.1.0   Thu Aug  1 13:39:22 CDT 1996   clayw2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 10855
 # WR#10855 if the system goes down you are able to go back thru verify
 # but only the original user who scanned the license plate the first time and
 # make the changes desired.
 # 
 #    Rev 1.42   Thu Jul 11 09:10:28 CDT 1996   jimd
 # Promoted qa 1.41.1.0 to accept
 # jimd - 11Jul96 - Tracking #: 11863
 # 
 #    Rev 1.41.1.0   Tue Jul  9 13:38:30 CDT 1996   stevenw2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 11863
 # Claims box will appear only when data is changed after data entry.
 # 
 #    Rev 1.41   Tue Jul  2 17:47:06 CDT 1996   beckye
 # Promoted qa 1.40.1.1 to accept
 # beckye - 02Jul96 - Tracking #: 11863
 # 
 #    Rev 1.40.1.1   Tue Jul  2 17:05:22 CDT 1996   stevenw2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 11863
 # Clears mpp_othd_id and sets status to 'PU' when qty changed.
 # Recalcs space remaining when required.
 # 
 #    Rev 1.40.1.0   Tue Jul  2 09:05:42 1996   stevenc2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 11222
 # 07/02/1996 s.c: work request #11222. Added a call to the function:
 # open_error_file() which makes sure that the error file has the correct 
 # permissions.
 # 
 #    Rev 1.40   Mon Jul  1 15:22:06 CDT 1996   beckye
 # Promoted qa 1.37.1.2 to accept
 # beckye - 01Jul96 - Tracking #: 11494 
 # 
 #    Rev 1.37.1.2   Mon Jul  1 14:00:16 CDT 1996   stevenw2
 # IRSverh_00.4gl checked in to the qa group. Work Request # 11494
 # Merges done.
 # WR #11494
 # 
 #    Rev 1.39.1.0   Mon Jul  1 10:56:08 1996   stephenw
 # IRSverh_00.4gl checked in to the acceptfix group.
 # Merge of changes from 1.37.1.0.  All merges up to date at this point.
 # WR #11494
 # 
 #    Rev 1.37.1.0   Fri Jun 21 15:29:08 CDT 1996   clayw2
 # IRSverh_00.4gl checked in to the qa group.
 # wr#11494 modified for mixing code dates when putaway to assigned = Y
 # 
 #    Rev 1.39   Tue Jun 25 14:23:14 CDT 1996   beckye
 # Promoted acceptfix 1.38.1.0 to accept
 # beckye - 25Jun96 - Tracking #: 11509 
 # 
 #    Rev 1.38.1.0   Tue Jun 25 14:01:02 1996   stephenw
 # IRSverh_00.4gl checked in to the acceptfix group.
 # Merge of 1.37.1.1 & 1.37.2.0.  *** 1.37.1.0 IS NOT INCLUDED ***
 # WR #11509
 # 
 #    Rev 1.37.1.1   Mon Jun 24 16:41:02 CDT 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#11509-Changed to keep the default value of urcp_id from swhse tadefault value, "C", from swh
 # se talbe when the 
 # order and received quantites in full cases.  If repack factor is one, set
 # urcp_id to C when urcp_id is C on swhse.
 # 
 #    Rev 1.38   Mon Jun 24 10:59:36 CDT 1996   beckye
 # Promoted acceptfix 1.37.2.0 to accept
 # beckye - 24Jun96 - Tracking #: 11863 
 # 
 #    Rev 1.37.2.0   Fri Jun 21 16:30:46 1996   stephenw
 # IRSverh_00.4gl checked in to the acceptfix group.
 # Added box to remove pallet from mpp at user request if qty changed.
 # WR #11863
 # 
 #    Rev 1.37   Wed Jun 12 14:02:38 CDT 1996   beckye
 # Promoted qa 1.36.1.0 to accept
 # beckye - 12Jun96 - Tracking #: 11509 
 # 
 #    Rev 1.36.1.0   Wed Jun 12 13:56:32 CDT 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#11509-Changed to use both ipod order quantity and receiving quantity.
 # 
 #    Rev 1.36   Tue Jun 11 09:40:46 CDT 1996   beckye
 # Promoted qa 1.35.1.1 to accept
 # beckye - 11Jun96 - Tracking #: 11679 11709 
 # 
 #    Rev 1.35.1.1   Mon Jun 10 16:36:42 CDT 1996   stevenw2
 # IRSverh_00.4gl checked in to the qa group.
 # Changed A forms to B.
 # 
 #    Rev 1.35.1.0   Mon Jun 10 15:47:42 CDT 1996   stevenw2
 # IRSverh_00.4gl checked in to the qa group.
 # Added functionality to verify multiple POs at one time.
 # Program will now close associated ASN lines.
 # WR #11679
 # Added po_id to call for lkp_irct().
 # WR #11709
 # 
 #    Rev 1.35   Wed May 15 09:43:00 CDT 1996   beckye
 # Promoted qa 1.34.1.0 to accept
 # beckye - 15May96 - Tracking #: 11509 
 # 
 #    Rev 1.34.1.0   Wed May  8 11:33:44 CDT 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#11509-Changed to use the default value of urcp on swhse table and
 #    changed to calcualte the remainder by using rct_qty instead of ipod.qty_ord.
 # 
 #    Rev 1.34   Thu May  2 13:09:18 CDT 1996   beckye
 # Promoted qa 1.28.1.2 to accept
 # beckye - 02May96 - Tracking #: 11197 
 # 
 #    Rev 1.28.1.2   Thu May  2 11:25:28 CDT 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#11197-Checked the merge between Accept 1.33 and QA 1.28.1.1.
 # 
 #    Rev 1.28.1.1   Wed May  1 14:22:24 CDT 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#11197-Added to print out the driver document.
 # 
 #    Rev 1.28.1.0   Mon Apr 29 12:40:40 CDT 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#11410-Merged the fixed for Version 3.0 to QA.
 # 
 #    Rev 1.32.1.0   Tue Apr  9 16:34:12 1996   jamesw
 # IRSverh_00.4gl checked in to the acceptfix group.
 # Accept CR#11188-Changed to populate from_loc_id, job codes on workunit.
 # 
 #    Rev 1.32   Tue Apr  9 09:57:24 CDT 1996   beckye
 # Promoted acceptfix 1.31.1.0 to accept
 # beckye - 09Apr96 - Tracking #: 11188 
 # 
 #    Rev 1.31.1.0   Mon Apr  8 17:27:56 1996   jamesw
 # IRSverh_00.4gl checked in to the acceptfix group.
 # Accept CR#11188-Changed to show the claim screen once per procudt if short/over.
 # 	Do not accept 0 quantity for a new license plate.
 # 
 #    Rev 1.31   Fri Apr  5 09:30:00 CST 1996   beckye
 # Promoted acceptfix 1.30.1.0 to accept
 # beckye - 05Apr96 - Tracking #: 11188 
 # 
 #    Rev 1.30.1.0   Thu Apr  4 17:25:08 1996   jamesw
 # IRSverh_00.4gl checked in to the acceptfix group.
 # Accept CR#11188-Changed to check the ptwy_at_rc flag and closed the ipod row
 #       for any detail lines with rdst_id = "P".
 # 
 #    Rev 1.30   Wed Apr  3 16:43:18 CST 1996   beckye
 # Promoted acceptfix 1.29.1.0 to accept
 # beckye - 03Apr96 - Tracking #: 9481 
 # 
 #    Rev 1.29.1.0   Wed Apr  3 10:48:02 1996   jamesw
 # IRSverh_00.4gl checked in to the acceptfix group.
 # Accept CR#9481-Changed to close the ipod even if the rdsd_id = "E".
 # 
 #    Rev 1.29   Fri Mar 29 16:46:46 CST 1996   beckye
 # Promoted acceptfix 1.28.2.0 to accept
 # beckye - 29Mar96 - Tracking #: 9481 
 # 
 #    Rev 1.28.2.0   Fri Mar 29 15:51:12 1996   jamesw
 # IRSverh_00.4gl checked in to the acceptfix group.
 # Accept CR#9481-Changed to close the individual po detail lines and fixed 
 #     the urcp_id.
 # 
 #    Rev 1.28   Tue Mar 19 14:36:34 CST 1996   beckye
 # Promoted qa 1.27.1.0 to accept
 # beckye - 19Mar96 - Tracking #: 10892 10921 
 # 
 #    Rev 1.27.1.0   Fri Mar 15 19:57:42 CST 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#10892-Restored to zero out the un-verified pallets and run putaway
 #   job for ptwy_at_rc = "N".
 # 
 #    Rev 1.27   Mon Mar  4 16:32:16 CST 1996   jimd
 # Promoted qa 1.26.1.0 to accept
 # jimd - 04Mar96 - Tracking #: 10681 
 # 
 #    Rev 1.26.1.0   Mon Feb 26 16:44:18 CST 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#10681-Changed to set rdst_id to "P" if driver putaway.  an irctl was
 # created if receiving 0 quantity.
 # 
 #    Rev 1.26   Mon Feb  5 13:59:32 CST 1996   jimd
 # Promoted qa 1.25.1.0 to accept
 # jimd - 05Feb96 - Tracking #: 9881 
 # 
 #    Rev 1.25.1.0   Mon Feb  5 11:11:00 CST 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#9881-Set irct.rsta_id = "A" regardless the status of ipod after closing.
 # 
 #    Rev 1.25   Fri Feb  2 10:37:04 CST 1996   jimd
 # Promoted qa 1.24.1.0 to accept
 # jimd - 02Feb96 - Tracking #: 9865 
 # 
 #    Rev 1.24.1.0   Thu Feb  1 13:10:16 CST 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#9881-Do not close an appointment if any detail line is still open.
 # 
 #    Rev 1.24   Fri Jan 26 17:22:16 CST 1996   beckye
 # Promoted qa 1.23.1.1 to accept
 # beckye - 26Jan96 - Tracking #: 10224 10305 
 # 
 #    Rev 1.23.1.1   Fri Jan 26 17:04:42 CST 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#10305-Changed to hold inventory if hld_invt_pend_rcon = Y and wust_id 
 #      not equal "AVL".
 # 
 #    Rev 1.23.1.0   Tue Jan 23 11:49:44 CST 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#10224-Changed to comment out F1 function when entering catch weight.
 # 
 #    Rev 1.23   Thu Jan 18 08:33:02 CST 1996   jimd
 # Promoted qa 1.22.1.0 to accept
 # jimd - 18Jan96 - Tracking #: 8059 
 # 
 #    Rev 1.22.1.0   Wed Jan 17 15:53:08 CST 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#8059-Changed to check the whole PO for unscaned or no code date pallets
 #            before closing the PO.
 # 
 #    Rev 1.22   Fri Jan 12 12:43:20 CST 1996   beckye
 # Promoted qa 1.21.1.1 to accept
 # beckye - 12Jan96 - Tracking #: 10083 
 # 
 #    Rev 1.21.1.1   Thu Jan 11 11:25:52 CST 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#9677-Fixed to check code date AFTER INPUT.
 # 
 #    Rev 1.21.1.0   Wed Jan 10 12:04:36 CST 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#10083-Added whse_id to call update_wgt().
 # 
 #    Rev 1.21   Wed Jan 10 10:34:30 CST 1996   jimd
 # Promoted qa 1.20.1.0 to accept
 # jimd - 10Jan96 - Tracking #: 8059 
 # 
 #    Rev 1.20.1.0   Tue Jan  9 13:22:38 CST 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#8059-Changed to check the code dates on all license plates.
 # 
 #    Rev 1.20   Fri Jan  5 09:30:16 CST 1996   jimd
 # Promoted qa 1.19.1.0 to accept
 # jimd - 05Jan96 - Tracking #: 8059 
 # 
 #    Rev 1.19.1.0   Thu Jan  4 11:37:36 CST 1996   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#8059-Fixed the code date problems.
 #    CR#9713, 9846-Fixed the wrong record name, f_irctd to m_ret_irctd.
 # 
 #    Rev 1.19   Wed Dec  6 11:22:28 CST 1995   jimd
 # Promoted qa 1.18.4.0 to accept
 # jimd - 06Dec95 - Tracking #: 9748 
 # 
 #    Rev 1.18.4.0   Fri Dec  1 16:31:58 CST 1995   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#9748-Changed to set rdst_id to "D".
 # 
 #    Rev 1.18   Fri Oct  6 17:25:56 CDT 1995   beckye
 # Promoted acceptfix 1.17.1.0 to accept
 # beckye - 06Oct95 - Tracking #: 9015 
 # 
 #    Rev 1.17.1.0   Fri Oct  6 17:14:40 1995   jamesw
 # Aceept CR#-Changed to update the catch weight when the product is a 
 #        catch weight control product.
 # 
 #    Rev 1.17   Fri Sep  8 10:52:30 CDT 1995   beckye
 # Promoted qa 1.16.1.0 to accept
 # beckye - 08Sep95 - Tracking #: 7938
 # 
 #    Rev 1.16.1.0   Thu Aug  3 16:43:20 CDT 1995   chrisc2
 # IRSverh_00.4gl checked in to the qa group.
 # CR7939 Umbrella Warehouse Logic.
 # 
 #    Rev 1.16   Fri Jul 28 09:46:32 CDT 1995   beckye
 # Promoted qa 1.15.1.0 to accept
 # beckye - 28Jul95 - Tracking #: 7139
 # 
 #    Rev 1.15.1.0   Tue Jul 25 09:00:30 CDT 1995   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#7139-Fixed to set the pod to 'Close' status when one of the pallets
 # for this pod received 0 quantity.
 # 
 #    Rev 1.15   Mon Jun 19 10:21:12 CDT 1995   beckye
 # Promoted qa 1.14.1.1 to accept
 # beckye - 19Jun95 - Tracking #: 7357
 # 
 #    Rev 1.14.1.1   Fri Jun  9 11:44:20 CDT 1995   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#7139, 7357-When the quantity on a pellet is changed to zero, call
 # add_delete_iinvd() to hangle the related tables, iplas, iinvd and iloc.
 # 	When combining a group of pallets, select the license plate with
 # receiving quantities > 0.
 # 	The m_catch_wgt_req flag is reset to either "Y" or "N" every time.
 # 
 #    Rev 1.14.1.0   Thu Jun  8 16:05:14 CDT 1995   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#7357-Delete irctd and irctl when the quantity is 0.
 # 
 #    Rev 1.14   Thu May 25 09:32:18 CDT 1995   beckye
 # Promoted qa 1.13.1.0 to accept
 # beckye - 25May95 - Tracking #: 7170
 # 
 #    Rev 1.13.1.0   Thu May 25 09:11:02 CDT 1995   jamesw2
 # IRSverh_00.4gl checked in to the qa group.
 # QA CR#7170-Checked the license plate id is less than or equal to the current	
 # LP number on SMNRA.
 # 
 #    Rev 1.13   Wed May 17 14:43:02 CDT 1995   jimd
 # Promoted qa 1.12.1.0 to accept
 # jimd - 17May95 - Tracking #: 7095
 # 
 #    Rev 1.12.1.0   Fri May 12 16:16:56 CDT 1995   patg2
 # IRSverh_00.4gl checked in to the qa group.
 # Base CR#7095-correct select stmt in process_close() re f_pod_cnt
 # 
 #    Rev 1.12   Fri May 12 11:40:58 CDT 1995   loetac
 # Promoted qa 1.11.1.0 to accept
 # loetac - 12May95 - Tracking #: 7040
 # 
 #    Rev 1.11.1.0   Wed May 10 17:57:36 CDT 1995   patg2
 # IRSverh_00.4gl checked in to the qa group.
 # Base CR#7040-initialize prod, product detail fields upon error in
 #              proc_po_prod() and proc_prod_prdd() functions
 #             -change proc_po_prod() to efficiently handle multiple prod/po
 #             -add check of null in iaptd.po_closed_flg also
 # 
 #    Rev 1.11   Fri May  5 13:51:18 CDT 1995   loetac
 # Promoted qa 1.10.2.4 to accept
 # loetac - 05May95 - Tracking #: 6823
 # 
 #    Rev 1.10.2.4   Thu May  4 08:39:04 CDT 1995   patg2
 # IRSverh_00.4gl checked in to the qa group.
 # Base CR#6823-more modularizations (truly sorry):
 #             -added proc_po_prod() and proc_prod_prdd() to take care
 #              of product and product detail retrieval.
 #             -added check_snrng(); change message S0064; this changes
 #              the logic re 9999999 max check.
 #             -cleanup logic in process_close().
 #             -add update of iapt.closed_flg.  
 # 
 #    Rev 1.10.2.3   Fri Apr 14 17:29:20 CDT 1995   patg2
 # IRSverh_00.4gl checked in to the qa group.
 # Base CR#5548-modularize and re-arranged functions (sorry)
 #             -clean up use of m_urcp_id throughout program
 # 
 #    Rev 1.10.2.2   Thu Apr  6 15:16:28 CDT 1995   patg2
 # IRSverh_00.4gl checked in to the qa group.
 # Base CR#6698-in group_pallets, exclude iinvd in Pending or Held status
 # 
 #    Rev 1.10.2.1   Fri Mar 31 08:21:32 CST 1995   patg2
 # IRSverh_00.4gl checked in to the qa group.
 # Base CR#6569-add logic in process_aothd() setting var to "PUT"
 # 
 #    Rev 1.10.2.0   Wed Mar 22 16:52:14 CST 1995   patg2
 # IRSverh_00.4gl checked in to the qa group.
 # Base CR#5548-in process_close() clean up population of irctl 
 #             -in input_irctl(), fix cursor movement
 #             -check lic field max against 999999
 #             -check for negative numbers (msg I1253)
 #             -use ipod.pwy_dte_ctl
 #             -add update_wgt()
 # 
 #    Rev 1.10   Wed Feb 15 12:58:52 CST 1995   loetac
 # Promoted qa 1.8.1.1 to accept
 # loetac - 15Feb95 - Tracking #: 5317
 # 
 #    Rev 1.8.1.1   Thu Feb  9 15:42:36 CST 1995   patg
 # Base CR#5317-merge into qa version
 # 
 #    Rev 1.8.1.0   Tue Jan  3 08:54:22 CST 1995   patg
 # Base CR#5317-do not allow qty modification/pallet addition if Whse Transfer
 # 
 #    Rev 1.8   Wed Dec 21 09:04:02 1994   davek
 # Promoted qa 1.7.1.0 to accept
 # davek - 21Dec94 - Tracking #: 5263
 # 
 #    Rev 1.7.1.0   Tue Dec 20 16:15:32 CST 1994   patg2
 # CR#5263-add real "V" count on pallets in process_zero_out().
 # 
 #    Rev 1.7   Tue Dec 20 11:24:56 CST 1994   loetac
 # Promoted qa 1.6.1.0 to accept
 # loetac - 20Dec94 - Tracking #: 5166 5174
 # 
 #    Rev 1.6.1.0   Tue Dec 20 10:51:22 CST 1994   patg2
 # CR#5166-major blood transfusion; see Change Request for details - too
 # many of which to mention. have fun!
 # 
 #    Rev 1.6   Fri Dec  9 09:45:30 CST 1994   loetac
 # Promoted qa 1.5.1.0 to accept
 # loetac - 09Dec94 - Tracking #: 5157
 # 
 #    Rev 1.5.1.0   Thu Dec  8 20:42:54 CST 1994   patg2
 # CR#5157-fix CR#5106/5904 regarding 'zero out' window
 # CR#5144-add logic to check for null cse_unit
 # 
 #    Rev 1.5   Thu Dec  8 10:37:16 CST 1994   loetac
 # Promoted qa 1.4.1.0 to accpet
 # loetac - 08Dec94 - Tracking #: 5106
 # 
 #    Rev 1.4.1.0   Thu Dec  8 09:10:58 CST 1994   patg2
 # CR#5106-In process_close(), do not delete if only 1 pallet.
 # 
 #    Rev 1.4   Tue Dec  6 15:34:58 CST 1994   loetac
 # Promoted qa  to accpet
 # loetac - 06Dec94 - Tracking #: 5111
 # 
 #    Rev 1.3.1.0   Tue Dec  6 10:49:52 CST 1994   patg2
 # CR#5111-apply changes from CR#5094 re pallet count in process_close();
 # 
 #    Rev 1.3   Mon Dec  5 15:37:04 CST 1994   loetac
 # Promoted qa  to accpet
 # loetac - 05Dec94 - Tracking #: 5094
 # 
 #    Rev 1.2.1.0   Mon Dec  5 15:05:14 CST 1994   patg2
 # CR#5094-check number of pallets processed in process_close();
 # display dc/whse before input; clear rcpt_id after each pallet process EXCEPT
 # if new pallet; make urcp_id field modifiable. Rework#3.
 # 
 #    Rev 1.2   Wed Nov 30 08:46:48 1994   sharonb
 # Promoted qa 1.1.1.1 to base
 # sharonb - 30Nov94 - Tracking #: 5023
 # 
 #    Rev 1.1.1.1   Wed Nov 30 07:15:52 CST 1994   patg2
 # CR#5023-pass "-a" parameter to IMPTW; take off logic checking qty in
 # input_irctl(); move anchor check after field checks. Rework#2.
 # 
 #    Rev 1.1.1.0   Wed Nov 23 13:52:04 CST 1994   patg2
 # Rework#1-correct sel_po() parameters and display portion.
 # 
 #    Rev 1.1   Mon Nov 21 16:18:50 1994   sharonb
 # Promoted qa 1.0 to base
 # sharonb - 21Nov94 - Tracking #: 4958 4958 4958 4958 4958 4958 4958
 # 
 #    Rev 1.0   Fri Nov 18 15:23:16 CST 1994   patg
 # Initial revision.
#--------------------------------------------------------------------------
{SCCS
 "@(#)$Header:   /exe/pvcs/inv/ictl/IRSverh_00.4gv   5.137.1.34   18 Jan 2023 16:52:00   bgomez  $"
~SCCS}
#--------------------------------------------------------------------------
{~MAINT
	-----------------------------------------------------------------------
	SYSTEM : Dallas Systems
	PROGRAM: IRSverh_00.4gl
	JOB    : Allow RF Verification 
	VERSION: 1.0
	-----------------------------------------------------------------------
	LAST UPDATED:
	20 Oct94  Pat Garcia	Created program.
	-----------------------------------------------------------------------
~MAINT}
{~MAN
	-----------------------------------------------------------------------
	This transaction allows Verification to be done on the dock with a hand
    held unit, after full screen Data Entry (IRRPA) is completed. Full
    screen Data Entry will produce labels that will be used to complete RF 
    Verification.  The license plate id on each label will be scanned/keyed
    and then the receiving clerk can verify the pallet.  It is important to 
    have this screen function/flow similarly to the RF Receiving.
	-----------------------------------------------------------------------
~MAN}
{~TECH
	-----------------------------------------------------------------------
	INPUTS   : Scan/Key-in license plate to be verified. 
	PROCESSES: Update irctd, aothd ipod and close po details. 
	OUTPUTS  : Create irctl (receipt logs).
	-----------------------------------------------------------------------
~TECH}

{*****************************************************************************}
SCHEMA exceed #


GLOBALS "/exe_dev4/sys/glob/SGLglobs00.4gl"

DEFINE m_scr_irctd_rec RECORD   				#-- form *0.per
	dc_id				 LIKE iapt.dc_id, 
	whse_id				 LIKE iapt.whse_id, 
	rcv_whse_id          LIKE iapt.whse_id, 
	appt_id				 LIKE iapt.appt_id, 
	rcpt_id		 		 LIKE irctd.rcpt_id,
	barcode				 CHAR(1),
	lic_plt_id			 LIKE irctd.lic_plt_id,
	repeat				 CHAR(1),
	upc_id               LIKE iupcd.upc_id,
	prod_id				 LIKE iprdd.prod_id, 
	prdd_id				 LIKE iprdd.prdd_id, 
	sdesc                LIKE iprod.description,
	unit_ship_cse		 LIKE iprdd.unit_ship_cse,
	prod_sz				 LIKE iprdd.prod_sz,
 	lot_no  			 LIKE irctd.lot_no,
	urcp_id				 LIKE swhse.urcp_id, 
	qty_ord				 LIKE ipod.qty_ord, 
	rct_qty				 LIKE irctd.rct_qty,
	flowthru_dmd   		 INTEGER,
	tot_damage	  		 LIKE ipod.qty_damaged,
	qty_damaged	   		 LIKE ipod.qty_damaged,
	inner_pack_unit		 LIKE iprdd.inner_pack_unit,
	stor_ti				 LIKE irctd.stor_ti, 
	stor_hi				 LIKE irctd.stor_hi,
	code_date			 LIKE irctd.code_date, 
	loc_id		 		 LIKE iplas.loc_id,
	totr		   		 INTEGER,
	po_id		  		 LIKE irctd.po_id,
	pod_id		  		 LIKE irctd.pod_id,
	qc_req               LIKE ipod.qc_req 
END RECORD



DEFINE m_scr_irctd_null RECORD  
	dc_id				 LIKE iapt.dc_id, 
	whse_id				 LIKE iapt.whse_id, 
	rcv_whse_id          LIKE iapt.whse_id, 
	appt_id				 LIKE iapt.appt_id, 
	rcpt_id		 		 LIKE irctd.rcpt_id,
	barcode				 CHAR(1),
	lic_plt_id			 LIKE irctd.lic_plt_id,
	repeat				 CHAR(1),
	upc_id               LIKE iupcd.upc_id,
	prod_id				 LIKE iprdd.prod_id, 
	prdd_id				 LIKE iprdd.prdd_id, 
	sdesc                LIKE iprod.description,
	unit_ship_cse		 LIKE iprdd.unit_ship_cse,
	prod_sz				 LIKE iprdd.prod_sz,
 	lot_no  			 LIKE irctd.lot_no,
	urcp_id				 LIKE swhse.urcp_id, 
	qty_ord				 LIKE ipod.qty_ord, 
	rct_qty				 LIKE irctd.rct_qty,
	flowthru_dmd   		 INTEGER,
	tot_damage	  		 LIKE ipod.qty_damaged,
	qty_damaged	   		 LIKE ipod.qty_damaged,
	inner_pack_unit		 LIKE iprdd.inner_pack_unit,
	stor_ti				 LIKE irctd.stor_ti, 
	stor_hi				 LIKE irctd.stor_hi,
	code_date			 LIKE irctd.code_date, 
	loc_id		 		 LIKE iplas.loc_id,
	totr		   		 INTEGER,
	po_id		  		 LIKE irctd.po_id,
	pod_id		  		 LIKE irctd.pod_id,
	qc_req               LIKE ipod.qc_req 
END RECORD

DEFINE m_scr_irctl_rec RECORD   				#-- form *1.per
	dc_id                 LIKE iapt.dc_id, 
	whse_id               LIKE iapt.whse_id, 
	appt_id               LIKE iapt.appt_id, 
	po_id                 LIKE irctd.po_id, 
	rcpt_id               LIKE irctd.rcpt_id,
	upc_id                LIKE iupcd.upc_id,
	prod_id               LIKE iprdd.prod_id, 
	prdd_id               LIKE iprdd.prdd_id, 
	sdesc                 LIKE iprod.description,
	qty_ord               LIKE ipod.qty_ord, 
	urcp_id               LIKE swhse.urcp_id, 
	rct_qty               LIKE irctd.rct_qty,
	qty_damaged           LIKE ipod.qty_damaged,
	bkord_allow           LIKE ipod.bkord_allow, 
	catch_wgt             LIKE irctd.catch_wgt, 
	qty_claimed           LIKE ipod.qty_claimed, 
	iclcd_user_val        LIKE iclcd.clcd_id
END RECORD

DEFINE m_scr_irctl_null RECORD  
	dc_id                 LIKE iapt.dc_id, 
	whse_id               LIKE iapt.whse_id, 
	appt_id               LIKE iapt.appt_id, 
	po_id                 LIKE irctd.po_id, 
	rcpt_id               LIKE irctd.rcpt_id,
	upc_id                LIKE iupcd.upc_id,
	prod_id               LIKE iprdd.prod_id, 
	prdd_id               LIKE iprdd.prdd_id, 
	sdesc                 LIKE iprod.description,
	qty_ord               LIKE ipod.qty_ord, 
	urcp_id               LIKE swhse.urcp_id, 
	rct_qty               LIKE irctd.rct_qty,
	qty_damaged           LIKE ipod.qty_damaged,
	bkord_allow           LIKE ipod.bkord_allow, 
	catch_wgt             LIKE irctd.catch_wgt, 
	qty_claimed           LIKE ipod.qty_claimed, 
	iclcd_user_val        LIKE iclcd.clcd_id
END RECORD

DEFINE m_scr_prod_sel_dtl ARRAY[501] OF RECORD  
	prod_id               LIKE iprod.prod_id,
	sdesc                 LIKE iprod.description 
END RECORD

DEFINE m_arr_prod_sel_dtl ARRAY[501] OF RECORD  
	po_id                 LIKE ipod.po_id,
	pod_id                LIKE ipod.pod_id,
	upc_id                LIKE iupcd.upc_id
END RECORD

DEFINE m_scr_prdd_sel_dtl ARRAY[501] OF RECORD  
	prdd_id               LIKE iprdd.prdd_id,
	stor_ti               LIKE iprdd.stor_ti,
	stor_hi               LIKE iprdd.stor_hi,
	unit_ship_cse         LIKE iprdd.unit_ship_cse,
	prod_sz               LIKE iprdd.prod_sz,
	cse_unit              LIKE iprdd.cse_unit
END RECORD

DEFINE m_scr_po_sel_dtl ARRAY[501] OF RECORD    #-- form *5.per
	po_id                 LIKE ipod.po_id,
	qty_ord               LIKE ipod.qty_ord,
	rct_qty               LIKE irctd.rct_qty
END RECORD

DEFINE m_arr_po_sel_dtl ARRAY[501] OF RECORD    
	pod_id                LIKE ipod.pod_id,
	po_type               LIKE ipo.po_type
END RECORD

DEFINE m_scr_iupcd_rec RECORD					#-- form *7.per
	upc_id                LIKE iupcd.upc_id,
	prod_id               LIKE iprod.prod_id,
	sdesc		          LIKE iprod.description 
END RECORD

DEFINE m_scr_pod_sel_dtl ARRAY[501] OF RECORD   #-- form *8.per
	prod_id               LIKE iprod.prod_id,
	sdesc                 LIKE iprod.description,
	po_id                 LIKE ipo.po_id
END RECORD

DEFINE m_scr_list_sel_dtl ARRAY[501] OF RECORD  #-- form *9.per
	prod_id               LIKE iprod.prod_id,
	sdesc                 LIKE iprod.description
END RECORD

DEFINE m_arr_list_sel_dtl ARRAY[501] OF RECORD  
	po_id                 LIKE ipod.po_id,
	pod_id                LIKE ipod.pod_id
END RECORD

DEFINE m_arr_po_close 	ARRAY[501] OF RECORD		
	close		   		  CHAR(1),
	po_id		   		  LIKE ipo.po_id,
	suspend		   		  CHAR(1),
	rcpt_id   		  	  LIKE irct.rcpt_id
END RECORD

DEFINE m_arr_del_zero 	ARRAY[501] OF RECORD  
	dc_id                 LIKE irctd.dc_id,
	whse_id               LIKE irctd.whse_id,
	po_id           	  LIKE ipod.po_id,
	pod_id          	  LIKE ipod.pod_id,
	lic_plt_id            LIKE irctd.lic_plt_id 
END RECORD

DEFINE m_int_po_close 	RECORD		
	close		   		  CHAR(1),
	po_id		   		  LIKE ipo.po_id,
	suspend		   		  CHAR(1),
	rcpt_id   		  	  LIKE irct.rcpt_id
END RECORD

DEFINE m_int_del_zero 	RECORD  
	dc_id                 LIKE irctd.dc_id,
	whse_id               LIKE irctd.whse_id,
	po_id           	  LIKE ipod.po_id,
	pod_id          	  LIKE ipod.pod_id,
	lic_plt_id            LIKE irctd.lic_plt_id 
END RECORD

DEFINE m_array	ARRAY[101] OF RECORD
	whse_id          	LIKE irctd.whse_id, 
	po_id				LIKE ipod.po_id,
	unver_cnt			INTEGER,
	close_flag			CHAR(1)
END RECORD

DEFINE m_array2	ARRAY[101] OF RECORD
	rcpt_id				LIKE irctd.rcpt_id,
	appt_id				LIKE irct.appt_id,
	# Added the following items to the record = PTR# 851
	po_id				LIKE ipod.po_id,
	close_flag			CHAR(1)
END RECORD

DEFINE m_orig_qty_arr ARRAY[501] OF RECORD
	po_id				LIKE ipo.po_id,
	prod_id				LIKE iprod.prod_id,
	rcpt_id				LIKE irct.rcpt_id,
	lic_plt_id			LIKE irctd.lic_plt_id,
	qty					LIKE ipod.qty_ord
END RECORD

 {chep array record}
DEFINE m_idtnd_arr	ARRAY[100] OF RECORD
	csvn_id				LIKE idtnd.csvn_id,
	cnty_id				LIKE idtnd.cnty_id,
	trans_qty			LIKE idtnd.trans_qty,
	exp_qty				LIKE idtnd.exp_qty
END RECORD

DEFINE m_idtnd_ndx		INTEGER
DEFINE m_icnty_max    	INTEGER		## = 100

 {chep input record, form *UD.per}
DEFINE m_cont_rec		RECORD
	csvn_id				LIKE idtnd.csvn_id,
	cnty_id				LIKE idtnd.cnty_id,
	trans_qty			LIKE idtnd.trans_qty,
	exp_qty				LIKE idtnd.exp_qty
END RECORD

 {chep null record}
DEFINE m_n_cont_rec		RECORD
	csvn_id				LIKE idtnd.csvn_id,
	cnty_id				LIKE idtnd.cnty_id,
	trans_qty			LIKE idtnd.trans_qty,
	exp_qty				LIKE idtnd.exp_qty
END RECORD

DEFINE m_am_instld		CHAR(1)
DEFINE m_prev	RECORD
	loc_id				LIKE aothd.to_loc_id,
	x_coord				LIKE aothd.to_x_coord,
	y_coord				LIKE aothd.to_z_coord,
	z_coord				LIKE aothd.to_y_coord,
	whse_id				LIKE aothd.phys_whse_id,
	create_dtim			LIKE aothd.create_dtim,
	appt_id				LIKE aothd.appt_id,
	trip_seq			LIKE aothd.trip_seq
END RECORD

DEFINE m_unld_chck RECORD
	combined			CHAR(1),
	rf_flg				CHAR(1)
END RECORD

DEFINE m_dflt_vend RECORD
	vend_id		LIKE ivnds.vend_id,
	vnds_id		LIKE ivnds.vnds_id 
END RECORD

DEFINE m_load_task RECORD
	load_prep			SMALLINT,
	pinwheel			SMALLINT,
	man_unstk			SMALLINT,
	fork_unstk			SMALLINT,
	spec_hnd			SMALLINT
END RECORD

DEFINE m_chkr_flg RECORD
	alarm				SMALLINT,
	ptwy				SMALLINT
END RECORD

DEFINE m_upc_capture_screen RECORD
	ean_scanned	     LIKE cvean.upc_validated,  
	barcode          CHAR(60),
	ean_message      CHAR(18) 
END RECORD

DEFINE m_upc_capture_array ARRAY[10] OF RECORD
	ean_scanned	     LIKE cvean.upc_validated,  
	upc_id           LIKE cvean.upc_id,
	ean_message      CHAR(18) 
END RECORD

DEFINE m_upd_vorex		CHAR(1)
DEFINE m_audit_lvl		CHAR(1)
DEFINE m_trip_no		LIKE aothd.trip_no
DEFINE m_trip_seq		LIKE aothd.trip_seq
DEFINE m_start_dtim		LIKE aothd.change_dtim
DEFINE m_hold_appt_id	LIKE iaptd.appt_id
DEFINE m_rows_added		SMALLINT
DEFINE m_recalc_day		SMALLINT

 {chep default record}
DEFINE m_default_rec	RECORD LIKE idtnd.*

DEFINE m_ret_ipo          RECORD LIKE ipo.*
DEFINE m_chep_ipo         RECORD LIKE ipo.*
DEFINE m_ret_iupcd        RECORD LIKE iupcd.*
DEFINE m_ret_iupc         RECORD LIKE iupc.*
DEFINE m_ret_ipohl        RECORD LIKE ipohl.*
DEFINE m_ret_ipod         RECORD LIKE ipod.*
DEFINE m_ret_iprod        RECORD LIKE iprod.*
DEFINE m_ret_iprdd        RECORD LIKE iprdd.*
DEFINE m_ret_irctd        RECORD LIKE irctd.*
DEFINE m_ret_irctl        RECORD LIKE irctl.*
DEFINE m_ret_irct         RECORD LIKE irct.*
DEFINE m_ret_swhse        RECORD LIKE swhse.*
DEFINE m_ret_swhrc        RECORD LIKE swhrc.*
DEFINE m_ret_iapt         RECORD LIKE iapt.*
DEFINE m_ret_iclcd        RECORD LIKE iclcd.*
DEFINE m_ret_surcp        RECORD LIKE surcp.*
DEFINE m_ret_sysno        RECORD LIKE sysno.*
DEFINE m_ret_aothd        RECORD LIKE aothd.*
DEFINE m_unld_aothd       RECORD LIKE aothd.*
DEFINE m_chck_aothd       RECORD LIKE aothd.*
DEFINE m_ret_iloc         RECORD LIKE iloc.*
DEFINE m_ret_sasso        RECORD LIKE sasso.*
DEFINE m_ret_aassg        RECORD LIKE aassg.*
DEFINE m_ret_iplas        RECORD LIKE iplas.*
DEFINE m_ret_frewc		  RECORD LIKE frewc.*
DEFINE m_ret_ivend		  RECORD LIKE ivend.*
DEFINE m_chep_ivend		  RECORD LIKE ivend.*	
DEFINE m_ret_sdc		  RECORD LIKE sdc.*
DEFINE m_ret_icnty		  RECORD LIKE icnty.*
DEFINE m_albdf			  RECORD LIKE albdf.*
DEFINE m_sjbcd			  RECORD LIKE sjbcd.*
DEFINE m_null_iloc		  RECORD LIKE iloc.*
DEFINE m_iupc             RECORD LIKE iupc.*
DEFINE m_iupcd            RECORD LIKE iupcd.*
DEFINE m_cvean            RECORD LIKE cvean.*
DEFINE m_lic_plt_glob     LIKE iinvd.lic_plt_id
DEFINE m_sav_ysno		  CHAR(1) 

DEFINE m_add_update       CHAR(1)
DEFINE m_putwy_flg      SMALLINT
DEFINE m_ft_id     		LIKE ift.ft_id
DEFINE m_tot_demand_qty	INTEGER 
DEFINE m_iinvd_found      INTEGER ## = TRUE when irctd and iinvd found 
DEFINE m_qty_ord_num      LIKE swhse.avg_qty_var_pct
DEFINE m_catch_wgt_req    LIKE iprod.catch_wgt_cntl
DEFINE m_catch_wgt_num    LIKE swhse.avg_wgt_var_pct
DEFINE m_code_date_req    LIKE iprod.pwy_dte_ctl
DEFINE m_code_date_num    LIKE iprod.cde_dt_incr
DEFINE m_code_date        LIKE irctd.code_date
DEFINE m_module           CHAR(10)
DEFINE m_msg              CHAR(500)
DEFINE m_keyword          CHAR(200)
DEFINE m_func_key         CHAR(2)
DEFINE m_new_msg_flag	  CHAR(1)  --- CMS 15540 bwf
DEFINE m_ignore           INTEGER
DEFINE m_tot_qty          INTEGER
DEFINE m_rct_qty          INTEGER
DEFINE m_rct_change 	  INTEGER
DEFINE m_entered    	  INTEGER
DEFINE m_pallet_cnt 	  INTEGER
DEFINE m_nonzero_pallet_cnt       INTEGER   --CMS23430 
DEFINE m_po_pall_cnt	  INTEGER				# needed for chep processing
DEFINE m_mult_po_flg      INTEGER
DEFINE m_loc_id           LIKE iplas.loc_id
DEFINE m_ptwy_anch		  LIKE iplas.ptwy_anch
DEFINE m_flthru_anch	  LIKE iplas.flthru_anch 
DEFINE m_rcpt_id          LIKE irct.rcpt_id
DEFINE m_urcp_id          LIKE swhse.urcp_id
DEFINE m_urcp_id_a          LIKE swhse.urcp_id
DEFINE m_swhse_urcp_id    LIKE swhse.urcp_id    ## the value on swhse
DEFINE m_old_urcp_id   	  LIKE swhse.urcp_id 
DEFINE m_urcp_s_val       LIKE swhse.urcp_id
DEFINE m_urcp_c_val       LIKE swhse.urcp_id
DEFINE m_orig_rdst_id     LIKE irctd.rdst_id

DEFINE m_irctd_form       CHAR(100)
DEFINE m_irctl_form       CHAR(100)
DEFINE m_iprod_form       CHAR(100)
DEFINE m_iprdd_form       CHAR(100)
DEFINE m_ipo_form         CHAR(100)
DEFINE m_iclcd_form       CHAR(100)
DEFINE m_iupcd_form       CHAR(100)
DEFINE m_ipod_form        CHAR(100)
DEFINE m_list_form        CHAR(100)
DEFINE m_po_list_form     CHAR(100)
DEFINE m_po_arr_form	  CHAR(100)
DEFINE m_chep_form		  CHAR(100)			-- form for chep container input
DEFINE m_get_upc_EAN_form CHAR(100)
DEFINE m_rcpt_form 		  CHAR(100)     --FBR To display the receipt list   
DEFINE m_rcpt_close_form  CHAR(100)		--FBR To close the receipt	

DEFINE m_del_form			CHAR(100) 
DEFINE m_prtr_form		CHAR(10) 

DEFINE m_tecsys_installed  INTEGER
DEFINE m_temp_form    CHAR(100) #GAP 11
DEFINE m_inbd_excep_form	CHAR(100)
DEFINE m_inbd_excep_array ARRAY[101] OF RECORD
	inbc_desc_1	CHAR(15),
	inbc_desc	CHAR(15),
	ysno		CHAR(1)
END RECORD
DEFINE m_inbd_excep_orig ARRAY[101] OF RECORD
	inbc_desc_1	CHAR(15),
	inbc_desc	CHAR(15),
	ysno		CHAR(1)
END RECORD
DEFINE m_inbd_serial_array ARRAY[101] OF RECORD
	inbc_id		LIKE iians.inbc_id,
	serial_id	INTEGER
END RECORD
DEFINE m_inbd_comp	CHAR(1)
DEFINE m_dtl_rows	SMALLINT
DEFINE m_nover_form		CHAR(100) 
DEFINE m_one_time		SMALLINT
##rld. These are due to the expansion project.
## they will hold an expanded 0 value.
##---------------------------------------------
DEFINE m_zero_po_id		LIKE ipo.po_id
DEFINE m_zero_prod_id	LIKE iprod.prod_id
DEFINE m_zero_allow     CHAR(1)
DEFINE m_scope_key         CHAR(5)
DEFINE m_sacvv_value       LIKE sacvv.value
DEFINE m_no_close_apptd    SMALLINT
DEFINE m_avg_catch_wgt    	LIKE irctd.catch_wgt
DEFINE m_over_short			SMALLINT

#5.6.1 Upgrade
DEFINE m_calc_code_date     LIKE irctd.code_date
DEFINE m_calc_cde_dt_flg    LIKE irctd.calc_cde_dt_flg
#5.6.1 Upgrade - End

DEFINE m_y2kloop INTEGER

#barcode scanning
DEFINE m_scan_rec RECORD
	lic_plt_id			 LIKE iinvd.lic_plt_id,
	upc_id				 LIKE iupcd.upc_id, 
	code_date			 LIKE irctd.code_date, 
	catch_wgt			 LIKE irctd.catch_wgt,
 	lot_no	 			 LIKE irctd.lot_no,
	prd_varies			 SMALLINT
END RECORD

DEFINE m_scan_wgt_units		CHAR(1)
DEFINE m_iinvd_prod_qty		LIKE iinvd.prod_qty

DEFINE m_rcpt_cnt		SMALLINT
DEFINE m_max_rcpt		SMALLINT
DEFINE m_cnt_remaining  INTEGER
DEFINE m_rcpt_array		ARRAY[201] OF RECORD
	whse_id				LIKE irctd.whse_id,
	po_id				LIKE ipo.po_id,
	rcpt_id				LIKE irctd.rcpt_id,
	appt_id				LIKE irct.appt_id
END RECORD

DEFINE m_iinvd_cde_dt	DATE
DEFINE m_pwy_dte_ctl	CHAR(1)
DEFINE m_coo_id			INTEGER

DEFINE m_cnty_id		LIKE icnty.cnty_id

DEFINE m_ret_swttm		RECORD LIKE swttm.*
DEFINE m_gen_lic_flag	SMALLINT
DEFINE m_comp_lic_plt	LIKE irctd.lic_plt_id
DEFINE m_rescan_lp      CHAR(1) # Fix for duplicate workunit
DEFINE m_rescan_othd_ck LIKE aothd.othd_id # Fix for duplicate workunit

DEFINE m_cstm_vrfy		CHAR(1) 
DEFINE orig_cstm_vrfy	CHAR(1) 
DEFINE m_prt_queue		LIKE spdef.queue_id 
DEFINE m_lbl_curr_pal	LIKE cvlbl.lp_cpn 
DEFINE m_auto_com_haul	CHAR(1) 
DEFINE m_multi_prod_upc SMALLINT 

DEFINE m_arr_list_rct   ARRAY[101] OF CHAR(10)		--FBR Receipt List

DEFINE m_array_rcpt	    RECORD      				--FBR Close receipt
	po_id				LIKE ipod.po_id,
	rcpt_id				LIKE irct.rcpt_id,
	whse_id          	LIKE irctd.whse_id, 
	unver_cnt			INTEGER,
	close_flag			CHAR(1)
END RECORD

{*****************************************************************************}
MAIN

	############################################################
	# add call to establish database connection with encrypted
	# oracle database password. it supports informix database
	# as is
	############################################################
	DEFINE f_db_error		INTEGER

	CALL lib_connectDB() RETURNING f_db_error
	IF f_db_error THEN
		CALL sh_elog_init_4gl("IRSverh_00") RETURNING f_db_error,
			g_std_err_chan, g_std_app_chan, g_std_func_chan,
       		g_std_info_chan, g_std_log_chan, g_channel_init,
       		g_channel_enable, g_channel_disable, g_max_channels
		CALL sh_elog_4gl("IRSverh_00","%C%","database connection failed.")
				RETURNING f_db_error
		EXIT PROGRAM -1
	END IF 
	

	WHENEVER ANY ERROR CONTINUE
	SET LOCK MODE TO WAIT 30

    DEFER INTERRUPT
	DEFER QUIT
	LET m_one_time = 0

	CALL program_init()
	CALL main_loop()
	CLEAR SCREEN

END MAIN	

{*****************************************************************************}
FUNCTION program_init()

	DEFINE f_count			INTEGER
	DEFINE f_result			INTEGER
	DEFINE f_sql_stmt		CHAR(2048)

	DEFINE f_string_val		CHAR(18)
	DEFINE f_rtrn_code  	INTEGER
	DEFINE f_i				SMALLINT
	DEFINE f_scope 		CHAR(8)
	DEFINE f_dc_id		CHAR(5)
	DEFINE f_whse_id	CHAR(5)
	DEFINE f_sacvv RECORD LIKE sacvv.*
	DEFINE f_abort SMALLINT
	DEFINE m_sacvv RECORD LIKE sacvv.*
	
	OPTIONS
		MESSAGE LINE FIRST,
		COMMENT LINE LAST,
		PROMPT LINE FIRST,
		FORM LINE FIRST,
		ERROR LINE FIRST,
		ACCEPT KEY RETURN,
	    FIELD ORDER CONSTRAINED,
		INPUT WRAP,
		NEXT KEY F35,
		PREVIOUS KEY F34,
		INSERT KEY F36,
		DELETE KEY F36,
		HELP KEY F1

	LET m_module = "IRSverh_00"

	CALL sh_elog_init_4gl(m_module) RETURNING m_ignore, 
		g_std_err_chan, g_std_app_chan, g_std_func_chan, g_std_info_chan, 
		g_std_log_chan, g_channel_init, g_channel_enable, g_channel_disable, 
		g_max_channels

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: program_init")

	LET m_keyword = "@(#)$Header:   /exe/pvcs/inv/ictl/IRSverh_00.4gv   5.137.1.34   18 Jan 2023 16:52:00   bgomez  $COPYRIGHT 1997 DALLAS SYSTEMS CORPORATION all rights reserved"

	LET g_icomm.prev_tran_id  = g_icomm.curr_tran_id
	LET g_icomm.curr_tran_id  = "IRRVH"	
	LET g_icomm.prev_prg_name = g_icomm.curr_prg_name
	LET g_icomm.curr_prg_name = "IRSverh_00.4ge"

	LET g_chosen = FALSE
	LET g_command_code = "COMMAND"
    LET m_zero_allow = "N"

	LET f_rtrn_code = FALSE
	INITIALIZE f_string_val TO NULL

	IF ss_sec_prg(g_icomm.curr_prg_name) <> 0
    THEN
		LET m_msg = "Incorrect privileges to access program!"
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("L9014")	#-- access denied 
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		EXIT PROGRAM 3
	END IF

	LET m_irctd_form		= sml_file_name(m_module)
	LET m_irctl_form		= m_irctd_form
	LET m_irctl_form[10]    = "1"
	LET m_iprod_form		= m_irctd_form
	LET m_iprod_form[10]    = "2"
	LET m_iprdd_form		= m_irctd_form
	LET m_iprdd_form[10]    = "3"
	LET m_ipo_form		    = m_irctd_form
	LET m_ipo_form[10]	    = "5"
	LET m_iclcd_form		= m_irctd_form
	LET m_iclcd_form[10]    = "6"
	LET m_iupcd_form		= m_irctd_form
	LET m_iupcd_form[10]    = "7"
	LET m_ipod_form		    = m_irctd_form
	LET m_ipod_form[10]     = "8"
	LET m_list_form	        = m_irctd_form
	LET m_list_form[10]	    = "9"
	LET m_nover_form		= m_irctd_form  
	LET m_nover_form[10]	= "A"           
	LET m_po_list_form	    = m_irctd_form
	LET m_po_list_form[10]  = "B"
	LET m_po_arr_form	    = m_irctd_form
	LET m_po_arr_form[10]  = "C"
	LET m_chep_form			= m_irctd_form
	LET m_chep_form[10]		= "D"
    LET m_temp_form     = m_irctd_form #GAP 11
    LET m_temp_form[10] = "E"   #GAP 11
	LET m_inbd_excep_form		= m_irctd_form
	LET m_inbd_excep_form[10]	= "G"
	LET m_del_form				= m_irctd_form 
	LET m_del_form[10]			= "Z" 
	LET m_prtr_form				 = m_irctd_form 
	LET m_prtr_form[10]			= "P" 
    LET m_get_upc_EAN_form      = m_irctd_form
    LET m_get_upc_EAN_form[10]  = "R"
	LET m_rcpt_form      	    = m_irctd_form	--FBR Receipt list
	LET m_rcpt_form[10]      	= "S"
	LET m_rcpt_close_form       = m_irctd_form	--FBR Close receipt
	LET m_rcpt_close_form[10]   = "T"

	LET m_inbd_comp = NULL


	LET f_scope=" "
	CALL lkp_sacvv("GLOBAL", "ScanWeightUnits", "S", f_scope)
		RETURNING f_abort, f_sacvv.*
	IF f_abort
	THEN
		LET m_scan_wgt_units = NULL
	ELSE
		LET m_scan_wgt_units = f_sacvv.value
	END IF		

	CALL lkp_sacvv("IMPdptwy00.4ge","QC_anchor","WH"," ")
	RETURNING m_ignore,m_sacvv.*
	IF m_ignore
	THEN
		CALL sh_rf_err_msg( "R4999" )  #-- system error
		LET m_msg = "Selection failed from sacvv."
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"EXIT: program_init()")
		EXIT PROGRAM
	END IF

	LET m_max_rcpt	= 200
	LET m_rcpt_cnt	= 0
	INITIALIZE m_rcpt_array[201].* TO NULL
	FOR f_i = 1 TO m_max_rcpt
		LET m_rcpt_array[f_i].* = m_rcpt_array[201].*
	END FOR

	INITIALIZE m_scr_irctd_null.* TO NULL
	LET m_scr_irctd_rec.* = m_scr_irctd_null.*
	INITIALIZE m_scr_prod_sel_dtl[501].* TO NULL
	INITIALIZE m_scr_po_sel_dtl[501].* TO NULL
	INITIALIZE m_scr_prdd_sel_dtl[501].* TO NULL
	INITIALIZE m_scr_irctl_null.* TO NULL
	INITIALIZE m_ret_frewc.* TO NULL
	INITIALIZE m_ret_ivend.* TO NULL		--following 4 rec needed for
	INITIALIZE m_ret_icnty.* TO NULL		--chep processing
	INITIALIZE m_ret_aassg.* TO NULL
	INITIALIZE m_ret_sdc.* TO NULL
	INITIALIZE m_n_cont_rec TO NULL
	INITIALIZE m_inbd_excep_array[101].* TO NULL

	INITIALIZE m_comp_lic_plt TO NULL 

	##rld. These are due to the expansion project.
	## they will hold an expanded 0 value.
	##---------------------------------------------

	LET f_string_val = "0"

	CALL convert_value("PO", f_string_val) 
		RETURNING f_rtrn_code, f_string_val
	
	CASE
		WHEN (f_rtrn_code <> 0)
			LET m_zero_po_id = "0"
		OTHERWISE
			--- Successful conversion.
			LET m_zero_po_id =  f_string_val	
	END CASE

	LET f_string_val = "0"

	CALL convert_value("PROD", f_string_val)
		RETURNING f_rtrn_code, f_string_val
	
	CASE
		WHEN (f_rtrn_code <> 0)
			LET m_zero_prod_id = "0"
		OTHERWISE
			--- Successful conversion.
			LET m_zero_prod_id =  f_string_val	
	END CASE
	##rld. end of expansion changes.
	##-------------------------------


	LET m_icnty_max	= 100		## = 100
	LET m_urcp_id = " "

	LET m_new_msg_flag = " "  --- CMS 15540 bwf

	LET m_tecsys_installed = 1
	LET m_catch_wgt_req = "N"
	INITIALIZE m_int_po_close.* TO NULL
	INITIALIZE m_int_del_zero.* TO NULL
	CALL lkp_surcp("S") RETURNING m_ignore, m_ret_surcp.*
	LET m_urcp_s_val = m_ret_surcp.surcp_user_val
	CALL lkp_surcp("C") RETURNING m_ignore, m_ret_surcp.*
	LET m_urcp_c_val = m_ret_surcp.surcp_user_val

	INITIALIZE m_orig_qty_arr[1] TO NULL
	IF m_one_time = 0 THEN
		LET m_one_time = 1
		INITIALIZE m_array[101] TO NULL
		FOR f_count = 1 TO 100
			LET m_array[f_count].* = m_array[101].*
		END FOR
	END IF
	
	LET f_sql_stmt =
        " INSERT INTO irqca (",
        " dc_id, ",
        " whse_id, ",
        " prod_id, ",
        " lic_plt_id) ",
        " VALUES ",
        "(?, ?, ?, ? )"

    PREPARE p_insert_irqca FROM f_sql_stmt
    IF SQLCA.SQLCODE <> 0 THEN
        CALL sh_rf_err_msg("S9201")
        SLEEP 2
        LET m_msg = "PREPARE p_insert_irqca failed. SQLCODE=", SQLCA.SQLCODE,
          " ISAM=", SQLCA.SQLERRD[2]
        LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
        LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "EXIT: program_init")
        RETURN TRUE
    END IF

	LET f_sql_stmt =
        " DELETE FROM irqca ",
        " WHERE dc_id = ? ",
             "AND whse_id = ? ",
             "AND prod_id = ? ",
             "AND lic_plt_id = ? "


    PREPARE p_delete_irqca FROM f_sql_stmt
    IF SQLCA.SQLCODE <> 0 THEN
        CALL sh_rf_err_msg("S9201")
        SLEEP 2
        LET m_msg = "PREPARE p_delete_irqca failed. SQLCODE=", SQLCA.SQLCODE,
          " ISAM=", SQLCA.SQLERRD[2]
        LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
        LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "EXIT: program_init")
        RETURN TRUE
    END IF

#BA4465
	LET f_sql_stmt =
        " UPDATE ipod ",
        " SET qc_req = ? ",
		"    ,system_flag = ? ",
        " WHERE dc_id = ? ",
           "AND whse_id = ? ",
           "AND po_id = ? ",
           "AND pod_id = ? "


    PREPARE p_update_ipod FROM f_sql_stmt
    IF SQLCA.SQLCODE <> 0 THEN
        CALL sh_rf_err_msg("S9201")
        SLEEP 2
        LET m_msg = "PREPARE p_update_ipod failed. SQLCODE=", SQLCA.SQLCODE,
          " ISAM=", SQLCA.SQLERRD[2]
        LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
        LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "EXIT: program_init")
        RETURN TRUE
    END IF

	LET f_sql_stmt =
		" SELECT COUNT(*) ",
		" FROM irctd, irct, iprod ",
		" WHERE irctd.dc_id = ? ",
		" AND irctd.whse_id = ? ",
		" AND irctd.po_id   = ? ",
		" AND irct.verify_dtim IS NULL ",
		" AND (irctd.rdst_id <> 'V' OR irctd.rct_qty = 0) ",	#-- unverified 
		" AND (irctd.rdst_id <> 'V' ",
		" AND irctd.rct_qty > 0) ",
		" AND irct.dc_id    = irctd.dc_id ",
		" AND irct.rcpt_id  = irctd.rcpt_id ",
		" AND irct.po_id    = irctd.po_id ",
		" AND irct.appt_id  = ? ",
		" AND iprod.dc_id   = irctd.dc_id ",
		" AND iprod.prod_id = irctd.prod_id "

	PREPARE p_count_unver FROM f_sql_stmt
	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_count_unver fail. SQLCODE=", SQLCA.SQLCODE,
		  " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF

	DECLARE c_count_unver CURSOR FOR p_count_unver
	

	# take care of unverified pallets-(check if putaway was not done)
	#--------------------------------
	LET f_sql_stmt =
		"SELECT irctd.dc_id, irctd.whse_id, irctd.po_id, irctd.pod_id, ",
		  " irctd.rdst_id, irctd.rct_qty, irctd.receipt_user, ",
		  " irctd.code_date, irctd.lic_plt_id, ", 
		  "	iprod.pwy_dte_ctl ",
          "FROM irctd, irct, iprod ",
	     "WHERE irctd.dc_id   = ? ",
	       "AND irctd.rcpt_id = ? ",
	       "AND irctd.whse_id = ? ",
	       "AND irctd.po_id   = ? ",
	       "AND irct.dc_id    = irctd.dc_id ",
	       "AND irct.rcpt_id  = irctd.rcpt_id ",
	       "AND irct.po_id    = irctd.po_id ",
	       "AND irct.appt_id  = ? ",
	       "AND iprod.dc_id   = irctd.dc_id ",
	       "AND iprod.prod_id = irctd.prod_id "

	PREPARE p_ver_irctd FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE irctd fail. SQLCODE=", SQLCA.SQLCODE,
		  " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF


	DECLARE c_ver_irctd CURSOR FOR p_ver_irctd

	#--------------------------------
	LET f_sql_stmt =
		" SELECT UNIQUE ipod.*, iprod.catch_wgt_cntl, iprod.description ",
        " FROM	ipod, iprod, irctd  ",
		" WHERE	ipod.po_id IN ",
					" (SELECT	iaptd.po_id ",
					" FROM	iaptd  ",
					" WHERE	iaptd.dc_id   = ?  ",
					## CR 12539 " AND	iaptd.whse_id = ?  ",
					" AND iaptd.appt_id = ? ) ",
		" AND	ipod.dc_id	  = ? ",
		" AND	ipod.plst_id  = 'P'  ",
		" AND	irctd.po_id   = ipod.po_id ",
		" AND	irctd.dc_id   = ipod.dc_id ",
		" AND	irctd.pod_id  = ipod.pod_id ",
		" AND	irctd.rcpt_id  = ? ",
		" AND	iprod.dc_id   = ipod.dc_id  ",
		" AND	iprod.prod_id = ipod.prod_id  ",
	  	" ORDER BY ipod.po_id, ipod.pod_id "

	PREPARE p_ipod_cur FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_ipod_cur fail. SQLCODE=", SQLCA.SQLCODE,
		  " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF


	DECLARE c_ipod_cur CURSOR WITH HOLD FOR p_ipod_cur

	#------------------------------get_close_po --
	LET f_sql_stmt =
		"SELECT irct.rcpt_id ",
          "FROM iaptd, outer irct ",
		 "WHERE iaptd.dc_id   = ?  ",
		   "AND iaptd.whse_id = ?  ",
		   "AND iaptd.appt_id = ?  ",
		   "AND iaptd.po_id   = ?  ",
     	   "AND (iaptd.po_closed_flg <> 'Y' OR iaptd.po_closed_flg IS NULL) ",
		   "AND irct.po_id    = iaptd.po_id  ",
		   "AND irct.whse_id  = ?  ",
		   "AND irct.dc_id    = ?  ",
		   "AND irct.appt_id  = ?  "


	PREPARE p_ipo_cur FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_ipo_cur fail. SQLCODE=", SQLCA.SQLCODE,
		  " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF


	DECLARE c_ipo_cur CURSOR FOR  p_ipo_cur

	#--------------------------------
	LET f_sql_stmt =
			"SELECT UNIQUE irct.rcpt_id, irctd.prod_id, irctd.prdd_id ",
              "FROM irct, irctd ", 
			 "WHERE irct.dc_id    = ? ",
			   "AND irctd.whse_id  = ? ",
			   "AND irctd.dc_id   = ? ",
			   "AND irctd.po_id   = ? ",
			   "AND irctd.pod_id  = ? ",
			   "AND irctd.rcpt_id = irct.rcpt_id "


	PREPARE p_irctd_stmt FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_irctd_stmt fail. SQLCODE=", SQLCA.SQLCODE,
		  " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF


	DECLARE c_irctd_stmt CURSOR WITH HOLD FOR p_irctd_stmt	## due to commit

	#--------------------------------
	LET f_sql_stmt =
		"SELECT irctd.rdst_id, irctd.rct_qty ",
          "FROM irctd ",
		 "WHERE irctd.dc_id   = ? ",
		   "AND irctd.whse_id = ? ",
		   "AND irctd.po_id   = ? ",
		   "AND irctd.pod_id  = ? "


	PREPARE p_rdst_qty FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_rdst_qty fail. SQLCODE=", SQLCA.SQLCODE,
		  " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF


	DECLARE c_rdst_qty CURSOR FOR  p_rdst_qty

	#--------------------------------
	LET f_sql_stmt =
		" SELECT lic_plt_id, prod_qty, po_id, rcpt_id, plas_prod_id, plas_id ",
		  " FROM iinvd ",
		 " WHERE iinvd.plas_id = ? ",
		   " AND (pal_catg NOT IN ('F') OR pal_catg IS NULL) ",
		   " AND (ista_id NOT IN ('H', 'P')) ",
		   " AND prod_qty > 0 ",	-- do not combine to a plt with 0 qty
		   " AND (inv_pos_cat = ? ",			## CR#13858 -added to check it
				   " OR inv_pos_cat IS NULL) ",
			 " ORDER BY lic_plt_id "

	PREPARE p_iinvd FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_iinvd fail. SQLCODE=", SQLCA.SQLCODE,
		  " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF


	DECLARE c_iinvd CURSOR FOR p_iinvd

	#--------------------------------
	LET f_sql_stmt =
		"SELECT lic_plt_id,",
			" catch_wgt, stor_ti, stor_hi,",
			" rct_qty, code_date, rctt_id, calc_cde_dt_flg",	#5.6.1
          " FROM irctd",
		 " WHERE dc_id   = ?",
		   " AND po_id   = ?",
		   " AND pod_id  = ?",
		   " AND whse_id = ?",
		   " AND rcpt_id = ?"


	PREPARE p_active_iinvd FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_active_iinvd fail. SQLCODE=", 
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF


	DECLARE c_active_iinvd CURSOR FOR p_active_iinvd

	#--------------------------------
	LET f_sql_stmt =
        " SELECT ipod.system_flag,irctd.dc_id,irctd.whse_id, irctd.lic_plt_id",
         " FROM ipod, irctd ",
       	 " WHERE ipod.dc_id       = ? ",
         " AND ipod.po_id        = ? ",
         " AND irctd.dc_id      = ipod.dc_id ",
         " AND irctd.po_id      = ipod.po_id ",
         " AND irctd.pod_id     = ipod.pod_id ",
         " AND irctd.rcpt_id     = ? "

	PREPARE p_pod_flg FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_pod_flg fail. SQLCODE=", 
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF


	DECLARE c_pod_flg CURSOR FOR p_pod_flg

	#--------------------------------
	LET f_sql_stmt =
		"SELECT ipod.*, ",
	      "iprod.prod_id, iprod.lot_no_cntl, ",
		  "iprod.pwy_dte_ctl, iprod.cde_dt_var, ",
		  "iprod.cde_dt_incr, iprod.catch_wgt_cntl, ",
      	  "iprod.description, iprod.sdesc, ",
		  "	iupcd.*  ",
          "FROM ipod, iprod, iupcd  ",
		   "WHERE ipod.dc_id    = ? ",
		   "AND ipod.po_id    IN ( ",
				" SELECT iaptd.po_id ",
				 " FROM iaptd ",
				 "WHERE iaptd.dc_id   = ?  ",
				   "AND iaptd.whse_id = ?  ",
				   "AND iaptd.appt_id = ?  ",
				   " ) ",	
		   "AND ipod.plst_id  = 'P'  ",
		   "AND iprod.dc_id   = ?  ",
		   "AND iprod.prod_id = ipod.prod_id  ",
		   "AND iupcd.dc_id   = ?  ",
		   "AND iupcd.prod_id = iprod.prod_id  ",
		   "AND (SUBSTR(iupcd.upc_id,5,10) = ? ",
		   " OR iupcd.upc_id = ?) ",
         "ORDER BY ipod.prod_id  "

	PREPARE p_upc_cur FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_upc_cur fail. SQLCODE=", 
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF


	DECLARE c_upc_cur CURSOR FOR p_upc_cur

	# get the UPC based on the UCN (if they entered 5-digits)
	## get_upc_cur_ucn ##################################################
	LET f_sql_stmt =
		"SELECT ipod.*, ",
	      "iprod.prod_id, iprod.lot_no_cntl, ",
		  "iprod.pwy_dte_ctl, iprod.cde_dt_var, ",
		  "iprod.cde_dt_incr, iprod.catch_wgt_cntl, ",
      	  "iprod.description, iprod.sdesc, ",
		  "	iupcd.*  ",
		"FROM ipod, iprod, iupcd  ",
		"WHERE ipod.dc_id = ? ",
		"AND ipod.po_id IN ( ",
		" SELECT iaptd.po_id ",
		" FROM iaptd ",
		"WHERE iaptd.dc_id   = ?  ",
		"AND iaptd.whse_id = ?  ",
		"AND iaptd.appt_id = ?  ",
		" ) ",	
		"AND ipod.plst_id = 'P' ",
		"AND iprod.dc_id = ? ",
		"AND iprod.prod_id = ipod.prod_id ",
		"AND iupcd.dc_id = ? ",
		"AND iupcd.prod_id = iprod.prod_id ",
		"AND SUBSTR(iupcd.upc_id,10,5) = ? ",
		"ORDER BY ipod.prod_id"

	PREPARE p_upc_cur_ucn FROM f_sql_stmt
	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "PREPARE p_upc_cur_ucn failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: sql_init")
		EXIT PROGRAM
	END IF

	DECLARE c_upc_cur_ucn CURSOR FOR p_upc_cur_ucn

	#--------------------------------
	LET f_sql_stmt =
		"SELECT ipod.*, ",
	      "iprod.prod_id, iprod.lot_no_cntl, ",
		  "iprod.pwy_dte_ctl, iprod.cde_dt_var, ",
		  "iprod.cde_dt_incr, iprod.catch_wgt_cntl, ",
      	  "iprod.description, iprod.sdesc ",
		  "FROM ipod, iprod ",
	     "WHERE ipod.dc_id    = ? ",
		   "AND ipod.po_id    IN ( ",
		   "   SELECT iaptd.po_id ",	
				 " FROM iaptd ",
			 "WHERE iaptd.dc_id   = ? ",
			   "AND iaptd.whse_id = ? ",
			   "AND iaptd.appt_id = ? ",
			   "AND (iaptd.po_closed_flg <> 'Y'  ",
				"OR iaptd.po_closed_flg IS NULL) ) ",
		   "AND ipod.plst_id = 'P' ",
		   "AND iprod.dc_id   = ? ",
		   "AND iprod.prod_id = ipod.prod_id ",
	  "ORDER BY iprod.prod_id"

	PREPARE p_list_cur FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_list_cur fail. SQLCODE=", 
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF

	DECLARE c_list_cur CURSOR FOR p_list_cur

	#--------------------------------

	LET f_sql_stmt =
		"SELECT DISTINCT ipod.* ",
		"FROM ipod LEFT JOIN iupcd ON ipod.prod_id = iupcd.prod_id ",
		"WHERE ipod.dc_id = ? ",
		"AND ipod.po_id IN ( ",
		"SELECT iaptd.po_id ",
		"FROM iaptd ",
		"WHERE iaptd.dc_id = ? ",
		"AND iaptd.whse_id = ? ",
			"AND iaptd.appt_id = ? ",
			"AND (iaptd.po_closed_flg <> 'Y' ",
			"OR iaptd.po_closed_flg IS NULL)) ",
		"AND ipod.plst_id = 'P' ",
		"AND (ipod.prod_id = ? ",
		"OR iupcd.prod_id = ipod.prod_id) ", -- Find items which share UPC
		"ORDER BY ipod.po_id, ipod.prod_id "


	PREPARE p_po_cur FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_po_cur fail. SQLCODE=", 
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF


	DECLARE c_po_cur CURSOR FOR p_po_cur

	#--------------------------------
	LET f_sql_stmt =
		"SELECT ipod.*, ",
	      "iprod.prod_id, iprod.lot_no_cntl, ",
		  "iprod.pwy_dte_ctl, iprod.cde_dt_var, ",
		  "iprod.cde_dt_incr, iprod.catch_wgt_cntl, ",
      	  "iprod.description, iprod.sdesc ",
          "FROM ipod, iprod  ",
		   "WHERE ipod.dc_id    = ?  ",
		   "AND ipod.po_id    IN ( ",
				 "SELECT iaptd.po_id  ",
				   "FROM iaptd ",
				 "WHERE iaptd.dc_id   = ?  ",
				   "AND iaptd.whse_id = ?  ",
				   "AND iaptd.appt_id = ? ) ",
		   "AND ipod.plst_id  = 'P' ",
		   "AND iprod.dc_id   = ?  ",
		   "AND iprod.prod_id = ipod.prod_id  ",
	  "ORDER BY iprod.prod_id  "


	PREPARE p_pod_cur FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_pod_cur fail. SQLCODE=", 
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF


	DECLARE c_pod_cur CURSOR FOR p_pod_cur

	#--------------------------------
	LET f_sql_stmt =
		"SELECT iprdd.* ",
          "FROM iprdd  ",
		 "WHERE iprdd.dc_id   = ?  ",
		   "AND iprdd.prod_id = ?  ",
	  "ORDER BY iprdd.prdd_id  "

	PREPARE p_prdd_cur FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_prdd_cur fail. SQLCODE=", 
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF


	DECLARE c_prdd_cur CURSOR FOR p_prdd_cur 

	#--------------------------------
	LET f_sql_stmt =
		"SELECT iclcd.* ",
          "FROM iclcd ",
		 "WHERE iclcd.lang_id = ? ",
	  "ORDER BY iclcd_user_val "

	PREPARE p_lst_rf_iclcd FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_prdd_cur fail. SQLCODE=", 
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF

	DECLARE c_lst_rf_iclcd CURSOR FOR p_lst_rf_iclcd 


# PigWig - karena  9/30/99
	{***** Cursor for selecting unverified license plates *****}
		LET f_sql_stmt = "SELECT irctd.lic_plt_id ",
			"FROM irctd ",
			"WHERE irctd.dc_id = ? ",
			"  AND irctd.rcpt_id = ? ",
			"  AND irctd.whse_id = ? ",
			"  AND irctd.po_id = ? ",
			"  AND (irctd.rdst_id <> 'V' ",
			"	AND irctd.rct_qty > 0) " # Mod - karena 10/12/99
		PREPARE p_lic_unver FROM f_sql_stmt
		IF SQLCA.SQLCODE <> 0 THEN
			LET m_msg = "Prepare p_lic_unver failed, SQLCODE=",
				SQLCA.SQLCODE, " ISAM=",SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,
				2152, "Exiting program_init")
			RETURN TRUE
		END IF
# End of Mod
#End 4.6 Upgrade Merge

	DECLARE c_count_mpp CURSOR FOR
		SELECT	1	
		FROM	iinvd
		WHERE	lic_plt_id = m_scr_irctd_rec.lic_plt_id
		AND		dc_id = m_scr_irctd_rec.dc_id
		AND		mpp_id IS NOT NULL


	LET f_sql_stmt =
		" UPDATE	aothd ",
		" SET		mpp_id = NULL, ",
		"			lhty_id = 'PU', ",
		"			mpp_othd_id = NULL ",
		" WHERE		dc_id = ? ",
		" AND		lic_plt_id = ? "

	PREPARE p_upd_aothd FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_upd_aothd fail. SQLCODE=", 
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF


	LET f_sql_stmt =
		" UPDATE	iinvd ",
		" SET		mpp_id = NULL ",
		" WHERE		dc_id = ? ",
		" AND		lic_plt_id = ? "

	PREPARE p_upd_iinvd FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_upd_iinvd fail. SQLCODE=", 
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF

	LET f_sql_stmt =
		" UPDATE	irctd ",
		" SET		mpp_id = NULL ",
		" WHERE		dc_id = ? ",
		" AND		whse_id = ? ",
		" AND		lic_plt_id = ? "

	PREPARE p_upd_irctd FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_upd_irctd fail. SQLCODE=", 
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF

	LET f_sql_stmt =
		"SELECT 1 ",
			"FROM idtnd ",
			"WHERE dtn_id = ? ",
			"AND rsn_id = 'RE' ",
			"AND rsn_seq = 0 ",
			"AND cnty_id = ?"

	PREPARE p_cnt_idtnd FROM f_sql_stmt
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "PREPARE p_cnt_idtnd failed, SLQCODE = ", SQLCA.SQLCODE,
			" ISAM CODE = ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		RETURN TRUE
	END IF

	DECLARE c_cnt_idtnd CURSOR FOR p_cnt_idtnd

	LET f_sql_stmt =
		"INSERT INTO idtnd (",
				"dtn_id, ",
				"rsn_id, ",
				"rsn_seq, ",
				"cnty_id, ",
				"csvn_id, ",
				"dc_id, ",
				"whse_id, ",
				"trans_qty, ",
				"exp_qty, ",
				"notation, ",
				"ref_id, ",
				"dtst_id, ",
				"bill_of_lading, ",
				"trans_date, ",
				"extract_qty, ",
				"change_dtim, ",
				"change_user, ",
				"create_dtim, ",
				"create_user) ",
			"VALUES ",
				"(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

	PREPARE c_ins_idtnd FROM f_sql_stmt
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "PREPARE c_ins_idtnd failed, SQLCODE = ", SQLCA.SQLCODE,
			" ISAM CODE = ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		RETURN TRUE
	END IF

	LET f_sql_stmt =
		"UPDATE idtnd ",
			"SET (trans_qty, ",
				"exp_qty, ",
				 "change_dtim, ",
				 "change_user) = ",
			"(trans_qty + ?, exp_qty + ?, ?, ?) ",
			"WHERE dtn_id = ? ",
			"AND rsn_id = 'RE' ",
			"AND rsn_seq = 0 ",
			"AND cnty_id = ?"

	PREPARE c_upd_idtnd FROM f_sql_stmt
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "PREPARE c_upd_idtnd failed, SQLCODE = ", SQLCA.SQLCODE,
			" ISAM CODE = ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		RETURN TRUE
	END IF

## 13858
	LET f_sql_stmt =
		"SELECT plas_id  ",
		  "FROM iplas ",
		 "WHERE dc_id   = ? ",
		   "AND whse_id = ? ",
		   "AND prod_id = ? ",
		   "AND prdd_id = ? ",
		   "AND lcus_id = ? "

	PREPARE p_group_pal FROM f_sql_stmt
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "PREPARE p_group_pal fail. SQLCODE:", SQLCA.SQLCODE,
				" ISAM:", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			CALL sh_rf_err_msg( "R4999" )  #-- system error
			LET m_ignore = sh_mlog_4gl (g_std_func_chan, m_module,"%C%",
				"EXIT: program_init")
			EXIT PROGRAM 2
		END IF

	DECLARE c_group_pal CURSOR FOR p_group_pal

	## rld. had to change the way the c_plate_whse cursor works
	## due to jamie r changes to the lic_plt modifications.
	##--------------------------------------------------------
	LET f_sql_stmt =
		" SELECT  whse_id ",
		" FROM    snrng ",
		" WHERE   snrng.dc_id = ? ",
		" AND     snrng.drng_id = 'LPP' ",
		" AND     (snrng.from_no <= ? ",
		" AND     snrng.to_no >= ?) "

	PREPARE p_plate_whse FROM f_sql_stmt
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "PREPARE p_plate_whse fail. SQLCODE:", SQLCA.SQLCODE,
				" ISAM:", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			CALL sh_rf_err_msg( "R4999" )  #-- system error
			LET m_ignore = sh_mlog_4gl (g_std_func_chan, m_module,"%C%",
				"EXIT: program_init")
			EXIT PROGRAM 2
		END IF

	DECLARE c_plate_whse CURSOR FOR p_plate_whse
		## rld... SELECT  whse_id
		## rld... FROM    snrng
		## rld... WHERE   snrng.dc_id = m_scr_irctd_rec.dc_id
		## rld... AND     snrng.drng_id = "LPP"
		## rld... AND     (snrng.from_no <= m_scr_irctd_rec.lic_plt_id
		## rld... AND     snrng.to_no >= m_scr_irctd_rec.lic_plt_id)

	DECLARE c_list_pos CURSOR FOR
		SELECT  UNIQUE ipod.po_id, ipod.whse_id
		FROM    ipod, iaptd
		WHERE   iaptd.appt_id = m_scr_irctd_rec.appt_id
		AND     iaptd.dc_id = m_scr_irctd_rec.dc_id
		AND     ipod.dc_id = m_scr_irctd_rec.dc_id
		AND     iaptd.po_id = ipod.po_id

	LET f_sql_stmt =
		" SELECT  catch_wgt ",
		" FROM    irctd ",
		" WHERE   dc_id = ? ",
		" AND     po_id = ? ",
		" AND     pod_id = ? "

	PREPARE p_sel_pod_wgt FROM f_sql_stmt
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "PREPARE p_sel_pod_wgt fail. SQLCODE:", SQLCA.SQLCODE,
				" ISAM:", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			CALL sh_rf_err_msg( "R4999" )  #-- system error
			LET m_ignore = sh_mlog_4gl (g_std_func_chan, m_module,"%C%",
				"EXIT: program_init")
			EXIT PROGRAM 2
		END IF

	DECLARE c_sel_pod_wgt CURSOR FOR p_sel_pod_wgt

	LET f_sql_stmt = 
		" SELECT UNIQUE iinbc.iinbc_desc, ",
    			" iinbc.inbc_id,iiexp.serial_id",
			" FROM iinbc,iiexp ",
			" WHERE iinbc.lang_id = ? ",
			" AND iiexp.appt_id = ? ",
			" AND iiexp.po_id = ? "

	PREPARE p_inbd_desc FROM f_sql_stmt
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "PREPARE p_inbd_desc fail. SQLCODE:", SQLCA.SQLCODE,
			" ISAM:", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		CALL sh_rf_err_msg( "R4999" )  #-- system error
		LET m_ignore = sh_mlog_4gl (g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		EXIT PROGRAM 2
	END IF
	DECLARE c_inbd_desc CURSOR FOR p_inbd_desc

	LET f_sql_stmt = 
		" SELECT UNIQUE iians.inbc_ans ",
			" FROM iians ",
			" WHERE iians.lang_id = ? ",
			" AND iians.inbc_id = ? ",
			" AND iians.serial_id = ? "

	PREPARE p_sel_iians FROM f_sql_stmt
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "PREPARE p_sel_iians fail. SQLCODE:", SQLCA.SQLCODE,
			" ISAM:", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		CALL sh_rf_err_msg( "R4999" )  #-- system error
		LET m_ignore = sh_mlog_4gl (g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		EXIT PROGRAM 2
	END IF
	DECLARE c_sel_iians CURSOR FOR p_sel_iians

	LET f_sql_stmt = 
		" SELECT ift.ft_id, ift.tot_demand_qty, ift.tot_recvd_qty,",
			" ift.tot_ship_qty, SUM(iftd.process_qty) ",
	  	  " FROM ift LEFT OUTER JOIN iftd ON ift.ft_id = iftd.ft_id ",
		  " AND iftd.load_closed_flg <> 'Y' ",
	 	  " WHERE ift.dc_id   = ? ",
	   	  " AND ift.whse_id = ? ",
		  " AND ift.prod_id = ? ",
	   	  " AND ift.unit_ship_cse = ? ",
	   	  " AND ift.po_id   = ? ",
	   	  " AND ift.purge_flg = 'N' ",
#		  " AND iftd.load_closed_flg <> 'Y' ",
   		  " GROUP BY ift.ft_id, ift.tot_demand_qty, ift.tot_recvd_qty,",
				  " ift.tot_ship_qty "

	PREPARE p_sel_ift FROM f_sql_stmt
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "PREPARE p_sel_ift failed. SQLCODE=", SQLCA.SQLCODE,
			" ISAM=", SQLCA.SQLERRD[2], " sql=", f_sql_stmt
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		CALL sh_rf_err_msg( "R4999" )  #-- system error
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		EXIT PROGRAM
	END IF

	DECLARE c_sel_ift CURSOR FOR p_sel_ift

	## find_unld_aothd() #############################################
	LET f_sql_stmt =
	"SELECT * ",
      "FROM aothd ",
	 "WHERE aothd.dc_id = ? ",
	   "AND aothd.whse_id = ? ",
	   "AND aothd.phys_whse_id = ? ",
	   "AND aothd.lic_plt_id = ? ",
	   "AND aothd.wust_id = 'AVL'"

	PREPARE p_find_aothd FROM f_sql_stmt
	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "PREPARE p_find_aothd failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		EXIT PROGRAM 2
	END IF

	DECLARE c_find_aothd CURSOR FOR p_find_aothd

	LET f_sql_stmt = 
		" SELECT * ",
		" FROM frewc ",
		" WHERE dc_id = ? ",
		" AND whse_id = ? " 
	
	PREPARE p_frewc FROM f_sql_stmt
	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "PREPARE p_frewc failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		EXIT PROGRAM 2
	END IF

	DECLARE c_frewc CURSOR FOR p_frewc

	## Max receipt ID #############################################
	LET f_sql_stmt = 
		" SELECT MAX(irct.rcpt_id) ",
		" FROM irct ", 
		" WHERE irct.dc_id = ? ",
		" AND irct.whse_Id = ? ",
		" AND irct.appt_id = ? ",
		" AND irct.po_id   = ? ",
		" AND irct.rsta_id = 'P' "

	PREPARE p_max_irct_id FROM f_sql_stmt
	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "PREPARE p_max_irct_id failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		EXIT PROGRAM 2
	END IF

	DECLARE c_max_irct_id CURSOR FOR p_max_irct_id

	## Whole irct record #############################################
	LET f_sql_stmt = 
		" SELECT * ",
		" FROM irct ",
		" WHERE dc_id = ? ",
		" AND whse_id = ? ",
		" AND appt_id = ? ",
		" AND rcpt_id = ? ",
		" AND po_id = ? "

	PREPARE p_irct FROM f_sql_stmt
	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "PREPARE p_irct failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		EXIT PROGRAM 2
	END IF

	DECLARE c_irct CURSOR FOR p_irct

	LET f_sql_stmt =
				" SELECT UNIQUE iaptd.appt_id,ipo.po_id,irct.rcpt_id ",
				" FROM ipo, ipod, iaptd, irct ",
				" WHERE iaptd.whse_id = ? ",
				" AND iaptd.appt_id = ? ",
				" AND iaptd.po_id = ? ",
				" AND (iaptd.po_closed_flg = 'N' OR iaptd.po_closed_flg IS NULL) ",
				" AND ipo.dc_id = iaptd.dc_id ",
				" AND ipo.po_id = iaptd.po_id ",
				" AND ipod.dc_id = ipo.dc_id ",
				" AND ipod.po_id = iaptd.po_id ",
				" AND ipod.plst_id  = 'P' ",
				" AND irct.verify_dtim IS NULL ",
				" AND irct.dc_id = ipod.dc_id ",
				" AND irct.po_id = ipod.po_id ",
				" AND irct.appt_id = iaptd.appt_id ",
				" ORDER BY ipo.po_id "

	PREPARE p_find_rcpt FROM f_sql_stmt
	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "PREPARE p_close_ipo failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		EXIT PROGRAM 2
	END IF

	DECLARE c_find_rcpt CURSOR FOR p_find_rcpt


	LET f_sql_stmt =
		" SELECT aassg.* ",
		" FROM sasso, aassg ",
		" WHERE sasso.dc_id = ? ",
		  " AND sasso.assoc_id = ? ",
		  " AND aassg.dc_id = sasso.dc_id ",
		  " AND aassg.phys_whse_id = ? ",
		  " AND aassg.assoc_id = sasso.assoc_id ",
		  " AND aassg.assg_id = sasso.curr_assg_id "

	PREPARE p_get_assg FROM f_sql_stmt
	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "PREPARE p_get assg failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		EXIT PROGRAM 2
	END IF

	DECLARE c_get_assg CURSOR FOR p_get_assg

	LET f_sql_stmt = " SELECT COUNT(*) ",
					" FROM iasn, iasnd ",
					" WHERE iasnd.sscc_lp_id = ? ",
					" AND iasnd.asn_id = iasn.asn_id ",
					" AND iasn.po_id = ? "

	PREPARE p_iasn_cnt FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_iasn_cnt FAILED. SQLCODE=", SQLCA.SQLCODE,
			" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: program_init")
		CALL sh_rf_err_msg("S9201")
		SLEEP 2
		RETURN TRUE
	END IF
	
#### Select aothd
    INITIALIZE f_sql_stmt TO NULL
	
	LET f_sql_stmt = " SELECT ipo.vend_id, aothd.* ",
					" FROM aothd ",
					" LEFT OUTER JOIN ipo ",
					" ON (ipo.dc_id = aothd.dc_id ",
					" AND ipo.po_id = aothd.po_id) ",		
					" WHERE whse_id = ? ",
					" AND asgt_id = 'P' ",
					" AND substr(to_loc_id,1,3) <> 'HAU' ", 
					" AND lic_plt_id = ? "

	PREPARE sel_aothd_pu FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE sel_aothd_pu FAILED. SQLCODE=", SQLCA.SQLCODE,
			" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: program_init")
		CALL sh_rf_err_msg("S9201")
		SLEEP 2
		RETURN TRUE
	END IF

#### check if cvean record exist for the po/product
    INITIALIZE f_sql_stmt TO NULL
	
	LET f_sql_stmt = " SELECT DISTINCT 1 ",
					" FROM cvean ",
					" WHERE whse_id = ? ",
					" AND po_id = ? ",
					" AND rcpt_id = ? ",
					" AND vend_id = ? ",
					" AND prod_id = ? "

	PREPARE sel_cvean FROM f_sql_stmt

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE sel_cvean FAILED. SQLCODE=", SQLCA.SQLCODE,
			" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: program_init")
		CALL sh_rf_err_msg("S9201")
		SLEEP 2
		RETURN TRUE
	END IF

	#-------------To get all the receipt ids for a PO --FBR

	LET f_sql_stmt =
                  " SELECT DISTINCT subquery.rcpt_id ",
                  " FROM ( ",
						" SELECT irct.rcpt_id ",
						" FROM ipo, ipod, iaptd, irct ",
						" WHERE iaptd.whse_id = ? ",
						  " AND iaptd.po_id = ? ",
						  " AND (iaptd.po_closed_flg = 'N' ",
						  "	OR iaptd.po_closed_flg IS NULL) ",
						  " AND ipo.dc_id = iaptd.dc_id ",
						  " AND ipo.po_id = iaptd.po_id ",
						  " AND ipod.dc_id = ipo.dc_id ",
						  " AND ipod.po_id = iaptd.po_id ",
						  " AND ipod.plst_id  = 'P' ",
						  " AND irct.verify_dtim IS NULL ",
						  " AND irct.dc_id = ipod.dc_id ",
						  " AND irct.po_id = ipod.po_id ",
						  " ORDER BY ipo.po_id ",
					" ) subquery "	

	PREPARE p_find_all_rcpt FROM f_sql_stmt

	IF SQLCA.SQLCODE < 0
       THEN
           LET m_msg = "PREPARE p_find_all_rcpt failed. SQLCODE=", SQLCA.SQLCODE,
                       " ISAM=", SQLCA.SQLERRD[2]
           LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
           CALL sh_rf_cmd_msg("I9060") #-- system failure
           SLEEP 2
           LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
               "EXIT: program_init")
           EXIT PROGRAM 2
       END IF

	DECLARE c_find_all_rcpt CURSOR FOR p_find_all_rcpt	

#-------------To get the count of unverified lic plt ids for a receipt --FBR

	LET f_sql_stmt =
		" SELECT COUNT(*) ",
		" FROM irctd, irct, iprod ",
		" WHERE irctd.dc_id = ? ",
		" AND irctd.whse_id = ? ",
		" AND irctd.rcpt_id   = ? ",
		" AND irct.verify_dtim IS NULL ",
		" AND (irctd.rdst_id <> 'V' OR irctd.rct_qty = 0) ",	#-- unverified 
		" AND (irctd.rdst_id <> 'V' ",
		" AND irctd.rct_qty > 0) ",
		" AND irct.dc_id    = irctd.dc_id ",
		" AND irct.rcpt_id  = irctd.rcpt_id ",
		" AND iprod.dc_id   = irctd.dc_id ",
		" AND iprod.prod_id = irctd.prod_id "

	PREPARE p_count_unver_rct FROM f_sql_stmt
	
	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "PREPARE p_count_unver fail. SQLCODE=", SQLCA.SQLCODE,
		  " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore =
		     sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: program_init")
		RETURN TRUE
	END IF

	DECLARE c_count_unver_rct CURSOR FOR p_count_unver_rct
	
	##################################################################
	# Is Labor installed?
	##################################################################
	SELECT am_instld
	INTO m_am_instld
	FROM sdc
	WHERE dc_id = g_user.dflt_dc_id
	LET f_result = se_sqlcode_test()
	CASE
	WHEN f_result = 0
		# OK
	WHEN f_result = -1
		LET m_am_instld = "N"
	WHEN f_result = -2
		LET m_msg = "SELECT sdc failed, SQLCODE=", SQLCA.SQLCODE,
			" ISAM=", SQLCA.SQLERRD[2], " dc=", g_user.dflt_dc_id
		LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%",
			"EXIT: program_init")
		EXIT PROGRAM
	WHEN f_result = -3
		LET m_msg = "SELECT sdc failed, SQLCODE=", SQLCA.SQLCODE,
			" ISAM=", SQLCA.SQLERRD[2], " dc=", g_user.dflt_dc_id
		LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%",
			"EXIT: program_init")
		EXIT PROGRAM
	END CASE

	##################################################################
	# Look up defaults for Unloading/Checking and Vendor Origin
	# Profile for the DC/Whse.
	##################################################################
	LET f_dc_id = g_user.dflt_dc_id
	LET f_whse_id = g_user.dflt_whse_id
	LET f_scope = f_dc_id CLIPPED, "-", f_whse_id CLIPPED

	CALL lkp_sacvv("Receiving_Standards", "RF Checking", "WH", f_scope)
		RETURNING f_result, f_sacvv.*
	IF f_result = TRUE
	THEN
		CALL sh_rf_err_msg("R4999")
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: program_init")
		EXIT PROGRAM 2
	ELSE
		LET m_unld_chck.rf_flg = f_sacvv.value[1]
		IF  m_unld_chck.rf_flg = " "
		OR  m_unld_chck.rf_flg IS NULL
		THEN
			LET m_unld_chck.rf_flg = "N"
		END IF
	END IF

	IF m_unld_chck.rf_flg = "Y"
	THEN
		INITIALIZE m_dflt_vend.* TO NULL
		INITIALIZE m_unld_chck.* TO NULL
		INITIALIZE m_prev.* TO NULL
		INITIALIZE m_unld_aothd.* TO NULL
		INITIALIZE m_chck_aothd.* TO NULL
		LET m_chkr_flg.alarm = FALSE
		LET m_chkr_flg.ptwy = FALSE

		CALL lkp_sacvv("Receiving_Standards", "Combined Unld-Chck",
			"WH", f_scope) RETURNING f_result, f_sacvv.*
		IF f_result = TRUE
		THEN
			CALL sh_rf_err_msg("R4999")
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: program_init")
			EXIT PROGRAM 2
		ELSE
			LET m_unld_chck.combined = f_sacvv.value[1]
		END IF
		CALL lkp_sacvv("Receiving_Standards", "Default_Vendor",
			"WH", f_scope) RETURNING f_result, f_sacvv.*
		IF f_result = TRUE
		THEN
			CALL sh_rf_err_msg("R4999")
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: program_init")
			EXIT PROGRAM 2
		ELSE
			LET m_dflt_vend.vend_id = f_sacvv.value
		END IF
		CALL lkp_sacvv("Receiving_Standards", "Default_Vendor_Pt",
			"WH", f_scope) RETURNING f_result, f_sacvv.*
		IF f_result = TRUE
		THEN
			CALL sh_rf_err_msg("R4999")
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: program_init")
			EXIT PROGRAM 2
		ELSE
			LET m_dflt_vend.vnds_id = f_sacvv.value
		END IF
		CALL lkp_sacvv("Receiving_Standards", "User_Except_Entry",
			"WH", f_scope) RETURNING f_result, f_sacvv.*
		IF f_result = TRUE
		THEN
			CALL sh_rf_err_msg("R4999")
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: program_init")
			EXIT PROGRAM 2
		ELSE
			## Can user alter Vendor Profiles?  Ensure "Y" or "N".
			IF f_sacvv.value IS NULL
			OR f_sacvv.value = " "
			THEN
				LET m_upd_vorex = "N"
			ELSE
				LET m_upd_vorex = f_sacvv.value[1]
				IF  m_upd_vorex <> "Y"
				THEN
					LET m_upd_vorex = "N"
				END IF
			END IF
		END IF

		##############################################################
		# Check for ongoing Checking assignment
		##############################################################

		OPEN c_get_assg USING g_user.dflt_dc_id,
							g_user.assoc_id,
							g_user.dflt_whse_id

		FETCH c_get_assg INTO m_ret_aassg.*

		CASE
		WHEN ( SQLCA.SQLCODE = NOTFOUND )
			LET m_msg = "No current Checking assignment for user ",
				g_user.user_id CLIPPED, ", DC ", g_user.dflt_dc_id USING "<&",
			   ", Whse ", g_user.dflt_whse_id USING "<&", "."
			LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
			CALL sh_rf_err_msg("R4999") ## System error ##
			EXIT PROGRAM 5
		WHEN ( SQLCA.SQLCODE < 0 ) ## Error ##
			LET m_msg = "ERROR SELECT sasso, aassg dc_id= ",
				g_user.dflt_dc_id, " whse_id= ", g_user.dflt_whse_id,
				"SQLCODE: ",  SQLCA.SQLCODE, "ISAM:", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
			CALL sh_rf_err_msg("R4999") ## System error ##
			EXIT PROGRAM 5
		END CASE

		CLOSE c_get_assg

		IF m_ret_aassg.asta_id <> "S"
		THEN
			-- display a message "Assignment not active"
			CALL sh_rf_cmd_msg("R5112")
			SLEEP 2
			LET m_msg = "Assignment not active"
			LET m_ignore = se_log_xevent (200, m_msg, g_icomm.curr_prg_name,
							m_module, "%C%")
			LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%",
				"EXIT: program_init")
			EXIT PROGRAM 5
		END IF

		IF  m_ret_aassg.asgt_id <> "C"
		AND m_ret_aassg.asgt_id <> "B"
		THEN
			-- display a message "No Checking assignment"
			CALL sh_rf_cmd_msg("R5626")
			SLEEP 2
			LET m_msg = "No Checking assignment"
			LET m_ignore = se_log_xevent (200, m_msg, g_icomm.curr_prg_name,
							m_module, "%C%")
			LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%",
				"EXIT: program_init")
			EXIT PROGRAM 5
		END IF

		##############################################################
		# Calculate Labor Standards for Checking?  Job codes?
		##############################################################
		SELECT albdf.*, sjbcd.*
		  INTO m_albdf.*, m_sjbcd.*
		FROM albdf, sjbcd
		 WHERE albdf.dc_id = g_user.dflt_dc_id
		   AND albdf.whse_id = g_user.dflt_whse_id
		   AND sjbcd.jbcd_id = albdf.chkr_jbcd_id
		CASE
		WHEN ( SQLCA.SQLCODE = NOTFOUND )
			LET m_msg = "Labor defaults, Job Code row for DC ",
				g_user.dflt_dc_id USING "<&",
			   ", Whse ", g_user.dflt_whse_id USING "<&", " not found."
			LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
			CALL sh_rf_err_msg("R4999") ## System error ##
			EXIT PROGRAM 5
		WHEN ( SQLCA.SQLCODE < 0 ) ## Error ##
			LET m_msg = "ERROR SELECT albdf, sjbcd, dc_id= ",
				g_user.dflt_dc_id, "whse_id= ", g_user.dflt_whse_id,
				"SQLCODE: ",  SQLCA.SQLCODE, "ISAM:", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
			CALL sh_rf_err_msg("R4999") ## System error ##
			EXIT PROGRAM 5
		END CASE

		##############################################################
		# Get the previous work unit completed by the Associate if
		# Labor is on and standards are to be calculated for Unloading.
		##############################################################
		IF  m_am_instld = "Y"
		AND m_ret_aassg.last_trip_no IS NOT NULL
		THEN
			DECLARE c_restart CURSOR FOR
				SELECT aothd.to_loc_id, aothd.to_x_coord,
						aothd.to_y_coord, aothd.to_z_coord,
						aothd.phys_whse_id, aothd.complete_dtim,
						aothd. appt_id, aothd.trip_seq
					FROM aothd
					WHERE assg_id = m_ret_aassg.assg_id
					  AND dc_id = m_ret_aassg.dc_id
					  AND trip_no = m_ret_aassg.last_trip_no
					ORDER BY trip_seq DESC

			OPEN c_restart
			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "OPEN c_restart failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%",
					"EXIT: program_init")
				CALL sh_rf_err_msg("R4999") ## System Error.
				EXIT PROGRAM
			END IF

			FETCH c_restart INTO m_prev.*
			LET f_result = se_sqlcode_test()
			CASE
			WHEN f_result = 0
				# OK
				CLOSE c_restart
			WHEN f_result = -2
				LET m_msg = "FETCH c_restart failed, SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2], " assg=", m_ret_aassg.assg_id,
					" dc=", m_ret_aassg.dc_id,
					" last_trip=", m_ret_aassg.last_trip_no
				LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				   "EXIT: program_init")
				EXIT PROGRAM
			WHEN f_result = -1
			  OR f_result = -3
				LET m_msg = "FETCH c_restart failed, SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2], " assg=", m_ret_aassg.assg_id,
					" dc=", m_ret_aassg.dc_id,
					" last_trip=", m_ret_aassg.last_trip_no
				LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
				CALL sh_rf_cmd_msg("R5619") ## Restart Assg failed
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				   "EXIT: program_init")
				EXIT PROGRAM
			END CASE
		ELSE
			# These variables are needed when labor is called
			LET m_prev.loc_id  = NULL
			LET m_prev.x_coord = NULL
			LET m_prev.z_coord = NULL
			LET m_prev.y_coord = NULL
			LET m_prev.whse_id = NULL
		END IF

		IF m_ret_aassg.last_trip_no IS NULL
		THEN
			LET m_trip_no = 1
			LET m_trip_seq = 1
			LET m_start_dtim = m_ret_aassg.start_dtim
		ELSE
			LET m_trip_no = m_ret_aassg.last_trip_no
			LET m_trip_seq = m_prev.trip_seq + 1
			LET m_start_dtim = m_prev.create_dtim
		END IF
	ELSE
		LET m_unld_chck.combined = "N"
		LET m_dflt_vend.vend_id = NULL
		LET m_dflt_vend.vnds_id = NULL
		LET m_upd_vorex = "N"
	END IF

	LET m_rows_added = FALSE
    LET m_recalc_day = TRUE


	#See if the customized version of IRRVH is being used.
	CALL val_sacvv("IRSverh_00.4ge", "rf_custom_verify ","WH",
		f_scope) RETURNING f_result, f_sacvv.*

	IF f_result = TRUE THEN
		LET m_cstm_vrfy = "N"
	ELSE
		IF f_sacvv.value <> "Y"
		OR f_sacvv.value IS NULL THEN
			LET m_cstm_vrfy = "N"
		ELSE
			LET m_cstm_vrfy = f_sacvv.value
		END IF
	END IF

	LET orig_cstm_vrfy = m_cstm_vrfy 

	#Check for Auto Complete Hauling Work Units
    CALL val_sacvv("IRSverh_00.4ge", "auto_complete_haul ","WH",
        f_scope) RETURNING f_result, f_sacvv.*

    IF f_result = TRUE THEN
        LET m_auto_com_haul = "N"
    ELSE
        IF f_sacvv.value <> "Y"
        OR f_sacvv.value IS NULL THEN
            LET m_auto_com_haul = "N"
        ELSE
            LET m_auto_com_haul = f_sacvv.value
        END IF
    END IF


	LET m_ignore = sh_mlog_4gl (g_std_func_chan, m_module,"%C%",
		"EXIT: program_init")

END FUNCTION

{*****************************************************************************}
FUNCTION open_irctd_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: open_irctd_form")

	OPEN WINDOW w_main_win0 AT 1,1 WITH FORM m_irctd_form 
		ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
			MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

	IF status <> 0
	THEN
		LET m_msg = "Bad open on irctd form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: open_irctd_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: open_irctd_form")

END FUNCTION

{*****************************************************************************}
FUNCTION open_po_list()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: open_po_list")

	OPEN WINDOW w_main_winA AT 1,1 WITH FORM m_po_list_form 
		ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
			MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

	IF status <> 0
	THEN
		LET m_msg = "Bad open on po list form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: open_po_list")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: open_po_list")

END FUNCTION

{*****************************************************************************}
FUNCTION open_irctl_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: open_irctl_form")

	OPEN WINDOW w_main_win1 AT 1,1 WITH FORM m_irctl_form 
		ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
			MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

	IF status <> 0
	THEN
		LET m_msg = "Bad open on irctl form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: open_irctl_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: open_irctl_form")

END FUNCTION

{*****************************************************************************}
FUNCTION open_iprod_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: open_iprod_form")

	OPEN WINDOW w_main_win2 AT 1,1 WITH FORM m_iprod_form 
		ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
			MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

	IF status <> 0
	THEN
		LET m_msg = "Bad open on iprod form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: open_iprod_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: open_iprod_form")

END FUNCTION

{*****************************************************************************}
FUNCTION open_iprdd_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: open_iprdd_form")

	OPEN WINDOW w_main_win3 AT 1,1 WITH FORM m_iprdd_form 
		ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
			MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

	IF status <> 0
	THEN
		LET m_msg = "Bad open on iprdd form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: open_iprdd_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: open_iprdd_form")

END FUNCTION

{*****************************************************************************}
FUNCTION open_ipo_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: open_ipo_form")

	OPEN WINDOW w_main_win5 AT 1,1 WITH FORM m_ipo_form 
		ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
			MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

	IF status <> 0
	THEN
		LET m_msg = "Bad open on ipo form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: open_ipo_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: open_ipo_form")

END FUNCTION

{*****************************************************************************}
FUNCTION open_iclcd_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: open_iclcd_form")

	OPEN WINDOW w_main_win6 AT 3,2 WITH FORM m_iclcd_form 
		ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
			MESSAGE LINE FIRST, FORM LINE FIRST, REVERSE)

	IF status <> 0
	THEN
		LET m_msg = "Bad open on iclcd form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: open_iclcd_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: open_iclcd_form")

END FUNCTION

{*****************************************************************************}
FUNCTION open_iupcd_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: open_iupcd_form")

	OPEN WINDOW w_main_win7 AT 1,1 WITH FORM m_iupcd_form 
		ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
			MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

	IF status <> 0
	THEN
		LET m_msg = "Bad open on iupcd form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: open_iupcd_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: open_iupcd_form")

END FUNCTION

{*****************************************************************************}
FUNCTION open_ipod_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: open_ipod_form")

	OPEN WINDOW w_main_win8 AT 1,1 WITH FORM m_ipod_form 
		ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
			MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

	IF status <> 0
	THEN
		LET m_msg = "Bad open on ipod form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: open_ipod_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: open_ipod_form")

END FUNCTION

{*****************************************************************************}
FUNCTION open_list_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: open_list_form")

	OPEN WINDOW w_main_win9 AT 1,1 WITH FORM m_list_form 
		ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
			MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

	IF status <> 0
	THEN
		LET m_msg = "Bad open on list form" 
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2						
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: open_list_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: open_list_form")

END FUNCTION

{*****************************************************************************}
{establish screen window and open chep_form}
{*****************************************************************************}
FUNCTION open_chep_form()

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: open_chep_form")

	OPEN WINDOW w_chep_win AT 1,1 WITH FORM m_chep_form
		ATTRIBUTE(COMMENT LINE LAST, PROMPT LINE FIRST, MESSAGE LINE FIRST,
			FORM LINE FIRST, BOLD)

	IF status <> 0
	THEN
		LET m_msg = "Bad open on chep form."
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: open_chep_form")
		CALL sh_rf_cmd_msg("I9060")		#-- system error
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: open_chep_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: open_chep_form")

END FUNCTION

{*****************************************************************************}
FUNCTION open_inbd_excep()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: open_inbd_excep")

	OPEN WINDOW w_main_winG AT 1,1 WITH FORM m_inbd_excep_form 
		ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
			MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

	IF status <> 0
	THEN
		LET m_msg = "Bad open on inbd_excep form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: open_inbd_excep")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: open_inbd_excep")

END FUNCTION

{****************************************************************************}
FUNCTION open_get_upc_from_EAN_form()

    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "ENTER: open_get_upc_from_EAN_form")

    OPEN WINDOW w_main_winR AT 1,1 WITH FORM m_get_upc_EAN_form
        ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
            MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

    IF status <> 0
    THEN
        LET m_msg = "Bad open on get_upc_EAN_form"
        LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
        CALL sh_rf_cmd_msg("I9060") #-- system failure
        SLEEP 2
        LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
            "EXIT: open_get_upc_from_EAN_form")
        EXIT PROGRAM
    END IF

    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "EXIT: open_get_upc_from_EAN_form")

END FUNCTION

{*****************************************************************************}
FUNCTION main_loop()

	DEFINE f_ret_choice     LIKE sysno.ysno_id
	DEFINE f_abort_main     INTEGER
	DEFINE f_count        	INTEGER
	DEFINE f_aborted		SMALLINT
	DEFINE f_err_code		CHAR(2)
	DEFINE f_std_tim		INTERVAL HOUR TO SECOND
	DEFINE f_ret_status     SMALLINT --FBR
	DEFINE f_select_status  CHAR(10) --FBR

    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: main_loop")

	WHILE TRUE
        LET  m_scr_irctl_rec.qty_claimed = 0

		CALL cur_dc_whse()

		LET m_scr_irctd_rec.dc_id   = g_user.dflt_dc_id
		LET m_scr_irctd_rec.whse_id = g_user.dflt_whse_id
		LET m_scr_irctd_rec.rcv_whse_id = g_user.dflt_whse_id
	
		# Get swhse, sasso info for system directed putaway logic 
		#--------------------------------------------------------
		CALL lkp_swhse(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.rcv_whse_id)
			 RETURNING m_ignore, m_ret_swhse.*
		CALL lkp_swttm(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.whse_id)
    		 RETURNING m_ignore, m_ret_swttm.*


		LET m_catch_wgt_num = m_ret_swhse.avg_wgt_var_pct
		LET m_qty_ord_num   = m_ret_swhse.avg_qty_var_pct

		# to determine whether to print trace report or not
		#--------------------------------------------------
	    SELECT ptwy_trace_flg, driver_aud_log
		  INTO m_ret_sasso.ptwy_trace_flg, m_ret_sasso.driver_aud_log
		  FROM sasso
		 WHERE sasso.dc_id    = m_scr_irctd_rec.dc_id
		   AND sasso.assoc_id = g_user.assoc_id

		IF SQLCA.SQLCODE < 0 
		THEN
			LET m_msg = "SELECT sasso failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: main_loop")
			RETURN
		END IF 

		IF m_albdf.chk_stds_calc_flg = "Y"
		THEN
			IF m_ret_sasso.driver_aud_log = "Y"
			THEN
				LET m_audit_lvl = "Y"
			ELSE
				LET m_audit_lvl = "N"
			END IF
		ELSE
			LET m_audit_lvl = "N"
		END IF

		CALL open_irctd_form()
	
		LET f_abort_main = FALSE
		LET m_func_key   = " "

		WHILE TRUE
			IF m_cstm_vrfy <> "Y"
			OR m_cstm_vrfy IS NULL THEN
				# input pallet information
				#-------------------------
				IF input_irctd() = TRUE
				THEN
					#We are exiting the program update the labor standards.
					LET f_aborted = FALSE
					IF m_rows_added = TRUE
					AND m_albdf.chk_stds_calc_flg = "Y"
					THEN
						CALL rf_unload_calc(m_ret_aassg.assg_id,
											m_trip_no,
											m_audit_lvl,
											"Y")    ##Update table
							RETURNING f_aborted, f_err_code, f_std_tim
						IF f_aborted = TRUE
						THEN
							CALL sh_rf_cmd_msg("R5620") # Standard calc error
							SLEEP 2
							LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
								"EXIT: main_loop")
							RETURN
						END IF
						LET m_rows_added = FALSE
						LET m_recalc_day = TRUE
					END IF
					CALL close_irctd_form()
					LET f_abort_main = TRUE
					EXIT WHILE
				END IF
			ELSE --Using custom verify process
				# input pallet information
				#-------------------------
				IF cstm_inp_irctd() = TRUE
				THEN
					#We are exiting the program update the labor standards.
					LET f_aborted = FALSE
					IF m_rows_added = TRUE
					AND m_albdf.chk_stds_calc_flg = "Y"
					THEN
						CALL rf_unload_calc(m_ret_aassg.assg_id,
											m_trip_no,
											m_audit_lvl,
											"Y")    ##Update table
							RETURNING f_aborted, f_err_code, f_std_tim
						IF f_aborted = TRUE
						THEN
							CALL sh_rf_cmd_msg("R5620") # Standard calc error
							SLEEP 2
							LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,
								"%C%", "EXIT: main_loop")
							RETURN
						END IF
						LET m_rows_added = FALSE
						LET m_recalc_day = TRUE
					END IF
					CALL close_irctd_form()
					LET f_abort_main = TRUE
					EXIT WHILE
				END IF
			END IF --Using custom verify process

			CASE m_func_key
				WHEN "EN"
					# accept pallet 
					#--------------
					LET m_coo_id = ""
					IF (m_ret_iprod.cool_flg = "Y"  
						AND (m_ret_swttm.cool_flg = "AN" 
						OR m_ret_swttm.cool_flg = "RO")) 
					OR m_ret_swttm.cool_flg = "AC"
					THEN
						IF m_ret_ipo.po_type = "WT" OR m_ret_ipo.po_type = "DT"
                        THEN
                            CALL get_asn_cool(m_ret_ipo.po_type,
                                                m_scr_irctd_rec.dc_id,
                                                m_scr_irctd_rec.whse_id,
                                                m_scr_irctd_rec.lic_plt_id,
                                                m_scr_irctd_rec.appt_id,
                                                m_scr_irctd_rec.po_id,
                                                m_scr_irctd_rec.rcpt_id,
                                                m_scr_irctd_rec.pod_id,
                                                m_scr_irctd_rec.prod_id,
                                                m_scr_irctd_rec.prdd_id,
                                                m_scr_irctd_rec.code_date,
                                                m_scr_irctd_rec.lot_no)
								RETURNING f_abort_main, m_coo_id
						ELSE
                            IF m_scr_irctd_rec.rct_qty IS NOT NULL
                            AND m_scr_irctd_rec.rct_qty <> 0
                            AND m_scr_irctd_rec.rct_qty <> " "
                            THEN
							    CALL process_cntry_origin(m_scr_irctd_rec.dc_id,
								     					  m_scr_irctd_rec.whse_id,
									    				  m_scr_irctd_rec.rcv_whse_id,
									    				  m_scr_irctd_rec.appt_id,
									    				  m_scr_irctd_rec.rcpt_id,
									    				  m_scr_irctd_rec.lic_plt_id,
									    				  m_scr_irctd_rec.upc_id,
									    				  m_scr_irctd_rec.prod_id,
									    				  m_scr_irctd_rec.prdd_id,
									    				  m_scr_irctd_rec.sdesc)
						   		  RETURNING f_abort_main, m_coo_id
						    END IF
						END IF

						IF f_abort_main = TRUE THEN
							ROLLBACK WORK
                            CALL msg_rollback_work()
							CALL close_irctd_form()
							EXIT WHILE
						END IF
					END IF
					COMMIT WORK #### 1
                    CALL msg_commit_work()
					LET m_ignore = process_irctd()

				WHEN "CL"
					# changed your mind - abort
					#--------------------------
					CALL close_irctd_form()
					EXIT WHILE

				WHEN "F3"
					--FBR
					SELECT COUNT(*)
    				INTO m_rcpt_cnt
    				FROM irct
    				WHERE po_id = m_ret_ipod.po_id

					IF SQLCA.SQLCODE < 0 
                    THEN
                    	LET m_msg = "SELECT irct failed. SQLCODE=", SQLCA.SQLCODE,
							" ISAM=", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
						CALL sh_rf_cmd_msg("I9060")	#-- system failure
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: main_loop")
						RETURN
					END IF

					IF m_rcpt_cnt > 1
					THEN
						CALL close_irctd_form()
						CALL open_rcpt_list_form()
						CALL get_all_rcpt_id(g_user.dflt_whse_id,
                                         m_ret_ipod.po_id)
                        	RETURNING f_ret_status, f_select_status
						IF f_ret_status = TRUE
						THEN
							LET m_ignore = sh_mlog_4gl(g_std_func_chan,
								 m_module,"%C%","EXIT: get_all_rcpt_id")
							RETURN
						END IF
						CALL close_rcpt_list_form()
						IF f_select_status <> "ALL"
						THEN			
							CALL open_close_rcpt_form()
                        	CALL sh_rf_cmd_msg("I0005")
                        	CALL get_close_rcpt(g_user.dflt_dc_id,
                            	g_user.dflt_whse_id,f_select_status)
                        	CALL open_irctd_form()
						ELSE
							CALL open_irctd_form()
							CALL display_irctd()
							# go thru verification process
							#-----------------------------
							CALL sh_rf_ysno_msg("I1180","N")
								RETURNING m_ignore, f_ret_choice
							IF f_ret_choice = "Y"
							THEN
								CALL close_irctd_form()
								CALL process_close()
							EXIT WHILE
							END IF
						END IF
					ELSE
						# go thru verification process
						#-----------------------------
						CALL sh_rf_ysno_msg("I1180","N")
				 			RETURNING m_ignore, f_ret_choice
						IF f_ret_choice = "Y"
						THEN
							CALL close_irctd_form()
							CALL process_close()
							EXIT WHILE
						END IF
					END IF

				WHEN "SM" -- Switch Method
					CONTINUE WHILE 

				OTHERWISE
					LET f_abort_main = TRUE
					CALL close_irctd_form()
					EXIT WHILE
			END CASE

		END WHILE

		IF f_abort_main = TRUE
		THEN
			EXIT WHILE
		END IF

        FOR f_count = 1 TO 100                               
            IF m_array[f_count].po_id IS NOT NULL            
            THEN                                             
                IF m_array[f_count].close_flag <> "C"        
                THEN                                         
                    LET m_array[f_count].close_flag = "N"    
					LET m_array2[f_count].close_flag = "N"	--PTR851
                END IF                                       
                LET m_arr_po_close[f_count].close = "N"      
                LET m_array[f_count].unver_cnt = 0           
            END IF                                           
        END FOR                                              

		FOR f_count = 1 TO 100
			LET m_array[f_count].* = m_array[101].*
		END FOR

	END WHILE

    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
       	"EXIT: main_loop") 

END FUNCTION

{*****************************************************************************}
FUNCTION check_open_irctd()
  
  DEFINE f_count    SMALLINT
  DEFINE f_po_cnt   SMALLINT

  LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
      "ENTER : check_open_irctd")
  
  LET f_po_cnt = 0
  FOR f_count = 1 TO 100
      IF m_array[f_count].po_id IS NULL THEN
         EXIT FOR
      END IF
      SELECT COUNT(*) INTO f_po_cnt 
      FROM irct
      WHERE dc_id = m_scr_irctd_rec.dc_id
      AND whse_id = m_array[f_count].whse_id
      AND po_id   = m_array[f_count].po_id
      AND appt_id = m_array2[f_count].appt_id
      AND rcpt_id <> m_array2[f_count].rcpt_id
      AND verify_dtim IS NULL

      IF f_po_cnt > 0 THEN
          LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
              "EXIT : check_open_irctd")
          RETURN TRUE
      END IF
  END FOR

  LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
      "EXIT : check_open_irctd")
  RETURN FALSE

END FUNCTION
{*****************************************************************************}
## PTR 851 - karena 8/9/2000
FUNCTION upd_rdst_id()

	DEFINE f_ret_status			INTEGER
	DEFINE f_irctd_dc_id		LIKE irctd.dc_id
	DEFINE f_irctd_whse_id		LIKE irctd.whse_id
	DEFINE f_irctd_rdst_id		LIKE irctd.rdst_id
	DEFINE f_irctd_rct_qty  	LIKE irctd.rct_qty
	DEFINE f_irctd_lic_plt_id   LIKE irctd.lic_plt_id
	DEFINE f_system_flag 		LIKE ipod.system_flag
	DEFINE f_loop				INTEGER
	DEFINE cnt_cls_ipods		INTEGER

	CALL sh_mlog_4gl(g_std_func_chan,m_module,"%C%","ENTER: upd_rdst_id")
		   RETURNING f_ret_status

	BEGIN WORK
	##############################################################
	# This process has been moved from FUNCTION process_close
	# and modified to check and update irctd for all closed po's 
	# -kka 8/9/2000
	##############################################################
	FOR f_loop = 1 TO 501                                 

    	IF m_array2[f_loop].po_id IS NULL OR
    	   m_array2[f_loop].po_id = 0
    	THEN                                              
       	 	EXIT FOR                                      
    	END IF                                            
                                                     
		LET cnt_cls_ipods = 0

       	IF m_array2[f_loop].close_flag = "C"         
       	THEN                                          
			SET ISOLATION TO DIRTY READ

			SELECT COUNT(*) INTO cnt_cls_ipods
				FROM ipod
			WHERE ipod.dc_id = f_irctd_dc_id
			AND ipod.whse_id = f_irctd_whse_id
			AND ipod.po_id = m_array2[f_loop].po_id
			#AND ipod.rcpt_id = m_array2[f_loop].rcpt_id  PTR 851
			AND ipod.plst_id <> "C"

			IF cnt_cls_ipods <> 0
			THEN
				-- Still open lines on the po
				CONTINUE FOR
			END IF
				
			SET ISOLATION TO COMMITTED READ

			OPEN c_pod_flg USING
				m_scr_irctd_rec.dc_id,
				m_array2[f_loop].po_id,
				m_array2[f_loop].rcpt_id

			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "OPEN c_pod_flg failed during the exit ",
					" from main_loop. SQLCODE=", SQLCA.SQLCODE, 
					" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				LET m_msg = "po_id:",m_array2[f_loop].po_id,
					" rcpt_id:",m_array2[f_loop].rcpt_id
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,
					2978,"EXIT: upd_rdst_id")
				ROLLBACK WORK
				CALL sh_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				RETURN
			END IF
	
			WHILE TRUE

				FETCH c_pod_flg INTO f_system_flag ,f_irctd_dc_id,
					f_irctd_whse_id, f_irctd_lic_plt_id

				IF SQLCA.SQLCODE = NOTFOUND 
				THEN
					EXIT WHILE
				END IF

				IF SQLCA.SQLCODE <> 0
				THEN
					LET m_msg = "FETCH pod failed during the exit ",
						"from main_loop.  SQLCODE=", SQLCA.SQLCODE,
          	           	" ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					LET m_msg = "po_id:",m_array[f_loop].po_id,
						" rcpt_id:",m_array2[f_loop].rcpt_id,
						" lic_plt_id:",f_irctd_lic_plt_id
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, 
						m_module,3006, "EXIT: upd_rdst_id")
					ROLLBACK WORK
					CALL sh_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					RETURN
				END IF
			
				## 
				## Reset the receipt_user back to user ID.	
				IF f_system_flag = "N"
				THEN
				   UPDATE irctd SET irctd.receipt_user = g_user.user_id,
					 		   	 irctd.rdst_id         = "P"
		 		    WHERE irctd.dc_id    = f_irctd_dc_id
			   		AND irctd.whse_id    = f_irctd_whse_id
		   			AND irctd.lic_plt_id = f_irctd_lic_plt_id
				ELSE
				   UPDATE irctd SET irctd.receipt_user = g_user.user_id,
					  		 	 irctd.rdst_id         = "D"
		 		   	WHERE irctd.dc_id  	 = f_irctd_dc_id
			   		AND irctd.whse_id    = f_irctd_whse_id
		   			AND irctd.lic_plt_id = f_irctd_lic_plt_id
				END IF

				IF SQLCA.SQLCODE <> 0
				THEN
					LET m_msg = "UPDATE irctd receipt_user failure ",
						" occurred in upd_rdst_id. ", "SQLCODE=",
						SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2] 
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					LET m_msg = "po_id:",m_array[f_loop].po_id,
						" rcpt_id:",m_array2[f_loop].rcpt_id
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,
						3040,"EXIT: upd_rdst_id")
					ROLLBACK WORK
					CALL sh_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					RETURN
				END IF
			END WHILE
		END IF                                         
	END FOR

	COMMIT WORK

	CALL sh_mlog_4gl(g_std_func_chan,m_module,"%C%","EXIT: upd_rdst_id")
		   RETURNING f_ret_status

END FUNCTION
## End of PTR 851

{*****************************************************************************}
FUNCTION close_po_list()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: close_po_list")

	CLOSE WINDOW w_main_winA
	IF status <> 0
	THEN
		LET m_msg = "Bad close on irctd form"
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: close_po_list")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: close_po_list")

END FUNCTION

{*****************************************************************************}
FUNCTION close_irctd_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",	
		"ENTER: close_irctd_form")

	CLOSE WINDOW w_main_win0
	IF status <> 0
	THEN
		LET m_msg = "Bad close on irctd form"
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: close_irctd_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: close_irctd_form")

END FUNCTION

{*****************************************************************************}
FUNCTION close_irctl_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: close_irctl_form")

	CLOSE WINDOW w_main_win1
	IF status <> 0
	THEN
		LET m_msg = "Bad close on irctl form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: close_irctl_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: close_irctl_form")

END FUNCTION

{*****************************************************************************}
FUNCTION close_iprod_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: close_iprod_form")

	CLOSE WINDOW w_main_win2
	IF status <> 0
	THEN
		LET m_msg = "Bad close on iprod form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: close_iprod_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: close_iprod_form")

END FUNCTION

{*****************************************************************************}
FUNCTION close_iprdd_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: close_iprdd_form")

	CLOSE WINDOW w_main_win3
	IF status <> 0
	THEN
		LET m_msg = "Bad close on iprdd form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: close_iprdd_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: close_iprdd_form")

END FUNCTION

{*****************************************************************************}
FUNCTION close_ipo_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: close_ipo_form")

	CLOSE WINDOW w_main_win5
	IF status <> 0
	THEN
		LET m_msg = "Bad close on ipo form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	 
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: close_ipo_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: close_ipo_form")

END FUNCTION

{*****************************************************************************}
FUNCTION close_iclcd_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: close_iclcd_form")

	CLOSE WINDOW w_main_win6
	IF status <> 0
	THEN
		LET m_msg = "Bad close on iclcd form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	 
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: close_iclcd_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: close_iclcd_form")

END FUNCTION

{*****************************************************************************}
FUNCTION close_iupcd_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: close_iupcd_form")

	CLOSE WINDOW w_main_win7
	IF status <> 0
	THEN
		LET m_msg = "Bad close on iupcd form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: close_iupcd_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: close_iupcd_form")

END FUNCTION

{*****************************************************************************}
FUNCTION close_ipod_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: close_ipod_form")

	CLOSE WINDOW w_main_win8
	IF status <> 0
	THEN
		LET m_msg = "Bad close on ipod form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: close_ipod_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: close_ipod_form")

END FUNCTION

{*****************************************************************************}
FUNCTION close_list_form()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: close_list_form")

	CLOSE WINDOW w_main_win9
	IF status <> 0
	THEN
		LET m_msg = "Bad close on list form"	    
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: close_list_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: close_list_form")

END FUNCTION

{******************************************************************************}
{close chep_form window}
{******************************************************************************}
FUNCTION close_chep_form()

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: close_chep_form")

	CLOSE WINDOW w_chep_win
	IF status <> 0
	THEN
		LET m_msg = "Bad close on chep screen window."
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")		#-- system error
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: close_chep_form")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: close_chep_form")

END FUNCTION
{*****************************************************************************}
FUNCTION close_inbd_excep()  

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",	
		"ENTER: close_inbd_excep")

	CLOSE WINDOW w_main_winG
	IF status <> 0
	THEN
		LET m_msg = "Bad close on inbd_excep form"
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: close_inbd_excep")
		EXIT PROGRAM
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: close_inbd_excep")

END FUNCTION

{****************************************************************************}
FUNCTION close_get_upc_from_EAN_form()

    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "ENTER: close_get_upc_from_EAN_form")
    CLOSE WINDOW w_main_winR
    IF status <> 0
    THEN
        LET m_msg = "Bad close on get_upc_EAN_form"
        LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
        CALL sh_rf_cmd_msg("I9060") #-- system failure
        SLEEP 2
        LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
            "EXIT: close_get_upc_from_EAN_form")
        EXIT PROGRAM
    END IF
    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "EXIT: close_get_upc_from_EAN_form")
END FUNCTION

{*****************************************************************************}
{******************************************************************************}
FUNCTION input_irctd()

	DEFINE f_ret_status	    INTEGER
	DEFINE f_vldt_status	INTEGER
	DEFINE f_ret_choice	    INTEGER
	DEFINE f_old_prdd_id    LIKE iprdd.prdd_id
	DEFINE f_old_rct_qty    LIKE irctd.rct_qty
	DEFINE f_hold_qty	    LIKE irctd.rct_qty
	DEFINE f_ysno		    LIKE sysno.ysno_id
	DEFINE f_pal_count      INTEGER
	DEFINE f_ipod_cnt       INTEGER
	DEFINE f_ret_ipod	 	RECORD LIKE ipod.*
	DEFINE f_msg     	 	CHAR(05)
	DEFINE f_cur_dt			DATE
	DEFINE f_cde_count 		INTEGER
	DEFINE f_incr_cde_dt	DATE
	DEFINE f_override_date 	CHAR(01)
	DEFINE f_case_rmd 		INTEGER
	DEFINE f_counter		INTEGER
	DEFINE f_irqca_cnt      INTEGER
    DEFINE f_old_qc_req     CHAR(1)
    DEFINE f_new_qc_req     CHAR(1)
    DEFINE f_ptwy_at_rc     CHAR(1)
    DEFINE f_qc_status      CHAR(1)

	DEFINE f_string_val		CHAR(18)
	DEFINE f_rtrn_code		INTEGER
	DEFINE f_aborted  		INTEGER
	DEFINE f_abort  		INTEGER
	DEFINE f_abort_wt   	INTEGER

	##--------------------------------------------------------
	DEFINE f_lp_char   		CHAR(18)
	DEFINE f_lp_num    		INTEGER
	DEFINE f_new_msg_flag   CHAR(1)
    DEFINE f_dc_id          CHAR(2)
    DEFINE f_whse_id        CHAR(2)
    DEFINE f_sacvv          RECORD LIKE sacvv.*
	DEFINE f_cwhse          RECORD LIKE cwhse.*
	DEFINE f_scope          LIKE sacvv.scope_key
	DEFINE f_old_code_date		LIKE irctd.code_date
	DEFINE f_cnt_pod			INTEGER
	DEFINE f_len SMALLINT
	DEFINE f_err_code		CHAR(2)
	DEFINE f_std_tim		INTERVAL HOUR TO SECOND
	DEFINE f_rf_chk			SMALLINT
	DEFINE f_task_del		SMALLINT
	DEFINE f_alarm			CHAR(1)
	DEFINE f_cnt            INTEGER
    DEFINE f_lic_cnt        INTEGER
	DEFINE f_ipod_system_flag LIKE ipod.system_flag
	DEFINE f_old_code_date1 LIKE irctd.code_date
	DEFINE f_old_code_date2 LIKE irctd.code_date
	DEFINE f_dflt_days      SMALLINT				#5.6.1
	DEFINE f_hold_lp		LIKE irctd.lic_plt_id 
	DEFINE f_iasn_cnt		SMALLINT
	DEFINE f_return			SMALLINT 
	
	#START:LMISHRA:T20210316.0163:Add Repack:3/2/2021
	DEFINE f_is_repack				SMALLINT
	DEFINE f_rpk					LIKE iprdd.unit_ship_cse
	#END:LMISHRA:T20210316.0163:Add Repack:3/2/2021

	INITIALIZE f_cur_dt TO NULL
	INITIALIZE f_incr_cde_dt TO NULL
	LET m_ignore = sh_mlog_4gl( g_std_func_chan, m_module,"%C%",
								"ENTER: input_irctd")

	LET f_rtrn_code = FALSE
	INITIALIZE f_string_val TO NULL
	
	LET f_rpk = FALSE #LMISHRA:T20210316.0163:Add Repack:3/2/2021

	LET m_scope_key = m_scr_irctd_rec.whse_id USING '<&'
	CALL lkp_sacvv("code_date","dflt_days","WH",m_scope_key)
		RETURNING f_ret_status, f_sacvv.*
	IF f_ret_status
	THEN
		LET f_dflt_days = 9999
	ELSE
		LET f_dflt_days = f_sacvv.value
	END IF

	INITIALIZE m_scan_rec.* TO NULL
	LET f_rf_chk = FALSE
	LET f_alarm = "N"
	LET m_gen_lic_flag			= FALSE
	LET m_load_task.load_prep	= FALSE
	LET m_load_task.pinwheel	= FALSE
	LET m_load_task.man_unstk	= FALSE
	LET m_load_task.fork_unstk	= FALSE
	LET m_load_task.spec_hnd	= FALSE

	LET m_scr_irctd_rec.totr = m_tot_qty
	LET m_add_update  = "M"
	LET m_entered     = FALSE
	LET m_iinvd_found  = TRUE
    LET m_orig_rdst_id  = NULL
	LET m_code_date   = NULL
	LET f_abort       = FALSE
	LET f_old_prdd_id    = NULL
	LET f_old_rct_qty    = NULL
	LET f_msg            = "     " 
	LET f_case_rmd 	 	 = 0
	LET f_new_msg_flag   = m_new_msg_flag

	LET f_return = FALSE 
	
	IF m_scr_irctd_rec.urcp_id IS NOT NULL
	THEN
		CALL val_surcp(m_scr_irctd_rec.urcp_id)
			RETURNING m_ignore, m_ret_surcp.*
		LET m_old_urcp_id = m_ret_surcp.urcp_id
	ELSE
		LET m_old_urcp_id = " "
	END IF

	# get warehouse level info 	## CR 11509
	#-------------------------
	IF m_urcp_id IS NULL
	OR m_urcp_id = " "
	THEN
		CALL lkp_whse_info(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.rcv_whse_id)
		LET m_scr_irctd_rec.urcp_id = m_urcp_id
	END IF

	LET f_qc_status = NULL
    LET f_ptwy_at_rc = NULL
    LET f_old_qc_req = NULL
    LET f_new_qc_req = NULL
    LET m_scr_irctd_rec.qc_req = NULL

	INITIALIZE f_incr_cde_dt TO NULL
	INITIALIZE f_hold_lp TO NULL 

	  INPUT m_scr_irctd_rec.appt_id,
	        m_scr_irctd_rec.rcpt_id,
	        m_scr_irctd_rec.lic_plt_id,
			m_scr_irctd_rec.upc_id,
			m_scr_irctd_rec.prod_id,
			m_scr_irctd_rec.prdd_id,
			#m_scr_irctd_rec.lot_no, #LMISHRA:T20210316.0163:Add Repack:3/2/2021
			m_scr_irctd_rec.urcp_id,
			m_scr_irctd_rec.rct_qty,
			m_scr_irctd_rec.qty_damaged,
			m_scr_irctd_rec.inner_pack_unit,
			m_scr_irctd_rec.stor_ti,
			m_scr_irctd_rec.stor_hi,
			m_scr_irctd_rec.code_date,
			m_scr_irctd_rec.qc_req WITHOUT DEFAULTS
	   FROM    
			s_rf_vrfy.appt_id,
			s_rf_vrfy.rcpt_id,
			s_rf_vrfy.lic_plt_id,
			s_rf_vrfy.upc_id,
			s_rf_vrfy.prod_id,
			s_rf_vrfy.prdd_id,
			#s_rf_vrfy.lot_no, #LMISHRA:T20210316.0163:Add Repack:3/2/2021
			s_rf_vrfy.urcp_id,
			s_rf_vrfy.rct_qty,
			s_rf_vrfy.qty_damaged,
			s_rf_vrfy.inner_pack_unit,
			s_rf_vrfy.stor_ti,
			s_rf_vrfy.stor_hi,
			s_rf_vrfy.code_date,
			s_rf_vrfy.qc_req 

		BEFORE INPUT 
			DISPLAY m_scr_irctd_rec.dc_id TO s_rf_vrfy.dc_id
				ATTRIBUTE(NORMAL)
			DISPLAY m_scr_irctd_rec.whse_id TO s_rf_vrfy.whse_id
				ATTRIBUTE(NORMAL)
			DISPLAY m_scr_irctd_rec.rcv_whse_id TO s_rf_vrfy.rcv_whse_id
				ATTRIBUTE(NORMAL)

			IF m_scr_irctd_rec.rct_qty IS NOT NULL
			THEN
				LET f_hold_qty = m_scr_irctd_rec.rct_qty
			ELSE
				LET f_hold_qty = 0
			END IF
			LET f_old_code_date = NULL
			LET f_override_date = NULL

		BEFORE FIELD appt_id
			LET m_hold_appt_id = m_scr_irctd_rec.appt_id
			IF fgl_lastkey() = fgl_keyval("UP")
			OR fgl_lastkey() = fgl_keyval("LEFT")
			OR m_add_update = "A"
			THEN
				LET m_add_update = "A"

				IF f_new_msg_flag = "Y"
				THEN
					CALL sh_rf_cmd_msg("I9147")
				ELSE
					CALL sh_rf_cmd_msg("I9062") 	#-- enter appt
				END IF

				DISPLAY m_scr_irctd_rec.appt_id TO s_rf_vrfy.appt_id
					ATTRIBUTE(REVERSE)
			ELSE
				NEXT FIELD s_rf_vrfy.lic_plt_id
			END IF

		BEFORE FIELD rcpt_id
			IF m_scr_irctd_rec.appt_id IS NULL THEN
				-- Make them enter the appt first
				NEXT FIELD s_rf_vrfy.lic_plt_id
			END IF
			IF m_add_update = "M"
			THEN
				NEXT FIELD s_rf_vrfy.lic_plt_id
			END IF

			CALL sh_rf_cmd_msg("I1181") 	#-- enter receipt
			DISPLAY m_scr_irctd_rec.rcpt_id TO s_rf_vrfy.rcpt_id
					ATTRIBUTE(REVERSE)

		BEFORE FIELD lic_plt_id
			IF f_new_msg_flag = "Y" OR
			   (m_scr_irctd_rec.appt_id IS NOT NULL AND
			    m_scr_irctd_rec.rcpt_id IS NOT NULL)
			THEN
				CALL sh_rf_cmd_msg("I9088") #-- Ent Lic-P,F3 Ver/Cls
			ELSE
				CALL sh_rf_cmd_msg("I9075")	#-- Ent Lic-P, DEL Abort
			END IF
			LET m_add_update = "M"
			LET m_iinvd_found = TRUE 
			LET f_ipod_system_flag = NULL
				
			DISPLAY m_scr_irctd_rec.lic_plt_id TO s_rf_vrfy.lic_plt_id
				ATTRIBUTE(REVERSE)

		BEFORE FIELD upc_id
			IF m_add_update = "M"
			THEN
				NEXT FIELD s_rf_vrfy.rct_qty
			END IF
			CALL sh_rf_cmd_msg("I9071")	#-- enter upc
			DISPLAY m_scr_irctd_rec.upc_id TO s_rf_vrfy.upc_id
				ATTRIBUTE(REVERSE)

		BEFORE FIELD prod_id
			IF f_rf_chk = TRUE
			THEN
				LET f_rf_chk = FALSE
			ELSE
				IF m_add_update = "M"
				THEN
					IF (fgl_lastkey() = fgl_keyval("UP")
   	        		OR  fgl_lastkey() = fgl_keyval("LEFT"))
   	        		THEN 
						NEXT FIELD s_rf_vrfy.lic_plt_id
   	        		END IF 
					IF m_ret_iprod.lot_no_cntl = 'Y'
	                THEN
    	                #NEXT FIELD lot_no
						NEXT FIELD s_rf_vrfy.rct_qty #LM
        	        ELSE
            	        NEXT FIELD s_rf_vrfy.rct_qty
                	END IF
				END IF
			END IF

			CALL sh_rf_cmd_msg("I9053")	#-- enter product
			DISPLAY m_scr_irctd_rec.prod_id TO s_rf_vrfy.prod_id
				ATTRIBUTE(REVERSE)

		BEFORE FIELD prdd_id
			IF m_add_update = "M"
			THEN
				IF (fgl_lastkey() = fgl_keyval("UP")
           		OR  fgl_lastkey() = fgl_keyval("LEFT"))
           		THEN 
					NEXT FIELD s_rf_vrfy.lic_plt_id
           		END IF 
				IF m_ret_iprod.lot_no_cntl = 'Y' 
				THEN
					#NEXT FIELD lot_no
					NEXT FIELD s_rf_vrfy.rct_qty #LM
				ELSE
					NEXT FIELD s_rf_vrfy.rct_qty
				END IF
			END IF

			CALL sh_rf_cmd_msg("I9065")	#-- enter detail
			DISPLAY m_scr_irctd_rec.prdd_id TO s_rf_vrfy.prdd_id
				ATTRIBUTE(REVERSE)

		#LM
		{BEFORE FIELD lot_no
			IF m_ret_iprod.lot_no_cntl IS NULL
			OR m_ret_iprod.lot_no_cntl <> "Y"
			THEN
				IF fgl_lastkey() = fgl_keyval("UP")
				OR	fgl_lastkey() = fgl_keyval("LEFT")
				THEN
					NEXT FIELD s_rf_vrfy.lic_plt_id
				END IF
				IF fgl_lastkey() = fgl_keyval("DOWN")
				THEN
					NEXT FIELD s_rf_vrfy.urcp_id
				END IF
			END IF

			CALL sh_rf_cmd_msg("I9204")	#-- enter lot no
			DISPLAY m_scr_irctd_rec.lot_no TO s_rf_vrfy.lot_no
				ATTRIBUTE(REVERSE)}
		#LM

		BEFORE FIELD urcp_id
			CALL sh_rf_cmd_msg("I1179")	#-- enter ship or case
			DISPLAY m_scr_irctd_rec.urcp_id TO s_rf_vrfy.urcp_id
				ATTRIBUTE(REVERSE)

		BEFORE FIELD rct_qty
			IF (m_ret_ipo.po_type = "WT" 
				OR m_ret_ipo.po_type = "DT")
			AND m_sacvv_value <> "Y" THEN
				IF fgl_lastkey() = fgl_keyval("UP")
				OR fgl_lastkey() = fgl_keyval("LEFT")
				THEN
					NEXT FIELD s_rf_vrfy.urcp_id
				END IF
				NEXT FIELD s_rf_vrfy.qty_damaged
			END IF

			IF f_old_rct_qty IS NOT NULL
			THEN
				LET m_scr_irctd_rec.rct_qty = f_old_rct_qty
			END IF 

			CALL sh_rf_cmd_msg("I9077")	#-- enter rcvd qty
			DISPLAY m_scr_irctd_rec.rct_qty TO s_rf_vrfy.rct_qty
				ATTRIBUTE(REVERSE)

			IF m_scr_irctd_rec.rct_qty IS NOT NULL
			THEN
				LET f_old_rct_qty = m_scr_irctd_rec.rct_qty
				LET f_hold_qty = m_scr_irctd_rec.rct_qty
			ELSE
				LET f_old_rct_qty = 0
				LET f_hold_qty = 0
			END IF

			CALL find_iinvd_cde_dt(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.rcv_whse_id,
									m_scr_irctd_rec.lic_plt_id)

			IF m_iinvd_cde_dt <> "12/31/2099"
			AND m_iinvd_cde_dt <> "12/31/1899"
			AND m_scr_irctd_rec.code_date IS NULL
			THEN
				LET m_scr_irctd_rec.code_date = m_iinvd_cde_dt
				DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
					ATTRIBUTE(NORMAL)
			END IF

		BEFORE FIELD qty_damaged 
			CALL sh_rf_cmd_msg("I9137") 	#-- enter pallet damage qty
			DISPLAY m_scr_irctd_rec.qty_damaged TO s_rf_vrfy.qty_damaged
				ATTRIBUTE(REVERSE)

		BEFORE FIELD stor_ti
			CALL sh_rf_cmd_msg("I9073")	#-- enter store ti
			DISPLAY m_scr_irctd_rec.stor_ti TO s_rf_vrfy.stor_ti
				ATTRIBUTE(REVERSE)

		BEFORE FIELD stor_hi
			CALL sh_rf_cmd_msg("I9074")	#-- enter store hi
			DISPLAY m_scr_irctd_rec.stor_hi TO s_rf_vrfy.stor_hi
				ATTRIBUTE(REVERSE)

		BEFORE FIELD code_date

			IF f_old_code_date IS NULL
			AND m_scan_rec.code_date IS NOT NULL 
			THEN
			--Do nothing
			ELSE
				LET f_old_code_date = m_scr_irctd_rec.code_date
			END IF

			IF m_ret_iprod.pwy_dte_ctl = "Y"
			THEN
				CALL sh_rf_cmd_msg("I9066")	#-- enter code date
			ELSE
				IF m_scr_irctd_rec.code_date IS NULL
				THEN
					LET m_scr_irctd_rec.code_date = CURRENT
				END IF
				DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
					ATTRIBUTE(NORMAL)

				IF fgl_lastkey() = fgl_keyval("UP")
				OR fgl_lastkey() = fgl_keyval("LEFT")
				THEN
					NEXT FIELD s_rf_vrfy.stor_hi
				END IF
				NEXT FIELD qc_req
			END IF

			DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
				ATTRIBUTE(REVERSE)

		ON KEY (CONTROL-P)
	    	CALL spprtscr()

		ON KEY (ESCAPE, INTERRUPT, DELETE)
			IF m_scr_irctd_rec.lic_plt_id IS NULL
			THEN
				LET int_flag = FALSE
				LET f_abort = TRUE
				LET f_qc_status = NULL
			ELSE
				# reset to original status 
				#------------------------
                IF m_orig_rdst_id IS NOT NULL
                THEN
                    CALL update_irctd(m_orig_rdst_id)
                END IF

				LET m_scr_irctd_rec.* = m_scr_irctd_null.*
				LET m_func_key = "CL"	#-- just clearing screen		
			END IF
			EXIT INPUT

		ON KEY (F1)
		    # validate_irctd returns a number in f_ret_status which will
			# refer to edit checking done on the screen record.  The number
			# can then be used to Next Field to the value in error/missing. 
			#--------------------------------------------------------------
			CALL get_fldbuf(lic_plt_id, prod_id, prdd_id, upc_id,
							stor_ti, stor_hi, rct_qty, urcp_id, 
							qty_damaged, lot_no, code_date, qc_req)
				RETURNING m_scr_irctd_rec.lic_plt_id, m_scr_irctd_rec.prod_id,
							m_scr_irctd_rec.prdd_id, m_scr_irctd_rec.upc_id,
							m_scr_irctd_rec.stor_ti, m_scr_irctd_rec.stor_hi,
							m_scr_irctd_rec.rct_qty, m_scr_irctd_rec.urcp_id,
							m_scr_irctd_rec.qty_damaged,  
							m_scr_irctd_rec.lot_no,  m_scr_irctd_rec.code_date,
							m_scr_irctd_rec.qc_req

			LET f_ret_status = validate_irctd()

			IF f_ret_status = 0
			OR f_ret_status = 1
			THEN
				LET m_func_key = "EN"		 #-- irctd complete for this pallet 
				CONTINUE INPUT
			END IF
			CALL sh_rf_cmd_msg("I9087")	 #-- required field
			SLEEP 1

			CASE f_ret_status
				WHEN 2
					NEXT FIELD s_rf_vrfy.prod_id
				WHEN 3
					NEXT FIELD s_rf_vrfy.prdd_id
				WHEN 4
					NEXT FIELD s_rf_vrfy.code_date
				WHEN 5
					NEXT FIELD s_rf_vrfy.stor_ti
				WHEN 6
					NEXT FIELD s_rf_vrfy.stor_hi
				WHEN 7
					NEXT FIELD s_rf_vrfy.rct_qty
				WHEN 8
					NEXT FIELD s_rf_vrfy.urcp_id
				WHEN 9
					#NEXT FIELD s_rf_vrfy.lot_no
					NEXT FIELD s_rf_vrfy.rct_qty #LM
				WHEN -1
					NEXT FIELD s_rf_vrfy.qc_req
				OTHERWISE
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					LET m_msg = "system failure"
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
					SLEEP 2
					LET m_func_key = "QU"
					EXIT INPUT
			END CASE

		ON KEY (F2)
			IF INFIELD(appt_id)
			THEN
				LET f_ret_status = select_po()
				IF f_ret_status = TRUE
				THEN
					NEXT FIELD s_rf_vrfy.appt_id
				END IF

				CALL lkp_ipo(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.po_id)
					RETURNING f_ret_status, m_ret_ipo.*
				DISPLAY m_scr_irctd_rec.po_id[10,18] TO s_rf_vrfy.po_id ATTRIBUTE(NORMAL) 
				DISPLAY m_scr_irctd_rec.rcv_whse_id TO s_rf_vrfy.rcv_whse_id
					ATTRIBUTE(NORMAL)
			END IF

		ON KEY (F3)
			IF m_scr_irctd_rec.appt_id IS NULL
			THEN
				CALL sh_rf_cmd_msg("I9087")	 #-- required field
				SLEEP 1
				NEXT FIELD s_rf_vrfy.appt_id
			END IF
			LET m_func_key = "F3"
			EXIT INPUT

		ON KEY (F4)
			IF INFIELD(prod_id)
			OR INFIELD(upc_id)
			THEN
				DISPLAY m_scr_irctd_rec.upc_id TO s_rf_vrfy.upc_id
					ATTRIBUTE(NORMAL)
				DISPLAY m_scr_irctd_rec.prod_id TO s_rf_vrfy.prod_id
					ATTRIBUTE(NORMAL)

				IF m_scr_irctd_rec.prod_id IS NULL
				OR m_scr_irctd_rec.upc_id IS NULL 
				THEN
					#-----------------
					# retrieve product 
					#-----------------
					CALL get_list_prod(m_scr_irctd_rec.dc_id,
									   m_scr_irctd_rec.rcv_whse_id,
									   m_scr_irctd_rec.appt_id)
							 RETURNING f_ret_status, f_ret_choice

					IF f_ret_status = TRUE
					THEN	   
						NEXT FIELD s_rf_vrfy.upc_id
					END IF
	
					IF f_ret_choice = 0
					THEN
						CALL sh_rf_cmd_msg("I9090")	#-- product not on po
						SLEEP 1
						LET m_scr_irctd_rec.prod_id = NULL
						NEXT FIELD s_rf_vrfy.upc_id
					END IF

					CALL sel_prod(m_scr_irctd_rec.dc_id,
								  m_scr_irctd_rec.rcv_whse_id,
								  m_scr_irctd_rec.appt_id)
						RETURNING f_ret_status, f_ret_choice

					IF f_ret_status = FALSE
					THEN
						CALL move_list_data(f_ret_choice)
						CALL display_irctd()

						#-----------------
						# retrieve product
						#-----------------
						CALL proc_po_prod("P") RETURNING f_ret_status,
														 f_ret_choice
					    IF f_ret_status 
					    THEN
							NEXT FIELD s_rf_vrfy.prod_id
						END IF

						#------------------------
						# retrieve product detail
						#------------------------
					    IF proc_prod_prdd(f_ret_choice) = TRUE
					    THEN
							NEXT FIELD s_rf_vrfy.prdd_id
						END IF
						CALL display_irctd()

						# Calculate the code date
						IF m_ret_iprod.pwy_dte_ctl = "Y"
						AND m_ret_iprod.cde_dt_var >= f_dflt_days
						AND m_ret_iprod.cde_dt_incr = 0
						# Cannot be a transfer PO
						AND (m_ret_ipo.po_type <> "TR"
				  		OR m_ret_ipo.po_type IS NULL)
						# Cannot be a synergy PO
						AND m_ret_ipo.vend_id <> "00019108"
						THEN
							CALL get_code_date_info(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.prod_id,
									m_ret_ipod.po_id,
									m_ret_ipod.pod_id,
									'V')
								RETURNING m_calc_code_date
							LET m_calc_cde_dt_flg = 'Y'
							LET m_scr_irctd_rec.code_date = m_calc_code_date
							DISPLAY m_scr_irctd_rec.code_date 
									TO s_rf_vrfy.code_date ATTRIBUTE(NORMAL)
						ELSE
							INITIALIZE m_calc_code_date TO NULL 
							LET m_calc_cde_dt_flg = 'N'
						END IF

						IF m_ret_iprod.lot_no_cntl = 'Y'
                		THEN
                    		#NEXT FIELD lot_no
							NEXT FIELD s_rf_vrfy.rct_qty #LM
                		ELSE
                    		NEXT FIELD s_rf_vrfy.rct_qty
							CALL next_blank("R")	#-- clear rct_qty only
                		END IF
					END IF
					CALL display_irctd()
					NEXT FIELD s_rf_vrfy.upc_id
				END IF
			ELSE
				######################################################
				# View the Vendor Profile Exception screen.
				######################################################
				IF m_ret_ipod.po_id IS NOT NULL
				AND m_scr_irctd_rec.appt_id IS NOT NULL
				THEN
					CALL display_ivore_dt(  g_user.lang_id,
											m_scr_irctd_rec.appt_id,
											m_ret_ipod.po_id,
											m_upd_vorex,
											m_scr_irctd_rec.dc_id,
											m_scr_irctd_rec.whse_id,
											g_user.user_id)
						RETURNING f_ret_status
					IF f_ret_status
					THEN
						CALL sh_rf_err_msg("R4999") ## System error
						CONTINUE INPUT
					END IF
				ELSE
					CALL sh_rf_err_msg("R3010") ## Enter a valid Prod/Dtl first
					CONTINUE INPUT
				END IF
			END IF

		ON KEY (CONTROL-F)
			IF m_ret_ipod.po_id IS NOT NULL
			AND m_scr_irctd_rec.appt_id IS NOT NULL
			THEN
				######################################################
				# Function displays its own errors, etc.
				######################################################
				CALL view_perform(	m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.whse_id,
									m_scr_irctd_rec.appt_id,
									m_ret_aassg.assg_id,
									m_ret_aassg.asgt_id,
									m_ret_aassg.assoc_id,
									m_ret_aassg.start_dtim,
									'N',				## Audit level
									m_recalc_day)
				LET m_recalc_day = FALSE
			ELSE
				CALL sh_rf_err_msg("R3010") ## Enter a valid Prod/Dtl first
				CONTINUE INPUT
			END IF

		ON KEY (CONTROL-G)
			IF m_ret_ipod.po_id IS NOT NULL
			AND m_scr_irctd_rec.appt_id IS NOT NULL
			THEN
				######################################################
				# Function displays its own errors, etc.
				######################################################
				CALL load_task_scrn(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.whse_id,
									m_scr_irctd_rec.appt_id,
									m_ret_ipod.po_id,
									g_user.user_id,
									g_user.lang_id,
									m_ret_aassg.asgt_id)
					RETURNING f_task_del, m_load_task.*
				IF f_task_del
				THEN
					LET m_load_task.load_prep   = FALSE
					LET m_load_task.pinwheel    = FALSE
					LET m_load_task.man_unstk   = FALSE
					LET m_load_task.fork_unstk  = FALSE
					LET m_load_task.spec_hnd    = FALSE
					CONTINUE INPUT
				END IF
			ELSE
				CALL sh_rf_err_msg("R3010") ## Enter a valid Prod/Dtl first
				CONTINUE INPUT
			END IF

		ON KEY (CONTROL-Q)
			IF m_ret_ipod.po_id IS NOT NULL
			AND m_scr_irctd_rec.appt_id IS NOT NULL
			THEN
				LET f_alarm = "N"
				CALL sh_rf_ysno_msg("R3000","N")    ## Send alarm on PO?
					RETURNING m_ignore, f_alarm
				IF f_alarm = "Y"
				THEN
					CALL msg_send_alert("PurchaseOrder",
										"UserAlarm",
										 m_ret_ipod.po_id)
					LET m_msg = "User Alarm sent.  P.O.=", m_ret_ipod.po_id
					LET m_ignore = se_log_xevent (300, m_msg,
						g_icomm.curr_prg_name, m_module, "%C")
					CALL sh_rf_cmd_msg("R5621") ## Alarm sent.
					SLEEP 2
					LET m_chkr_flg.alarm = TRUE
				END IF
			ELSE
				CALL sh_rf_err_msg("R3010") ## Enter valid Prod first.
			END IF

		BEFORE FIELD qc_req
            CALL sh_rf_cmd_msg("I9971")
            DISPLAY m_scr_irctd_rec.qc_req TO s_rf_vrfy.qc_req
                ATTRIBUTE(REVERSE)

		AFTER FIELD appt_id
			DISPLAY m_scr_irctd_rec.appt_id TO s_rf_vrfy.appt_id
				ATTRIBUTE(NORMAL)

			##########################################################
			# New 'trip', so run labor calc if anything new was added.
			##########################################################
			IF (m_hold_appt_id <> m_scr_irctd_rec.appt_id)
			AND m_scr_irctd_rec.appt_id IS NOT NULL
			THEN
				IF m_rows_added = TRUE
				AND m_albdf.chk_stds_calc_flg = "Y"
				THEN
					CALL rf_unload_calc(m_ret_aassg.assg_id,
										m_trip_no,
										m_audit_lvl,
										'Y')			## Update table?
						RETURNING f_aborted, f_err_code, f_std_tim
					IF f_aborted = TRUE
					THEN
						CALL sh_rf_cmd_msg("R5620") ## Standards calc error
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,7504, "EXIT: input_irctd")
						RETURN TRUE
					END IF
					LET m_rows_added = FALSE
					LET m_recalc_day = TRUE
				END IF
				LET m_trip_no = m_trip_no + 1
				LET m_trip_seq = 1
			END IF

			IF m_scr_irctd_rec.appt_id IS NOT NULL
			THEN
				CALL lkp_iapt(m_scr_irctd_rec.dc_id,m_scr_irctd_rec.rcv_whse_id,
							  m_scr_irctd_rec.appt_id)
					RETURNING f_ret_status, m_ret_iapt.*

				IF f_ret_status = TRUE
				THEN
					CALL sh_rf_cmd_msg("I9093")	#-- appt not found
					SLEEP 1
					NEXT FIELD s_rf_vrfy.rcpt_id
					#NEXT FIELD s_rf_vrfy.appt_id
				END IF
				IF m_ret_iapt.closed_flg = "Y"
				THEN
					CALL sh_rf_cmd_msg("I9177")	#-- appt is closed
					SLEEP 1
					NEXT FIELD s_rf_vrfy.appt_id
				END IF

				IF m_scr_irctd_rec.po_id IS NULL
				OR m_scr_irctd_rec.rcv_whse_id IS NULL
				THEN
					LET f_ret_status = select_po()
					IF f_ret_status = TRUE
					THEN
						NEXT FIELD s_rf_vrfy.appt_id
					END IF

					CALL lkp_ipo(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.po_id)
						RETURNING f_ret_status, m_ret_ipo.*
					DISPLAY m_scr_irctd_rec.po_id[10,18] TO s_rf_vrfy.po_id ATTRIBUTE(NORMAL) 
					DISPLAY m_scr_irctd_rec.rcv_whse_id TO s_rf_vrfy.rcv_whse_id
						ATTRIBUTE(NORMAL)
					NEXT FIELD s_rf_vrfy.rcpt_id
				END IF

			END IF
			IF fgl_lastkey() = fgl_keyval("UP")
            THEN 
				NEXT FIELD s_rf_vrfy.lic_plt_id
			END IF

		AFTER FIELD rcpt_id

			DISPLAY m_scr_irctd_rec.rcpt_id TO s_rf_vrfy.rcpt_id
				ATTRIBUTE(NORMAL)

			IF m_scr_irctd_rec.rcpt_id IS NOT NULL
			THEN
				CALL lkp_irct(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.rcpt_id,
							  m_scr_irctd_rec.po_id)
	    			RETURNING f_ret_status, m_ret_irct.*

				IF m_ret_irct.rcpt_id IS NULL 
				THEN
           	    	CALL sh_rf_cmd_msg("I1182")	#-- no rcpt record
					SLEEP 1
					NEXT FIELD s_rf_vrfy.rcpt_id
				END IF

				LET m_scr_irctd_rec.po_id = m_ret_irct.po_id 
				LET m_scr_irctd_rec.rcv_whse_id = m_ret_irct.whse_id 
			
				SELECT COUNT(*)
				  INTO f_ipod_cnt
				  FROM ipod, irctd
				 WHERE ipod.dc_id	 = m_scr_irctd_rec.dc_id
				   AND ipod.po_id    = m_scr_irctd_rec.po_id
				   AND ipod.plst_id  = "V"
				   AND ipod.dc_id    = irctd.dc_id
				   AND ipod.po_id    = irctd.po_id
				   AND ipod.pod_id   = irctd.pod_id
				   AND irctd.rcpt_id <> m_scr_irctd_rec.rcpt_id

				IF f_ipod_cnt <> 0
				THEN
					CALL sh_rf_cmd_msg("I1183")	#-- other user receiving po
					SLEEP 1
					NEXT FIELD s_rf_vrfy.rcpt_id
				END IF

				IF orig_cstm_vrfy = "Y" THEN 
					LET f_return = check_ver_method("O") 

					IF f_return = TRUE THEN
						CALL sh_rf_info_msg3("C9158") 
						LET m_cstm_vrfy = "Y"
                		LET m_func_key = "SM"  # Continue main loop
						LET f_return = get_printer()
						RETURN FALSE
					END IF 
				END IF 

				LET m_rcpt_id = m_ret_irct.rcpt_id
				CALL updt_m_array(	m_scr_irctd_rec.po_id, 
									m_scr_irctd_rec.rcv_whse_id, 
									m_scr_irctd_rec.appt_id,
									m_scr_irctd_rec.rcpt_id )
			END IF

		AFTER FIELD lic_plt_id
			DISPLAY m_scr_irctd_rec.lic_plt_id TO s_rf_vrfy.lic_plt_id
				ATTRIBUTE(NORMAL)

			IF m_comp_lic_plt IS NOT NULL
			AND m_scr_irctd_rec.lic_plt_id IS NOT NULL
			AND m_comp_lic_plt <> m_scr_irctd_rec.lic_plt_id 
			THEN
				--User scanned an existing plate, then changed the plate. 
				--Need to reset values.
 				IF m_orig_rdst_id IS NOT NULL THEN
					LET f_hold_lp = m_scr_irctd_rec.lic_plt_id
					LET m_scr_irctd_rec.lic_plt_id = m_comp_lic_plt
 					CALL update_irctd(m_orig_rdst_id)
					LET m_scr_irctd_rec.lic_plt_id = f_hold_lp
					INITIALIZE f_hold_lp TO NULL
				END IF
 				CALL next_blank("C")
 				LET f_old_rct_qty = NULL
				INITIALIZE m_ret_irctd.* TO NULL
			END IF 

			LET m_comp_lic_plt = m_scr_irctd_rec.lic_plt_id 

			LET m_lic_plt_glob =  m_scr_irctd_rec.lic_plt_id
			IF m_scr_irctd_rec.lic_plt_id IS NOT NULL
			THEN

				CALL process_EAN128_scan(m_scr_irctd_rec.lic_plt_id) 
					RETURNING m_ignore

				IF m_scan_rec.lic_plt_id IS NOT NULL
				THEN
					LET m_scr_irctd_rec.lic_plt_id = m_scan_rec.lic_plt_id
				END IF

                CALL capture_UPC(m_scr_irctd_rec.lic_plt_id)
				RETURNING m_ignore

				# FBR IAB-743 get receiving warehouse if 
				#not already found via appt
				IF m_scr_irctd_rec.po_id IS NULL
                THEN
                    IF m_scr_irctd_rec.rcpt_id IS NULL
                    THEN
						SELECT whse_id,po_id,pod_id INTO m_scr_irctd_rec.rcv_whse_id,
								m_scr_irctd_rec.po_id, m_scr_irctd_rec.pod_id 
						FROM irctd
						WHERE dc_id = m_scr_irctd_rec.dc_id
						AND lic_plt_id = m_scr_irctd_rec.lic_plt_id
					ELSE
						SELECT whse_id,po_id,pod_id INTO m_scr_irctd_rec.rcv_whse_id,
								m_scr_irctd_rec.po_id, m_scr_irctd_rec.pod_id 
						FROM irctd
						WHERE dc_id = m_scr_irctd_rec.dc_id
						AND lic_plt_id = m_scr_irctd_rec.lic_plt_id
						AND rcpt_id = m_scr_irctd_rec.rcpt_id
					END IF
		
					IF SQLCA.SQLCODE < 0 THEN
						IF SQLCA.SQLCODE = -284 THEN
							CALL sh_rf_cmd_msg("R7079")  # Multiple LPs for DC.  Need to scan APPT and Receipt
							SLEEP 2
							NEXT FIELD s_rf_vrfy.appt_id
							 							
						ELSE
 
							IF SQLCA.SQLCODE <> -284 THEN

								LET m_msg = "SELECT irctd failed! SQLCODE:",
								SQLCA.SQLCODE," ISAM:", SQLCA.SQLERRD[2]
								LET f_ret_status = sh_elog_4gl(m_module,"%C%",m_msg)
								LET f_ret_status = sh_mlog_4gl(g_std_func_chan,
								m_module,"%C%","EXIT: input_irctd")
								CALL sh_rf_cmd_msg("I9060")
								SLEEP 2
								RETURN TRUE
							END IF
						END IF
					ELSE
						LET m_scr_irctd_rec.whse_id 
								= m_scr_irctd_rec.rcv_whse_id
						DISPLAY m_scr_irctd_rec.whse_id TO s_rf_vrfy.whse_id
								ATTRIBUTE(NORMAL)
						DISPLAY m_scr_irctd_rec.rcv_whse_id 
								TO s_rf_vrfy.rcv_whse_id
								ATTRIBUTE(NORMAL)
					END IF
				END IF

				IF m_scr_irctd_rec.lic_plt_id = 0
				THEN
					NEXT FIELD s_rf_vrfy.lic_plt_id
				END IF

				#############################################################
				## Determine if putaway has been run for this pallet, if   ##
				## not, check to see if putaway at receiving is turned on, ##
				## if it is, display error, but allow user to continue.    ##
				#############################################################
				SELECT	UNIQUE 1
				FROM	irctd
				WHERE	dc_id = m_scr_irctd_rec.dc_id
				  AND	lic_plt_id = m_scr_irctd_rec.lic_plt_id
				  AND	rdst_id = "P"
				IF SQLCA.SQLCODE < 0
				THEN
					LET m_msg = "SELECT irctd failed. SQLCODE:",
						SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
					CALL sh_rf_cmd_msg("I9060")
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,
						m_module,"%C%", "EXIT: input_irctd")
					RETURN TRUE
				END IF
				IF SQLCA.SQLCODE = 0
				THEN
					SELECT	UNIQUE 1
					FROM	swhse
					WHERE   dc_id = m_scr_irctd_rec.dc_id
					AND		whse_id = m_scr_irctd_rec.whse_id
					AND		ptwy_at_rc = 'Y'
					IF SQLCA.SQLCODE < 0
					THEN
						LET m_msg = "SELECT swhse failed. SQLCODE:",
							SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
						CALL sh_rf_cmd_msg("I9060")
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: input_irctd")
						RETURN TRUE
					END IF
					IF SQLCA.SQLCODE = 0
					THEN
						LET f_ptwy_at_rc = 'Y'
						CALL sh_rf_cmd_msg("I6007")
						SLEEP 2
					END IF
				END IF
				#############################################################

                #------------------------------------------------------------------#
                #//////////////////////////////////////////////////////////////////#
                #  Following codes are added based on IAB 084                      #
                #\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\#
                #                                                           jjt--  #
                #------------------------------------------------------------------#
				CALL lkp_ipo(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.po_id) 
					RETURNING f_ret_status, m_ret_ipo.* 

                IF m_ret_ipo.po_type = "WT" 
                OR m_ret_ipo.po_type = "DT" 
				THEN
                    LET f_dc_id    = m_scr_irctd_rec.dc_id 
                    LET f_whse_id  = m_scr_irctd_rec.whse_id 
                    LET m_scope_key =  f_dc_id clipped, "-", f_whse_id clipped
                    CALL val_sacvv("WAREHOUSE_TRANSFER", "auto_inv_adjust","WH",
                                    m_scope_key) RETURNING f_abort_wt, f_sacvv.*
                
                    IF f_abort_wt = TRUE THEN
                       LET m_sacvv_value = "N"
                    ELSE
                
                       IF f_sacvv.value = "Y" THEN
                          LET m_sacvv_value = "Y"
                       ELSE
                          LET m_sacvv_value = "N"
                       END IF
                   
                    END IF
               	END IF

				IF orig_cstm_vrfy = "Y" 
				AND m_ret_ipo.prnt_notice = "P"
				THEN 
					LET m_scr_irctd_rec.appt_id = NULL 
					LET m_scr_irctd_rec.rcpt_id = NULL 
					LET m_scr_irctd_rec.po_id = NULL 
					CALL sh_rf_info_msg3("C9158")
					LET m_cstm_vrfy = "Y"
                	LET m_func_key = "SM"  # Continue main loop
					LET f_return = get_printer()
					RETURN FALSE
				END IF 

                #------------------------------------------------------------------#
				LET m_scr_irctd_rec.rcv_whse_id = m_scr_irctd_rec.whse_id
				LET f_lp_char   = m_scr_irctd_rec.lic_plt_id 
					USING "&&&&&&&&&&&&&&&&&&"

				LET f_lp_num    = f_lp_char[9,17]  

				EXECUTE p_iasn_cnt INTO f_iasn_cnt
					USING  m_scr_irctd_rec.lic_plt_id, m_scr_irctd_rec.po_id

				IF SQLCA.SQLCODE < 0 THEN
					LET m_msg = "EXECUTE p_iasn_cnt FAILED. SQLCODE:",
						SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,4546,m_msg)
					CALL sh_rf_cmd_msg("I9060")
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,
						m_module,"%C%", "EXIT: input_irctd")
					RETURN TRUE
				END IF

				IF f_iasn_cnt = 0 THEN 

					OPEN c_plate_whse USING m_scr_irctd_rec.dc_id,
											f_lp_num,
											f_lp_num

					IF SQLCA.SQLCODE < 0
					THEN
						LET m_msg = "OPEN c_plate_whse failed. SQLCODE:",
							SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
						CALL sh_rf_cmd_msg("I9060")
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: input_irctd")
						RETURN TRUE
					END IF

					FETCH c_plate_whse INTO m_scr_irctd_rec.rcv_whse_id

					IF SQLCA.SQLCODE < 0
					THEN
						LET m_msg = "FETCH c_plate_whse failed. SQLCODE:",
							SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
						CALL sh_rf_cmd_msg("I9060")
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: input_irctd")
						RETURN TRUE
					END IF

					IF SQLCA.SQLCODE < 0
					THEN
						LET m_msg = "Warehouse not found for plate ",
							m_scr_irctd_rec.lic_plt_id, " in dc ",
							m_scr_irctd_rec.dc_id
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
					END IF

					CALL check_snrng(m_scr_irctd_rec.dc_id,
								 m_scr_irctd_rec.rcv_whse_id,
								 m_scr_irctd_rec.lic_plt_id)
					 	RETURNING f_ret_status, f_msg

					IF f_ret_status
					THEN
						CALL sh_rf_cmd_msg(f_msg)	#-- not in valid range or > curr no
						SLEEP 1
						NEXT FIELD s_rf_vrfy.lic_plt_id 
					END IF
				END IF

				CALL find_irctd(m_scr_irctd_rec.dc_id,
							    m_scr_irctd_rec.rcv_whse_id,
							    m_scr_irctd_rec.lic_plt_id)
					RETURNING f_ret_status

				IF f_ret_status = TRUE 		#-- not found
				THEN

                    ## Only check the range if it is a new
                    ## license plate                      
					CALL check_snrng(m_scr_irctd_rec.dc_id,
								 m_scr_irctd_rec.rcv_whse_id,
								 m_scr_irctd_rec.lic_plt_id)
					 	RETURNING f_ret_status, f_msg
					IF f_ret_status
					THEN
						CALL sh_rf_cmd_msg(f_msg)	#-- not in valid range or > curr no
						SLEEP 1
						NEXT FIELD s_rf_vrfy.lic_plt_id 
					END IF

					CALL find_iinvd(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.rcv_whse_id,
									m_scr_irctd_rec.lic_plt_id)
						RETURNING f_ret_status, f_pal_count

					IF f_ret_status = TRUE
					THEN
						NEXT FIELD s_rf_vrfy.lic_plt_id
					END IF
					IF f_pal_count = 0
					AND m_scr_irctd_rec.appt_id IS NOT NULL
					THEN
						IF m_ret_aassg.asgt_id = "C"
						THEN
							##############################
							# Check for unloading workunit
							##############################
							LET f_ret_status = 
								find_unld_aothd(m_scr_irctd_rec.dc_id,
												m_scr_irctd_rec.whse_id,
												m_scr_irctd_rec.lic_plt_id) 
							CASE
							WHEN f_ret_status = 0
								#############################
								# Populates screen rec, m_ret_iprod.*
								# m_ret_iprdd.*, m_ret_ipod.*
								# sel loc, UPC.
								###############################	
								LET f_ret_status = move_irctd_unld()
								IF f_ret_status = TRUE
								THEN

									CALL sh_rf_cmd_msg("R5608")
									SLEEP 2
									NEXT FIELD s_rf_vrfy.lic_plt_id
								END IF
								CALL sh_rf_cmd_msg("R5801")
								SLEEP 1
								LET m_add_update = "A"
								CALL display_irctd()
								LET f_rf_chk = TRUE
								NEXT FIELD s_rf_vrfy.prod_id
							WHEN f_ret_status = NOTFOUND
								# Ok, No unloading workunit exists.
							OTHERWISE

								CALL sh_rf_cmd_msg("R5608")
								SLEEP 2
								NEXT FIELD s_rf_vrfy.lic_plt_id
							END CASE
						END IF
						CALL sh_rf_cmd_msg("I9076")	#-- new lic plt      
						LET m_gen_lic_flag = TRUE
						SLEEP 1
						LET m_add_update = "A"

						# rcpt required to continue process	
						#----------------------------------
						IF m_scr_irctd_rec.rcpt_id IS NULL
						THEN
							CALL sh_rf_cmd_msg("I9087")	 #-- required field
							SLEEP 1
							LET m_scr_irctd_rec.lic_plt_id = NULL
							NEXT FIELD s_rf_vrfy.rcpt_id
						END IF
						CALL lkp_irct(m_scr_irctd_rec.dc_id, 
									  m_scr_irctd_rec.rcpt_id,
									  m_ret_irctd.po_id)
							RETURNING f_ret_status, m_ret_irct.*

						IF m_scr_irctd_rec.appt_id IS NOT NULL
						THEN
							CALL lkp_iapt(m_scr_irctd_rec.dc_id, 
										  m_scr_irctd_rec.rcv_whse_id,
										  m_scr_irctd_rec.appt_id)
								RETURNING f_ret_status, m_ret_iapt.*

							IF f_ret_status = TRUE
							THEN
								CALL sh_rf_cmd_msg("I9093")  #-- appt not found
								SLEEP 1
								NEXT FIELD s_rf_vrfy.appt_id
							END IF
							IF m_ret_iapt.closed_flg = "Y"
							THEN
								#-- appt is closed
								CALL sh_rf_cmd_msg("I9177") 
								SLEEP 1
								NEXT FIELD s_rf_vrfy.appt_id
							END IF
						END IF

						IF m_scan_rec.lic_plt_id IS NOT NULL
						OR m_scan_rec.upc_id IS NOT NULL
						OR m_scan_rec.code_date IS NOT NULL
						OR m_scan_rec.catch_wgt IS NOT NULL
						OR m_scan_rec.lot_no IS NOT NULL
						THEN
							CALL next_blank("C")	#-- clear all+/not a,r,l
							CALL populate_from_scanned()
								RETURNING f_ret_status
							IF f_ret_status <> 0	#-- upc invalid
							THEN
								NEXT FIELD upc_id
							END IF
						END IF

                        CALL find_iinvd_cde_dt(m_scr_irctd_rec.dc_id,           
                            m_scr_irctd_rec.rcv_whse_id,                        
                            m_scr_irctd_rec.lic_plt_id)                         
                        IF m_iinvd_cde_dt <> "12/31/2099"                       
                        THEN                                                    
                            LET m_scr_irctd_rec.code_date = m_iinvd_cde_dt      
                            DISPLAY m_scr_irctd_rec.code_date 
									TO s_rf_vrfy.code_date                                                                            
                            ATTRIBUTE(NORMAL)                                   
                        END IF                                                  


						CALL display_irctd()
						NEXT FIELD s_rf_vrfy.upc_id
					END IF
					# appt required to continue process	
					#----------------------------------
					LET m_add_update = "A"
					CALL sh_rf_cmd_msg("I9087")	 #-- required field
					SLEEP 1
					LET m_scr_irctd_rec.lic_plt_id = NULL
					NEXT FIELD s_rf_vrfy.appt_id
				ELSE
					LET m_gen_lic_flag = FALSE
				END IF 
				LET m_rcpt_id = m_ret_irctd.rcpt_id 
				LET m_add_update = "M"
				CALL find_iinvd(m_scr_irctd_rec.dc_id,
								m_scr_irctd_rec.rcv_whse_id,
								m_scr_irctd_rec.lic_plt_id)
					RETURNING f_ret_status, f_pal_count
			
				IF f_ret_status = FALSE 
				THEN 
					IF f_pal_count = 0
					THEN
						LET m_iinvd_found = FALSE	## run putaway job
					END IF
				ELSE
 					 NEXT FIELD s_rf_vrfy.lic_plt_id   
				END IF 

				CALL lkp_ipod(m_ret_irctd.dc_id, m_ret_irctd.po_id,
							  m_ret_irctd.pod_id)
					RETURNING f_ret_status, f_ret_ipod.*

				LET f_ipod_system_flag = f_ret_ipod.system_flag
				LET m_scr_irctd_rec.pod_id = f_ret_ipod.pod_id
                LET f_old_qc_req = f_ret_ipod.qc_req
                LET m_scr_irctd_rec.qc_req = f_ret_ipod.qc_req

				CALL lkp_ipo(m_ret_irctd.dc_id, m_ret_irctd.po_id)
		   	    	RETURNING f_ret_status, m_ret_ipo.*

				IF f_ret_status = TRUE
				THEN
					NEXT FIELD s_rf_vrfy.lic_plt_id
				END IF

				IF orig_cstm_vrfy = "Y" 
				AND m_ret_ipo.prnt_notice = "P"
				THEN 
					CALL sh_rf_info_msg3("C9158")
					LET m_scr_irctd_rec.appt_id = NULL 
					LET m_scr_irctd_rec.rcpt_id = NULL 
					LET m_scr_irctd_rec.po_id = NULL 
					LET m_cstm_vrfy = "Y"
                	LET m_func_key = "SM"  # Continue main loop
					LET f_return = get_printer()
					RETURN FALSE
				END IF 

				IF f_ret_ipod.plst_id <> "P"
				THEN
					IF f_ret_ipod.plst_id = "H"
					THEN
						LET m_scr_irctd_rec.qc_req = NULL
						CALL sh_rf_err_msg("I1194")	#-- cannot do RF rcv recs
					ELSE   
						CALL sh_rf_cmd_msg("I1169")	#-- s/b putawayable
					END IF
					SLEEP 1

					NEXT FIELD s_rf_vrfy.lic_plt_id
				END IF

				IF m_ret_irctd.rdst_id = "E" 
				AND m_ret_irctd.receipt_user <> g_user.user_id
				#AND NOT m_entered
				THEN
					# previously scanned? check log; if not found,
					# someone is currently processing this pallet
					#---------------------------------------------
					CALL find_irctl(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.rcv_whse_id,
									m_scr_irctd_rec.lic_plt_id)
						RETURNING f_ret_status

					IF f_ret_status = TRUE		
					THEN
						CALL sh_rf_cmd_msg("I1170")	#-- already exist	
						SLEEP 1

						NEXT FIELD s_rf_vrfy.lic_plt_id
					END IF
				END IF

				CALL move_ret_irctd() RETURNING f_ret_status
				IF f_ret_status 
				THEN
					CALL sh_rf_cmd_msg("I1189")	#-- cannot receive  
					SLEEP 2
					NEXT FIELD s_rf_vrfy.lic_plt_id
				END IF

				CALL sum_rct_qty(0) RETURNING f_ret_status, m_tot_qty

			#-- flowthru
			#
			IF m_ret_swhse.flow_instld_flg = "Y"  
			AND m_ret_irctd.rctt_id = "F"
			THEN
				CALL calc_flow_dmd( m_scr_irctd_rec.dc_id,
					   	m_scr_irctd_rec.whse_id,
                                           	m_ret_irctd.prod_id,
                                           	m_ret_irctd.prdd_id,
 					   	m_ret_irctd.po_id,
					   	m_ret_irctd.pod_id,
					   	m_ret_irctd.rcpt_id,
						m_ret_irctd.lic_plt_id) 

				LET m_scr_irctd_rec.flowthru_dmd = m_tot_demand_qty
			END IF
			#
			#-- end flowthru

				LET m_scr_irctd_rec.totr = m_tot_qty

#5.6.1 Upgrade
				# Calculate the code date
				IF m_ret_iprod.pwy_dte_ctl = "Y"
				AND m_ret_iprod.cde_dt_var >= f_dflt_days
				AND m_ret_iprod.cde_dt_incr = 0
				# Cannot be a transfer PO      
				AND (m_ret_ipo.po_type <> "TR"
				  OR m_ret_ipo.po_type IS NULL)
				AND m_ret_ipo.vend_id <> "00019108" # Cannot be a synergy PO
				THEN
					CALL get_code_date_info(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.prod_id,
									m_ret_irctd.po_id,
									m_ret_irctd.pod_id,
									'V')
						RETURNING m_calc_code_date
					LET m_calc_cde_dt_flg = 'Y'
					LET m_scr_irctd_rec.code_date = m_calc_code_date
					DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
						ATTRIBUTE(NORMAL)
				ELSE
					INITIALIZE m_calc_code_date TO NULL 
					LET m_calc_cde_dt_flg = 'N'
				END IF

#5.6.1 Upgrade - End

				# If user already entered a code_date, use that value instead
				# of the one extracted from move_ret_irctd().
				IF m_code_date IS NOT NULL
				THEN
					LET m_scr_irctd_rec.code_date = m_code_date
				END IF

				IF m_scan_rec.lic_plt_id IS NOT NULL
				OR m_scan_rec.upc_id IS NOT NULL
				OR m_scan_rec.code_date IS NOT NULL
				OR m_scan_rec.catch_wgt IS NOT NULL
				OR m_scan_rec.lot_no IS NOT NULL
				THEN
					CALL populate_from_scanned()
						RETURNING f_ret_status
					IF f_ret_status <> 0		#-- upc invalid
					THEN
						NEXT FIELD upc_id
					END IF
				END IF

#5.6.1 Upgrade
				# If user changes the calculated code date, 
				# change the flag to "N"
				IF m_calc_code_date IS NOT NULL
				AND m_calc_code_date <> m_scr_irctd_rec.code_date
				THEN
					LET m_calc_cde_dt_flg = 'N'
				END IF

#5.6.1 Upgrade - End

				CALL display_irctd()

				IF m_scr_irctd_rec.appt_id <> m_ret_irct.appt_id
				THEN
					CALL sh_rf_cmd_msg("I7075")	#-- lic not this appt
					SLEEP 1
					NEXT FIELD s_rf_vrfy.lic_plt_id
				END IF

				LET f_counter = 1
				WHILE m_orig_qty_arr[f_counter].lic_plt_id IS NOT NULL
				AND m_orig_qty_arr[f_counter].lic_plt_id
					<> m_scr_irctd_rec.lic_plt_id
				AND f_counter < 500
					LET f_counter = f_counter + 1
				END WHILE

				IF m_orig_qty_arr[f_counter].lic_plt_id IS NULL
				OR f_counter = 500
				THEN
					LET m_orig_qty_arr[f_counter].po_id = m_scr_irctd_rec.po_id
					LET m_orig_qty_arr[f_counter].prod_id = m_scr_irctd_rec.prod_id
					LET m_orig_qty_arr[f_counter].rcpt_id = m_scr_irctd_rec.rcpt_id
					LET m_orig_qty_arr[f_counter].lic_plt_id 
						= m_scr_irctd_rec.lic_plt_id

					CALL lkp_iprdd(m_scr_irctd_rec.dc_id,
							   	m_scr_irctd_rec.prod_id,
							   	m_scr_irctd_rec.prdd_id)
						RETURNING f_ret_status, m_ret_iprdd.*

					LET m_orig_qty_arr[f_counter].qty
						= (m_scr_irctd_rec.qty_ord
						* m_ret_iprdd.unit_ship_cse)

				
					LET m_orig_qty_arr[f_counter + 1].lic_plt_id = NULL
				END IF

				IF m_add_update = "M" 
				THEN
					IF m_ret_iprod.lot_no_cntl = 'Y'
                	THEN
                    	#NEXT FIELD lot_no
						NEXT FIELD s_rf_vrfy.rct_qty #LM
                	ELSE
                    	NEXT FIELD s_rf_vrfy.rct_qty
                	END IF
				END IF
			ELSE  
				NEXT FIELD s_rf_vrfy.appt_id 
			END IF
            
			
		AFTER FIELD upc_id
		
			DISPLAY m_scr_irctd_rec.upc_id TO s_rf_vrfy.upc_id
				ATTRIBUTE(NORMAL)

			IF  m_scr_irctd_rec.upc_id IS NOT NULL
			THEN

				CALL strip_upc()
				DISPLAY m_scr_irctd_rec.upc_id TO s_rf_vrfy.upc_id
				    ATTRIBUTE(NORMAL)

				IF m_scr_irctd_rec.lic_plt_id IS NOT NULL
				THEN
					CALL proc_po_prod("U") 
						RETURNING f_ret_status, f_ret_choice
					IF f_ret_status = 1
					THEN
						NEXT FIELD upc_id
					END IF
				END IF

				IF m_scan_rec.lic_plt_id IS NOT NULL
				OR m_scan_rec.upc_id IS NOT NULL
				OR m_scan_rec.code_date IS NOT NULL
				OR m_scan_rec.catch_wgt IS NOT NULL
				OR m_scan_rec.lot_no IS NOT NULL
				THEN
					CALL populate_from_scanned()
						RETURNING f_ret_status
	
					IF f_ret_status = 1 
					THEN
						# upc invalid
						NEXT FIELD s_rf_vrfy.upc_id
					END IF

					IF f_ret_status = 2 
					THEN
						# product detail invalid
						NEXT FIELD s_rf_vrfy.prdd_id
					END IF
				END IF

#5.6.1 Upgrade
				# Calculate the code date
				IF m_ret_iprod.pwy_dte_ctl = "Y"
				AND m_ret_iprod.cde_dt_var >= f_dflt_days
				AND m_ret_iprod.cde_dt_incr = 0
				# Cannot be a transfer PO      
				AND (m_ret_ipo.po_type <> "TR"
				  OR m_ret_ipo.po_type IS NULL)
				AND m_ret_ipo.vend_id <> "00019108" # Cannot be a synergy PO
				THEN
					CALL get_code_date_info(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.prod_id,
									m_ret_irctd.po_id,
									m_ret_irctd.pod_id,
									'V')
						RETURNING m_calc_code_date
					LET m_calc_cde_dt_flg = 'Y'
					LET m_scr_irctd_rec.code_date = m_calc_code_date
					DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
						ATTRIBUTE(NORMAL)
				ELSE
					INITIALIZE m_calc_code_date TO NULL 
					LET m_calc_cde_dt_flg = 'N'
				END IF

#5.6.1 Upgrade - End

				CALL display_irctd()
				IF m_ret_iprod.lot_no_cntl = 'Y'
				THEN
					#NEXT FIELD lot_no
					NEXT FIELD s_rf_vrfy.rct_qty #LM
				ELSE
					NEXT FIELD s_rf_vrfy.rct_qty
				END IF
			END IF

		AFTER FIELD prod_id
			DISPLAY m_scr_irctd_rec.prod_id TO s_rf_vrfy.prod_id
				ATTRIBUTE(NORMAL)

			################################################
			# If we are reading in Unloaded LP's, the following
			# redoes a lot of stuff we just did and then blanks
			# the quantity. Skip unless prod_id changed.
			IF m_ret_aassg.asgt_id = "C"
			AND m_unld_aothd.prod_id = m_scr_irctd_rec.prod_id
			THEN
				CALL display_irctd()
				IF m_ret_iprod.lot_no_cntl = 'Y'
				THEN
					NEXT FIELD lot_no
				ELSE
					NEXT FIELD s_rf_vrfy.code_date
				END IF
			END IF

			IF m_scr_irctd_rec.prod_id IS NOT NULL
			THEN
				##--------------------------------
				## rld.. expansion changes...
				##--------------------------------

				LET f_string_val = m_scr_irctd_rec.prod_id 
				CALL convert_value("PROD", f_string_val)
					RETURNING f_rtrn_code, f_string_val
	
				CASE
					WHEN f_rtrn_code = 1				
						CALL convert_error("PROD", "RF") RETURNING F_aborted
						IF f_aborted <> 0
						THEN
							CALL sh_rf_cmd_msg("S0005")
							SLEEP 2
							LET m_ignore = sh_mlog_4gl(g_std_func_chan,
								m_module,4327, "EXIT: input_irctd")
							EXIT PROGRAM 2
						END IF 
						NEXT FIELD s_rf_vrfy.prod_id

					WHEN (f_rtrn_code < 0)
						CALL sh_rf_cmd_msg("S0005")
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,4336, "EXIT: input_irctd")
						EXIT PROGRAM 2

					OTHERWISE
						--- Successful conversion.
						LET m_scr_irctd_rec.prod_id = f_string_val 
				END CASE
				##--------------------------------------
				## rld.. end of expansion changes...
				##--------------------------------------

				CALL val_iprod(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.prod_id)
					 RETURNING f_ret_status, m_ret_iprod.*

				IF f_ret_status = TRUE
				THEN
					CALL sh_rf_cmd_msg("I9089")	#-- product not on DC
					SLEEP 1
					LET m_scr_irctd_rec.sdesc = m_scr_irctd_null.sdesc
					DISPLAY m_scr_irctd_rec.sdesc TO s_rf_vrfy.sdesc
						ATTRIBUTE(NORMAL)
					NEXT FIELD s_rf_vrfy.prod_id
				END IF

				DISPLAY m_scr_irctd_rec.prod_id TO s_rf_vrfy.prod_id
					ATTRIBUTE(NORMAL)
	
				#-----------------
				# retrieve product
				#-----------------
				CALL proc_po_prod("P") RETURNING f_ret_status, f_ret_choice
			    IF f_ret_status 
			    THEN
					NEXT FIELD s_rf_vrfy.prod_id
				END IF

#5.6.1 Upgrade
				# Calculate the code date
				IF m_ret_iprod.pwy_dte_ctl = "Y"
				AND m_ret_iprod.cde_dt_var >= f_dflt_days
				AND m_ret_iprod.cde_dt_incr = 0
				# Cannot be a transfer PO      
				AND (m_ret_ipo.po_type <> "TR"
				  OR m_ret_ipo.po_type IS NULL)
				AND m_ret_ipo.vend_id <> "00019108" # Cannot be a synergy PO
				THEN
					CALL get_code_date_info(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.prod_id,
									m_ret_irctd.po_id,
									m_ret_irctd.pod_id,
									'V')
						RETURNING m_calc_code_date
					LET m_calc_cde_dt_flg = 'Y'
					LET m_scr_irctd_rec.code_date = m_calc_code_date
					DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
						ATTRIBUTE(NORMAL)
				ELSE
					INITIALIZE m_calc_code_date TO NULL 
					LET m_calc_cde_dt_flg = 'N'
				END IF

#5.6.1 Upgrade - End

				#------------------------
				# retrieve product detail
				#------------------------
				CALL proc_prod_prdd(f_ret_choice) RETURNING f_ret_status
			    IF f_ret_status 
			    THEN
					NEXT FIELD s_rf_vrfy.prdd_id
				END IF

				CALL display_irctd()
			END IF

			IF (fgl_lastkey() = fgl_keyval("UP")
            OR  fgl_lastkey() = fgl_keyval("LEFT"))
            THEN 
				NEXT FIELD s_rf_vrfy.lic_plt_id
            END IF 
			IF m_ret_iprod.lot_no_cntl = 'Y'
			THEN
				#NEXT FIELD lot_no
				NEXT FIELD s_rf_vrfy.rct_qty #LM
			ELSE
				NEXT FIELD s_rf_vrfy.rct_qty
			END IF	

		AFTER FIELD prdd_id
			DISPLAY m_scr_irctd_rec.prdd_id TO s_rf_vrfy.prdd_id
				ATTRIBUTE(NORMAL)

 	 		IF m_scr_irctd_rec.prod_id IS NOT NULL
			AND m_scr_irctd_rec.prdd_id IS NOT NULL
			AND f_old_prdd_id <> m_scr_irctd_rec.prdd_id
# lam f_old_prdd_id is never set
			THEN
				CALL val_iprdd(m_scr_irctd_rec.dc_id,
							   m_scr_irctd_rec.prod_id,
							   m_scr_irctd_rec.prdd_id)
					 RETURNING f_ret_status, m_ret_iprdd.*

				IF f_ret_status = FALSE
				THEN
					CALL move_ret_iprdd()
				ELSE  
					CALL sh_rf_cmd_msg("I1107")	#-- invalid product detail
					SLEEP 1
					NEXT FIELD s_rf_vrfy.prdd_id
				END IF
	
				#------------------------
				# retrieve product detail
				#------------------------
				LET f_ret_choice = NULL
				CALL proc_prod_prdd(f_ret_choice) RETURNING f_ret_status
				IF f_ret_status 
				THEN
					NEXT FIELD s_rf_vrfy.prdd_id
				END IF

				CALL display_irctd()
				IF m_ret_iprod.lot_no_cntl = 'Y'	
				THEN
					#NEXT FIELD lot_no
					NEXT FIELD s_rf_vrfy.code_date #LM
				ELSE
					NEXT FIELD s_rf_vrfy.code_date
				END IF
			END IF
			#LMISHRA:LMISHRA:T20210316.0163:Add Repack:3/2/2021
			IF (m_ret_iprdd.unit_ship_cse > 1 and m_ret_iprdd.cse_unit <> m_ret_iprdd.unit_ship_cse) 
				OR (m_ret_iprdd.inner_pack_unit > 1 and m_ret_iprdd.cse_unit <> m_ret_iprdd.inner_pack_unit) 
				OR ((m_ret_iprdd.unit_ship_cse = 1 or m_ret_iprdd.inner_pack_unit = 1) and m_ret_iprdd.cse_unit <> 1)
			THEN 
				LET f_is_repack =  TRUE
			ELSE 
				LET f_is_repack =  FALSE 
		
			END IF 
 
			
			IF f_is_repack = TRUE
			THEN			
				LET f_rpk = m_ret_iprdd.cse_unit / m_ret_iprdd.unit_ship_cse
			END IF 
			
			DISPLAY  f_rpk TO s_rf_vrfy.rpak
				ATTRIBUTE(NORMAL)

		{AFTER FIELD lot_no
			
			IF  m_ret_iprod.lot_no_cntl = "Y"
    		AND (m_scr_irctd_rec.lot_no = " "
    		OR   m_scr_irctd_rec.lot_no IS NULL)
    		AND m_scr_irctd_rec.rct_qty > 0
    		THEN
				NEXT FIELD s_rf_vrfy.lot_no
				CALL sh_rf_cmd_msg("I9203")
				SLEEP 2
    		END IF

			DISPLAY m_scr_irctd_rec.lot_no TO s_rf_vrfy.lot_no
				ATTRIBUTE(NORMAL)}
		#END:LMISHRA:T20210316.0163:Add Repack:3/2/2021

		AFTER FIELD urcp_id
 	 		IF m_scr_irctd_rec.urcp_id IS NOT NULL
			THEN
				# user may have changed product detail...
				#---------------------------------------- 
				CALL lkp_iprdd(m_scr_irctd_rec.dc_id,
							   m_scr_irctd_rec.prod_id,
				   			   m_scr_irctd_rec.prdd_id)
		 			 RETURNING f_ret_status, m_ret_iprdd.*

			#	IF m_old_urcp_id <> m_scr_irctd_rec.urcp_id
				IF m_old_urcp_id <> m_urcp_id
				OR LENGTH(m_old_urcp_id) = 0
				THEN
					CALL val_surcp(m_scr_irctd_rec.urcp_id)
						RETURNING f_ret_status, m_ret_surcp.*

			   		IF f_ret_status = TRUE
			   		THEN
			    		CALL lst_rf_surcp()
							 RETURNING f_ret_status, m_ret_surcp.*

						IF f_ret_status = TRUE 
						THEN
							NEXT FIELD s_rf_vrfy.urcp_id
						END IF
					END IF

					LET m_scr_irctd_rec.urcp_id = m_ret_surcp.surcp_user_val
					LET m_urcp_id = m_ret_surcp.urcp_id
					IF m_old_urcp_id = " "
						OR m_old_urcp_id = m_urcp_id	## CR 11509
					THEN
						LET m_old_urcp_id = m_urcp_id
					ELSE
	
						IF m_urcp_id = "S"
						THEN
							LET m_scr_irctd_rec.qty_ord =
							   (m_ret_ipod.qty_ord / m_ret_iprdd.unit_ship_cse)
	
							LET m_scr_irctd_rec.rct_qty = 
								m_scr_irctd_rec.rct_qty * m_ret_iprdd.cse_unit
								/ m_ret_iprdd.unit_ship_cse 
							LET m_scr_irctd_rec.totr = m_scr_irctd_rec.totr  
								* m_ret_iprdd.cse_unit
								/ m_ret_iprdd.unit_ship_cse 
						ELSE
							## change from "S" to "C"
							## CR 11509 - use rct_qty instead of ipod.qty_ord
							## 06-04-96 - Changed to use ipod.qty_ord
 							LET f_case_rmd = m_ret_ipod.qty_ord
									MOD m_ret_iprdd.cse_unit
							## 06-12-96 - Changed to use ipod and irctd
							IF f_case_rmd = 0
							THEN
								LET f_case_rmd = (m_scr_irctd_rec.rct_qty
									* m_ret_iprdd.unit_ship_cse)
										MOD m_ret_iprdd.cse_unit
							END IF
	
							CASE
							WHEN f_case_rmd <> 0 -- Forced to keep to S.
								LET m_scr_irctd_rec.urcp_id = m_urcp_s_val
								LET m_urcp_id = "S"
	
								#-- change urcp to S?
								CALL sh_rf_err_msg("I1188")	#-- For one loc, 
	
								DISPLAY m_scr_irctd_rec.urcp_id
									 TO s_rf_vrfy.urcp_id ATTRIBUTE(NORMAL)
								LET m_scr_irctd_rec.qty_ord =
								   (m_ret_ipod.qty_ord 
									/ m_ret_iprdd.unit_ship_cse)
								
								#-- Do not change qty on screen unless NULL. 
								IF m_scr_irctd_rec.rct_qty IS NULL 
								THEN
									LET m_scr_irctd_rec.rct_qty =
										m_scr_irctd_rec.qty_ord 
								END IF
	
							WHEN f_case_rmd = 0 -- change urcp_id from S to C.
								LET m_scr_irctd_rec.qty_ord =
								   (m_ret_ipod.qty_ord / m_ret_iprdd.cse_unit)
								LET m_scr_irctd_rec.totr = m_scr_irctd_rec.totr 
									* m_ret_iprdd.unit_ship_cse 
									/ m_ret_iprdd.cse_unit
								-- urcp_id changed from S to C.
								IF m_scr_irctd_rec.rct_qty IS NOT NULL
								AND m_old_urcp_id = "S"
								THEN
									LET m_scr_irctd_rec.rct_qty = 
										m_scr_irctd_rec.rct_qty 
										* m_ret_iprdd.unit_ship_cse 
										/ m_ret_iprdd.cse_unit
								END IF
							END CASE
						END IF
						LET m_old_urcp_id = m_urcp_id
						LET f_old_rct_qty = m_scr_irctd_rec.rct_qty
					END IF ## if m_old_urcp_id = " "
				END IF
 	 		END IF 

			DISPLAY m_scr_irctd_rec.qty_ord
                 TO s_rf_vrfy.qty_ord ATTRIBUTE(NORMAL)
			DISPLAY m_scr_irctd_rec.rct_qty 
                 TO s_rf_vrfy.rct_qty ATTRIBUTE(NORMAL)
			DISPLAY m_scr_irctd_rec.urcp_id
                 TO s_rf_vrfy.urcp_id ATTRIBUTE(NORMAL)
			DISPLAY m_scr_irctd_rec.totr
                 TO s_rf_vrfy.totr ATTRIBUTE(NORMAL)
	
	
		AFTER FIELD rct_qty
			DISPLAY m_scr_irctd_rec.rct_qty TO s_rf_vrfy.rct_qty
				ATTRIBUTE(NORMAL)

			IF m_scan_rec.prd_varies
			THEN
				CALL sh_rf_err_msg("I5312")
			END IF
         
			LET m_rct_change = FALSE

			IF m_scr_irctd_rec.rct_qty IS NOT NULL
			THEN
				IF m_add_update = "A" 
					AND m_scr_irctd_rec.rct_qty = 0
				THEN
       				CALL sh_rf_err_msg("I1245")	#-- no 0 for new lic_plt
					NEXT FIELD s_rf_vrfy.rct_qty
				END IF
            	LET f_ret_status = validate_negative()
				IF f_ret_status = 1
				THEN
       				CALL sh_rf_cmd_msg("I1253")	#-- no negative numbers
					SLEEP 1
					NEXT FIELD s_rf_vrfy.rct_qty
				END IF

				IF f_hold_qty <> m_scr_irctd_rec.rct_qty
				THEN
					CALL kill_mpp()
				END IF

				CALL sum_rct_qty(m_scr_irctd_rec.rct_qty)
					 RETURNING f_ret_status, m_ignore

				IF f_ret_status = TRUE
				AND f_hold_qty <> m_scr_irctd_rec.rct_qty
				THEN
					CALL sh_rf_ysno_msg("I9152","N")	#-- rct > ord qty
						RETURNING f_ret_status, f_ysno
					IF f_ysno = "N"
					THEN
						LET m_scr_irctd_rec.rct_qty = m_scr_irctd_null.rct_qty
						NEXT FIELD s_rf_vrfy.rct_qty
					END IF
				END IF
	
				# warn if over rec of product if product exist on same appt
				#----------------------------------------------------------
				IF (m_scr_irctd_rec.rct_qty  ## + m_scr_irctd_rec.totr >
					>  m_scr_irctd_rec.qty_ord)
				THEN
					CALL chk_other_rec(m_scr_irctd_rec.dc_id,
								   	   m_scr_irctd_rec.rcv_whse_id,
								   	   m_scr_irctd_rec.appt_id,
								   	   m_scr_irctd_rec.po_id,
								   	   m_scr_irctd_rec.prod_id) 
						   RETURNING f_ret_status
	
					IF f_ret_status = TRUE		#-- give warning if over rec
					OR m_scr_irctd_rec.rct_qty > m_scr_irctd_rec.qty_ord
					THEN
						CALL sh_rf_ysno_msg("I9135","N") #-- rct > ord_qty
							RETURNING f_ret_status, f_ysno
						IF f_ysno = "N"
						THEN
							NEXT FIELD s_rf_vrfy.rct_qty
						END IF
					END IF
				END IF
	
				IF f_old_rct_qty <> m_scr_irctd_rec.rct_qty
				THEN
					LET f_old_rct_qty = m_scr_irctd_rec.rct_qty
					LET m_rct_change  = TRUE
				END IF

				## CR 11509 - IF the order and received quantities are in full
				##    cases and not repack, change urcp_id to the value on
				##    swhse.
				IF m_swhse_urcp_id = "C"
				AND m_urcp_id = "S"
				THEN
					IF m_ret_iprdd.unit_ship_cse = m_ret_iprdd.cse_unit
					THEN
						-- doing nothing here   ## always display "C"
						LET m_scr_irctd_rec.urcp_id = m_urcp_c_val
						LET m_urcp_id = "C"
						LET m_old_urcp_id = m_urcp_id
						DISPLAY m_scr_irctd_rec.urcp_id
							TO s_rf_vrfy.urcp_id ATTRIBUTE(NORMAL)
					ELSE
						LET f_case_rmd = m_ret_ipod.qty_ord
							MOD m_ret_iprdd.cse_unit
						IF f_case_rmd = 0
						THEN
							LET f_case_rmd = (m_scr_irctd_rec.rct_qty
								* m_ret_iprdd.unit_ship_cse)
								MOD m_ret_iprdd.cse_unit
						END IF
						IF f_case_rmd = 0 -- change urcp_id from S to C.
						THEN
							LET m_scr_irctd_rec.qty_ord =
								(m_ret_ipod.qty_ord / m_ret_iprdd.cse_unit)
							LET m_scr_irctd_rec.totr = m_scr_irctd_rec.totr 
								* m_ret_iprdd.unit_ship_cse 
								/ m_ret_iprdd.cse_unit
							LET m_scr_irctd_rec.rct_qty = 
								m_scr_irctd_rec.rct_qty 
								* m_ret_iprdd.unit_ship_cse 
								/ m_ret_iprdd.cse_unit
							LET m_scr_irctd_rec.urcp_id = m_urcp_c_val
							LET m_urcp_id = "C"
							LET m_old_urcp_id = m_urcp_id
							LET f_old_rct_qty = m_scr_irctd_rec.rct_qty
							DISPLAY m_scr_irctd_rec.qty_ord
								TO s_rf_vrfy.qty_ord ATTRIBUTE(NORMAL)
							DISPLAY m_scr_irctd_rec.rct_qty 
								TO s_rf_vrfy.rct_qty ATTRIBUTE(NORMAL)
							DISPLAY m_scr_irctd_rec.urcp_id
								TO s_rf_vrfy.urcp_id ATTRIBUTE(NORMAL)
							DISPLAY m_scr_irctd_rec.totr
								TO s_rf_vrfy.totr ATTRIBUTE(NORMAL)
						END IF
					END IF
				END IF
			END IF

		AFTER FIELD qty_damaged
         	DISPLAY m_scr_irctd_rec.qty_damaged TO s_rf_vrfy.qty_damaged
				ATTRIBUTE(NORMAL)
			IF m_scr_irctd_rec.qty_damaged > m_scr_irctd_rec.qty_ord 
			THEN			#Damage entered is more than rec qty
				CALL sh_rf_err_msg("Z0101")
				SLEEP 1
				NEXT FIELD s_rf_vrfy.qty_damaged
			END IF 
			DISPLAY m_scr_irctd_rec.tot_damage TO s_rf_vrfy.tot_damage
				ATTRIBUTE(NORMAL)
		AFTER FIELD stor_ti
			DISPLAY m_scr_irctd_rec.stor_ti TO s_rf_vrfy.stor_ti
				ATTRIBUTE(NORMAL)

		AFTER FIELD stor_hi
			DISPLAY m_scr_irctd_rec.stor_hi TO s_rf_vrfy.stor_hi
				ATTRIBUTE(NORMAL)

		AFTER FIELD code_date
			LET m_sav_ysno = NULL			
			LET f_abort = check_code_date( "H", m_ret_iprod.cde_dt_incr,
							               m_scr_irctd_rec.code_date )
			IF f_abort = TRUE
			THEN
				NEXT FIELD s_rf_vrfy.code_date
			END IF

			DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
				ATTRIBUTE(NORMAL)

			IF m_ret_iprod.pwy_dte_ctl = "Y"
				AND  m_scr_irctd_rec.code_date IS  NULL
				AND m_scr_irctd_rec.rct_qty > 0
				AND m_ret_iprod.cde_dt_incr = 0
				OR m_scr_irctd_rec.code_date = "12/31/2099"
			THEN   
				#CALL sh_rf_cmd_msg("I9087")	 #-- required field
				LET m_scr_irctd_rec.code_date = CURRENT
				DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
					ATTRIBUTE(NORMAL)
			END IF

            IF m_ret_iprod.pwy_dte_ctl = "Y"
                AND  m_scr_irctd_rec.code_date IS  NULL
                AND m_ret_iprod.cde_dt_incr > 0
                AND m_scr_irctd_rec.rct_qty > 0
                OR m_scr_irctd_rec.code_date = "12/31/2099"
            THEN
                CALL sh_rf_cmd_msg("I9087")  #-- required field
                LET m_scr_irctd_rec.code_date = NULL
                DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
                NEXT FIELD s_rf_vrfy.code_date
            END IF
#5.6.1 Upgrade
			# If user changes the calculated code date, change the flag to "N"
			IF m_calc_code_date IS NOT NULL
			AND m_calc_code_date <> m_scr_irctd_rec.code_date
			THEN
				LET m_calc_cde_dt_flg = 'N'
			END IF
#5.6.1 Upgrade - End

			IF m_ret_iprod.pwy_dte_ctl = "Y"
			THEN   
				LET f_override_date = "N"
				#LET f_new_cde_dt = m_scr_irctd_rec.code_date
				LET f_cur_dt = CURRENT
				IF m_ret_iprod.cde_dt_var IS NULL THEN
					LET m_ret_iprod.cde_dt_var = 0
				END IF
				IF m_ret_iprod.cde_dt_incr IS NULL THEN
					LET m_ret_iprod.cde_dt_incr = 0
				END IF

				IF f_old_code_date = m_scr_irctd_rec.code_date
				THEN
					LET f_incr_cde_dt = m_scr_irctd_rec.code_date
				ELSE
					LET f_incr_cde_dt = m_scr_irctd_rec.code_date +
										m_ret_iprod.cde_dt_incr UNITS DAY
				END IF
				IF f_cur_dt + m_ret_iprod.cde_dt_var >
					#(f_new_cde_dt + m_ret_iprod.cde_dt_incr)
					f_incr_cde_dt
					AND	f_override_date = "N"
					-- FBR108 - Don't display the warning message when the   
					-- code date is system generated.
					AND m_calc_cde_dt_flg = "N"			#5.6.1
				THEN
					CALL sh_rf_ysno_msg("I9136","N")	#-- date too old
						RETURNING f_ret_status, f_ysno
					LET m_sav_ysno = f_ysno
					UPDATE iinvd
					SET cde_dt_warn_flg = f_ysno
					WHERE lic_plt_id = m_scr_irctd_rec.lic_plt_id
			
					IF SQLCA.SQLCODE <> 0 THEN
						LET m_msg = "UPDATE iinvd cde_dt_warn_flg failed.",
							" SQLCODE = ", SQLCA.SQLCODE, ", ISAM = ", SQLCA.SQLERRD[2],
							", ROW PROCESSED = ", SQLCA.SQLERRD[3],
							", lic_plt_id = ", m_scr_irctd_rec.lic_plt_id 
						LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
					END IF

					-- No records processed, must be a generic lic_plt_id
					IF SQLCA.SQLERRD[3] = 0
					THEN
						LET m_sav_ysno = f_ysno
					END IF

					IF f_ysno = "N"
					THEN
						LET m_scr_irctd_rec.code_date = " "
						DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
							ATTRIBUTE(NORMAL)
						NEXT FIELD s_rf_vrfy.code_date
					END IF
					LET	f_override_date = "Y"
				ELSE
					LET m_sav_ysno = 'N'
					UPDATE iinvd
					SET cde_dt_warn_flg = 'N'
					WHERE lic_plt_id = m_scr_irctd_rec.lic_plt_id
			
					IF SQLCA.SQLCODE <> 0 THEN
						LET m_msg = "UPDATE iinvd cde_dt_warn_flg failed.",
							" SQLCODE = ", SQLCA.SQLCODE, ", ISAM = ", SQLCA.SQLERRD[2],
							", ROW PROCESSED = ", SQLCA.SQLERRD[3],
							", lic_plt_id = ", m_scr_irctd_rec.lic_plt_id 
						LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
					END IF

					-- No records processed, must be a generic lic_plt_id
					IF SQLCA.SQLERRD[3] = 0
					THEN
						LET m_sav_ysno = 'N'
					END IF
				END IF

# Ptran 02/23/2000 - Begin of changes for SPEC061.
				IF chk_max_cde_dt(m_scr_irctd_rec.dc_id,
								  m_scr_irctd_rec.whse_id,
								  m_scr_irctd_rec.prod_id,
								  m_scr_irctd_rec.code_date)
				-- FBR108 - Don't display the warning message when the   
				-- code date is system generated.
				AND m_calc_cde_dt_flg = 'N'			#5.6.1
				THEN
					CALL sh_rf_ysno_msg("I9271", "N")
							RETURNING f_ret_status, f_ysno
					LET m_sav_ysno = f_ysno
					UPDATE iinvd
					SET cde_dt_warn_flg = f_ysno
					WHERE lic_plt_id = m_scr_irctd_rec.lic_plt_id
			
					IF SQLCA.SQLCODE <> 0 THEN
						LET m_msg = "UPDATE iinvd cde_dt_warn_flg failed.",
							" SQLCODE = ", SQLCA.SQLCODE, ", ISAM = ", SQLCA.SQLERRD[2],
							", lic_plt_id = ", m_scr_irctd_rec.lic_plt_id 
						LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
					END IF

					-- No records processed, must be a generic lic_plt_id
					IF SQLCA.SQLERRD[3] = 0
					THEN
						LET m_sav_ysno = f_ysno
					END IF
					IF f_ysno = "N"
					THEN
						LET m_scr_irctd_rec.code_date =
								m_scr_irctd_null.code_date
						NEXT FIELD s_rf_vrfy.code_date  
					END IF
				END IF
# Ptran 02/23/2000 - End of changes for SPEC061.

			END IF

			## CR 8059 - For one location only one code date is allowed.
			IF m_ret_iprod.pwy_dte_ctl = "Y"
			AND m_scr_irctd_rec.rct_qty > 0
			THEN   
				LET f_cde_count 		= 0
				#LET f_incr_cde_dt	=
					#m_scr_irctd_rec.code_date		
					#+ m_ret_iprod.cde_dt_incr UNITS DAY

				DECLARE c_old_code_date CURSOR FOR 
				SELECT  irctd.code_date	
				FROM	iinvd, irctd, iplas
				WHERE	iinvd.plas_id =
						(SELECT	a.plas_id
						 FROM	iinvd a
						 WHERE	a.lic_plt_id = m_scr_irctd_rec.lic_plt_id
						 AND	a.dc_id      = m_scr_irctd_rec.dc_id
						 AND	a.whse_id    = m_scr_irctd_rec.rcv_whse_id)
				AND		iinvd.cde_dt  	 <> f_incr_cde_dt
				AND		iinvd.lic_plt_id <> m_scr_irctd_rec.lic_plt_id
				AND 	iplas.plas_id	 = iinvd.plas_id
				AND 	iplas.lcus_id	 <> "P"
				AND		irctd.dc_id 	 = iinvd.dc_id
				AND		irctd.whse_id 	 = iinvd.whse_id
				AND		irctd.lic_plt_id = iinvd.lic_plt_id
				AND		irctd.code_date  IS NOT NULL

				IF SQLCA.SQLCODE < 0
				THEN
					LET m_msg = "DECLARE c_check_old_code_date failed. SQLCODE=", 
						SQLCA.SQLCODE, "ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET f_abort = TRUE
					EXIT INPUT 
				END IF
				
				FOREACH c_old_code_date
                INTO f_old_code_date1

				IF SQLCA.SQLCODE <> 0
				THEN
					LET m_msg = "FOREACH c_old_code_date failed. SQLCODE=", 
						SQLCA.SQLCODE, "ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET f_abort = TRUE
					EXIT INPUT 
				END IF

                    IF (YEAR(f_old_code_date1)=1899 AND MONTH(f_old_code_date1)=12 AND DAY(f_old_code_date1)=31)
                    OR (YEAR(f_old_code_date1)=2099 AND MONTH(f_old_code_date1)=12 AND DAY(f_old_code_date1)=31)
                    THEN
						CONTINUE FOREACH	
                    ELSE
                        CALL sh_rf_err_msg("I1283")
                        NEXT FIELD s_rf_vrfy.code_date
                    END IF
                END FOREACH
			END IF

				#LET m_code_date = m_scr_irctd_rec.code_date
				LET m_code_date = f_incr_cde_dt
				LET m_scr_irctd_rec.code_date = f_incr_cde_dt
				DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
					ATTRIBUTE(NORMAL)

		 AFTER FIELD qc_req
            DISPLAY m_scr_irctd_rec.qc_req TO s_rf_vrfy.qc_req
                ATTRIBUTE(NORMAL)

            ###Check for getting a correct value
            IF m_scr_irctd_rec.qc_req IS NULL OR
               m_scr_irctd_rec.qc_req = " "
            THEN
                CALL sh_rf_cmd_msg("I5043")
                SLEEP 2
                NEXT FIELD qc_req
            ELSE
                CASE m_scr_irctd_rec.qc_req
                    WHEN 'Y'
                        LET f_new_qc_req = m_scr_irctd_rec.qc_req
#BA4465-If QC is On, then change the ipod.system flag to 'S' system directed putaway.
						LET f_ipod_system_flag = 'S'
                    WHEN 'N'
#BA4465-If QC is Off, then change the ipod.system flag to old one. 
						LET f_ipod_system_flag = f_ret_ipod.system_flag 
                        LET f_new_qc_req = m_scr_irctd_rec.qc_req
                    OTHERWISE
                        CALL sh_rf_cmd_msg("I9037")
                        SLEEP 2
                        NEXT FIELD qc_req
                END CASE
			END IF

            ###### Check for Putaway at recieving
            SELECT ptwy_at_rc
             INTO f_ptwy_at_rc
             FROM swhse
            WHERE dc_id = m_scr_irctd_rec.dc_id
              AND whse_id = m_scr_irctd_rec.whse_id

            IF SQLCA.SQLCODE <> 0 THEN
                CALL sh_rf_err_msg("S9201")
                SLEEP 2
                LET m_msg = "smwhe selection failed. SQLCODE=",
                    SQLCA.SQLCODE," ISAM=", SQLCA.SQLERRD[2]
                LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                "EXIT: input_irctd")
                LET m_scr_irctd_rec.* = m_scr_irctd_null.*
                LET m_func_key = "CL"   #-- just clearing screen
                EXIT INPUT
            END IF
         
            IF f_old_qc_req <> f_new_qc_req
            THEN
                IF f_ptwy_at_rc = 'Y'
                THEN
#BA4465 --If putaway already executed  then revert back the value of f_ipod_system_flag
        --to old one.
					LET f_ipod_system_flag = f_ret_ipod.system_flag
                    LET m_scr_irctd_rec.qc_req = f_old_qc_req
                    LET f_new_qc_req = f_old_qc_req
                    DISPLAY m_scr_irctd_rec.qc_req TO s_rf_vrfy.qc_req
                    CALL sh_rf_cmd_msg("I6055")
                    SLEEP 2
                    NEXT FIELD qc_req 
                END IF
            END IF

		AFTER INPUT
			IF m_scr_irctd_rec.lic_plt_id IS NULL THEN
				NEXT FIELD s_rf_vrfy.lic_plt_id 
			END IF
			IF m_iinvd_found = FALSE
			THEN
				CALL check_snrng(m_scr_irctd_rec.dc_id,
							 	m_scr_irctd_rec.rcv_whse_id,
							 	m_scr_irctd_rec.lic_plt_id)
				 	RETURNING f_ret_status, f_msg

				IF f_ret_status
				THEN
					CALL sh_rf_cmd_msg(f_msg) 	#-- not in valid range or > curr no
					SLEEP 1
					NEXT FIELD s_rf_vrfy.lic_plt_id 
				END IF
			END IF

			UPDATE irctd 
			  SET urcp_id = m_urcp_id
			WHERE dc_id		= m_scr_irctd_rec.dc_id
			AND whse_id		= m_scr_irctd_rec.rcv_whse_id
			AND lic_plt_id	= m_scr_irctd_rec.lic_plt_id

			IF SQLCA.SQLCODE <> 0 THEN
				LET m_msg = "UPDATE irctd failed. SQLCODE=", SQLCA.SQLCODE,
							" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				CALL upd_irctd_error(m_scr_irctd_rec.lic_plt_id, 
										m_scr_irctd_rec.dc_id, 
										m_scr_irctd_rec.rcv_whse_id)
			END IF


			IF m_add_update = "A" 
				AND m_scr_irctd_rec.rct_qty = 0
			THEN
				CALL sh_rf_err_msg("I1245")	#-- no 0 for new lic_plt
				NEXT FIELD s_rf_vrfy.rct_qty
			END IF
			LET f_ret_status = validate_negative()
			CASE f_ret_status
				WHEN 1
					CALL sh_rf_cmd_msg("I1253")	#-- no negative numbers
					SLEEP 1
					NEXT FIELD s_rf_vrfy.rct_qty
				WHEN 2
					CALL sh_rf_cmd_msg("I1253")	#-- no negative numbers
					SLEEP 1
					NEXT FIELD s_rf_vrfy.qty_damaged
				WHEN 3
					CALL sh_rf_cmd_msg("I1253")	#-- no negative numbers
					SLEEP 1
					NEXT FIELD s_rf_vrfy.stor_ti
				WHEN 4
					CALL sh_rf_cmd_msg("I1253")	#-- no negative numbers
					SLEEP 1
					NEXT FIELD s_rf_vrfy.stor_hi
				OTHERWISE 
					EXIT CASE
			END CASE

			IF m_scr_irctd_rec.prod_id IS NULL
			AND m_scr_irctd_rec.upc_id IS NULL
			THEN
				CALL sh_rf_cmd_msg("I9176")	#-- enter product or UPC
				SLEEP 1
				DISPLAY m_scr_irctd_rec.upc_id
					 TO s_rf_vrfy.upc_id ATTRIBUTE(NORMAL)
				DISPLAY m_scr_irctd_rec.prod_id
					 TO s_rf_vrfy.prod_id ATTRIBUTE(NORMAL)
				NEXT FIELD s_rf_vrfy.upc_id
			END IF
				
			# capture what is on screen
			#--------------------------
			CALL get_fldbuf(lic_plt_id, prod_id, prdd_id, upc_id,
							stor_ti, stor_hi, rct_qty, urcp_id, 
							qty_damaged, lot_no, code_date,qc_req)
				RETURNING m_scr_irctd_rec.lic_plt_id, m_scr_irctd_rec.prod_id,
							m_scr_irctd_rec.prdd_id, m_scr_irctd_rec.upc_id,
							m_scr_irctd_rec.stor_ti, m_scr_irctd_rec.stor_hi,
							m_scr_irctd_rec.rct_qty, m_scr_irctd_rec.urcp_id,
							m_scr_irctd_rec.qty_damaged,m_scr_irctd_rec.lot_no, 
							m_scr_irctd_rec.code_date, m_scr_irctd_rec.qc_req

			CALL validate_irctd() RETURNING f_vldt_status

			IF f_vldt_status = 0
			OR f_vldt_status = 1
			THEN
				-- doing nothing here
				LET m_func_key = "EN"	 #-- irctd complete for this pallet 
			ELSE
				CALL sh_rf_cmd_msg("I9087")	 #-- required field
				SLEEP 1
			END IF
			CASE f_vldt_status
				WHEN 0
					EXIT CASE
				WHEN 1
					EXIT CASE
				WHEN 2
					NEXT FIELD s_rf_vrfy.prod_id
				WHEN 3
					NEXT FIELD s_rf_vrfy.prdd_id
				WHEN 4
					NEXT FIELD s_rf_vrfy.code_date
				WHEN 5
					NEXT FIELD s_rf_vrfy.stor_ti
				WHEN 6
					NEXT FIELD s_rf_vrfy.stor_hi
				WHEN 7
					NEXT FIELD s_rf_vrfy.rct_qty
				WHEN 8
					NEXT FIELD s_rf_vrfy.urcp_id
				WHEN 9
					#NEXT FIELD s_rf_vrfy.lot_no
					NEXT FIELD s_rf_vrfy.rct_qty #LM
				WHEN -1
					NEXT FIELD s_rf_vrfy.qc_req
				OTHERWISE
					LET m_msg = "Invalid Input "
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_func_key = "QU"
					EXIT INPUT
			END CASE

			SELECT 1 FROM irct
			WHERE dc_id = m_scr_irctd_rec.dc_id
			AND whse_id = m_scr_irctd_rec.whse_id
			AND po_id = m_scr_irctd_rec.po_id
			AND rcpt_id = m_scr_irctd_rec.rcpt_id
			AND appt_id = m_scr_irctd_rec.appt_id
			IF SQLCA.SQLCODE <> 0 
			THEN
				IF SQLCA.SQLCODE < 0
				THEN
					LET m_msg = "system failure"
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					CALL sh_cmd_msg("I9060")
					SLEEP 2
					LET m_func_key = "QU"
					EXIT INPUT
				ELSE
					CALL sh_cmd_msg("I1182")
					SLEEP 1
					NEXT FIELD s_rf_vrfy.rcpt_id
				END IF
			END IF

			IF f_old_rct_qty <> m_scr_irctd_rec.rct_qty
			THEN
				LET m_rct_change = TRUE
			END IF

			IF f_incr_cde_dt IS NULL
			THEN
				LET f_incr_cde_dt = m_scr_irctd_rec.code_date
			END IF
			IF m_ret_iprod.pwy_dte_ctl = "Y"
			THEN   
				IF f_override_date IS NULL
				THEN
					LET	f_override_date = "N"
				END IF

				LET f_cur_dt = CURRENT
				IF m_ret_iprod.cde_dt_var IS NULL THEN
					LET m_ret_iprod.cde_dt_var = 0
				END IF
				IF m_ret_iprod.cde_dt_incr IS NULL THEN
					LET m_ret_iprod.cde_dt_incr = 0
				END IF
				IF f_old_code_date IS NULL
				AND m_scan_rec.code_date IS NOT NULL
				THEN
					IF f_old_code_date = m_scr_irctd_rec.code_date
					THEN
						LET f_incr_cde_dt = m_scr_irctd_rec.code_date
					ELSE
						LET f_incr_cde_dt = m_scr_irctd_rec.code_date +
											m_ret_iprod.cde_dt_incr UNITS DAY
					END IF
					LET m_code_date = f_incr_cde_dt
					LET m_scr_irctd_rec.code_date = f_incr_cde_dt
					DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
						ATTRIBUTE(NORMAL)
				END IF
				IF f_cur_dt + m_ret_iprod.cde_dt_var >
					#(f_new_cde_dt + m_ret_iprod.cde_dt_incr)
					f_incr_cde_dt
					AND	f_override_date = "N"
					-- FBR108 - Don't display the warning message when the   
					-- code date is system generated.
					AND m_calc_cde_dt_flg = 'N'		#5.6.1
				THEN
					CALL sh_rf_ysno_msg("I9136","N")	#-- date too old
						RETURNING f_abort, f_ysno
					IF f_ysno = "N"
					THEN
						LET m_scr_irctd_rec.code_date = " "
						DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
							ATTRIBUTE(NORMAL)
						NEXT FIELD s_rf_vrfy.code_date
					END IF
					LET	f_override_date = "Y"
				END IF
			ELSE
				LET m_scr_irctd_rec.code_date = CURRENT
			END IF

			## CR 8059 - For one location only one code date is allowed.
			IF m_ret_iprod.pwy_dte_ctl = "Y"
			AND m_scr_irctd_rec.rct_qty > 0
			THEN   
				LET f_cde_count 		= 0

				DECLARE c_old_code_date1 CURSOR FOR
				SELECT  irctd.code_date	
				FROM	iinvd, irctd, iplas
				WHERE	iinvd.plas_id =
						(SELECT	a.plas_id
						 FROM	iinvd a
						 WHERE	a.lic_plt_id = m_scr_irctd_rec.lic_plt_id
						 AND	a.dc_id      = m_scr_irctd_rec.dc_id
						 AND	a.whse_id    = m_scr_irctd_rec.rcv_whse_id)
				AND		iinvd.cde_dt     <> f_incr_cde_dt
				AND		iinvd.lic_plt_id <> m_scr_irctd_rec.lic_plt_id
				AND 	iplas.plas_id	 = iinvd.plas_id
				AND 	iplas.lcus_id	 <> "P"
				AND		irctd.dc_id 	 = iinvd.dc_id
				AND		irctd.whse_id 	 = iinvd.whse_id
				AND		irctd.lic_plt_id = iinvd.lic_plt_id
				AND		irctd.code_date  IS NOT NULL

				IF SQLCA.SQLCODE < 0
				THEN
					LET m_msg = "DECLARE c_old_code_date1 failed. SQLCODE=", 
						SQLCA.SQLCODE, "ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET f_abort = TRUE
					EXIT INPUT 
				END IF

				FOREACH c_old_code_date1
				INTO f_old_code_date2

				IF SQLCA.SQLCODE <> 0
				THEN
					LET m_msg = "FOREACH c_old_code_date1 failed. SQLCODE=", 
						SQLCA.SQLCODE, "ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET f_abort = TRUE
					EXIT INPUT 
				END IF

					IF (YEAR(f_old_code_date2)=1899 AND MONTH(f_old_code_date2)=12 AND DAY(f_old_code_date2)=31)
					OR (YEAR(f_old_code_date2)=2099 AND MONTH(f_old_code_date2)=12 AND DAY(f_old_code_date2)=31)
					THEN
						CONTINUE FOREACH
					ELSE
						CALL sh_rf_err_msg("I1283")
						NEXT FIELD s_rf_vrfy.code_date
					END IF
				END FOREACH
			END IF

#####qc_req start

            ###Check for getting a correct value
            IF m_scr_irctd_rec.qc_req IS NULL OR
               m_scr_irctd_rec.qc_req = " "
            THEN
                CALL sh_rf_cmd_msg("I5043")
                SLEEP 2
                NEXT FIELD qc_req
            ELSE
                CASE m_scr_irctd_rec.qc_req
                    WHEN 'Y'
#BA4465-If QC is On, then change the ipod.system flag to 'S' system directed putaway.
					    LET f_ipod_system_flag = 'S'	
                        LET f_new_qc_req = m_scr_irctd_rec.qc_req
                    WHEN 'N'
#BA4465-If QC is Off, then change the ipod.system flag to old one. 
					    LET f_ipod_system_flag = f_ret_ipod.system_flag 
                        LET f_new_qc_req = m_scr_irctd_rec.qc_req
                    OTHERWISE
                        CALL sh_rf_cmd_msg("I9037")
                        SLEEP 2
                        NEXT FIELD qc_req
                END CASE
            END IF

			INITIALIZE m_comp_lic_plt TO NULL 

			###### Check for Putaway at recieving
            SELECT ptwy_at_rc
              INTO f_ptwy_at_rc
              FROM swhse
             WHERE dc_id = m_scr_irctd_rec.dc_id
               AND whse_id = m_scr_irctd_rec.whse_id

            IF SQLCA.SQLCODE <> 0 THEN
                CALL sh_rf_err_msg("S9201")
                SLEEP 2
                LET m_msg = "smwhe selection failed. SQLCODE=",
                    SQLCA.SQLCODE," ISAM=", SQLCA.SQLERRD[2]
                LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                "EXIT: input_irctd")
                LET m_scr_irctd_rec.* = m_scr_irctd_null.*
                LET m_func_key = "CL"   #-- just clearing screen
                EXIT INPUT
            END IF
		
			### Check for unique constraint
                LET f_cnt = 0
                SELECT COUNT(*)
                  INTO f_cnt
                  FROM irqca
                 WHERE dc_id = m_scr_irctd_rec.dc_id
                   AND whse_id = m_scr_irctd_rec.whse_id
                   AND prod_id = m_scr_irctd_rec.prod_id
                   AND lic_plt_id = m_scr_irctd_rec.lic_plt_id

                IF SQLCA.SQLCODE <> 0 THEN
                   CALL sh_rf_err_msg("S9201")
                   SLEEP 2
                   LET m_msg = "SELECT irqca failed. SQLCODE=",
                   SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                   LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                   LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                               "EXIT:input_irctd")
                   LET m_func_key = " "
                   EXIT INPUT
                 END IF

            IF f_old_qc_req <> f_new_qc_req
            THEN
                IF f_ptwy_at_rc = 'Y'
                THEN
#BA4465 --If putaway already executed  then revert back the value of f_ipod_system_flag
        --to old one.
					LET f_ipod_system_flag = f_ret_ipod.system_flag
                    LET m_scr_irctd_rec.qc_req = f_old_qc_req
                    LET f_new_qc_req = f_old_qc_req
                    DISPLAY m_scr_irctd_rec.qc_req TO s_rf_vrfy.qc_req
                    CALL sh_rf_cmd_msg("I6055")
                    SLEEP 2
                ELSE
                	#### Check the verification flag for given po,pod_id & reciept id
					LET f_lic_cnt = 0
                    SELECT COUNT(*)
                      INTO f_lic_cnt
                      FROM irctd
                     WHERE dc_id = m_scr_irctd_rec.dc_id
                       AND whse_id = m_scr_irctd_rec.whse_id
                       AND po_id = m_scr_irctd_rec.po_id
                       AND pod_id = m_scr_irctd_rec.pod_id
                       AND rcpt_id = m_scr_irctd_rec.rcpt_id
                       AND rdst_id = 'V'

                    IF SQLCA.SQLCODE <> 0 THEN
                       CALL sh_rf_err_msg("S9201")
                       SLEEP 2
                       LET m_msg = "SELECT irctd failed. SQLCODE=",
                       SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                       LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                       LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                                      "EXIT:input_irctd")
                       LET m_func_key = " "
                       EXIT INPUT
                    END IF
                    IF f_lic_cnt > 0
                    THEN
                        SELECT qc_req
                          INTO f_old_qc_req
                          FROM ipod
                         WHERE dc_id = m_scr_irctd_rec.dc_id
                           AND whse_id = m_scr_irctd_rec.whse_id
                           AND po_id = m_scr_irctd_rec.po_id
                           AND pod_id = m_scr_irctd_rec.pod_id
                        IF SQLCA.SQLCODE <> 0 THEN
                            CALL sh_rf_err_msg("S9201")
                            SLEEP 2
                            LET m_msg = "SELECT ipod failed. SQLCODE=",
                            SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                            LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                            LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                                          "EXIT:input_irctd")
                            LET m_func_key = " "
                            EXIT INPUT
                        END IF
                        CALL sh_rf_err_msg("I9972")
                        SLEEP 2
                        LET m_scr_irctd_rec.qc_req = f_old_qc_req
                        LET f_new_qc_req = f_old_qc_req
                        DISPLAY m_scr_irctd_rec.qc_req TO s_rf_vrfy.qc_req
                    END IF
                END IF
            END IF
            BEGIN WORK  #### 1
            CALL msg_begin_work()

            CASE m_scr_irctd_rec.qc_req
                 WHEN 'Y'
					LET f_ipod_system_flag = 'S'
                 	IF f_cnt = 0 THEN
                       ### insert record in irqca
                       EXECUTE p_insert_irqca USING m_scr_irctd_rec.dc_id,
                                                    m_scr_irctd_rec.whse_id,
                                                    m_scr_irctd_rec.prod_id,
                                                    m_scr_irctd_rec.lic_plt_id
                       IF SQLCA.SQLCODE <> 0 THEN
                          CALL sh_rf_err_msg("S9201")
                          SLEEP 2
                          LET m_msg = "EXECUTE p_insert_irqca failed. SQLCODE=",
                          SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                          LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                          LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                          "EXIT:input_irctd")
                          ROLLBACK WORK ### 1
                          CALL msg_rollback_work()
                          LET m_func_key = " "
                          EXIT INPUT
                       END IF
                    END IF
                 WHEN 'N'
					LET f_ipod_system_flag = f_ret_ipod.system_flag
                    IF f_cnt > 0 THEN
                       EXECUTE p_delete_irqca USING m_scr_irctd_rec.dc_id,
                                                    m_scr_irctd_rec.whse_id,
                                                    m_scr_irctd_rec.prod_id,
                                                    m_scr_irctd_rec.lic_plt_id
                       IF SQLCA.SQLCODE <> 0 THEN
                          CALL sh_rf_err_msg("S9201")
                          SLEEP 2
                          LET m_msg = "EXECUTE p_delete_irqca failed. SQLCODE=",
                          SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                          LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                          LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                          "EXIT:input_irctd")
                          ROLLBACK WORK ### 1
                          CALL msg_rollback_work()
                          LET m_func_key = " "
                          EXIT INPUT
                       END IF
                    END IF
            END CASE
			IF f_ipod_system_flag IS NULL OR
               f_ipod_system_flag = " "
			THEN
				LET f_ipod_system_flag = f_ret_ipod.system_flag
			END IF

			--Set f_ipod_system_flag = "S" if this is a new generic lic_plt_id regardless of QC flag.
			IF m_gen_lic_flag 
			THEN
				LET f_ipod_system_flag = "S"
			END IF

#BA4465 --If putaway already executed  then revert back the value of f_ipod_system_flag
			LET m_ret_ipod.system_flag = f_ipod_system_flag
            EXECUTE p_update_ipod USING f_new_qc_req,
                                        f_ipod_system_flag,
                                        m_scr_irctd_rec.dc_id,
                                        m_scr_irctd_rec.whse_id,
                                        m_scr_irctd_rec.po_id,
                                        m_ret_ipod.pod_id
			
			IF f_old_qc_req = "N" AND f_new_qc_req = "Y"
            THEN
                UPDATE aothd
                   SET ptty_id = 'N'
                 WHERE dc_id   = m_scr_irctd_rec.dc_id 
                   AND whse_id = m_scr_irctd_rec.whse_id 
                   AND po_id   = m_scr_irctd_rec.po_id 
                   AND pod_id  = m_ret_ipod.pod_id 
            END IF
	
            IF SQLCA.SQLCODE <> 0 THEN
               CALL sh_rf_err_msg("S9201")
               SLEEP 2
               LET m_msg = "EXECUTE p_update_ipod failed. SQLCODE=",
               SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
               LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
               LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
               "EXIT:input_irctd")
               ROLLBACK WORK ### 1
               LET m_func_key = " "
               EXIT INPUT
            END IF
#### qc_req end
			IF f_vldt_status = 0
			OR f_vldt_status = 1
			THEN
				LET m_func_key = "EN"		 #-- irctd complete for this pallet 
				# Set the receipt_user to IRRVH after scaning the
				#  license plate.
				#-------------------------
				
				IF m_scr_irctd_rec.rct_qty IS NOT NULL
				AND m_func_key = "EN"
				THEN
					LET m_new_msg_flag = "Y" 
				END IF

				EXIT INPUT
			END IF

			CONTINUE INPUT
	END INPUT

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: input_irctd")

	IF f_abort = TRUE
	THEN
		RETURN TRUE
	END IF

	RETURN FALSE

END FUNCTION

{*****************************************************************************}
FUNCTION input_irctl()

	DEFINE f_abort			    INTEGER
	DEFINE f_ret_status		    INTEGER
	DEFINE f_old_catch_wgt	    LIKE irctd.catch_wgt
	DEFINE f_new_catch_wgt	    LIKE irctd.catch_wgt
	DEFINE f_catch_wgt	  	  	LIKE irctd.catch_wgt
	DEFINE f_sv_catch_wgt	    LIKE irctd.catch_wgt
	DEFINE f_rct_catch_wgt_max  LIKE irctd.catch_wgt
	DEFINE f_rct_catch_wgt_min  LIKE irctd.catch_wgt
	DEFINE f_zero_wgt_pallets	INTEGER
	DEFINE f_ysno			    LIKE sysno.ysno_id
	DEFINE f_max_lic_plt_id  	INTEGER
    DEFINE f_dtl_qty_claimed INTEGER
    DEFINE f_wt_from_whse       LIKE iinvd.whse_id
	DEFINE f_qty_claimed		LIKE ipod.qty_claimed
	DEFINE f_catch_wgt_pallets	INTEGER
	DEFINE f_case_rtu			LIKE iprdd.cse_wgt
	DEFINE f_ship_rtu			LIKE iprdd.unit_ship_cse
    DEFINE f_case_rcpt     	 	INTEGER   
    DEFINE f_ship_rcpt  	    INTEGER   
	DEFINE f_case_rmd			SMALLINT
    DEFINE f_rtu_wgt        	DECIMAL(10,5)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: input_irctl")


	LET m_scr_irctl_rec.bkord_allow = m_ret_ipod.bkord_allow
	LET m_scr_irctl_rec.qty_claimed = NULL
	LET m_scr_irctl_rec.iclcd_user_val = NULL
	IF m_scr_irctl_rec.catch_wgt IS NOT NULL
	THEN
		LET f_old_catch_wgt = m_avg_catch_wgt
		LET m_scr_irctl_rec.catch_wgt = NULL
	ELSE
		LET f_old_catch_wgt = 0
	END IF

	LET f_abort = FALSE

	IF m_over_short = TRUE
	OR (m_catch_wgt_req = "Y"
	AND m_avg_catch_wgt = 0)
	THEN
		IF m_catch_wgt_req = "Y"
		AND m_avg_catch_wgt = 0
		THEN
			LET m_scr_irctl_rec.catch_wgt = m_avg_catch_wgt
		END IF

		INPUT m_scr_irctl_rec.bkord_allow,
			  m_scr_irctl_rec.qty_claimed,
			  m_scr_irctl_rec.catch_wgt, 
			  m_scr_irctl_rec.iclcd_user_val WITHOUT DEFAULTS
		 FROM s_rf_close.bkord_allow,
			  s_rf_close.qty_claimed,
			  s_rf_close.catch_wgt, 
			  s_rf_close.iclcd_user_val

			BEFORE INPUT
				DISPLAY m_scr_irctl_rec.* TO s_rf_close.*
					ATTRIBUTE(NORMAL)

			IF m_catch_wgt_req = "Y"
			OR m_ret_sysno.ysno_id = "N"
			THEN
				LET m_ret_ipod.bkord_allow = "N" 
				DISPLAY m_scr_irctl_rec.bkord_allow TO s_rf_close.bkord_allow
					ATTRIBUTE(NORMAL)
			END IF

			IF m_catch_wgt_req = "Y"
			AND m_scr_irctl_rec.catch_wgt = 0
			THEN
				NEXT FIELD s_rf_close.catch_wgt
			END IF

			BEFORE FIELD bkord_allow
				IF m_ret_ipod.bkord_allow = "N" 
				THEN
					DISPLAY m_scr_irctl_rec.bkord_allow to s_rf_close.bkord_allow
						ATTRIBUTE(NORMAL)
					NEXT FIELD s_rf_close.qty_claimed
				END IF

				CALL sh_rf_cmd_msg("I9139")	#-- enter backorder Y/N 
				DISPLAY m_scr_irctl_rec.bkord_allow TO s_rf_close.bkord_allow
					ATTRIBUTE(REVERSE)
	 
			BEFORE FIELD catch_wgt
				IF m_catch_wgt_req = "N"
				OR m_avg_catch_wgt > 0
				THEN
					NEXT FIELD s_rf_close.qty_claimed
				END IF

				CALL sh_rf_cmd_msg("I9080")	#-- enter catch wgt
				DISPLAY f_catch_wgt TO s_rf_close.catch_wgt
					ATTRIBUTE(REVERSE)

			BEFORE FIELD qty_claimed
				CALL sh_rf_cmd_msg("I9101")	#-- enter claim qty
				DISPLAY m_scr_irctl_rec.qty_claimed TO s_rf_close.qty_claimed
					ATTRIBUTE(REVERSE)

			BEFORE FIELD iclcd_user_val
				CALL sh_rf_cmd_msg("I9102")	#-- enter claim code
				DISPLAY m_scr_irctl_rec.iclcd_user_val TO s_rf_close.iclcd_user_val
					ATTRIBUTE(REVERSE)

			ON KEY (CONTROL-P)
				CALL spprtscr()

	####CMS 12446 ---ctw 
			ON KEY (ESCAPE, INTERRUPT)
				CALL sh_rf_cmd_msg("I9087")	 #-- required field
				SLEEP 2
				CONTINUE INPUT

			AFTER FIELD catch_wgt
				DISPLAY m_scr_irctl_rec.catch_wgt TO s_rf_close.catch_wgt
					ATTRIBUTE(NORMAL)
					IF m_rct_qty = 0 AND 
					m_scr_irctl_rec.catch_wgt <> 0 
					THEN
						LET m_scr_irctl_rec.catch_wgt = 0
						DISPLAY m_scr_irctl_rec.catch_wgt TO s_rf_close.catch_wgt
							ATTRIBUTE(NORMAL)
						NEXT FIELD catch_wgt
					END IF

					IF m_rct_qty <> 0 
					AND (f_old_catch_wgt <> 0
					OR (f_old_catch_wgt = 0
					AND m_scr_irctl_rec.catch_wgt >= 0)) 
					THEN
						IF f_old_catch_wgt <> m_scr_irctl_rec.catch_wgt 
						OR (f_old_catch_wgt = 0
						AND m_scr_irctl_rec.catch_wgt = 0
						AND m_avg_catch_wgt = 0) 
						THEN
							LET f_abort = 
								chk_cwgt_boundary(m_scr_irctl_rec.dc_id,
 												m_scr_irctl_rec.whse_id, 
												m_scr_irctl_rec.prod_id, 
												m_rct_qty, 
												m_scr_irctl_rec.catch_wgt) 

							IF f_abort 
							THEN
								LET f_abort = FALSE 
								CALL sh_rf_ysno_msg("I9150","N")	#-- catchwgt limits
									RETURNING f_ret_status, f_ysno
								IF f_ysno = "N" THEN
									LET m_scr_irctl_rec.catch_wgt =
										m_scr_irctl_null.catch_wgt
									NEXT FIELD s_rf_close.catch_wgt
								END IF
							END IF
						END IF
					END IF

				{Calculate the number of Storage cases received}                  
																  
				IF m_rct_qty <> 0
				AND f_old_catch_wgt = 0
				THEN
					LET f_case_rtu = m_ret_iprdd.cse_unit                    
					LET f_ship_rtu = m_ret_iprdd.unit_ship_cse               
																			 
					IF  m_urcp_id = "C"                            
					THEN
						LET f_case_rcpt = m_scr_irctl_rec.rct_qty
						LET f_case_rmd  = 0                                    
					ELSE                                                      
						LET f_ship_rcpt = m_scr_irctl_rec.rct_qty 
						LET f_case_rmd = (f_ship_rcpt * f_ship_rtu) MOD f_case_rtu
						LET f_case_rcpt = (f_ship_rcpt * f_ship_rtu) / f_case_rtu
						IF  f_case_rmd <> 0             
						THEN                           
							LET f_case_rcpt = f_case_rcpt + 1      
						END IF                                    
					END IF  
																			   
		{f_case_rcpt now holds the number of Storage cases received independant
		of the urcp_id receiving units value whilst f_case_rmd contains the    
		number of RTU's in a partial case.}                                    
																			   
		{Calculate the Catch-Wgt of a single Storage case}                     
																			   
					IF  m_catch_wgt_req = "Y"                           
					AND m_scr_irctl_rec.catch_wgt > 0     
					THEN                                  
						IF  f_case_rmd <> 0              
						THEN                           
							LET f_rtu_wgt = m_scr_irctl_rec.catch_wgt /            
						((f_case_rcpt * f_case_rtu) - 
						(f_case_rtu - f_case_rmd))
						ELSE                               
							LET f_rtu_wgt = m_scr_irctl_rec.catch_wgt / 
									(f_case_rcpt * f_case_rtu)     
						END IF                                            
					END IF
						LET m_scr_irctl_rec.catch_wgt = f_rtu_wgt * f_case_rtu   
					END IF

				IF fgl_lastkey() = fgl_keyval("DOWN")
				OR fgl_lastkey() = fgl_keyval("RIGHT")
				OR fgl_lastkey() = fgl_keyval("TAB")
				OR m_over_short = TRUE
				THEN
					NEXT FIELD s_rf_close.qty_claimed
				END IF

			AFTER FIELD qty_claimed
				DISPLAY m_scr_irctl_rec.qty_claimed TO s_rf_close.qty_claimed
					ATTRIBUTE(NORMAL)

				IF m_scr_irctl_rec.qty_claimed IS NULL
				OR m_scr_irctl_rec.qty_claimed = 0
				THEN
					LET m_scr_irctl_rec.iclcd_user_val = " "
					DISPLAY m_scr_irctl_rec.iclcd_user_val
						 TO s_rf_close.iclcd_user_val ATTRIBUTE(NORMAL)
				END IF

				LET f_ret_status = validate_negative()
				IF f_ret_status 
				THEN
					CALL sh_rf_cmd_msg("I1253")	#-- no negative numbers
					SLEEP 1
					NEXT FIELD s_rf_close.qty_claimed
				END IF

				IF fgl_lastkey() = fgl_keyval("DOWN")
				OR fgl_lastkey() = fgl_keyval("RIGHT")
				OR fgl_lastkey() = fgl_keyval("TAB")
				THEN
					NEXT FIELD s_rf_close.iclcd_user_val
				END IF

			AFTER FIELD iclcd_user_val
				DISPLAY m_scr_irctl_rec.iclcd_user_val TO s_rf_close.iclcd_user_val
					ATTRIBUTE(NORMAL)

				IF m_scr_irctl_rec.qty_claimed IS NOT NULL
				AND m_scr_irctl_rec.qty_claimed <> 0
				THEN
					CALL val_iclcd(m_scr_irctl_rec.iclcd_user_val)
						RETURNING f_ret_status, m_ret_iclcd.*
					IF f_ret_status = TRUE
					THEN
						CALL lst_rf_iclcd() RETURNING f_ret_status, m_ret_iclcd.*
						IF f_ret_status = FALSE
						THEN
							LET m_scr_irctl_rec.iclcd_user_val =
								m_ret_iclcd.iclcd_user_val
							DISPLAY m_scr_irctl_rec.iclcd_user_val
								 TO s_rf_close.iclcd_user_val ATTRIBUTE(NORMAL)
						END IF
					END IF
				END IF
				
				IF fgl_lastkey() = fgl_keyval("UP")
				OR fgl_lastkey() = fgl_keyval("LEFT")
				THEN
					NEXT FIELD s_rf_close.qty_claimed
				END IF

			AFTER INPUT
				IF m_catch_wgt_req = "Y" AND m_rct_qty <> 0
				THEN
					IF m_avg_catch_wgt > 0
					THEN
						LET m_scr_irctl_rec.catch_wgt = m_avg_catch_wgt
					END IF

					IF m_scr_irctl_rec.catch_wgt IS NULL
					OR m_scr_irctl_rec.catch_wgt = 0
					THEN
						LET m_scr_irctl_rec.catch_wgt = 0
						NEXT FIELD catch_wgt 
					END IF
				END IF
	#  -------------------------------------------#
	#
	#  IAB 084 Modifications --
	#
				IF m_ret_ipo.po_type = "WT"  THEN
					SELECT iwxhd.from_whse
					INTO f_wt_from_whse
					FROM iwxhd
					WHERE  iwxhd.wxhd_id =  m_ret_ipod.po_id
					IF SQLCA.SQLCODE <> 0 THEN
						LET m_msg = "Warehouse transfer error . ",
									" SQLCODE=", SQLCA.SQLCODE,
									" ISAM=", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
						ROLLBACK WORK
						LET f_abort = TRUE
						EXIT INPUT 
					END IF
	   
					IF m_urcp_id = "C" AND 
					   m_scr_irctl_rec.qty_claimed > 0 
					THEN
						LET  f_dtl_qty_claimed = (m_scr_irctl_rec.qty_claimed *
													m_ret_iprdd.cse_unit)              
					END IF

					IF m_urcp_id = "S" AND 
					m_scr_irctl_rec.qty_claimed > 0 
					THEN
						LET  f_dtl_qty_claimed = (m_scr_irctl_rec.qty_claimed *
													m_ret_iprdd.unit_ship_cse)
					END IF
	   
					IF m_scr_irctl_rec.qty_claimed IS NOT NULL
					AND m_scr_irctl_rec.qty_claimed <> 0
					THEN
						CALL process_wt_po( m_scr_irctl_rec.dc_id, f_wt_from_whse, 
											m_ret_ipod.po_id, 
											m_scr_irctd_rec.rcpt_id,
											m_scr_irctd_rec.rcv_whse_id,
											m_scr_irctl_rec.prod_id, 
											m_lic_plt_glob, f_dtl_qty_claimed,
											m_scr_irctl_rec.iclcd_user_val,
											m_code_date_req,
											m_scr_irctd_rec.code_date)
					END IF
				END IF
				IF m_scr_irctl_rec.qty_claimed IS NOT NULL
				AND m_scr_irctl_rec.qty_claimed <> 0
				THEN
					IF m_scr_irctl_rec.iclcd_user_val IS NULL
					OR m_scr_irctl_rec.iclcd_user_val = " "  
					THEN
						CALL sh_rf_cmd_msg("I9174")	#-- invalid claim code
						SLEEP 1
						NEXT FIELD s_rf_close.iclcd_user_val 
					END IF
					IF m_scr_irctl_rec.iclcd_user_val = "S" THEN
						LET m_scr_irctl_rec.qty_claimed =
							m_scr_irctl_rec.qty_claimed * -1
					END IF

					#* Convert qty_claimed to RTU based on unit of receipt
					LET f_qty_claimed = 0
					IF m_urcp_id = "S" THEN	
						LET f_qty_claimed	= m_scr_irctl_rec.qty_claimed *
												m_ret_iprdd.unit_ship_cse
					ELSE
						LET f_qty_claimed	= m_scr_irctl_rec.qty_claimed *
												m_ret_iprdd.cse_unit
					END IF
													
					UPDATE ipod 
					SET qty_claimed = f_qty_claimed,
						bkord_allow = m_scr_irctl_rec.bkord_allow 
					WHERE	dc_id       = m_ret_ipod.dc_id
						AND po_id       = m_ret_ipod.po_id
						AND pod_id      = m_ret_ipod.pod_id
					IF SQLCA.SQLCODE <> 0 THEN
						LET m_msg = "UPDATE ipod fail. SQLCODE=", SQLCA.SQLCODE,
									"ISAM=", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						CALL sh_rf_cmd_msg("I9060")	#-- system failure
						SLEEP 2
						LET f_abort = TRUE
						EXIT INPUT 
					END IF
				END IF

				EXIT INPUT
		END INPUT
		END IF

		----------------------------------------------------------------
	-- CALL val_iprod() TO GET THE PRODUCTS IPROD RECORD SO THAT WE 
	-- CAN CHECK THE PRODUCTS catch_wgt_cntl FLAG, BY ADDING THE 
	-- CALL HERE THE catch_wgt_cntl FLAG HAS NOT BEEN ALTERED BY 
	-- ANY OTHER PROCESS WITHIN THE PROGRAM
	----------------------------------------------------------------
	CALL val_iprod(m_scr_irctl_rec.dc_id, m_scr_irctl_rec.prod_id)
	RETURNING f_ret_status, m_ret_iprod.*

	IF f_ret_status = TRUE THEN
		LET m_msg = "BAD RETURN FROM val_iprod(). ",
			"|: DC = ", m_scr_irctl_rec.dc_id,
			"|: PROD = ", m_scr_irctl_rec.prod_id
		LET m_ignore =sh_elog_4gl(m_module, "%C%", m_msg)
		RETURN f_ret_status
	END IF

	IF m_ret_iprod.catch_wgt_cntl = "Y" THEN
		IF m_scr_irctl_rec.catch_wgt IS NULL THEN
			LET m_scr_irctl_rec.catch_wgt = f_old_catch_wgt
		END IF
		LET f_abort = calc_catch_wgt() 
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: input_irctl")

	RETURN f_abort

END FUNCTION

{*****************************************************************************}
FUNCTION input_iupcd(f_dc_id, f_upc_id)

	DEFINE f_dc_id		 LIKE iapt.dc_id
	DEFINE f_upc_id		 LIKE iupcd.upc_id

	DEFINE f_abort		 INTEGER
	DEFINE f_ret_status	 INTEGER
	DEFINE f_ret_choice	 INTEGER

	DEFINE f_string_val		CHAR(18)
	DEFINE f_rtrn_code		INTEGER
	DEFINE f_aborted  		INTEGER
	DEFINE f_db2_err		INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: input_iupcd")

	LET f_abort = FALSE

	LET f_rtrn_code = FALSE
	INITIALIZE f_string_val TO NULL

	INPUT m_scr_iupcd_rec.* WITHOUT DEFAULTS
	 FROM s_rf_iupcd.*

		BEFORE INPUT
			INITIALIZE m_scr_iupcd_rec.prod_id TO NULL
			DISPLAY m_scr_iupcd_rec.prod_id TO s_rf_iupcd.prod_id
				ATTRIBUTE(NORMAL)
			DISPLAY f_upc_id TO s_rf_iupcd.upc_id
				ATTRIBUTE(NORMAL)

		BEFORE FIELD s_rf_iupcd.prod_id
			CALL sh_rf_cmd_msg("I9053")	#-- enter product
			DISPLAY m_scr_iupcd_rec.prod_id TO s_rf_iupcd.prod_id
				ATTRIBUTE(REVERSE)

		ON KEY (CONTROL-P)
	    	CALL spprtscr()

		ON KEY (ESCAPE, INTERRUPT)
			LET f_abort = TRUE
			EXIT INPUT

		ON KEY (RETURN)
			EXIT INPUT

		ON KEY (F4)
			# in input_iupcd()
			# open a browse form on po details for an appointment
			#----------------------------------------------------
			CALL get_pod_dtl(m_scr_irctd_rec.dc_id, 
							 m_scr_irctd_rec.rcv_whse_id, 
							 m_scr_irctd_rec.appt_id)
				 RETURNING f_ret_status, f_ret_choice

			CALL sel_pod() RETURNING f_ret_status, f_ret_choice
			IF f_ret_status = FALSE
			THEN
				LET m_scr_iupcd_rec.prod_id = 
					m_scr_pod_sel_dtl[f_ret_choice].prod_id
				DISPLAY m_scr_iupcd_rec.prod_id TO s_rf_iupcd.prod_id
					ATTRIBUTE(REVERSE)
				NEXT FIELD s_rf_iupcd.prod_id
			END IF

			CONTINUE INPUT

		AFTER FIELD s_rf_iupcd.prod_id
			##--------------------------------
			## rld.. expansion changes...
			##--------------------------------
			IF m_scr_iupcd_rec.prod_id IS NOT NULL
			THEN

				LET f_string_val = m_scr_iupcd_rec.prod_id 

				CALL convert_value("PROD", f_string_val)
					RETURNING f_rtrn_code, f_string_val
	
				CASE
					WHEN f_rtrn_code = 1				
						CALL convert_error("PROD", "RF") RETURNING f_aborted
						IF f_aborted <> 0
						THEN
							CALL sh_rf_cmd_msg("S0005")
							SLEEP 2
							LET m_ignore = sh_mlog_4gl(g_std_func_chan,
								m_module,5609, "EXIT: input_iupcd")
							EXIT PROGRAM 2
						END IF 
						NEXT FIELD s_rf_iupcd.prod_id

					WHEN (f_rtrn_code < 0)
						CALL sh_rf_cmd_msg("S0005")
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,5618, "EXIT: input_iupcd")
						EXIT PROGRAM 2

					OTHERWISE
						--- Successful conversion.
						LET m_scr_iupcd_rec.prod_id = f_string_val 
				END CASE
			END IF
			##--------------------------------------
			## rld.. end of expansion changes...
			##--------------------------------------

			DISPLAY m_scr_iupcd_rec.prod_id TO s_rf_iupcd.prod_id
				ATTRIBUTE(NORMAL)

		AFTER INPUT
			IF m_scr_iupcd_rec.prod_id IS NULL
            OR m_scr_iupcd_rec.prod_id = m_zero_prod_id
            ## rld.. OR m_scr_iupcd_rec.prod_id = "0"
			THEN
				CONTINUE INPUT
			END IF

			CALL val_iprod(f_dc_id, m_scr_iupcd_rec.prod_id)
				 RETURNING f_ret_status, m_ret_iprod.*
			IF f_ret_status = TRUE
			THEN
				CALL sh_rf_cmd_msg("I9089")	#-- product not on DC
				SLEEP 2
				NEXT FIELD s_rf_iupcd.prod_id
			END IF

			# check if product exist in appointment
			#--------------------------------------
			CALL get_po_prod(f_dc_id,
							 m_scr_irctd_rec.rcv_whse_id,
							 m_scr_irctd_rec.appt_id,
							 m_scr_iupcd_rec.prod_id)
				   RETURNING f_ret_status, f_ret_choice

			IF f_ret_status = TRUE
            OR f_ret_choice = 0
			THEN
				CALL sh_rf_cmd_msg("I9058")	#-- product not on po
				SLEEP 2
				NEXT FIELD s_rf_iupcd.prod_id
			END IF

			LET m_ret_iupc.upc_id      = f_upc_id
			LET m_ret_iupc.create_user = g_user.user_id
			LET m_ret_iupc.create_dtim = CURRENT
			LET m_ret_iupc.upc_type_flg = "I"

			INSERT INTO iupc (upc_id, create_dtim, create_user,upc_type_flg) 
				      VALUES (m_ret_iupc.upc_id, m_ret_iupc.create_dtim, 
							  m_ret_iupc.create_user,m_ret_iupc.upc_type_flg)

			LET f_db2_err = SQLCA.SQLERRD[2]
			IF SQLCA.SQLCODE <> 0
			AND SQLCA.SQLCODE <> -268	#-- duplicate
			AND f_db2_err <> -803
			THEN
				LET m_msg = "INSERT iupc failed. SQLCODE=", SQLCA.SQLCODE, 
                    		" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET f_abort = TRUE
			ELSE
				UPDATE iupcd SET del_dtim = CURRENT YEAR TO SECOND
				 WHERE dc_id = f_dc_id
				   AND prod_id = m_scr_iupcd_rec.prod_id
				   AND del_dtim IS NULL
                                                               
				IF SQLCA.SQLCODE <> 0
				THEN
					LET m_msg = "UPDATE iupcd failed. SQLCODE=", SQLCA.SQLCODE, 
                    			" ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET f_abort = TRUE
				END IF
				LET m_ret_iupcd.dc_id   = f_dc_id
				LET m_ret_iupcd.prod_id = m_scr_iupcd_rec.prod_id 
				LET m_ret_iupcd.upc_id  = f_upc_id
				LET m_ret_iupcd.key  = 0
				LET m_ret_iupcd.del_dtim = NULL

				INSERT INTO iupcd VALUES(m_ret_iupcd.*)

				IF SQLCA.SQLCODE <> 0
				THEN
					LET m_msg = "INSERT iupcd failed. SQLCODE=", SQLCA.SQLCODE, 
                    			" ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET f_abort = TRUE
				ELSE
					LET f_abort = FALSE
				END IF
			END IF
	END INPUT

	CALL close_iupcd_form()  

	#-----------------
	# retrieve product
	#-----------------
 	LET m_scr_irctd_rec.prod_id = m_ret_iupcd.prod_id 
	CALL proc_po_prod("P") RETURNING f_abort, f_ret_choice

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: input_iupcd")

	RETURN f_abort, f_ret_choice

END FUNCTION

{*****************************************************************************}
FUNCTION get_upc_prod(f_dc_id, f_whse_id, f_appt_id, f_upc_id)

	DEFINE f_dc_id			LIKE iapt.dc_id
	DEFINE f_whse_id		LIKE iapt.whse_id
	DEFINE f_appt_id		LIKE iapt.appt_id
	DEFINE f_upc_id			LIKE iupcd.upc_id

	DEFINE f_count			INTEGER
	DEFINE f_old_prod_id	LIKE iprod.prod_id
	DEFINE f_old_po			LIKE ipo.po_id 

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: get_upc_prod")

	LET m_multi_prod_upc = FALSE 

	OPEN c_upc_cur USING f_dc_id, f_dc_id, f_whse_id, f_appt_id,
		f_dc_id, f_dc_id, f_upc_id, f_upc_id

	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN upc failed. SQLCODE=", SQLCA.SQLCODE, 
                    " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_upc_prod")
		RETURN TRUE, 0
	END IF

	LET f_count = 1
	LET f_old_prod_id = m_zero_prod_id
	LET f_old_po = "0" 

	WHILE f_count <= 100
		FETCH c_upc_cur INTO m_ret_ipod.*, 
			m_ret_iprod.prod_id, m_ret_iprod.lot_no_cntl,
			m_ret_iprod.pwy_dte_ctl, m_ret_iprod.cde_dt_var,
			m_ret_iprod.cde_dt_incr, m_ret_iprod.catch_wgt_cntl,
			m_ret_iprod.description, m_ret_iprod.sdesc,
			m_ret_iupcd.*

		IF SQLCA.SQLCODE = NOTFOUND 
		THEN
			EXIT WHILE
		END IF
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "FETCH upc failed. SQLCODE=", SQLCA.SQLCODE, 
           	            " ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: get_upc_prod")
			RETURN TRUE, 0
		END IF
		
		# eliminate duplicate products
		#-----------------------------
		IF m_ret_iprod.prod_id = f_old_prod_id
		AND m_ret_ipod.po_id = f_old_po 
		THEN
			CONTINUE WHILE
		ELSE 
			IF f_old_prod_id <> m_zero_prod_id THEN 
				LET m_multi_prod_upc = TRUE 
			END IF 
		END IF

		LET f_old_prod_id = m_ret_iprod.prod_id 
		LET f_old_po = m_ret_ipod.po_id 

		CALL lkp_ipo(m_ret_ipod.dc_id, m_ret_ipod.po_id)
		   RETURNING m_ignore, m_ret_ipo.*

		LET m_scr_prod_sel_dtl[f_count].prod_id = m_ret_iprod.prod_id
		LET m_scr_prod_sel_dtl[f_count].sdesc	= m_ret_iprod.description
		LET m_arr_prod_sel_dtl[f_count].po_id  = m_ret_ipod.po_id
		LET m_arr_prod_sel_dtl[f_count].pod_id = m_ret_ipod.pod_id
		LET m_arr_prod_sel_dtl[f_count].upc_id = m_ret_iupc.upc_id
		LET m_scr_po_sel_dtl[f_count].po_id	  = m_ret_ipod.po_id
		LET m_arr_po_sel_dtl[f_count].pod_id  = m_ret_ipod.pod_id
		LET m_arr_po_sel_dtl[f_count].po_type = m_ret_ipo.po_type

		LET m_scr_irctd_rec.prod_id = m_ret_iprod.prod_id
		LET m_scr_irctd_rec.sdesc = m_ret_iprod.description
		LET m_scr_irctd_rec.po_id = m_ret_ipod.po_id
		LET m_scr_irctd_rec.pod_id = m_ret_ipod.pod_id
		LET m_scr_irctd_rec.upc_id = m_ret_iupcd.upc_id
		LET m_scr_irctd_rec.qty_ord = m_ret_ipod.qty_ord
		LET m_ignore = NULL
		LET m_ignore = proc_prod_prdd(m_ignore)
		LET m_scr_irctd_rec.prdd_id = m_ret_iprdd.prdd_id
		LET m_scr_irctd_rec.stor_ti = m_ret_iprdd.stor_ti
		LET m_scr_irctd_rec.stor_hi = m_ret_iprdd.stor_hi
		LET m_scr_irctd_rec.unit_ship_cse = m_ret_iprdd.unit_ship_cse
		LET m_scr_irctd_rec.prod_sz = m_ret_iprdd.prod_sz

		LET f_count = f_count + 1
	END WHILE

	CLOSE c_upc_cur
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "CLOSE upc failed. SQLCODE=", SQLCA.SQLCODE, 
                    " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_upc_prod")
		RETURN TRUE, 0
	END IF

	LET f_count = f_count - 1

	CALL set_count(f_count)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: get_upc_prod")

	RETURN FALSE, f_count

END FUNCTION

{*****************************************************************************}
FUNCTION get_list_prod(f_dc_id, f_whse_id, f_appt_id)

	DEFINE f_dc_id		    LIKE iapt.dc_id
	DEFINE f_whse_id		LIKE iapt.whse_id
	DEFINE f_appt_id		LIKE iapt.appt_id

	DEFINE f_count		    INTEGER
	DEFINE f_old_prod_id	LIKE iprod.prod_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: get_list_prod")

	OPEN c_list_cur USING f_dc_id, f_dc_id, f_whse_id, f_appt_id,
			f_dc_id
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN list failed. SQLCODE= ",SQLCA.SQLCODE,
				    " ISAM= ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 3
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_list_prod")
		RETURN TRUE, 0
	END IF

	LET f_count = 1
	LET f_old_prod_id = m_zero_prod_id
	## rld... LET f_old_prod_id = "0"

	WHILE f_count <= 500
		FETCH c_list_cur INTO m_ret_ipod.*,
			m_ret_iprod.prod_id, m_ret_iprod.lot_no_cntl,
			m_ret_iprod.pwy_dte_ctl, m_ret_iprod.cde_dt_var,
			m_ret_iprod.cde_dt_incr, m_ret_iprod.catch_wgt_cntl,
			m_ret_iprod.description, m_ret_iprod.sdesc

		IF SQLCA.SQLCODE = NOTFOUND 
		THEN
			EXIT WHILE
		END IF
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "FETCH list failed. SQLCODE= ",SQLCA.SQLCODE,
				    	" ISAM= ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: get_list_prod")
			RETURN TRUE, 0
		END IF

		# eliminate duplicate products
		#-----------------------------
		IF m_ret_iprod.prod_id = f_old_prod_id
		THEN
			CONTINUE WHILE
		END IF

		LET f_old_prod_id = m_ret_iprod.prod_id 

		LET m_scr_list_sel_dtl[f_count].prod_id = m_ret_ipod.prod_id
		LET m_scr_list_sel_dtl[f_count].sdesc	= m_ret_iprod.sdesc
		LET m_arr_list_sel_dtl[f_count].po_id	= m_ret_ipod.po_id
		LET m_arr_list_sel_dtl[f_count].pod_id	= m_ret_ipod.pod_id

		LET f_count = f_count + 1
	END WHILE

	CLOSE c_list_cur
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "CLOSE list failed. SQLCODE= ",SQLCA.SQLCODE,
			    	" ISAM= ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_list_prod")
		RETURN TRUE, 0
	END IF

	LET f_count = f_count - 1
	CALL set_count(f_count)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: get_list_prod")

	RETURN FALSE, f_count

END FUNCTION

{*****************************************************************************}
FUNCTION get_po_prod(f_dc_id, f_whse_id, f_appt_id, f_prod_id)

	DEFINE f_dc_id		  LIKE iapt.dc_id
	DEFINE f_whse_id	  LIKE iapt.whse_id
	DEFINE f_appt_id	  LIKE iapt.appt_id
	DEFINE f_prod_id	  LIKE iprod.prod_id

	DEFINE f_count		  INTEGER
	DEFINE f_rct_qty	  INTEGER
	DEFINE f_po_count	  INTEGER
	DEFINE f_old_po_id	  LIKE ipo.po_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: get_po_prod")

	IF m_gen_lic_flag AND m_ret_irct.whse_id IS NULL
	THEN
		OPEN c_po_cur USING f_dc_id, f_dc_id,f_whse_id,f_appt_id, f_prod_id
	ELSE
		OPEN c_po_cur USING f_dc_id, f_dc_id, m_ret_irct.whse_id, f_appt_id,
						f_prod_id
	END IF
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN po failed. SQLCODE= ",SQLCA.SQLCODE,
				    " ISAM= ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_po_prod")
		RETURN TRUE, 0
	END IF

	LET f_count = 1
	LET f_po_count = 1
	LET m_mult_po_flg  = FALSE

	WHILE f_count <= 500
		FETCH c_po_cur INTO m_ret_ipod.*

		IF SQLCA.SQLCODE = NOTFOUND
		THEN
			EXIT WHILE
		END IF
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "FETCH po failed. SQLCODE= ",SQLCA.SQLCODE,
				    	" ISAM= ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: get_po_prod")
			RETURN TRUE, 0
		END IF

		IF m_ret_ipod.prod_id <> f_prod_id
		THEN
			LET m_multi_prod_upc = TRUE
			CONTINUE WHILE
		END IF
		
		# count number of different po(s); this will determine
		# which popup box to appear: window with multiple po(s)
		# or window with multiple product details. -pvg
		#-----------------------------------------------------
		IF m_ret_ipod.po_id <> f_old_po_id
		THEN
			LET f_po_count = f_po_count + 1
		END IF

		LET f_old_po_id = m_ret_ipod.po_id 

		CALL lkp_ipo(m_ret_ipod.dc_id, m_ret_ipod.po_id)
		   RETURNING m_ignore, m_ret_ipo.*

		LET m_scr_po_sel_dtl[f_count].po_id	  = m_ret_ipod.po_id
		LET m_scr_po_sel_dtl[f_count].qty_ord =
			(m_ret_ipod.qty_ord / m_ret_ipod.unit_ship_cse)
		LET m_arr_po_sel_dtl[f_count].pod_id  = m_ret_ipod.pod_id
		LET m_arr_po_sel_dtl[f_count].po_type = m_ret_ipo.po_type

		SELECT SUM(rct_qty)
		  INTO f_rct_qty
          FROM irctd
		 WHERE irctd.dc_id  = m_ret_ipod.dc_id
		   AND irctd.po_id  = m_ret_ipod.po_id
		   AND irctd.pod_id = m_ret_ipod.pod_id

		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "SELECT SUM irctd failed. SQLCODE= ",SQLCA.SQLCODE,
				    	" ISAM= ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: get_po_prod")
			RETURN TRUE, 0
		END IF

		IF f_rct_qty IS NULL
        THEN
			LET f_rct_qty = 0
		END IF

		LET m_scr_po_sel_dtl[f_count].rct_qty   =
			(f_rct_qty / m_ret_ipod.unit_ship_cse)

		LET f_count = f_count + 1
	END WHILE

	CLOSE c_po_cur
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "CLOSE po failed. SQLCODE= ",SQLCA.SQLCODE,
				    " ISAM= ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_po_prod")
		RETURN TRUE, 0
	END IF

	IF f_po_count > 1
	THEN
		LET m_mult_po_flg = TRUE
	END IF

	LET f_count = f_count - 1
	CALL set_count(f_count)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: get_po_prod")

	RETURN FALSE, f_count

END FUNCTION

{*****************************************************************************}
FUNCTION get_pod_dtl(f_dc_id, f_whse_id, f_appt_id)

	DEFINE f_dc_id		  LIKE iapt.dc_id
	DEFINE f_whse_id	  LIKE iapt.whse_id
	DEFINE f_appt_id	  LIKE iapt.appt_id

	DEFINE f_count		  INTEGER
	DEFINE f_old_prod_id  LIKE iprod.prod_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: get_pod_dtl")

	OPEN c_pod_cur USING f_dc_id, f_dc_id, f_whse_id, f_appt_id, f_dc_id
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN ipod failed. SQLCODE=", SQLCA.SQLCODE, 
                    " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: sel_pod_dtl")
		RETURN TRUE, 0
	END IF

	LET f_count = 1
	LET f_old_prod_id = m_zero_prod_id
	## rld... LET f_old_prod_id = "0"

	WHILE f_count <= 500
		FETCH c_pod_cur INTO m_ret_ipod.*,
			m_ret_iprod.prod_id, m_ret_iprod.lot_no_cntl,
			m_ret_iprod.pwy_dte_ctl, m_ret_iprod.cde_dt_var,
			m_ret_iprod.cde_dt_incr, m_ret_iprod.catch_wgt_cntl,
			m_ret_iprod.description, m_ret_iprod.sdesc
		
		IF SQLCA.SQLCODE = NOTFOUND
		THEN
			EXIT WHILE
		END IF
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "FETCH ipod failed. SQLCODE=", SQLCA.SQLCODE, 
                    	" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: get_pod_dtl")
			RETURN TRUE, 0
		END IF
		
		# eliminate duplicate products
		#-----------------------------
		IF m_ret_iprod.prod_id = f_old_prod_id
		THEN
			CONTINUE WHILE
		END IF

		LET f_old_prod_id = m_ret_iprod.prod_id 

		LET m_scr_pod_sel_dtl[f_count].prod_id = m_ret_iprod.prod_id
		LET m_scr_pod_sel_dtl[f_count].sdesc   = m_ret_iprod.description
		LET m_scr_pod_sel_dtl[f_count].po_id   = m_ret_ipod.po_id

		LET f_count = f_count + 1
	END WHILE

	CLOSE c_pod_cur
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "CLOSE ipod failed. SQLCODE=", SQLCA.SQLCODE, 
                    " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_pod_dtl")
		RETURN TRUE, 0
	END IF

	LET f_count = f_count - 1
	CALL set_count(f_count)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: get_pod_dtl")

	RETURN FALSE, f_count

END FUNCTION

{******************************************************************************}
FUNCTION get_prdd_dtl(f_dc_id, f_whse_id, f_appt_id, f_prod_id)

	DEFINE f_dc_id		  LIKE iapt.dc_id
	DEFINE f_whse_id	  LIKE iapt.whse_id
	DEFINE f_appt_id	  LIKE iapt.appt_id
	DEFINE f_prod_id	  LIKE iprod.prod_id

	DEFINE f_count		  INTEGER
	DEFINE f_old_usc      LIKE iprdd.unit_ship_cse

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: get_prdd_dtl")

	OPEN c_prdd_cur USING f_dc_id, f_prod_id
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN prdd failed. SQLCODE= ",SQLCA.SQLCODE,
				    " ISAM= ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_prdd_dtl")
		RETURN TRUE, 0
	END IF

	LET f_count   = 1
	LET f_old_usc = 0

	WHILE f_count <= 500
		FETCH c_prdd_cur INTO m_ret_iprdd.*

		IF SQLCA.SQLCODE = NOTFOUND
		THEN
			EXIT WHILE
		END IF
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "OPEN prdd failed. SQLCODE= ",SQLCA.SQLCODE,
				    	" ISAM= ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: get_prdd_dtl")
			RETURN TRUE, 0
		END IF
		
		# for times when the product detail happens to have
		# the same pack info as another product detail,
		# default to the lesser detail number (like IRRPA)
		#--------------------------------------------------
		IF f_old_usc = m_ret_iprdd.unit_ship_cse
		THEN
			CONTINUE WHILE
		END IF

		LET f_old_usc = m_ret_iprdd.unit_ship_cse

		LET m_scr_prdd_sel_dtl[f_count].prdd_id = m_ret_iprdd.prdd_id
		LET m_scr_prdd_sel_dtl[f_count].unit_ship_cse =
				m_ret_iprdd.unit_ship_cse
		LET m_scr_prdd_sel_dtl[f_count].cse_unit =
				(m_ret_iprdd.cse_unit / m_ret_iprdd.unit_ship_cse)
		LET m_scr_prdd_sel_dtl[f_count].stor_ti = m_ret_iprdd.stor_ti
		LET m_scr_prdd_sel_dtl[f_count].stor_hi = m_ret_iprdd.stor_hi
		LET m_scr_prdd_sel_dtl[f_count].prod_sz = m_ret_iprdd.prod_sz

		LET f_count = f_count + 1
	END WHILE

	CLOSE c_prdd_cur
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "CLOSE prdd failed. SQLCODE= ",SQLCA.SQLCODE,
				    " ISAM= ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_prdd_dtl")
		RETURN TRUE, 0
	END IF

	LET f_count = f_count - 1
	CALL set_count(f_count)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: get_prdd_dtl")

	RETURN FALSE, f_count

END FUNCTION

{******************************************************************************}
FUNCTION get_sel_loc() 

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: get_sel_loc")

	INITIALIZE m_loc_id TO NULL

	SELECT loc_id, ptwy_anch, flthru_anch 
	  INTO m_loc_id, m_ptwy_anch, m_flthru_anch
	  FROM iplas
	 WHERE dc_id   = m_scr_irctd_rec.dc_id
	   AND whse_id = m_scr_irctd_rec.rcv_whse_id
	   AND prod_id = m_scr_irctd_rec.prod_id
	   AND prdd_id = m_scr_irctd_rec.prdd_id 
	   AND lcus_id = "P"
	   AND loc_id IS NOT NULL

	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "SELECT iplas  SQLCODE=", SQLCA.SQLCODE,
                    " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_sel_loc")
		RETURN
	END IF

	# go thru every possibility looking for a location
	#-------------------------------------------------
	CASE
		WHEN m_ret_iplas.flthru_anch IS NOT NULL
				LET m_loc_id = m_ret_iplas.flthru_anch

		WHEN m_ret_iplas.ptwy_anch IS NOT NULL
				LET m_loc_id = m_ret_iplas.ptwy_anch

		OTHERWISE
			SELECT stk_stg_loc, bkfill_loc
	  		  INTO m_ret_iloc.stk_stg_loc, m_ret_iloc.bkfill_loc
	  		  FROM iloc
	 		 WHERE iloc.dc_id   = m_scr_irctd_rec.dc_id
	   		   AND iloc.whse_id = m_scr_irctd_rec.rcv_whse_id
	   		   AND iloc.loc_id  = m_loc_id 
		
			IF SQLCA.SQLCODE < 0
            THEN
				LET m_msg = "SELECT iloc failed. SQLCODE= ", SQLCA.SQLCODE,
							" ISAM= ", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				CALL sh_rf_cmd_msg("I9060")
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: get_sel_loc")
				RETURN
			END IF

			IF SQLCA.SQLCODE = NOTFOUND
            THEN
				EXIT CASE
			END IF

			IF m_ret_iloc.stk_stg_loc IS NOT NULL
			THEN
				LET m_loc_id = m_ret_iloc.stk_stg_loc
			ELSE   
				IF m_ret_iloc.bkfill_loc IS NOT NULL
				THEN
					LET m_loc_id = m_ret_iloc.bkfill_loc
				END IF
			END IF 
	END CASE

	LET m_scr_irctd_rec.loc_id = m_loc_id 

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: get_sel_loc")

END FUNCTION

{*****************************************************************************}
FUNCTION sel_upc(f_dc_id, f_whse_id, f_appt_id, f_upc_id)

	DEFINE f_dc_id		  LIKE iapt.dc_id
	DEFINE f_whse_id	  LIKE iapt.whse_id
	DEFINE f_appt_id	  LIKE iapt.appt_id
	DEFINE f_upc_id		  LIKE iupcd.upc_id

	DEFINE f_loop		  INTEGER
	DEFINE f_abort		  INTEGER
	DEFINE f_ret_choice	  INTEGER

	DEFINE f_count			SMALLINT 
	DEFINE f_continue		SMALLINT
	DEFINE f_i				SMALLINT

	DEFINE f_tmp_arr ARRAY[500] OF RECORD 
		prod_id		LIKE iprod.prod_id,
		sdesc		LIKE iprod.description
	END RECORD


	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: sel_upc")

	-- Start eliminate duplicate products from array
	LET f_count = 0

	FOR f_loop = 1 TO 500
		LET f_continue = FALSE
		IF  m_scr_prod_sel_dtl[f_loop].prod_id IS NULL THEN
			EXIT FOR
		END IF

		FOR f_i = 1 TO f_count
			IF f_tmp_arr[f_i].prod_id = m_scr_prod_sel_dtl[f_loop].prod_id
			THEN
				LET f_continue = TRUE
				EXIT FOR
			END IF
		END FOR

		IF f_continue THEN
			CONTINUE FOR
		ELSE
			LET f_count = f_count + 1
			LET f_tmp_arr[f_count].* =  m_scr_prod_sel_dtl[f_loop].*
		END IF
	END FOR

	FOR f_loop = 1 TO 500
		LET m_scr_prod_sel_dtl[f_loop].* = m_scr_prod_sel_dtl[501].*
	END FOR

	FOR f_loop = 1 TO f_count
		LET m_scr_prod_sel_dtl[f_loop].* = f_tmp_arr[f_loop].*
	END FOR

	CALL set_count(f_count) 
	-- End eliminate duplicate products from array

	CALL open_iprod_form()

	FOR f_loop = 1 TO 5
		DISPLAY m_scr_prod_sel_dtl[501].* TO s_prod_sel_dtl[f_loop].*
			ATTRIBUTE(NORMAL)
	END FOR

	LET f_abort = FALSE

	CALL sh_rf_cmd_msg("I9064")	#-- select product

	DISPLAY f_dc_id TO s_prod_sel_hdr.dc_id
		ATTRIBUTE(NORMAL)
	DISPLAY f_upc_id TO s_prod_sel_hdr.upc_id
		ATTRIBUTE(NORMAL)

	DISPLAY ARRAY m_scr_prod_sel_dtl
		       TO s_prod_sel_dtl.* ATTRIBUTE(NORMAL)

		ON KEY (CONTROL-P)
	    	CALL spprtscr()

		ON KEY (ESCAPE, INTERRUPT)
			LET f_abort = TRUE
			EXIT DISPLAY

		ON KEY (RETURN)
			LET f_ret_choice = arr_curr()
			EXIT DISPLAY
	END DISPLAY

	CALL close_iprod_form()

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: sel_upc")

	IF f_abort = TRUE
	THEN
		RETURN TRUE, 0
	END IF

	RETURN FALSE, f_ret_choice

END FUNCTION

{*****************************************************************************}
FUNCTION sel_prdd(f_dc_id, f_whse_id, f_appt_id, f_prod_id, f_pod_pack)

	DEFINE f_dc_id		  LIKE iapt.dc_id
	DEFINE f_whse_id	  LIKE iapt.whse_id
	DEFINE f_appt_id	  LIKE iapt.appt_id
	DEFINE f_prod_id	  LIKE iprod.prod_id
	DEFINE f_pod_pack	  LIKE ipod.unit_ship_cse

	DEFINE f_loop		  INTEGER
	DEFINE f_abort		  INTEGER
	DEFINE f_ret_choice	  INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: sel_prdd")

	CALL open_iprdd_form()
		
	FOR f_loop = 1 TO 3
		DISPLAY m_scr_prdd_sel_dtl[501].* TO s_prdd_sel_dtl[f_loop].*
			ATTRIBUTE(NORMAL)
	END FOR

	LET f_abort = FALSE

	CALL sh_rf_cmd_msg("I9064")	#-- select product

	DISPLAY f_dc_id TO s_prdd_sel_hdr.dc_id
		ATTRIBUTE(NORMAL)
	DISPLAY f_whse_id TO s_prdd_sel_hdr.whse_id
		ATTRIBUTE(NORMAL)
	DISPLAY f_appt_id TO s_prdd_sel_hdr.appt_id
		ATTRIBUTE(NORMAL)
	DISPLAY f_prod_id TO s_prdd_sel_hdr.prod_id
		ATTRIBUTE(NORMAL)
	DISPLAY f_pod_pack TO s_prdd_sel_hdr.pod_pack
		ATTRIBUTE(NORMAL)

	DISPLAY ARRAY m_scr_prdd_sel_dtl
		       TO s_prdd_sel_dtl.* ATTRIBUTE(NORMAL)

		ON KEY (CONTROL-P)
	    	CALL spprtscr()

		ON KEY (ESCAPE, INTERRUPT)
			LET f_abort = TRUE
			EXIT DISPLAY

		ON KEY (RETURN)
			LET f_ret_choice = arr_curr()
			EXIT DISPLAY
	END DISPLAY

	CALL close_iprdd_form()

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: sel_prdd")

	IF f_abort = TRUE
	THEN
		RETURN TRUE, 0
	END IF

	RETURN FALSE, f_ret_choice

END FUNCTION

{*****************************************************************************}
FUNCTION sel_pod()

	DEFINE f_loop		  INTEGER
	DEFINE f_abort		  INTEGER
	DEFINE f_ret_choice	  INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: sel_pod")

	CALL open_ipod_form()

	FOR f_loop = 1 TO 6
		DISPLAY m_scr_pod_sel_dtl[501].* TO s_pod_sel_dtl[f_loop].*
			ATTRIBUTE(NORMAL)
	END FOR

	LET f_abort = FALSE

	CALL sh_rf_cmd_msg("I9064")	#-- select product

	DISPLAY ARRAY m_scr_pod_sel_dtl
		       TO s_pod_sel_dtl.* ATTRIBUTE(NORMAL)

		ON KEY (CONTROL-P)
	    	CALL spprtscr()

		ON KEY (ESCAPE, INTERRUPT)
			LET f_abort = TRUE
			EXIT DISPLAY

		ON KEY (RETURN)
			LET f_ret_choice = arr_curr()
			EXIT DISPLAY
	END DISPLAY

	CALL close_ipod_form()

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: sel_pod")

	IF f_abort = TRUE
	THEN
		RETURN TRUE, 0
	END IF

	RETURN FALSE, f_ret_choice

END FUNCTION

{*****************************************************************************}
FUNCTION sel_prod(f_dc_id, f_whse_id, f_appt_id)

	DEFINE f_dc_id		  LIKE iapt.dc_id
	DEFINE f_whse_id	  LIKE iapt.whse_id
	DEFINE f_appt_id	  LIKE iapt.appt_id

	DEFINE f_loop		  INTEGER
	DEFINE f_abort		  INTEGER
	DEFINE f_ret_choice	  INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: sel_prod")

	CALL open_list_form()

	FOR f_loop = 1 TO 6
		DISPLAY m_scr_list_sel_dtl[501].* TO s_list_sel_dtl[f_loop].*
			ATTRIBUTE(NORMAL)
	END FOR

	LET f_abort = FALSE

	CALL sh_rf_cmd_msg("I9064")	#-- select product

	DISPLAY ARRAY m_scr_list_sel_dtl
		       TO s_list_sel_dtl.* ATTRIBUTE(NORMAL)

		ON KEY (CONTROL-P)
	    	CALL spprtscr()

		ON KEY (ESCAPE, INTERRUPT)
			LET f_abort = TRUE
			EXIT DISPLAY

		ON KEY (RETURN)
			LET f_ret_choice = arr_curr()
			EXIT DISPLAY
	END DISPLAY

	CALL close_list_form()

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: sel_prod")

	IF f_abort = TRUE
	THEN
		RETURN TRUE, 0
	END IF

	RETURN FALSE, f_ret_choice

END FUNCTION

{*****************************************************************************}
FUNCTION sel_po(f_prod_id, f_prdd_id, f_sdesc)

	DEFINE f_prod_id	  LIKE iprdd.prod_id
	DEFINE f_prdd_id 	  LIKE iprdd.prdd_id
	DEFINE f_sdesc	      LIKE iprod.sdesc

	DEFINE f_loop		  INTEGER
	DEFINE f_abort		  INTEGER
	DEFINE f_ret_choice	  INTEGER
		
	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: sel_po")

	CALL open_ipo_form()

	FOR f_loop = 1 TO 5
		DISPLAY m_scr_po_sel_dtl[501].* TO s_po_sel_dtl[f_loop].*
			ATTRIBUTE(NORMAL)
	END FOR

	LET f_abort = FALSE

	CALL sh_rf_cmd_msg("I9063")	#-- select po

    DISPLAY f_prod_id TO s_po_sel_hdr.prod_id
		ATTRIBUTE(NORMAL)
	DISPLAY f_prdd_id TO s_po_sel_hdr.prdd_id
		ATTRIBUTE(NORMAL)
	DISPLAY f_sdesc TO s_po_sel_hdr.sdesc
		ATTRIBUTE(NORMAL)

	DISPLAY ARRAY m_scr_po_sel_dtl
		       TO s_po_sel_dtl.* ATTRIBUTE(NORMAL)

		ON KEY (CONTROL-P)
	    	CALL spprtscr()

		ON KEY (ESCAPE, INTERRUPT)
			LET f_abort = TRUE
			EXIT DISPLAY

		ON KEY (RETURN, ACCEPT)
			LET f_ret_choice = arr_curr()
			EXIT DISPLAY
	END DISPLAY

	CALL close_ipo_form()

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: sel_po")

	IF f_abort = TRUE
	THEN
		RETURN TRUE, 0
	END IF

	RETURN FALSE, f_ret_choice

END FUNCTION

{*****************************************************************************}
FUNCTION move_po_data()

	DEFINE f_rct_qty		INTEGER
	DEFINE f_ysno    		CHAR(1)
	DEFINE f_case_rmd 	 	INTEGER
	DEFINE f_rcpt_id		LIKE irctd.rcpt_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: move_po_data")

#sew -- 17770 requested that dammaged qty not be carried from previous detail
#	# use po detail info 
#	#-------------------
#	LET m_scr_irctd_rec.qty_damaged = m_ret_ipod.qty_damaged
#
#	IF m_ret_ipod.qty_damaged IS NULL
#	OR (m_ret_ipod.unit_ship_cse IS NULL
#	OR  m_ret_ipod.unit_ship_cse = 0)
#	THEN
#		LET m_scr_irctd_rec.qty_damaged = 0
#	ELSE
#		LET m_scr_irctd_rec.qty_damaged = m_ret_ipod.qty_damaged
#										/ m_ret_ipod.unit_ship_cse
#	END IF
	LET m_scr_irctd_rec.qty_damaged = 0
#sew -- end 17770

	# use product info 
	#-----------------
	CALL lkp_iprod(m_scr_irctd_rec.dc_id, m_ret_ipod.prod_id)
		 RETURNING m_ignore, m_ret_iprod.*

	LET m_scr_irctd_rec.sdesc     = m_ret_iprod.description
	#LET m_scr_irctd_rec.code_date = m_scr_irctd_rec.code_date

	IF m_ret_iprod.pwy_dte_ctl = "Y"
	THEN
		IF m_ret_iprod.cde_dt_incr IS NOT NULL
		AND m_ret_iprod.cde_dt_incr <> 0
		THEN
			LET m_code_date_req = "I"
			LET m_code_date_num = m_ret_iprod.cde_dt_incr
		ELSE
			LET m_code_date_req = "V"
			LET m_code_date_num = m_ret_iprod.cde_dt_var
		END IF
	ELSE
		LET m_code_date_req = "N"
		LET m_code_date_num = 0
	END IF

	# get warehouse level info 	## CR 11509
	#-------------------------
	CALL lkp_whse_info(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.rcv_whse_id)

	IF m_urcp_id IS NULL
	OR m_urcp_id = " "
	THEN
	#	LET m_scr_irctd_rec.urcp_id = m_urcp_id
		LET m_scr_irctd_rec.urcp_id = NULL
	END IF

	SELECT SUM(rct_qty), rcpt_id
      INTO f_rct_qty, m_rcpt_id
      FROM irctd
	 WHERE irctd.dc_id  = m_ret_ipod.dc_id
	   AND irctd.po_id  = m_ret_ipod.po_id
	   AND irctd.pod_id = m_ret_ipod.pod_id
	GROUP by rcpt_id

	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "SELECT SUM rct_qty failed. SQLCODE= ",SQLCA.SQLCODE,
				    " ISAM= ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: move_po_data")
		RETURN 1 
	END IF

	IF f_rct_qty IS NULL
    THEN
		LET f_rct_qty = 0
	END IF

	LET m_scr_irctd_rec.totr = f_rct_qty
	IF m_cstm_vrfy = "N" THEN 
		LET m_scr_irctd_rec.rcpt_id = f_rcpt_id
	END IF 


	## Set the default to "C"
	IF m_urcp_id IS NULL	## CR 11509
	OR m_urcp_id = " "
	THEN
		LET m_urcp_id = "C"
		LET m_scr_irctd_rec.urcp_id = m_urcp_c_val
	END IF

	WHILE TRUE
		CASE
		WHEN m_urcp_id = "C"
		 AND m_ret_iprdd.cse_unit IS NOT NULL
		 AND m_ret_iprdd.cse_unit > 0

			LET m_scr_irctd_rec.rct_qty =
			   (m_ret_irctd.rct_qty / m_ret_iprdd.cse_unit)
			LET m_scr_irctd_rec.tot_damage =
			   (m_ret_ipod.qty_damaged / m_ret_iprdd.cse_unit)
			LET m_scr_irctd_rec.qty_ord =
			   (m_ret_ipod.qty_ord / m_ret_iprdd.cse_unit)
			## CR 11509 - use rct_qty instead of ipod.qty_ord
			## 06/04/96 - Changed to use ipod.qty_ord
			LET f_case_rmd = m_ret_ipod.qty_ord MOD m_ret_iprdd.cse_unit
			## 06-12-96 - Changed to use ipod and irctd
			IF f_case_rmd = 0
			THEN
				LET f_case_rmd = m_ret_irctd.rct_qty
						MOD m_ret_iprdd.cse_unit
			END IF

			IF f_case_rmd <> 0 -- Forced to keep to S.
			THEN
				LET m_scr_irctd_rec.urcp_id = m_urcp_s_val
				LET m_urcp_id = "S"
				LET m_scr_irctd_rec.rct_qty =
				   (m_ret_irctd.rct_qty / m_ret_iprdd.unit_ship_cse)
				LET m_scr_irctd_rec.tot_damage =
				   (m_ret_ipod.qty_damaged / m_ret_iprdd.unit_ship_cse)
				LET m_scr_irctd_rec.qty_ord =
				   (m_ret_ipod.qty_ord / m_ret_iprdd.unit_ship_cse)
				LET m_scr_irctd_rec.totr = m_scr_irctd_rec.totr
				   / m_ret_iprdd.unit_ship_cse
			END IF

		WHEN m_urcp_id = "C"
         AND (m_ret_iprdd.cse_unit IS NULL  
          OR  m_ret_iprdd.cse_unit = 0)
			CALL sh_rf_ysno_msg("I1188","Y")	#-- change urcp to S?
					 RETURNING m_ignore, f_ysno

			IF f_ysno = "N"
			THEN
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: move_po_data")
				RETURN 2
			END IF

			LET m_scr_irctd_rec.urcp_id = m_urcp_s_val
			LET m_urcp_id = "S"
			CONTINUE WHILE

		WHEN m_urcp_id = "S"
		 	IF m_ret_iprdd.unit_ship_cse > 0 
			THEN
				IF f_rct_qty > 0
				THEN
					LET m_scr_irctd_rec.totr = 
				        f_rct_qty / m_ret_iprdd.unit_ship_cse
				END IF 		

				LET m_scr_irctd_rec.rct_qty =
				   (m_ret_irctd.rct_qty / m_ret_iprdd.unit_ship_cse)
				LET m_scr_irctd_rec.qty_ord =
		   		   (m_ret_ipod.qty_ord / m_ret_iprdd.unit_ship_cse)
				LET m_scr_irctd_rec.tot_damage =
				   (m_ret_ipod.qty_damaged / m_ret_iprdd.unit_ship_cse)
			ELSE
				IF f_rct_qty > 0
				THEN
					LET m_scr_irctd_rec.totr = 
					    f_rct_qty / m_ret_ipod.unit_ship_cse
				END IF
				
				LET m_scr_irctd_rec.rct_qty =
				   (m_ret_irctd.rct_qty / m_ret_iprdd.unit_ship_cse)
				LET m_scr_irctd_rec.qty_ord =
		   		   (m_ret_ipod.qty_ord / m_ret_ipod.unit_ship_cse)
				LET m_scr_irctd_rec.tot_damage =
				   (m_ret_ipod.qty_damaged / m_ret_ipod.unit_ship_cse)
			END IF
    	END CASE	    

		EXIT WHILE
	END WHILE 

	LET m_old_urcp_id = m_urcp_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: move_po_data")

	RETURN FALSE

END FUNCTION

{******************************************************************************}
FUNCTION move_prdd_data(f_item)

	DEFINE f_item			INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: move_prdd_data")

	LET m_scr_irctd_rec.prdd_id = m_scr_prdd_sel_dtl[f_item].prdd_id

	CALL val_iprdd(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.prod_id, 
				   m_scr_irctd_rec.prdd_id)
		 RETURNING m_ignore, m_ret_iprdd.*

	LET m_scr_irctd_rec.stor_ti = m_scr_prdd_sel_dtl[f_item].stor_ti
	LET m_scr_irctd_rec.stor_hi = m_scr_prdd_sel_dtl[f_item].stor_hi

	CALL get_sel_loc() 

	IF m_scr_irctd_rec.qty_damaged IS NULL
	THEN
		LET m_scr_irctd_rec.qty_damaged = 0
	ELSE
		LET m_scr_irctd_rec.qty_damaged = (m_scr_irctd_rec.qty_damaged /
								 m_scr_prdd_sel_dtl[f_item].unit_ship_cse)
	END IF

	LET m_scr_irctd_rec.tot_damage = m_scr_irctd_rec.qty_damaged

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: move_prdd_data")

END FUNCTION

{******************************************************************************}
FUNCTION move_list_data(f_item)

	DEFINE f_item		   INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: move_list_data")

	CALL val_iprod(m_scr_irctd_rec.dc_id,
				   m_scr_irctd_rec.prod_id)
		RETURNING m_ignore, m_ret_iprod.*

	LET m_scr_irctd_rec.prod_id = m_scr_list_sel_dtl[f_item].prod_id	 

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: move_list_data")

END FUNCTION

{******************************************************************************}
FUNCTION move_ret_iprdd()

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: move_ret_iprdd")

	LET m_scr_irctd_rec.prdd_id = m_ret_iprdd.prdd_id
	LET m_scr_irctd_rec.stor_ti = m_ret_iprdd.stor_ti
	LET m_scr_irctd_rec.stor_hi = m_ret_iprdd.stor_hi
	LET m_scr_irctd_rec.unit_ship_cse = m_ret_iprdd.unit_ship_cse
	LET m_scr_irctd_rec.prod_sz = m_ret_iprdd.prod_sz

	CALL get_sel_loc() 
	
	DISPLAY m_scr_irctd_rec.prdd_id TO s_rf_vrfy.prdd_id
			ATTRIBUTE(NORMAL)
	DISPLAY m_scr_irctd_rec.stor_ti TO s_rf_vrfy.stor_ti
			ATTRIBUTE(NORMAL)
	DISPLAY m_scr_irctd_rec.stor_hi TO s_rf_vrfy.stor_hi
			ATTRIBUTE(NORMAL)
	DISPLAY m_scr_irctd_rec.unit_ship_cse TO s_rf_vrfy.unit_ship_cse
			ATTRIBUTE(NORMAL)
	DISPLAY m_scr_irctd_rec.prod_sz TO s_rf_vrfy.prod_sz
			ATTRIBUTE(NORMAL)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: move_ret_iprdd")

END FUNCTION

{******************************************************************************}
FUNCTION move_ret_irctd()

	DEFINE f_ysno	     LIKE sysno.ysno_id
	DEFINE f_case_rmd 	 INTEGER

    LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
        "ENTER: move_ret_irctd")

	LET m_scr_irctd_rec.prod_id = m_ret_irctd.prod_id
	LET m_scr_irctd_rec.prdd_id = m_ret_irctd.prdd_id
	LET m_scr_irctd_rec.rcpt_id = m_ret_irctd.rcpt_id
	LET m_scr_irctd_rec.po_id   = m_ret_irctd.po_id
	IF m_scr_irctd_rec.stor_ti IS NULL
	THEN
		LET m_scr_irctd_rec.stor_ti = m_ret_irctd.stor_ti
	END IF
	IF m_scr_irctd_rec.stor_hi IS NULL
	THEN
		LET m_scr_irctd_rec.stor_hi = m_ret_irctd.stor_hi
	END IF
	
	CALL lkp_iprod(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.prod_id)
		 RETURNING m_ignore, m_ret_iprod.*

	CALL lkp_iprdd(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.prod_id,
				   m_scr_irctd_rec.prdd_id)
		 RETURNING m_ignore, m_ret_iprdd.*
	LET m_scr_irctd_rec.unit_ship_cse = m_ret_iprdd.unit_ship_cse
	LET m_scr_irctd_rec.prod_sz = m_ret_iprdd.prod_sz

	CALL lkp_ipod(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.po_id,
				  m_ret_irctd.pod_id)
		RETURNING m_ignore, m_ret_ipod.*

	CALL lkp_iupc(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.prod_id)
		RETURNING m_ignore, m_ret_iupc.*

	CALL lkp_irct(m_scr_irctd_rec.dc_id, m_ret_irctd.rcpt_id,
				  m_scr_irctd_rec.po_id)
		RETURNING m_ignore, m_ret_irct.*

	IF m_ret_irctd.code_date IS NULL 
#	OR	m_ret_irctd.code_date = "12312099"
	OR ((YEAR(m_ret_irctd.code_date) = 2099
		OR YEAR(m_ret_irctd.code_date) = 1899)
		AND MONTH(m_ret_irctd.code_date) = 12
		AND DAY(m_ret_irctd.code_date) = 31)
	THEN
		IF m_ret_iprod.pwy_dte_ctl = "Y"
		THEN
			LET m_scr_irctd_rec.code_date = NULL
		ELSE
			LET m_scr_irctd_rec.code_date = CURRENT
		END IF
	ELSE 
		IF m_scr_irctd_rec.code_date IS NULL
		THEN
			LET m_scr_irctd_rec.code_date = m_ret_irctd.code_date
		END IF
	END IF

	# get warehouse level info 
	#-------------------------
	CALL lkp_whse_info(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.rcv_whse_id)
	CALL lkp_surcp(m_urcp_id)
		RETURNING m_ignore, m_ret_surcp.*
#	LET m_scr_irctd_rec.urcp_id = m_urcp_id
	LET m_scr_irctd_rec.urcp_id = m_ret_surcp.surcp_user_val

	LET m_scr_irctd_rec.appt_id = m_ret_irct.appt_id
	LET m_scr_irctd_rec.upc_id  = m_ret_iupc.upc_id
	LET m_scr_irctd_rec.sdesc   = m_ret_iprod.description

	IF m_ret_iprod.pwy_dte_ctl = "Y"
	THEN
		IF m_ret_iprod.cde_dt_incr IS NOT NULL
		AND m_ret_iprod.cde_dt_incr <> 0
		THEN
			LET m_code_date_req = "I"
			LET m_code_date_num = m_ret_iprod.cde_dt_incr
		ELSE
			LET m_code_date_req = "V"
			LET m_code_date_num = m_ret_iprod.cde_dt_var
		END IF
	ELSE
		LET m_code_date_req = "N"
		LET m_code_date_num = 0
	END IF

	IF m_swhse_urcp_id = "C"    ##CR 11509
	AND m_ret_iprdd.unit_ship_cse = m_ret_iprdd.cse_unit
	THEN
		LET m_urcp_id = "C"
		LET m_scr_irctd_rec.urcp_id = m_urcp_c_val
	END IF

	## Set the default to "C"
	IF m_urcp_id IS NULL	## CR 11509
	OR m_urcp_id = " "
	THEN
		LET m_urcp_id = "C"
		LET m_scr_irctd_rec.urcp_id = m_urcp_c_val
	END IF

	WHILE TRUE
		CASE
		WHEN m_urcp_id = "C"
		 AND m_ret_iprdd.cse_unit IS NOT NULL
		 AND m_ret_iprdd.cse_unit > 0

			LET m_scr_irctd_rec.rct_qty =
			   (m_ret_irctd.rct_qty / m_ret_iprdd.cse_unit)
			LET m_scr_irctd_rec.tot_damage =
			   (m_ret_ipod.qty_damaged / m_ret_iprdd.cse_unit)
			LET m_scr_irctd_rec.qty_ord =
			   (m_ret_ipod.qty_ord / m_ret_iprdd.cse_unit)
			## CR 11509 - use rct_qty instead of ipod.qty_ord
			## 06/04/96 - Changed to use ipod.qty_ord
			LET f_case_rmd = m_ret_ipod.qty_ord MOD m_ret_iprdd.cse_unit
			## 06-12-96 - Changed to use ipod and irctd
			IF f_case_rmd = 0
			THEN
				LET f_case_rmd = m_ret_irctd.rct_qty
						MOD m_ret_iprdd.cse_unit
			END IF

			IF f_case_rmd <> 0 -- Forced to keep to S.
			THEN
				LET m_scr_irctd_rec.urcp_id = m_urcp_s_val
				LET m_urcp_id = "S"
				LET m_scr_irctd_rec.rct_qty =
				   (m_ret_irctd.rct_qty / m_ret_iprdd.unit_ship_cse)
				LET m_scr_irctd_rec.tot_damage =
				   (m_ret_ipod.qty_damaged / m_ret_iprdd.unit_ship_cse)
				LET m_scr_irctd_rec.qty_ord =
				   (m_ret_ipod.qty_ord / m_ret_iprdd.unit_ship_cse)
			END IF

		WHEN  m_urcp_id = "C"
         AND (m_ret_iprdd.cse_unit IS NULL  
          OR  m_ret_iprdd.cse_unit = 0)

			CALL sh_rf_ysno_msg("I1188","Y")	#-- change urcp to S?
					 RETURNING m_ignore, f_ysno
			IF f_ysno = "N"
			THEN
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: move_ret_irctd")
				RETURN TRUE
			END IF

			LET m_scr_irctd_rec.urcp_id = m_urcp_s_val
			LET m_urcp_id = "S"
			CONTINUE WHILE

		WHEN m_urcp_id = "S"
			LET m_scr_irctd_rec.rct_qty =
			   (m_ret_irctd.rct_qty / m_ret_iprdd.unit_ship_cse)
			LET m_scr_irctd_rec.tot_damage =
			   (m_ret_ipod.qty_damaged / m_ret_iprdd.unit_ship_cse)
			LET m_scr_irctd_rec.qty_ord =
			   (m_ret_ipod.qty_ord / m_ret_iprdd.unit_ship_cse)
			IF m_swhse_urcp_id = "C"    ## 11509
			THEN
				LET f_case_rmd = m_ret_ipod.qty_ord MOD m_ret_iprdd.cse_unit
				IF f_case_rmd = 0
				THEN
					LET f_case_rmd = m_ret_irctd.rct_qty
						MOD m_ret_iprdd.cse_unit
				END IF

				IF f_case_rmd = 0 -- Forced to keep to C.
				THEN
					LET m_scr_irctd_rec.urcp_id = m_urcp_c_val
					LET m_urcp_id = "C"
					LET m_scr_irctd_rec.rct_qty =
						m_ret_irctd.rct_qty / m_ret_iprdd.cse_unit
					LET m_scr_irctd_rec.tot_damage =
						m_ret_ipod.qty_damaged / m_ret_iprdd.cse_unit
					LET m_scr_irctd_rec.qty_ord =
						m_ret_ipod.qty_ord / m_ret_iprdd.cse_unit
				END IF
			END IF
    	END CASE	    

		EXIT WHILE
	END WHILE 

	LET m_old_urcp_id = m_urcp_id

	IF m_scr_irctd_rec.qty_damaged IS NULL
	THEN
		LET m_scr_irctd_rec.qty_damaged = 0
	END IF

	CALL get_sel_loc() 

	# set irctd.rdst_id to 'entered'
	#-------------------------------
	IF NOT m_entered
	THEN
		LET m_orig_rdst_id = m_ret_irctd.rdst_id
		CALL update_irctd("E")
	END IF
 	
    LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
        "EXIT: move_ret_irctd")

	RETURN FALSE

END FUNCTION

{******************************************************************************}
 # Populates screen rec, m_ret_iprod.*, m_ret_iprdd.*, m_ret_ipod.*,
 # Sel loc, UPC.
{******************************************************************************}
FUNCTION move_irctd_unld()

	DEFINE f_ret_status		INTEGER
	DEFINE f_ysno	     	LIKE sysno.ysno_id
	DEFINE f_case_rmd		SMALLINT	

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: move_irctd_unld")

	LET m_scr_irctd_rec.appt_id = m_unld_aothd.appt_id
	LET m_scr_irctd_rec.po_id   = m_unld_aothd.po_id

	LET m_scr_irctd_rec.prod_id = m_unld_aothd.prod_id
	LET m_scr_irctd_rec.prdd_id = m_unld_aothd.prdd_id

	CALL get_irct_id(	m_unld_aothd.dc_id,
						m_unld_aothd.whse_id,
						m_unld_aothd.appt_id,
						m_unld_aothd.po_id)
		RETURNING	f_ret_status,
					m_ret_irct.*
	LET m_scr_irctd_rec.rcpt_id = m_ret_irct.rcpt_id

	CALL lkp_iprod(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.prod_id)
		RETURNING m_ignore, m_ret_iprod.*

	LET m_scr_irctd_rec.sdesc = m_ret_iprod.description[1,13]

	IF m_ret_iprod.pwy_dte_ctl = "Y"
	THEN
		IF m_ret_iprod.cde_dt_incr IS NOT NULL
		AND m_ret_iprod.cde_dt_incr <> 0
		THEN
			LET m_code_date_req = "I"
			LET m_code_date_num = m_ret_iprod.cde_dt_incr
		ELSE
			LET m_code_date_req = "V"
			LET m_code_date_num = m_ret_iprod.cde_dt_var
		END IF
	ELSE
		LET m_code_date_req = "N"
		LET m_code_date_num = 0
	END IF

	CALL lkp_iupc(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.prod_id) 
		RETURNING m_ignore, m_ret_iupc.*
	LET m_scr_irctd_rec.upc_id = m_ret_iupc.upc_id

	CALL lkp_iprdd(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.prod_id,
				   m_scr_irctd_rec.prdd_id)
		RETURNING m_ignore, m_ret_iprdd.*
	LET m_scr_irctd_rec.stor_ti = m_ret_iprdd.stor_ti
	LET m_scr_irctd_rec.stor_hi = m_ret_iprdd.stor_hi

	CALL lkp_ipod(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.po_id,
				  m_unld_aothd.pod_id)
		RETURNING m_ignore, m_ret_ipod.*

	# get warehouse level info 
	#-------------------------
	CALL lkp_whse_info(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.whse_id)
	CALL lkp_surcp(m_urcp_id)
		RETURNING m_ignore,m_ret_surcp.*
#	LET m_scr_irctd_rec.urcp_id = m_urcp_id
	LET m_scr_irctd_rec.urcp_id = m_ret_surcp.surcp_user_val

	LET m_scr_irctd_rec.sdesc = m_ret_iprod.description[1,13]

	WHILE TRUE
		CASE
		WHEN m_urcp_id = "C"
		 AND m_ret_iprdd.cse_unit IS NOT NULL
		 AND m_ret_iprdd.cse_unit > 0

			LET f_case_rmd = m_ret_ipod.qty_ord MOD m_ret_iprdd.cse_unit 

			IF f_case_rmd <> 0
			THEN
				IF m_ret_iprdd.unit_ship_cse = 0 
				OR m_ret_iprdd.unit_ship_cse IS NULL
				THEN
					LET m_ret_iprdd.unit_ship_cse = 1 
				END IF
				LET m_scr_irctd_rec.qty_ord =
		   		   (m_ret_ipod.qty_ord / m_ret_iprdd.unit_ship_cse)
				LET m_scr_irctd_rec.tot_damage =
				   (m_ret_ipod.qty_damaged / m_ret_iprdd.unit_ship_cse)
				LET m_scr_irctd_rec.urcp_id = m_urcp_s_val
				LET m_urcp_id = "S" 
			ELSE
				LET m_scr_irctd_rec.qty_ord =
				   (m_ret_ipod.qty_ord / m_ret_iprdd.cse_unit)
				LET m_scr_irctd_rec.tot_damage = 
				   (m_ret_ipod.qty_damaged / m_ret_iprdd.cse_unit)
			END IF

			IF m_scr_irctd_rec.qty_ord = 0
			THEN
				CALL lkp_surcp("S") RETURNING m_ignore, m_ret_surcp.*
				LET m_scr_irctd_rec.urcp_id = m_ret_surcp.surcp_user_val
				LET m_urcp_id = m_ret_surcp.urcp_id
			END IF

			LET m_scr_irctd_rec.rct_qty =
				(m_unld_aothd.prod_qty / m_ret_iprdd.cse_unit)

		WHEN m_urcp_id = "C"
         AND (m_ret_iprdd.cse_unit IS NULL  
          OR  m_ret_iprdd.cse_unit = 0)  

			CALL sh_rf_ysno_msg("I1188","Y")	#-- change urcp to S?
				RETURNING m_ignore, f_ysno

			IF f_ysno = "N"
			THEN
				CALL sh_rf_cmd_msg("I1189")		#-- cannot receive pallet
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: move_irctd_unld")
				RETURN TRUE
			END IF

			CALL lkp_surcp("S") RETURNING m_ignore, m_ret_surcp.*
			LET m_scr_irctd_rec.urcp_id = m_ret_surcp.surcp_user_val
			LET m_urcp_id = m_ret_surcp.urcp_id
			CONTINUE WHILE

		WHEN m_urcp_id = "S"

			LET m_scr_irctd_rec.rct_qty =
				(m_unld_aothd.prod_qty / m_ret_iprdd.unit_ship_cse)
			LET m_scr_irctd_rec.tot_damage =
			   (m_ret_ipod.qty_damaged / m_ret_iprdd.unit_ship_cse)
			LET m_scr_irctd_rec.qty_ord =
			   (m_ret_ipod.qty_ord / m_ret_iprdd.unit_ship_cse)
    	END CASE	    

		EXIT WHILE
	END WHILE 

	IF m_scr_irctd_rec.qty_damaged IS NULL
	THEN
		LET m_scr_irctd_rec.qty_damaged = 0
	END IF

	LET m_scr_irctd_rec.inner_pack_unit = m_ret_iprdd.inner_pack_unit

	CALL get_sel_loc() 

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: move_irctd_unld")

	RETURN FALSE

END FUNCTION
{******************************************************************************}
FUNCTION next_blank(f_option)

	DEFINE f_option		 CHAR(1)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: next_blank")

	IF f_option = "R"
	THEN
		LET m_scr_irctd_rec.rct_qty	= m_scr_irctd_null.rct_qty
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: next_blank")
		RETURN
	END IF

	# do clear appt_id, but also clear option C stuff
	# (called from process_close)
	#------------------------------------------------
	IF f_option = "A"
	THEN
		LET m_scr_irctd_rec.appt_id    = m_scr_irctd_null.appt_id
		LET m_scr_irctd_rec.rcpt_id    = m_scr_irctd_null.rcpt_id
		LET m_scr_irctd_rec.lic_plt_id = m_scr_irctd_null.lic_plt_id
		LET f_option = "C"
	END IF

	IF f_option = "L"
	THEN
		LET m_scr_irctd_rec.lic_plt_id = m_scr_irctd_null.lic_plt_id
		LET f_option = "C"
	END IF

	CASE f_option
		WHEN "C"
			LET m_scr_irctd_rec.repeat	   = m_scr_irctd_null.repeat
			LET m_scr_irctd_rec.upc_id	   = m_scr_irctd_null.upc_id
			LET m_scr_irctd_rec.prod_id	   = m_scr_irctd_null.prod_id
			LET m_scr_irctd_rec.po_id	   = m_scr_irctd_null.po_id
			LET m_scr_irctd_rec.loc_id     = m_scr_irctd_null.loc_id
		WHEN "U"
			LET m_scr_irctd_rec.prod_id = m_scr_irctd_null.prod_id
		WHEN "B"
			LET m_scr_irctd_rec.prod_id         = m_scr_irctd_null.prod_id
			LET m_scr_irctd_rec.prdd_id         = m_scr_irctd_null.prdd_id
			LET m_scr_irctd_rec.unit_ship_cse   = m_scr_irctd_null.unit_ship_cse
			LET m_scr_irctd_rec.prod_sz         = m_scr_irctd_null.prod_sz
			LET m_scr_irctd_rec.upc_id          = m_scr_irctd_null.upc_id
			LET m_scr_irctd_rec.sdesc           = m_scr_irctd_null.sdesc
			LET m_scr_irctd_rec.lot_no          = m_scr_irctd_null.lot_no
			LET m_scr_irctd_rec.urcp_id         = m_scr_irctd_null.urcp_id
			LET m_scr_irctd_rec.qty_ord         = m_scr_irctd_null.qty_ord
			LET m_scr_irctd_rec.rct_qty         = m_scr_irctd_null.rct_qty
			LET m_scr_irctd_rec.flowthru_dmd    = m_scr_irctd_null.flowthru_dmd
			LET m_scr_irctd_rec.stor_ti         = m_scr_irctd_null.stor_ti
			LET m_scr_irctd_rec.stor_hi         = m_scr_irctd_null.stor_hi
			LET m_scr_irctd_rec.code_date       = m_scr_irctd_null.code_date
			LET m_scr_irctd_rec.totr            = m_scr_irctd_null.totr
			LET m_scr_irctd_rec.qty_damaged     = m_scr_irctd_null.qty_damaged
			LET m_scr_irctd_rec.tot_damage      = m_scr_irctd_null.tot_damage
			LET m_scr_irctd_rec.loc_id          = m_scr_irctd_null.loc_id
			LET m_tot_qty                        = m_scr_irctd_null.totr
			LET m_lbl_curr_pal = NULL
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: next_blank")
			RETURN
	END CASE

	IF f_option <> "P"
	THEN
		LET m_scr_irctd_rec.prdd_id = m_scr_irctd_null.prdd_id
	END IF

	LET m_scr_irctd_rec.sdesc     = m_scr_irctd_null.sdesc
	LET m_scr_irctd_rec.lot_no    = m_scr_irctd_null.lot_no   
	LET m_scr_irctd_rec.urcp_id   = m_scr_irctd_null.urcp_id
	LET m_scr_irctd_rec.qty_ord   = m_scr_irctd_null.qty_ord
	LET m_scr_irctd_rec.rct_qty   = m_scr_irctd_null.rct_qty
	LET m_scr_irctd_rec.flowthru_dmd   = m_scr_irctd_null.flowthru_dmd
	LET m_scr_irctd_rec.stor_ti   = m_scr_irctd_null.stor_ti
	LET m_scr_irctd_rec.stor_hi   = m_scr_irctd_null.stor_hi
	LET m_scr_irctd_rec.code_date = m_scr_irctd_null.code_date
	LET m_scr_irctd_rec.totr      = m_scr_irctd_null.totr
	LET m_scr_irctd_rec.qty_damaged = m_scr_irctd_null.qty_damaged
	LET m_scr_irctd_rec.tot_damage  = m_scr_irctd_null.tot_damage
	LET m_scr_irctd_rec.po_id    	= m_scr_irctd_null.po_id
	LET m_tot_qty			        = m_scr_irctd_null.totr
	LET m_lbl_curr_pal = NULL 

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: next_blank")

END FUNCTION

{*****************************************************************************}
FUNCTION display_irctd()

	#START:LMISHRA:T20210316.0163:Add Repack:3/2/2021
	DEFINE f_iprdd 			RECORD LIKE iprdd.* 
	DEFINE f_ret_status		SMALLINT
	DEFINE f_is_repack		SMALLINT
	DEFINE f_rpk 			LIKE iprdd.unit_ship_cse
	#END:LMISHRA:T20210316.0163:Add Repack:3/2/2021

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: display_irctd")
		
	LET f_is_repack = FALSE   #LMISHRA:T20210316.0163:Add Repack:3/2/2021

    DISPLAY m_scr_irctd_rec.dc_id TO s_rf_vrfy.dc_id 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.whse_id TO s_rf_vrfy.whse_id 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.rcv_whse_id TO s_rf_vrfy.rcv_whse_id 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.appt_id TO s_rf_vrfy.appt_id 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.lic_plt_id TO s_rf_vrfy.lic_plt_id 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.repeat TO s_rf_vrfy.repeat 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.upc_id TO s_rf_vrfy.upc_id 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.prod_id TO s_rf_vrfy.prod_id 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.prdd_id TO s_rf_vrfy.prdd_id 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.sdesc TO s_rf_vrfy.sdesc 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.unit_ship_cse TO s_rf_vrfy.unit_ship_cse 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.prod_sz TO s_rf_vrfy.prod_sz 
		ATTRIBUTE(NORMAL)
		
	#START:LMISHRA:T20210316.0163:Add Repack:3/2/2021
	
	{DISPLAY m_scr_irctd_rec.lot_no TO s_rf_vrfy.lot_no 
		ATTRIBUTE(NORMAL)}
		
	IF (m_scr_irctd_rec.prod_id IS NOT NULL )
		AND (m_scr_irctd_rec.prod_id IS NOT NULL) 
		AND (m_scr_irctd_rec.prdd_id > 0)
	THEN
		
		CALL lkp_iprdd(m_scr_irctd_rec.dc_id,
				m_scr_irctd_rec.prod_id,
				m_scr_irctd_rec.prdd_id)
		RETURNING f_ret_status, f_iprdd.*
	END IF 
	
	IF (f_iprdd.unit_ship_cse > 1 and f_iprdd.cse_unit <> f_iprdd.unit_ship_cse) 
		OR (f_iprdd.inner_pack_unit > 1 and f_iprdd.cse_unit <> f_iprdd.inner_pack_unit) 
		OR ((f_iprdd.unit_ship_cse = 1 or f_iprdd.inner_pack_unit = 1) and f_iprdd.cse_unit <> 1)
	THEN 
		LET f_is_repack =  TRUE
	ELSE 
		LET f_is_repack =  FALSE 

	END IF 
 
	
	IF f_is_repack = TRUE
	THEN			
		LET f_rpk = f_iprdd.cse_unit / f_iprdd.unit_ship_cse
	END IF 

	
	DISPLAY  f_rpk TO s_rf_vrfy.rpak
		ATTRIBUTE(NORMAL)

	#END:LMISHRA:T20210316.0163:Add Repack:3/2/2021
    DISPLAY m_scr_irctd_rec.qty_ord TO s_rf_vrfy.qty_ord 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.rct_qty TO s_rf_vrfy.rct_qty 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.flowthru_dmd TO s_rf_vrfy.flowthru_dmd 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.tot_damage TO s_rf_vrfy.tot_damage 
		ATTRIBUTE(NORMAL)
	DISPLAY m_scr_irctd_rec.qc_req TO s_rf_vrfy.qc_req 
		ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.qty_damaged TO s_rf_vrfy.qty_damaged 
			ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.inner_pack_unit TO s_rf_vrfy.inner_pack_unit 
			ATTRIBUTE(NORMAL)

	IF (m_scr_irctd_rec.urcp_id IS NULL
	OR  m_scr_irctd_rec.urcp_id = " ")
	AND m_scr_irctd_rec.lic_plt_id IS NOT NULL
	THEN
		CALL lkp_whse_info(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.rcv_whse_id)
		CALL lkp_surcp(m_urcp_id) 
			RETURNING m_ignore,m_ret_surcp.*
		LET m_scr_irctd_rec.urcp_id = m_ret_surcp.surcp_user_val
	END IF

	IF m_add_update = "A"
	THEN
		LET m_ret_irctd.rcpt_id = m_rcpt_id
		LET m_scr_irctd_rec.rcpt_id = m_rcpt_id
	END IF

	IF m_scr_irctd_rec.prod_id IS NOT NULL THEN
		SELECT cubiscanned
		FROM ciprdd
		WHERE dc_id = m_scr_irctd_rec.dc_id
		AND prod_id = m_scr_irctd_rec.prod_id
		AND prdd_id = m_scr_irctd_rec.prdd_id
		AND cubiscanned = 'Y'

		IF SQLCA.SQLCODE <> 0 THEN
			DISPLAY "CUBISCAN" TO s_rf_vrfy.cubiscan   ATTRIBUTE(REVERSE)
		ELSE
			DISPLAY NULL TO s_rf_vrfy.cubiscan   ATTRIBUTE(NORMAL)
		END IF
	ELSE
		DISPLAY NULL TO s_rf_vrfy.cubiscan   ATTRIBUTE(NORMAL)
	END IF

    DISPLAY m_scr_irctd_rec.rcpt_id   TO s_rf_vrfy.rcpt_id   ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.urcp_id   TO s_rf_vrfy.urcp_id   ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.stor_ti   TO s_rf_vrfy.stor_ti   ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.stor_hi   TO s_rf_vrfy.stor_hi   ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date ATTRIBUTE(NORMAL)
    DISPLAY m_scr_irctd_rec.loc_id    TO s_rf_vrfy.loc_id    ATTRIBUTE(NORMAL)
	DISPLAY m_scr_irctd_rec.totr      TO s_rf_vrfy.totr      ATTRIBUTE(NORMAL)
	DISPLAY m_scr_irctd_rec.po_id[10,18] TO s_rf_vrfy.po_id     ATTRIBUTE(NORMAL) 
	

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: display_irctd")

END FUNCTION

{******************************************************************************}
FUNCTION find_irctd(f_dc_id, f_whse_id, f_lic_plt_id)

	DEFINE f_dc_id		  LIKE irctd.dc_id
	DEFINE f_whse_id	  LIKE irctd.whse_id
	DEFINE f_lic_plt_id	  LIKE irctd.lic_plt_id

	DEFINE f_not_found		INTEGER
			
	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: find_irctd")

	LET f_not_found = FALSE

	SELECT *
      INTO m_ret_irctd.*
      FROM irctd
	 WHERE irctd.dc_id      = f_dc_id
	   AND irctd.whse_id    = f_whse_id
	   AND irctd.lic_plt_id = f_lic_plt_id

	IF SQLCA.SQLCODE <> 0
	THEN
		IF SQLCA.SQLCODE = NOTFOUND
		THEN
			LET f_not_found = TRUE
		ELSE
			LET m_msg = "SELECT irctd failed. SQLCODE=", SQLCA.SQLCODE,
						"ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: find_irctd")
			EXIT PROGRAM
		END IF
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: find_irctd")

	RETURN f_not_found

END FUNCTION

{******************************************************************************}
FUNCTION find_irctl(f_dc_id, f_whse_id, f_lic_plt_id)

	DEFINE f_dc_id		  LIKE irctl.dc_id
	DEFINE f_whse_id	  LIKE irctl.whse_id
	DEFINE f_lic_plt_id	  LIKE irctl.lic_plt_id

	DEFINE f_not_found	  INTEGER
			
	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: find_irctl")

	LET f_not_found = FALSE

	SELECT *
      INTO m_ret_irctl.*
      FROM irctl
	 WHERE irctl.dc_id      = f_dc_id
	   AND irctl.whse_id    = f_whse_id
	   AND irctl.lic_plt_id = f_lic_plt_id

	IF SQLCA.SQLCODE <> 0
	THEN
		IF SQLCA.SQLCODE = NOTFOUND
		THEN
			LET f_not_found = TRUE
		ELSE
			LET m_msg = "SELECT irctl failed. SQLCODE=", SQLCA.SQLCODE,
						"ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: find_irctl")
			CALL upd_irctd_error(f_lic_plt_id, f_dc_id, f_whse_id)
		END IF
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: find_irctl")

	RETURN f_not_found

END FUNCTION

{******************************************************************************}
FUNCTION find_iinvd(f_dc_id, f_whse_id, f_lic_plt_id)

	DEFINE f_dc_id		  LIKE irctd.dc_id
	DEFINE f_whse_id	  LIKE irctd.whse_id
	DEFINE f_lic_plt_id	  LIKE irctd.lic_plt_id

	DEFINE f_pal_count    INTEGER
			
	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: find_iinvd")

	SELECT COUNT(*)
      INTO f_pal_count
	  FROM iinvd
	 WHERE iinvd.dc_id      = f_dc_id
	   AND iinvd.whse_id    = f_whse_id
	   AND iinvd.lic_plt_id = f_lic_plt_id

	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "SELECT iinvd failed. SQLCODE=", SQLCA.SQLCODE,
					"ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
--		CALL sh_rf_cmd_msg("I9060")	#-- system failure
--		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: find_iinvd")
		RETURN TRUE, 0
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: find_iinvd")

	IF f_pal_count IS NULL
	THEN
		LET f_pal_count = 0
	END IF
	  
    IF f_pal_count = 0 
	THEN 
		LET m_msg = "License Plate Id Not Found =",f_lic_plt_id
		CALL sh_elog_4gl(m_module,"%C%",m_msg) RETURNING m_ignore
	END IF 

	RETURN FALSE, f_pal_count

END FUNCTION

{******************************************************************************}
FUNCTION process_irctd()

	DEFINE f_ret_status		INTEGER
	DEFINE f_rct_qty		INTEGER 
	DEFINE f_tot_recvd_qty	INTEGER 
	DEFINE f_tot_allocate_qty	INTEGER 
	
	DEFINE f_ift			RECORD LIKE ift.*	
	DEFINE f_tot_damage		INTEGER
	DEFINE f_qty_damaged	INTEGER
	DEFINE f_damaged	    INTEGER
	DEFINE f_po_closed_flg	LIKE iaptd.po_closed_flg
	DEFINE f_loc_id			LIKE iplas.loc_id
	DEFINE f_space_rem	 	INTEGER
	DEFINE f_incr_cde_dt	DATE
	DEFINE f_ftac_id 		CHAR(01) 
    DEFINE f_temp_flg       LIKE iprod.temp_flg #GAP 11
    DEFINE f_abort          SMALLINT

    DEFINE f_char_date      CHAR(10)
	DEFINE f_error			SMALLINT
	DEFINE f_err_code		CHAR(5) 
	DEFINE f_rpln_mthd		LIKE aothd.rpln_mthd
	DEFINE f_aothd			RECORD LIKE aothd.*
	DEFINE f_iinvd_inv_pos_cat	LIKE iinvd.inv_pos_cat
	DEFINE f_iplas_lcus_id		LIKE iplas.lcus_id
	DEFINE f_rct_qty_verify		INTEGER 
	DEFINE f_count_ck			SMALLINT # Fix for duplicate workunit
	DEFINE f_curr_dtim			LIKE cvlbl.print_dtim 
	DEFINE f_batch_no			LIKE cvlbl.batch_no 

	INITIALIZE f_incr_cde_dt TO NULL
	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: process_irctd")

	LET f_count_ck = 0
	IF m_scr_irctd_rec.lic_plt_id IS NULL
	THEN
		CALL display_irctd()
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: process_irctd")
		RETURN FALSE
	END IF

	LET f_error = FALSE

	# check if po was closed since entering the program, this is an 
	# additional check to prevent rec after another user closed the po
	#-----------------------------------------------------------------
	SET ISOLATION TO DIRTY READ
	SELECT iaptd.po_closed_flg
      INTO f_po_closed_flg
	  FROM iaptd
	 WHERE iaptd.dc_id   = m_ret_ipod.dc_id
	   AND iaptd.whse_id = m_scr_irctd_rec.rcv_whse_id
	   AND iaptd.appt_id = m_scr_irctd_rec.appt_id
	   AND iaptd.po_id   = m_ret_ipod.po_id

	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "SELECT iaptd failed. SQLCODE=",
					 SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: process_irctd")
		SET ISOLATION TO COMMITTED READ
		RETURN TRUE
	END IF

	SET ISOLATION TO COMMITTED READ
	IF f_po_closed_flg = "Y"
    THEN
		CALL sh_rf_cmd_msg("I9222")	#-- po closed
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: process_irctd")
		RETURN TRUE
	END IF

	#################
	BEGIN WORK -- for process_irctd
	CALL msg_begin_work()
	#################

	IF m_scr_irctd_rec.tot_damage IS NULL 
	THEN
		LET f_tot_damage = 0
	ELSE
		LET f_tot_damage = m_scr_irctd_rec.tot_damage
	END IF

	IF m_scr_irctd_rec.qty_damaged IS NULL
	THEN
		LET f_qty_damaged = 0
	ELSE
		LET f_qty_damaged = m_scr_irctd_rec.qty_damaged
	END IF

	IF m_urcp_id = "S"
	THEN
		LET f_tot_damage = (f_tot_damage * m_ret_iprdd.unit_ship_cse)
		LET f_qty_damaged = (f_qty_damaged * m_ret_iprdd.unit_ship_cse)
		LET m_scr_irctd_rec.rct_qty =
		   (m_scr_irctd_rec.rct_qty * m_ret_iprdd.unit_ship_cse)
	ELSE
		LET f_tot_damage = (f_tot_damage * m_ret_iprdd.cse_unit)
		LET f_qty_damaged = (f_qty_damaged * m_ret_iprdd.cse_unit)
		LET m_scr_irctd_rec.rct_qty =
	   	   (m_scr_irctd_rec.rct_qty * m_ret_iprdd.cse_unit)
	END IF

	LET f_damaged = f_tot_damage + f_qty_damaged

	UPDATE ipod SET qty_damaged = f_damaged
		      WHERE dc_id       = m_scr_irctd_rec.dc_id
		        AND po_id       = m_scr_irctd_rec.po_id
		        AND pod_id      = m_ret_ipod.pod_id

	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "UPDATE ipod failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		ROLLBACK WORK
		CALL msg_rollback_work()
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: process_irctd")
		RETURN TRUE
	END IF

	IF f_damaged > 0
	THEN
		CALL msg_send_event("PurchaseOrder", "Damaged", m_scr_irctd_rec.po_id)
		CALL msg_send_po(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.po_id)
	END IF

		#-- flowthru
		#
                # calculate and update tot_recvd_qty (ift table)
		# for a product and P.O

	IF m_scr_irctd_rec.rct_qty IS NULL 
	THEN
		LET m_scr_irctd_rec.rct_qty = 0
	END IF

	IF m_scr_irctd_rec.flowthru_dmd IS NULL 
	THEN
		LET m_scr_irctd_rec.flowthru_dmd = 0
	END IF

	IF m_ret_irctd.rctt_id = "F"
	THEN

			## Tomd  let f_rct_qty = what you actually received.  If you
			## do a sum on the irctd then the ift tot avil qty will be
			## greatly inflated.
			LET f_rct_qty = m_scr_irctd_rec.rct_qty

			SELECT *
	        	INTO f_ift.*
				FROM ift
				WHERE ft_id = m_ft_id

			IF SQLCA.SQLCODE < 0
			THEN
				LET m_msg = "SELECT ift fail. SQLCODE: ", SQLCA.SQLCODE,
					" ISAM:", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				ROLLBACK WORK
				CALL msg_rollback_work()
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"EXIT: process_irctd")
				RETURN TRUE
			END IF

#VS
           	IF f_ift.tot_recvd_qty IS NULL
           	THEN
				LET f_ift.tot_recvd_qty = 0
			END IF

           	IF f_ift.tot_allocate_qty IS NULL
           	THEN
				LET f_ift.tot_allocate_qty = 0
			END IF

			IF SQLCA.SQLCODE = 100
			THEN 
					IF f_rct_qty > 0 
					THEN

						CALL lkp_iprod(m_scr_irctd_rec.dc_id,
   									   m_scr_irctd_rec.prod_id)
		 					RETURNING f_ret_status, m_ret_iprod.*
						IF m_ret_iprod.mand_flow_flg = "Y"
						THEN

    						INITIALIZE f_ift.* TO NULL
    						LET f_ift.ft_id = 0
    						LET f_ift.dc_id = m_scr_irctd_rec.dc_id 
    						LET f_ift.whse_id = m_scr_irctd_rec.whse_id
    						LET f_ift.prod_id = m_scr_irctd_rec.prod_id 
    						LET f_ift.po_id   = m_zero_po_id
    						LET f_ift.tot_demand_qty = 0 
    						LET f_ift.tot_recvd_qty  = f_rct_qty 
    						LET f_ift.tot_ship_qty   = 0 
    						LET f_ift.orig_prod_id   = 
									m_scr_irctd_rec.prod_id 
    						LET f_ift.flow_dtl_flg = "N"
    						LET f_ift.prt_flg   = "N"
    						LET f_ift.release_seq = 1 
    						LET f_ift.ftac_id = "N" 
    						LET f_ift.purge_flg = "N" 
    						LET f_ift.create_dtim = CURRENT 
    						LET f_ift.create_user = "IRRVH" 
    						LET f_ift.tot_allocate_qty   = 0 
    						LET f_ift.whse_gnrt_flow_flg = "Y" 
    						LET f_ift.flow_type = m_ret_iprod.flow_type
							LET f_ift.unit_ship_cse = m_ret_iprdd.unit_ship_cse

							INSERT INTO ift VALUES( f_ift.* ) 
                   
							LET m_ft_id = SQLCA.SQLERRD[2]

							IF SQLCA.SQLCODE <> 0
							THEN
								LET m_msg = "INSERT ift fail. SQLCODE: ", SQLCA.SQLCODE,
								" ISAM:", SQLCA.SQLERRD[2]
								LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
								ROLLBACK WORK
								CALL msg_rollback_work()
 								CALL sh_rf_cmd_msg("I9060")	#-- system failure
 								SLEEP 2
								LET m_ignore = sh_mlog_4gl(g_std_func_chan,
									m_module,7602, "EXIT: process_irctd")
								RETURN TRUE
							END IF

						END IF -- end if mand flag

				 	END IF -- end if tot recv qty  	

			ELSE

				LET f_tot_recvd_qty = f_ift.tot_recvd_qty + f_rct_qty 

                IF f_ift.create_user = "IRRVH" AND 
                   f_ift.tot_allocate_qty = 0  
 				THEN
					### LET f_ftac_id = "N" 
				ELSE
					### LET f_ftac_id = "R" 
					LET f_tot_allocate_qty = f_ift.tot_allocate_qty + f_rct_qty 
				END IF

				SELECT rct_qty INTO f_rct_qty_verify
				FROM irctl 
				WHERE dc_id    = m_scr_irctd_rec.dc_id
				AND whse_id    = m_scr_irctd_rec.rcv_whse_id
				AND lic_plt_id = m_scr_irctd_rec.lic_plt_id

				IF SQLCA.SQLCODE < 0 THEN
				    LET m_msg = "SELECT irctl failed. SQLCODE: ", SQLCA.SQLCODE,
				    " ISAM:", SQLCA.SQLERRD[2]
				    LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
				    ROLLBACK WORK
				    CALL msg_rollback_work()
				    CALL sh_rf_cmd_msg("I9060")	#-- system failure
				    SLEEP 2
				    LET m_ignore = sh_mlog_4gl(g_std_func_chan,
					m_module,"%C%", "EXIT: process_irctd")
				    RETURN TRUE
				END IF

				IF SQLCA.SQLCODE = 0 THEN
				    LET f_tot_recvd_qty = f_tot_recvd_qty - f_rct_qty_verify
				    IF f_ift.create_user = "IRRVH" AND
					f_ift.tot_allocate_qty = 0
				    THEN
					###do nothing
				    ELSE
					LET f_tot_allocate_qty = f_tot_allocate_qty - f_rct_qty_verify
				    END IF
				END IF

				IF SQLCA.SQLCODE = 100 THEN
					##do nothing as the license plate is not verified.
				END IF

				LET f_ftac_id = "N" 

				UPDATE ift SET tot_recvd_qty = f_tot_recvd_qty, 
						   release_seq = 1,
						   ftac_id = f_ftac_id,
						   purge_flg = "N",
				           tot_allocate_qty = f_tot_allocate_qty,
						   change_user = g_user.user_id,
						   change_dtim = CURRENT YEAR TO SECOND
				 WHERE ift.ft_id  = m_ft_id

				IF SQLCA.SQLCODE <> 0
				THEN
					LET m_msg = "UPDATE ift fail. SQLCODE: ", SQLCA.SQLCODE,
						" ISAM:", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					ROLLBACK WORK
					CALL msg_rollback_work()
 					CALL sh_rf_cmd_msg("I9060")	#-- system failure
 					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
						"EXIT: process_irctd")
					RETURN TRUE
				END IF

			END IF 

        END IF               
		#
		#-- end flowthru

		# this will expedite verification process, assuming
		# that code date will be the same; later, code date
		# can be changed, if necessary. - pvg

	# These fields may have been changed in get_all() function,
	# in which case, irctd needs to be updated as well        
	#----------------------------------------------------------
                                                      
    CALL find_iinvd_cde_dt(m_scr_irctd_rec.dc_id,
                m_scr_irctd_rec.rcv_whse_id,
                m_scr_irctd_rec.lic_plt_id)
                                                      
    IF m_ret_iprod.pwy_dte_ctl != "Y"
    THEN 
        LET m_scr_irctd_rec.code_date = m_iinvd_cde_dt
    END IF

	CASE m_add_update
		WHEN "M"
			UPDATE irctd SET stor_ti    = m_scr_irctd_rec.stor_ti,
							 stor_hi    = m_scr_irctd_rec.stor_hi,
							 rct_qty    = m_scr_irctd_rec.rct_qty,
							 lot_no     = m_scr_irctd_rec.lot_no,
							 coo_id     = m_coo_id,
							 code_date  = m_scr_irctd_rec.code_date,
							 calc_cde_dt_flg = m_calc_cde_dt_flg,	#5.6.1
 						     receipt_user = "IRRVH",
							 rdst_id    = "V" 
			           WHERE dc_id      = m_scr_irctd_rec.dc_id
			             AND whse_id    = m_scr_irctd_rec.rcv_whse_id
			             AND lic_plt_id = m_scr_irctd_rec.lic_plt_id
 
			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "UPDATE irctd failed. SQLCODE=", SQLCA.SQLCODE,
							" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				ROLLBACK WORK
				CALL msg_rollback_work()
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: process_irctd")
				RETURN 2
			END IF

			CALL find_iinvd_prod_qty()

			CALL find_iinvd_cde_dt(m_scr_irctd_rec.dc_id,
	       							m_scr_irctd_rec.rcv_whse_id,
	       							m_scr_irctd_rec.lic_plt_id)
			IF m_pwy_dte_ctl = "Y"
			THEN
				LET m_iinvd_cde_dt = m_scr_irctd_rec.code_date
			ELSE
				LET f_char_date = m_scr_irctd_rec.code_date
				IF m_scr_irctd_rec.code_date IS NOT NULL
				AND f_char_date > 0
				THEN
					LET m_iinvd_cde_dt = m_scr_irctd_rec.code_date
				END IF
			END IF
			# this will expedite verification process, assuming
			# that code date will be the same; later, code date
			# can be changed, if necessary. - pvg
			#--------------------------------------------------
            CALL validate_wust() RETURNING f_abort 
            IF f_abort = TRUE THEN
			   UPDATE iinvd SET prod_qty   = m_scr_irctd_rec.rct_qty,
			         		    stor_ti    = m_scr_irctd_rec.stor_ti,
			         		    stor_hi    = m_scr_irctd_rec.stor_hi, 
			                    lot_no     = m_scr_irctd_rec.lot_no,
							 	coo_id     = m_coo_id,
			                    cde_dt     = m_scr_irctd_rec.code_date,
								#5.6.1
			                    calc_cde_dt_flg = m_calc_cde_dt_flg
	       			      WHERE dc_id      = m_scr_irctd_rec.dc_id
	       			        AND whse_id    = m_scr_irctd_rec.rcv_whse_id
	       			        AND lic_plt_id = m_scr_irctd_rec.lic_plt_id
            ELSE
			   UPDATE iinvd SET prod_qty   			= m_scr_irctd_rec.rct_qty,
			         		    stor_ti    			= m_scr_irctd_rec.stor_ti,
			         		    stor_hi    			= m_scr_irctd_rec.stor_hi, 
			                    lot_no     			= m_scr_irctd_rec.lot_no,
								coo_id     			= m_coo_id,
								ista_id     		= "A",
								cde_dt     			= m_iinvd_cde_dt ,
								#5.6.1
			                    calc_cde_dt_flg		= m_calc_cde_dt_flg,
								pwy_dte_ctl_rcpt    = m_ret_iprod.pwy_dte_ctl,
                            	cde_dt_var_rcpt     = m_ret_iprod.cde_dt_var,
                            	cde_dt_incr_rcpt    = m_ret_iprod.cde_dt_incr,
                            	prod_max_dy_rcpt    = m_ret_iprod.prod_max_dt,
                            	pull_days_rcpt      = m_ret_iprod.pull_days,
                            	po_typ_prcnt_rcpt   = m_ret_ipod.var_percent,
                            	min_chk_only        = m_ret_iprod.min_chk_only,
                            	min_chk_percent     = m_ret_iprod.min_chk_percent
	       			      WHERE dc_id      = m_scr_irctd_rec.dc_id
	       			        AND whse_id    = m_scr_irctd_rec.rcv_whse_id
	       			        AND lic_plt_id = m_scr_irctd_rec.lic_plt_id
			END IF
			#END IF

			
			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "UPDATE iinvd failed. SQLCODE=", SQLCA.SQLCODE,
							" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				ROLLBACK WORK
				CALL msg_rollback_work()
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: process_irctd")
				RETURN TRUE
			END IF

			CALL check_track_and_trace(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.whse_id, m_scr_irctd_rec.prod_id)
                                              		RETURNING f_ret_status
			IF f_ret_status = -1
			THEN
				LET m_msg = "process_irctd(): Bad return from check_track_and_trace()",
					" dc=", m_scr_irctd_rec.dc_id,
					" prod_id=", m_scr_irctd_rec.prod_id
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
				ROLLBACK WORK
				CALL msg_rollback_work()
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: process_irctd")
				RETURN TRUE
			END IF
			IF f_ret_status
			THEN
				LET f_iinvd_inv_pos_cat = NULL
				LET f_iplas_lcus_id = NULL
				SELECT iinvd.inv_pos_cat, iplas.lcus_id
				INTO f_iinvd_inv_pos_cat, f_iplas_lcus_id
				FROM iinvd, iplas
				WHERE iinvd.dc_id    = m_scr_irctd_rec.dc_id
				AND iinvd.whse_id    = m_scr_irctd_rec.whse_id
				AND iinvd.lic_plt_id = m_scr_irctd_rec.lic_plt_id
				AND iinvd.plas_id    = iplas.plas_id
				IF SQLCA.SQLCODE < 0
				THEN
					LET m_msg = "SELECT iinvd, iplas failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2], " dc=", m_scr_irctd_rec.dc_id,
						" whse=", m_scr_irctd_rec.whse_id,
						" lic_plt=", m_scr_irctd_rec.lic_plt_id
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
					ROLLBACK WORK
					CALL msg_rollback_work()
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: process_irctd")
					RETURN TRUE
				END IF

				IF f_iinvd_inv_pos_cat = "P" AND 
					(f_iplas_lcus_id = "P" OR f_iplas_lcus_id = "A")
				THEN
					CALL upd_iinvq(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.whse_id, "", 
							m_scr_irctd_rec.lic_plt_id, "",
							m_scr_irctd_rec.rct_qty,
							m_scr_irctd_rec.lot_no, "", m_coo_id)
							RETURNING f_ret_status
					IF f_ret_status
					THEN
						LET m_msg = "process_irctd(): Bad return from upd_iinvq()",
							" dc=", m_scr_irctd_rec.dc_id,
							" whse=", m_scr_irctd_rec.whse_id,
							" lic_plt=", m_scr_irctd_rec.lic_plt_id
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
						ROLLBACK WORK
						CALL msg_rollback_work()
						CALL sh_rf_cmd_msg("I9060")	#-- system failure
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
							"EXIT: process_irctd")
						RETURN TRUE
					END IF
				END IF
			END IF

			# Full Screen Receiving (IRRPA) should have built an
			# aothd record for this purpose
			#---------------------------------------------------
			UPDATE aothd SET prod_qty   	= m_scr_irctd_rec.rct_qty,
							 replen_qty		= m_scr_irctd_rec.rct_qty,
			                 lot_no     	= m_scr_irctd_rec.lot_no,
							 coo_id 	    = m_coo_id,
			                 cde_dt     	= m_scr_irctd_rec.code_date 
	       			   WHERE dc_id      	= m_scr_irctd_rec.dc_id
	       			     AND phys_whse_id   = m_scr_irctd_rec.rcv_whse_id
	       			     AND lic_plt_id 	= m_scr_irctd_rec.lic_plt_id
		
			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "UPDATE aothd failed. SQLCODE=", SQLCA.SQLCODE,
							" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				ROLLBACK WORK
				CALL msg_rollback_work()
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: process_irctd")
				RETURN TRUE
			END IF

			# Read the work unit just updated to create the checking wku.
			DECLARE c_get_aothd CURSOR FOR
				SELECT *
				FROM aothd 
				WHERE dc_id = m_scr_irctd_rec.dc_id
				AND phys_whse_id = m_scr_irctd_rec.rcv_whse_id
				AND lic_plt_id = m_scr_irctd_rec.lic_plt_id
				AND po_id = m_scr_irctd_rec.po_id
				AND appt_id = m_scr_irctd_rec.appt_id
				AND rcpt_Id = m_scr_irctd_rec.rcpt_id
			#	AND wust_id NOT IN ("CMT", "RSL") 	T20190201.0002 
				AND wust_id NOT IN ("CMT")
				AND from_dcpd_id = "DOR" 
				ORDER BY wust_id, trip_no DESC, trip_seq DESC

			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "SELECT aothd failed. SQLCODE=", SQLCA.SQLCODE,
							" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				ROLLBACK WORK
				CALL msg_rollback_work()
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: process_irctd")
				RETURN TRUE
			END IF

			OPEN c_get_aothd
			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "OPEN c_get_aothd failed. SQLCODE=", SQLCA.SQLCODE,
							" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				ROLLBACK WORK
				CALL msg_rollback_work()
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: process_irctd")
				RETURN TRUE
			END IF

			FETCH c_get_aothd INTO f_aothd.*
			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "FETCH c_get_aothd failed. SQLCODE=", SQLCA.SQLCODE,
							" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				ROLLBACK WORK
				CALL msg_rollback_work()
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: process_irctd")
				RETURN TRUE
			END IF

			########################################################
			# Add Checking work unit.
			########################################################
			IF m_ret_aassg.asgt_id = "C"
			OR m_ret_aassg.asgt_id = "B"
			THEN
				IF f_aothd.lhty_id = "MP"
				THEN
					LET f_rpln_mthd = "MP"
				ELSE
					LET f_rpln_mthd = "UK"
				END IF

 # Fix for duplicate work unit. - start - T20190710.0009

                SELECT COUNT(*)
                INTO   f_count_ck
                FROM   aothd
                WHERE  dc_id = m_scr_irctd_rec.dc_id
				AND    whse_id = m_scr_irctd_rec.whse_id
                AND    lic_plt_id = m_scr_irctd_rec.lic_plt_id
                AND    lhty_id = 'CK'

                IF SQLCA.SQLCODE < 0 THEN
                    LET m_msg = "Fetch f_count_ck failed, SQLCODE:",
                                SQLCA.SQLCODE," ISAM:", SQLCA.SQLERRD[2],
								" DC=", m_scr_irctd_rec.dc_id,
								" WH=", m_scr_irctd_rec.whse_id,
								" LP=", m_scr_irctd_rec.lic_plt_id
                     LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                    LET m_ignore = sh_mlog_4gl(g_std_func_chan,
                                       m_module,"%C%","EXIT: process_irctd")
                    CALL sh_rf_cmd_msg("I9060")
                    SLEEP 2
                    RETURN TRUE
                END IF

                IF f_count_ck > 0
                THEN
                    LET m_rescan_lp = "Y"

                    SELECT othd_id
                    INTO   m_rescan_othd_ck
                    FROM   aothd
                    WHERE  dc_id = m_scr_irctd_rec.dc_id
					AND    whse_id = m_scr_irctd_rec.whse_id
                    AND    lic_plt_id = m_scr_irctd_rec.lic_plt_id
                    AND    lhty_id = 'CK'

                    IF SQLCA.SQLCODE < 0 THEN
                        LET m_msg = "Fetch m_rescan_othd_ck failed, SQLCODE:",
                            SQLCA.SQLCODE," ISAM:", SQLCA.SQLERRD[2],
                            " DC=",m_scr_irctd_rec.dc_id,
						    " WH=", m_scr_irctd_rec.whse_id,
							" LP=",m_scr_irctd_rec.lic_plt_id,
                            " LHTY_ID= 'CK' "
                        LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                        LET m_ignore = sh_mlog_4gl(g_std_func_chan,
                            m_module,"%C%","EXIT: process_irctd")
                        CALL sh_rf_cmd_msg("I9060")
                        SLEEP 2
                        RETURN TRUE
                    END IF
                ELSE
                    LET m_rescan_lp = "N"
                    LET m_rescan_othd_ck = NULL
                END IF

 # Fix for duplicate work unit. - End - T20190710.0009
				CALL add_chck_wku("CK",f_rpln_mthd,f_aothd.*)
					RETURNING f_error, f_err_code
				IF f_error = TRUE
				THEN
					LET m_msg = "Function add_chck_wku failed." 
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					CALL sh_rf_cmd_msg(f_err_code) 
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
						"EXIT: process_irctd")
				END IF
			END IF
					
			SELECT	loc_id
			INTO	f_loc_id
			FROM	iplas
			WHERE	plas_id = 
					(SELECT	plas_id
					 FROM	iinvd
					 WHERE	lic_plt_id = m_scr_irctd_rec.lic_plt_id
					 AND	dc_id = m_scr_irctd_rec.dc_id
					 AND	whse_id = m_scr_irctd_rec.rcv_whse_id)

			IF m_ret_swhse.ptwy_at_rc = "Y"
			AND m_ret_ipod.system_flag = "S"
			AND m_rct_change = TRUE
			THEN
				CALL ptwy_space_rem(m_scr_irctd_rec.dc_id,
					m_scr_irctd_rec.rcv_whse_id, f_loc_id)
					RETURNING f_ret_status, f_space_rem
				IF f_ret_status = FALSE
				THEN
					UPDATE  iloc
					SET     space_remain = f_space_rem,
						change_user = g_user.user_id,
						change_dtim = CURRENT YEAR TO SECOND
					WHERE   dc_id = m_scr_irctd_rec.dc_id
					AND     whse_id = m_scr_irctd_rec.rcv_whse_id
					AND     loc_id = f_loc_id

					IF SQLCA.SQLCODE <> 0
					THEN
						LET m_msg = "UPDATE iloc space remaining failed. ",
							"SQLCODE:",SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					END IF
				END IF -- f_ret_status = FALSE
			END IF

			CALL sh_rf_cmd_msg("I9061")	#-- record updated
			SLEEP 1
			
		WHEN "A"
			LET m_ret_irctd.dc_id      = m_scr_irctd_rec.dc_id
			LET m_ret_irctd.whse_id    = m_scr_irctd_rec.rcv_whse_id
			LET m_ret_irctd.lic_plt_id = m_scr_irctd_rec.lic_plt_id
			LET m_ret_irctd.prod_id    = m_scr_irctd_rec.prod_id
			LET m_ret_irctd.prdd_id    = m_scr_irctd_rec.prdd_id
			LET m_ret_irctd.rcpt_id    = m_scr_irctd_rec.rcpt_id
			LET m_ret_irctd.code_date  = m_scr_irctd_rec.code_date
			LET m_ret_irctd.coo_id	   = m_coo_id
			LET m_ret_irctd.rct_qty    = m_scr_irctd_rec.rct_qty

			LET m_ret_irctd.catch_wgt  = 0
			LET m_ret_irctd.po_id      = m_scr_irctd_rec.po_id
			LET m_ret_irctd.pod_id     = m_ret_ipod.pod_id
			LET m_ret_irctd.stor_ti    = m_scr_irctd_rec.stor_ti
			LET m_ret_irctd.stor_hi    = m_scr_irctd_rec.stor_hi
			LET m_ret_irctd.lot_no    = m_scr_irctd_rec.lot_no
			LET m_ret_irctd.receipt_user = "IRRVH"
			LET m_ret_irctd.receipt_dtim = CURRENT
			LET m_ret_irctd.rctt_id      = "I"		#-- inventory
			LET m_ret_irctd.mpp_id		 = NULL

			# WARNING: -------------------------------------
			# we set to (P)utawayable so that IMPTW can run;
			# afterwards, we MUST set to (V)erifiable. -pvg
			#-----------------------------------------------
			LET m_ret_irctd.rdst_id = "P"	
			LET m_ret_irctd.calc_cde_dt_flg = m_calc_cde_dt_flg		#5.6.1
			LET m_ret_irctd.key = 0

			INSERT INTO irctd VALUES(m_ret_irctd.*)

			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "INSERT irctd failed. SQLCODE=", SQLCA.SQLCODE,
							" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				ROLLBACK WORK
				CALL msg_rollback_work()
				CALL sh_rf_cmd_msg("I9060")  #-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: process_irctd")
				RETURN 2
			END IF
			
			IF m_scr_irctd_rec.upc_id IS NOT NULL
			THEN
				UPDATE iupc SET lst_rct_dte = CURRENT YEAR TO SECOND
				          WHERE iupc.upc_id = m_scr_irctd_rec.upc_id

				IF SQLCA.SQLCODE <> 0
				THEN
					LET m_msg = "UPDATE iupc fail. SQLCODE:", SQLCA.SQLCODE,
								" ISAM:", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
						"EXIT: process_irctd")
					RETURN TRUE
				END IF
			END IF

			CALL sh_rf_cmd_msg("I9079")	#-- record added
			SLEEP 1

		OTHERWISE
			LET m_msg = "system failure"
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060") #-- system failure
			SLEEP 2
			ROLLBACK WORK
			CALL msg_rollback_work()
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: process_irctd")
			RETURN 2
	END CASE

	# Update Inbound Compliance

	UPDATE iiexp SET ver_dtim = CURRENT YEAR TO SECOND
	WHERE appt_id =  m_scr_irctd_rec.appt_id
	AND	po_id = m_scr_irctd_rec.po_id
	AND ver_dtim IS NULL
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "UPDATE iiexp fail. SQLCODE=", SQLCA.SQLCODE,
			" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		ROLLBACK WORK
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: process_irctd")
		RETURN	
	END IF
	#################
	COMMIT WORK	 -- for process_irctd
	CALL msg_commit_work()
	#################

	# build work unit as well
	#------------------------
	IF m_add_update = "A"
	THEN
		CALL process_aothd()

		IF m_ret_swhse.ptwy_at_ver = "Y"
			AND m_ret_ipod.system_flag = "S"
		THEN
			CALL create_dptwy()
			CALL run_sys_dptwy()

			IF m_cstm_vrfy = "Y" THEN
				CALL custom_putaway_labels(m_scr_irctd_rec.dc_id,
					m_scr_irctd_rec.rcpt_id, m_scr_irctd_rec.po_id,
						m_scr_irctd_rec.lic_plt_id)
					RETURNING f_abort, f_batch_no

				IF f_abort THEN
					LET m_msg = "custom_putaway_labels() returned TRUE! ",
						" No label created for PO: ", m_scr_irctd_rec.po_id,
						" LP: ", m_scr_irctd_rec.lic_plt_id
					LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
				ELSE
					LET f_abort =  print_lp_labels(f_batch_no, m_scr_irctd_rec.prod_id,
										m_scr_irctd_rec.lic_plt_id)
					IF f_abort = FALSE THEN
						--Update cvlbl print_flg to "Y"
						LET f_curr_dtim = CURRENT

						UPDATE cvlbl
							SET print_flg = "Y",
								print_user = g_user.user_id,
								print_dtim = f_curr_dtim,
								change_user = g_user.user_id,
								change_dtim = f_curr_dtim
						WHERE batch_no = f_batch_no
						AND po_id = m_scr_irctd_rec.po_id
						AND rcpt_id = m_scr_irctd_rec.rcpt_id
						AND prod_id = m_scr_irctd_rec.prod_id
						AND lp_cpn = m_scr_irctd_rec.lic_plt_id

						IF SQLCA.SQLCODE <> 0
						OR SQLCA.SQLERRD[3] = 0 THEN
							LET m_msg = "UPDATE cvlbl(1) FAILED. SQLCODE: ",
								SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
							LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
							LET m_msg = "PO: ", m_scr_irctd_rec.po_id,
										" RCPT: ", m_rcpt_id,
										" PROD: ", m_scr_irctd_rec.prod_id,
										" LP: ", m_scr_irctd_rec.lic_plt_id,
										" BATCH_NO ", f_batch_no
							LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						END IF
					ELSE
						LET m_msg = " Call to function print_lp_labels Failed. ",
									" PO: ", m_scr_irctd_rec.po_id,
									" RCPT: ", m_scr_irctd_rec.rcpt_id,
									" PROD: ", m_scr_irctd_rec.prod_id,
									" BATCH: ", f_batch_no,
									" LP: ", m_scr_irctd_rec.lic_plt_id
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					END IF
				END IF
			END IF 
		END IF
	ELSE
		IF m_iinvd_found = FALSE  ## ptwy_at_rc = "N" and no iinvd record
			AND m_ret_swhse.ptwy_at_ver = "Y"
			AND m_ret_ipod.system_flag = "S"
		THEN
			CALL create_dptwy()
			CALL run_sys_dptwy()
			LET m_iinvd_found = TRUE  ## ptwy_at_rc = "N"
		END IF
	END IF

	# update or create irctl record
	#------------------------------
	CALL find_irctl(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.rcv_whse_id,
					m_scr_irctd_rec.lic_plt_id)
		  RETURNING f_ret_status

	IF f_ret_status = TRUE		#-- notfound, create it
	THEN
		IF m_scr_irctd_rec.rct_qty > 0 
		THEN
			CALL insert_irctl(m_scr_irctd_rec.dc_id,m_scr_irctd_rec.rcv_whse_id,
							  m_scr_irctd_rec.lic_plt_id,1)
					RETURNING f_ret_status
			IF f_ret_status = TRUE
			THEN
				ROLLBACK WORK
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: process_irctd")
				RETURN 2
			END IF
		END IF
	ELSE 
		IF m_scr_irctd_rec.po_id <> m_ret_irctl.po_id 
		THEN
			DELETE FROM irctl
     		WHERE dc_id    = m_scr_irctd_rec.dc_id     
       		AND whse_id    = m_scr_irctd_rec.rcv_whse_id   
       		AND lic_plt_id = m_scr_irctd_rec.lic_plt_id

        	IF SQLCA.SQLCODE <> 0                                
        	THEN                                                 
            	LET m_msg = "DELETE from irctl failed. SQLCODE = ",
                	SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2]  
            	CALL sh_elog_4gl(m_module,"%C%", m_msg)          
                	RETURNING f_ret_status                       
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: process_irctd")
				ROLLBACK WORK
				RETURN 2
        	END IF                                               

			CALL insert_irctl(m_scr_irctd_rec.dc_id,m_scr_irctd_rec.rcv_whse_id,
							  m_scr_irctd_rec.lic_plt_id,1)
					RETURNING f_ret_status
			IF f_ret_status = TRUE
			THEN
				ROLLBACK WORK
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: process_irctd")
				RETURN 2
			END IF
		ELSE

			CALL update_irctl() RETURNING f_ret_status
			IF f_ret_status = TRUE
			THEN
				ROLLBACK WORK
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: process_irctd")
				RETURN 2
			END IF
		END IF
	END IF

	#-- flowthru
	#
	IF m_ret_swhse.flow_instld_flg = "Y"  
	THEN
		CALL insert_iftl(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.whse_id,
				  m_scr_irctd_rec.lic_plt_id) 
	END IF

	IF m_ret_swhse.ptwy_at_ver = "Y"
	AND m_putwy_flg = 1
	THEN
		CALL create_dptwy()
		CALL run_sys_dptwy()
	END IF
	#
	#-- end flowthru

	IF m_func_key = "EN"
	THEN
#------------------------------------------------------#
        #_begin GAP 011 011_SPEC_2
        INITIALIZE f_temp_flg TO NULL
        SELECT temp_flg
        INTO f_temp_flg
        FROM iprod
        WHERE dc_id = m_scr_irctd_rec.dc_id
          AND prod_id = m_scr_irctd_rec.prod_id

        IF SQLCA.SQLCODE <> 0
        THEN
            LET m_msg = "Select temp_flg failed. SQLCODE = ",
                SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2]
            CALL sh_elog_4gl(m_module,"%C%", m_msg)
                RETURNING f_ret_status
        END IF

        IF f_temp_flg = "Y"
        AND m_scr_irctd_rec.rct_qty > 0
        THEN
            CALL open_temp_form()
            CALL input_temp()
        CALL close_temp_form()
        END IF
        #_end GAP 011 011_SPEC_2
#------------------------------------------------------#
		CALL sh_rf_cmd_msg("I9096")	#-- enter next pallet item
		SLEEP 1
		INITIALIZE m_scan_rec.* TO NULL
		CALL next_blank("L")		#-- clear lic and all+
		CALL display_irctd()
	END IF

	CALL updt_m_array(	m_ret_ipod.po_id, m_ret_ipod.whse_id,
						m_scr_irctd_rec.appt_id,
						m_scr_irctd_rec.rcpt_id )

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: process_irctd")

	RETURN FALSE

END FUNCTION

{******************************************************************************}
FUNCTION updt_m_array( f_po_id, f_whse_id, f_appt_id, f_rcpt_id)
	DEFINE	f_po_id		LIKE ipo.po_id
	DEFINE	f_whse_id	LIKE irct.whse_id
	DEFINE	f_appt_id	LIKE iapt.appt_id
	DEFINE	f_rcpt_id	LIKE irct.rcpt_id
	DEFINE 	f_i			SMALLINT
	DEFINE	f_po_cnt	INTEGER
	DEFINE  f_rcpt      RECORD
			appt_id     LIKE iaptd.appt_id,
			po_id       LIKE iaptd.po_id,
			rcpt_id     LIKE irct.rcpt_id
	END RECORD


	LET m_ignore = sh_mlog_4gl( g_std_func_chan, m_module,"%C%",
								"ENTER: updt_m_array")

	LET f_po_cnt = 1
	WHILE m_array[f_po_cnt].po_id IS NOT NULL
		IF m_array[f_po_cnt].po_id = f_po_id
		AND m_array[f_po_cnt].whse_id = f_whse_id
		THEN
			EXIT WHILE
		END IF
		LET f_po_cnt = f_po_cnt + 1
	END WHILE

	IF m_array[f_po_cnt].po_id <> f_po_id
	OR m_array[f_po_cnt].po_id IS NULL
	OR m_array2[f_po_cnt].rcpt_id IS NULL
	OR m_array2[f_po_cnt].appt_id IS NULL
	OR m_array2[f_po_cnt].appt_id <> f_appt_id
	OR m_array[f_po_cnt].whse_id <> f_whse_id
	THEN
		LET m_array[f_po_cnt].po_id = f_po_id
		LET m_array2[f_po_cnt].po_id = f_po_id
		LET m_array[f_po_cnt].whse_id = f_whse_id
		LET m_array2[f_po_cnt].rcpt_id = f_rcpt_id
		LET m_array2[f_po_cnt].appt_id = f_appt_id
		LET m_array[f_po_cnt].unver_cnt = 0
		LET m_array[f_po_cnt].close_flag = 'N'
		LET m_array2[f_po_cnt].close_flag = 'N'
	END IF

	#Need to find all rcpt_id per po/appt even the ones
	#that has not been scanned. 
	OPEN c_find_rcpt USING f_whse_id,f_appt_id,f_po_id
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN c_find_rcpt failed. SQLCODE=",
		SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")    #-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: updt_m_array")
		RETURN TRUE
	END IF

	WHILE TRUE
		FETCH c_find_rcpt INTO f_rcpt.*
		IF SQLCA.SQLCODE <> 0
		THEN
			IF SQLCA.SQLCODE < 0
			THEN
				LET m_msg = "FETCH c_find_rcpt failed. SQLCODE=",
					SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				CALL sh_rf_cmd_msg("I9060")    #-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: get_close_po")
				RETURN TRUE
			END IF
			EXIT WHILE
		END IF

		FOR f_i = 1 TO m_max_rcpt
			IF m_rcpt_array[f_i].rcpt_id = f_rcpt.rcpt_id
			AND m_rcpt_array[f_i].appt_id = f_rcpt.appt_id
			AND m_rcpt_array[f_i].po_id = f_rcpt.po_id
			AND m_rcpt_array[f_i].whse_id = f_whse_id
			THEN
				EXIT FOR
			ELSE
				IF m_rcpt_array[f_i].rcpt_id IS NULL
				OR m_rcpt_array[f_i].appt_id IS NULL
				OR m_rcpt_array[f_i].po_id IS NULL
				OR m_rcpt_array[f_i].whse_id IS NULL
				THEN
					LET m_rcpt_array[f_i].rcpt_id	= f_rcpt.rcpt_id
					LET m_rcpt_array[f_i].appt_id	= f_rcpt.appt_id
					LET m_rcpt_array[f_i].po_id		= f_rcpt.po_id
					LET m_rcpt_array[f_i].whse_id	= f_whse_id
					LET m_rcpt_cnt	= m_rcpt_cnt + 1
					EXIT FOR
				END IF
			END IF
		END FOR
	END WHILE
	CLOSE c_find_rcpt

	LET m_ignore = sh_mlog_4gl( g_std_func_chan, m_module,"%C%",
								"EXIT: updt_m_array")

END FUNCTION

{******************************************************************************}
FUNCTION process_close()

	DEFINE f_abort			INTEGER
	DEFINE f_ret_status		INTEGER
	DEFINE f_ret_choice		LIKE sysno.ysno_id
	DEFINE f_pod_cnt		INTEGER
	DEFINE f_appt_cnt		INTEGER
	DEFINE f_count			INTEGER
	DEFINE f_po_proc_flg	INTEGER
	DEFINE f_unver_zero_plt	INTEGER
	DEFINE f_unver_code_date INTEGER
	DEFINE f_unscan_lic		INTEGER
	DEFINE f_zero_qty_plt	INTEGER
	DEFINE f_prev_po_id		LIKE ipo.po_id
	DEFINE f_loop			INTEGER
	DEFINE f_irct			RECORD LIKE irct.*
	DEFINE f_iapt			RECORD LIKE iapt.*
	DEFINE f_tot_pallet_cnt INTEGER
	DEFINE f_unscan_plt		LIKE irctd.lic_plt_id
	DEFINE f_undate_plt		LIKE irctd.lic_plt_id
	DEFINE f_ret_smsgs		RECORD LIKE smsgs.*
	DEFINE f_scan_bypass	INTEGER	## = True, do not check unscan
	DEFINE f_pre_po_id		LIKE ipo.po_id
	DEFINE f_system_flag	LIKE ipod.system_flag
	DEFINE f_irctd_dc_id	LIKE irctd.dc_id
	DEFINE f_irctd_whse_id	LIKE irctd.whse_id
	DEFINE f_irctd_rdst_id	LIKE irctd.rdst_id
	DEFINE f_irctd_rct_qty	LIKE irctd.rct_qty
	DEFINE f_irctd_lic_plt_id	LIKE irctd.lic_plt_id
	DEFINE f_rpt_file		CHAR(100)
	DEFINE f_rpt_file1		CHAR(100)
	DEFINE f_rpt_file2		CHAR(100)
	DEFINE f_rpt_prof_id	INTEGER
	DEFINE f_rpt_prof_id1	INTEGER
	DEFINE f_rpt_prof_id2	INTEGER
	DEFINE f_cmd			CHAR(5096)
	DEFINE f_po_ord_qty		LIKE ipod.qty_ord
	DEFINE f_arr_counter	INTEGER
	DEFINE f_lock_cnt		INTEGER
	DEFINE f_ct				INTEGER
	DEFINE f_plas_id		LIKE iplas.plas_id
	DEFINE f_lcus_id		LIKE iplas.lcus_id
	DEFINE f_i				SMALLINT
	DEFINE f_prod_count		INTEGER
	DEFINE f_aborted		SMALLINT
	DEFINE f_err_code		CHAR(2)
	DEFINE f_std_tim		INTERVAL HOUR TO SECOND
	DEFINE f_next_po		SMALLINT
	DEFINE f_rctd_cnt		INTEGER 	
	DEFINE f_ver_cnt		INTEGER 	
	DEFINE f_prev_pod_id	LIKE ipod.pod_id 
	DEFINE f_verify_bypass	SMALLINT	
	DEFINE f_po_id			LIKE ipo.po_id	
	DEFINE f_pod_id			LIKE ipod.pod_id 
	DEFINE f_iinvd_lic_plt_id	LIKE irctd.lic_plt_id  
	DEFINE all_ver_flgs_set	SMALLINT	
	DEFINE f_ret_iaptd 		RECORD LIKE iaptd.*
	DEFINE f_zero_lp		LIKE irctd.lic_plt_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: process_close")

	INITIALIZE f_rpt_file			TO NULL
	INITIALIZE f_rpt_file1			TO NULL
	INITIALIZE f_rpt_file2			TO NULL
	INITIALIZE f_rpt_prof_id		TO NULL
	INITIALIZE f_rpt_prof_id1		TO NULL
	INITIALIZE f_rpt_prof_id2		TO NULL

	#We are exiting the program update the labor standards.
	LET f_aborted = FALSE
	IF m_rows_added = TRUE
	AND m_albdf.chk_stds_calc_flg = "Y"
	THEN
		CALL rf_unload_calc(m_ret_aassg.assg_id,
							m_trip_no,
							m_audit_lvl,
							"Y")	##Update table.
			RETURNING f_aborted, f_err_code, f_std_tim
		IF f_aborted = TRUE
		THEN
			LET m_msg = "RF Unloading Standards Error: Error Code: ", 
				f_err_code, " Assg: ", m_ret_aassg.assg_id, " Trip #: ", 
				m_trip_no 
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("R5620") # Standard calc error
			SLEEP 2
		END IF
		LET m_rows_added = FALSE
		LET m_recalc_day = TRUE
	END IF

	CALL sh_rf_cmd_msg("I1165")	#-- processing close...

	# start populating irctl program variables for insert later
	#----------------------------------------------------------
	LET m_scr_irctl_rec.*		= m_scr_irctl_null.*
	LET m_scr_irctl_rec.dc_id	= m_scr_irctd_rec.dc_id
	LET m_scr_irctl_rec.whse_id = m_scr_irctd_rec.rcv_whse_id
	LET m_scr_irctl_rec.appt_id = m_scr_irctd_rec.appt_id
	LET m_scr_irctl_rec.urcp_id = m_scr_irctd_rec.urcp_id

	--Get listing of all PO on array
	IF get_close_po() = TRUE
	THEN
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: process_close")
		RETURN
	END IF

	--Loop per PO
	LET f_arr_counter = 1
	WHILE m_array[f_arr_counter].po_id IS NOT NULL

		# Update Inbound Compliance

		UPDATE iiexp SET ver_dtim = CURRENT YEAR TO SECOND
		WHERE appt_id =  m_scr_irctd_rec.appt_id
		AND	po_id = m_array[f_arr_counter].po_id
		AND ver_dtim IS NULL
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "UPDATE iiexp fail. SQLCODE=", SQLCA.SQLCODE,
				" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: process_close")
			RETURN
		END IF

		--Loop per receipt per PO
		FOR f_i = 1 TO m_rcpt_cnt
			IF m_rcpt_array[f_i].rcpt_id IS NULL
			OR m_rcpt_array[f_i].appt_id IS NULL
			OR m_rcpt_array[f_i].whse_id IS NULL
			OR m_rcpt_array[f_i].po_id IS NULL
			THEN
				EXIT FOR
			ELSE
				IF m_rcpt_array[f_i].po_id != m_array[f_arr_counter].po_id
				THEN
					CONTINUE FOR
				END IF
			END IF

			LET m_scr_irctd_rec.rcv_whse_id = m_array[f_arr_counter].whse_id
	 		LET m_scr_irctd_rec.appt_id = m_rcpt_array[f_i].appt_id
	 		LET m_scr_irctd_rec.rcpt_id = m_rcpt_array[f_i].rcpt_id
	
	
			OPEN c_ipod_cur USING
				m_scr_irctl_rec.dc_id, m_scr_irctd_rec.appt_id,
				m_scr_irctl_rec.dc_id, m_scr_irctd_rec.rcpt_id
	
			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "OPEN ipod fail. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"EXIT: process_close")
				RETURN
			END IF
	
			LET f_abort = FALSE
			LET f_prev_po_id = NULL
			LET f_prev_pod_id = NULL
			LET f_ret_choice = " "
			LET f_scan_bypass = FALSE
			LET f_verify_bypass = FALSE
			LET f_unver_zero_plt  = 0
			LET f_unver_code_date = 0
			LET f_unscan_lic	  = 0
			LET f_zero_qty_plt	  = 0
			LET m_po_pall_cnt	  = 0

			CALL lkp_iaptd(m_scr_irctl_rec.dc_id, m_scr_irctl_rec.whse_id, 
				m_scr_irctd_rec.appt_id, m_array[f_arr_counter].po_id)
				RETURNING f_abort, f_ret_iaptd.*

			WHILE TRUE
				FETCH c_ipod_cur INTO m_ret_ipod.*, # insert ipod in update_ipod
					m_ret_iprod.catch_wgt_cntl, m_ret_iprod.description
	
				IF SQLCA.SQLCODE = NOTFOUND
				THEN
					EXIT WHILE
				END IF
	
				IF SQLCA.SQLCODE < 0
				THEN
					LET m_msg = "FETCH ipod fail. SQLCODE=", SQLCA.SQLCODE,
								" ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					ROLLBACK WORK
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
						"EXIT: process_close")
					RETURN
				END IF
	
				# check to see po line belong to any po's to be closed
				#-----------------------------------------------------
				IF to_close_po( m_ret_ipod.po_id,
							m_array2[f_arr_counter].rcpt_id) = TRUE
				THEN
					LET m_msg = "to_close_po return true ",m_ret_ipod.po_id,"|",
					m_array2[f_arr_counter].rcpt_id
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					CONTINUE WHILE
				END IF
	
				LET f_po_ord_qty = m_ret_ipod.qty_ord
	
				## The followings must be checked regardless the IF statement.
				IF (f_prev_po_id IS NULL
				OR f_prev_po_id <> m_ret_ipod.po_id)
				THEN
					LET f_prev_po_id = m_ret_ipod.po_id
					LET f_prev_pod_id = m_ret_ipod.pod_id
					LET f_po_proc_flg = FALSE
	
					# count number of unscaned pallets, no code date pallets
					# and 0 quantity pallets
					#-----------------------------------
					CALL process_zero_out() RETURNING f_ret_status,
						f_zero_qty_plt, f_unver_zero_plt,
						f_unscan_lic, f_unver_code_date,
						f_unscan_plt, f_undate_plt
	
					IF f_ret_status
					THEN
						LET m_msg = "process_zero_out returned true"
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						ROLLBACK WORK
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: process_close")
						RETURN
					END IF
	
					DISPLAY "" AT 1,1
	
					# Find no code date pallets
					#-----------------------------------
					IF f_unver_code_date > 0
					THEN
						LET f_unver_code_date = 0
	
{5.6 Upgrade
						LET f_ret_smsgs.desc3 = "Licn-",
							f_undate_plt USING "<<<<<<<<<<<"
						LET f_ret_smsgs.change_user = g_user.user_id
						LET f_ret_smsgs.change_dtim = CURRENT
						UPDATE smsgs SET(desc3,
										change_user,
										change_dtim) =
										(f_ret_smsgs.desc3,
										f_ret_smsgs.change_user,
										f_ret_smsgs.change_dtim)
							WHERE message_id = "I1288"
5.6 Upgrade}
						CALL sh_rf_err_msg("I1288")	#--  Enter code date
	
						CALL suspend_po(m_ret_ipod.po_id)
						CALL sh_rf_cmd_msg("I1172")	#-- close aborted
						SLEEP 2
						LET f_po_proc_flg = TRUE
						ROLLBACK WORK
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: process_close")
						RETURN
					END IF
	
					# Find unscaned pallets
					#-----------------------------------
					IF f_unscan_lic > 0
					THEN
						IF f_scan_bypass = TRUE
						THEN
							LET f_unscan_lic = 0
						ELSE
							LET f_unscan_lic = 0
{5.6 Upgrade
							LET f_count = 1
							LET f_ret_choice = "N"
							WHILE m_array[f_count].po_id IS NOT NULL
								IF m_array[f_count].po_id = m_ret_ipod.po_id
								THEN
									LET f_ret_choice =
										m_array[f_count].close_flag
									EXIT WHILE
								END IF
								LET f_count = f_count + 1
							END WHILE
5.6 Upgrade}
							IF m_ret_ipo.po_type = "WT"
							THEN
								CALL display_non_ver_lic()
								LET f_ret_choice = "N"
								CALL sh_cmd_msg("S4144")
								SLEEP 4
							ELSE
								CALL display_non_ver_lic()
								CALL sh_rf_ysno_msg("I1171","N") #zero out rct qty?
								RETURNING f_ret_status, f_ret_choice 
							END IF
	
							IF f_ret_choice = "Y"
							THEN
								LET f_scan_bypass = TRUE
								IF update_zero_out()
								THEN
									LET m_ignore = sh_mlog_4gl(g_std_func_chan,
										m_module,"%C%", "EXIT: process_close")
									ROLLBACK WORK
									RETURN
								END IF
							ELSE
								CALL suspend_po(m_ret_ipod.po_id)
								CALL sh_rf_cmd_msg("I1172")	#-- close aborted
								SLEEP 1
								LET f_po_proc_flg = TRUE
								LET m_ignore = sh_mlog_4gl(g_std_func_chan,
									m_module,"%C%", "EXIT: process_close")
								ROLLBACK WORK
								RETURN
							END IF
						END IF
					END IF
				END IF
	
				# insure po does not go thru if not zeroed out (aborted)
				#-------------------------------------------------------
				IF f_po_proc_flg = TRUE
				THEN
					CONTINUE WHILE
				END IF
	
				LET m_scr_irctl_rec.po_id	= m_ret_ipod.po_id
				LET m_scr_irctl_rec.prod_id = m_ret_ipod.prod_id
				LET m_rct_qty = 0
				LET m_pallet_cnt = 0
				LET m_nonzero_pallet_cnt = 0   ---CMS23430
				LET f_tot_pallet_cnt = 0
	
				OPEN c_rdst_qty USING m_ret_ipod.dc_id, m_ret_ipod.whse_id,
						m_ret_ipod.po_id, m_ret_ipod.pod_id
	
				IF SQLCA.SQLCODE <> 0
				THEN
					LET m_msg = "OPEN c_rdst_qty fail. SQLCODE=",
						SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					ROLLBACK WORK
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: process_close")
					RETURN
				END IF
	
				# now check out those that were verified and the total qty.
				# Get the total number of pallets on the irctd.
				WHILE TRUE
					FETCH c_rdst_qty INTO f_irctd_rdst_id, f_irctd_rct_qty
	
					IF SQLCA.SQLCODE = NOTFOUND
					THEN
						EXIT WHILE
					END IF
	
					IF SQLCA.SQLCODE <> 0
					THEN
						LET m_msg = "FETCH c_rdst_qty fail. SQLCODE=",
							SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						ROLLBACK WORK
						CALL sh_rf_cmd_msg("I9060")	#-- system failure
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: process_close")
						RETURN
					END IF
	
					# Get the total number of pallets on the irctd
						LET f_tot_pallet_cnt = f_tot_pallet_cnt + 1
	
					IF f_irctd_rdst_id = "V"
					OR f_irctd_rdst_id = "D"
					OR f_irctd_rdst_id = "E"
					THEN
						# check out those that were verified/complete/entering
						LET m_rct_qty = m_rct_qty + f_irctd_rct_qty
						LET m_pallet_cnt = m_pallet_cnt + 1
	
						IF f_irctd_rct_qty > 0 then
							LET m_nonzero_pallet_cnt=m_nonzero_pallet_cnt+1
						END IF
	
						LET m_po_pall_cnt = m_po_pall_cnt + 1
					END IF
				END WHILE
	
				IF m_ret_ipod.qty_ord IS NULL
				THEN
					LET m_ret_ipod.qty_ord = 0
				END IF
				IF m_ret_ipod.qty_damaged IS NULL
				THEN
					LET m_ret_ipod.qty_damaged = 0
				END IF
	
				OPEN c_irctd_stmt USING m_ret_ipod.dc_id,
						m_ret_ipod.whse_id, m_ret_ipod.dc_id,
						m_ret_ipod.po_id, m_ret_ipod.pod_id
	
				IF SQLCA.SQLCODE <> 0
				THEN
					LET m_msg = "OPEN irctd_stmt fail. SQLCODE=",
						SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					ROLLBACK WORK
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: process_close")
					RETURN
				END IF
	
				WHILE TRUE
					FETCH c_irctd_stmt INTO f_irct.rcpt_id,
						m_ret_irctd.prod_id, m_ret_irctd.prdd_id
	
					IF SQLCA.SQLCODE = NOTFOUND
					THEN
						EXIT WHILE
					END IF
	
					IF SQLCA.SQLCODE <> 0
					THEN
						LET m_msg = "FETCH c_irctd_stmt fail. SQLCODE=",
							SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						ROLLBACK WORK
						CALL sh_rf_cmd_msg("I9060")	#-- system failure
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: process_close")
						RETURN
					END IF
	
					##### if no discrepancy in qty received #######
					##### or every pallet has been verified #######
					##### or accept pallets regardless no verification #######
					###############################################
	
					## show claim screen once per product for 0 unscan pallet.
					## (m_rct_qty = 0 AND f_scan_bypass = TRUE	)
					## Do not check the cnt of plts. IF short/over, show claim
					## screen (input_irctl).
					## OR  m_pallet_cnt  = f_tot_pallet_cnt
					IF	m_rct_qty = m_ret_ipod.qty_ord
					AND m_ret_iprod.catch_wgt_cntl <> "Y"
					THEN
						BEGIN WORK
						IF active_iinvd(m_ret_ipod.dc_id, m_ret_ipod.whse_id,
										  m_ret_ipod.po_id, m_ret_ipod.pod_id,
										  f_irct.rcpt_id)
						THEN
							LET m_msg = "Fuction active_iinvd returned TRUE"
							LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
							ROLLBACK WORK
							LET f_abort = TRUE
							EXIT WHILE
						END IF
	
						## CR 13858 and 14133 combine pallets #####
						FOR f_ct = 1 to 4
							CASE f_ct
								WHEN 1 LET f_lcus_id = "P"
								WHEN 2 LET f_lcus_id = "A"
								WHEN 3 LET f_lcus_id = "F"
								WHEN 4 LET f_lcus_id = "V"
							END CASE
	
							OPEN c_group_pal USING	m_ret_ipod.dc_id,
													m_ret_ipod.whse_id,
													m_ret_ipod.prod_id,
													m_ret_irctd.prdd_id,
													f_lcus_id
	
							FETCH c_group_pal INTO f_plas_id
	
							IF SQLCA.SQLCODE < 0
							THEN
								LET m_msg = "FETCH c_group_pal ", f_lcus_id,
									" :  failed. ", "SQLCODE=",
									SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
								LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
								ROLLBACK WORK
								LET f_abort = TRUE
								EXIT WHILE
							END IF
	
							IF SQLCA.SQLCODE = 0
							THEN
								IF f_lcus_id = "P" OR f_lcus_id = "A" OR f_lcus_id = "V"
								THEN
									IF group_pallets(m_ret_ipod.dc_id,
												m_ret_ipod.whse_id,
												f_plas_id, f_lcus_id) = TRUE
									THEN
										LET m_msg = 'group_pallets returned ',TRUE,' ',
										m_ret_ipod.dc_id,'|',m_ret_ipod.whse_id,'|',
										f_plas_id,'|',f_lcus_id
										LET m_ignore = sh_elog_4gl(m_module,11480,m_msg) 
										ROLLBACK WORK
										LET f_abort = TRUE
										EXIT WHILE
									END IF
								END IF
							END IF
	
							CLOSE c_group_pal
	
						END FOR
	
						IF update_ipod("C") = TRUE
						THEN
							LET m_msg = "Fuction update_ipod returned TRUE"
							LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
							ROLLBACK WORK
							LET f_abort = TRUE
							EXIT WHILE
						END IF
	
						#################
						COMMIT WORK	-- for process_closed (rct_qty=ord_qty)
										-- (or every pallet verified)
						LET m_ignore = sh_elog_4gl(m_module,"%C%","COMMIT")
						#################
	
						CALL msg_send_event("PurchaseOrder", "Available",
											m_ret_ipod.po_id)
						CALL msg_send_po(m_ret_ipod.dc_id, m_ret_ipod.po_id)
						CONTINUE WHILE
					END IF
	
					# populate the rest of the irctl record
					#--------------------------------------
					LET m_scr_irctl_rec.prod_id = m_ret_ipod.prod_id
					LET m_scr_irctl_rec.sdesc	= m_ret_iprod.description[1,13]
					LET m_scr_irctl_rec.prdd_id = m_ret_irctd.prdd_id
				IF (m_ret_iprod.catch_wgt_cntl = "Y" AND m_rct_qty > 0)
					THEN
						IF m_ret_ipo.po_type = "WT"
						THEN
							LET m_catch_wgt_req = "N"
						ELSE
							LET m_catch_wgt_req = "Y"
						END IF
					ELSE
						LET m_catch_wgt_req = "N"
					END IF
	
					CALL lkp_iprdd(	m_scr_irctl_rec.dc_id,
									m_scr_irctl_rec.prod_id,
									m_scr_irctl_rec.prdd_id)
						 RETURNING f_ret_status, m_ret_iprdd.*
	
					# get warehouse level info
					#-------------------------
					CALL lkp_whse_info(m_scr_irctl_rec.dc_id,
						m_scr_irctl_rec.whse_id)
					CALL lkp_surcp(m_urcp_id)
						RETURNING m_ignore, m_ret_surcp.*
					LET m_scr_irctl_rec.urcp_id = m_ret_surcp.surcp_user_val
	
					IF m_urcp_id = "S"
					THEN
						IF m_ret_iprdd.unit_ship_cse IS NOT NULL
						THEN
							LET m_scr_irctl_rec.rct_qty =
								(m_rct_qty / m_ret_iprdd.unit_ship_cse)
							LET m_scr_irctl_rec.qty_damaged =
							(m_ret_ipod.qty_damaged / m_ret_iprdd.unit_ship_cse)
							LET m_scr_irctl_rec.qty_ord =
								(f_po_ord_qty / m_ret_iprdd.unit_ship_cse)
						ELSE
							LET m_scr_irctl_rec.rct_qty =
								(m_rct_qty / m_ret_ipod.unit_ship_cse)
							LET m_scr_irctl_rec.qty_damaged =
							(m_ret_ipod.qty_damaged / m_ret_ipod.unit_ship_cse)
							LET m_scr_irctl_rec.qty_ord =
								(f_po_ord_qty / m_ret_ipod.unit_ship_cse)
						END IF
					ELSE
						LET m_scr_irctl_rec.rct_qty =
							(m_rct_qty / m_ret_iprdd.cse_unit)
						LET m_scr_irctl_rec.qty_damaged =
							(m_ret_ipod.qty_damaged / m_ret_iprdd.cse_unit)
						LET m_scr_irctl_rec.qty_ord =
							(f_po_ord_qty / m_ret_iprdd.cse_unit)
						IF m_scr_irctl_rec.qty_ord = 0
						THEN
							LET m_scr_irctd_rec.urcp_id = m_urcp_s_val
							LET m_urcp_id = m_ret_surcp.urcp_id
						END IF
					END IF
	
					# allow entry to O/S/D screen only if
					# over or (short and backorder is not allowed)
					#---------------------------------------------
					IF (m_rct_qty + m_ret_ipod.qty_damaged) <> m_ret_ipod.qty_ord
					THEN
					LET m_over_short = TRUE
					ELSE
						LET m_over_short = FALSE
					END IF
					IF m_catch_wgt_req = "Y"
					THEN
						LET f_count = 0
						SELECT COUNT(*), MAX(catch_wgt)
						INTO f_count, m_avg_catch_wgt
						FROM irctd
						WHERE irctd.dc_id = m_ret_ipod.dc_id
						AND   irctd.whse_id = m_ret_ipod.whse_id      
						AND   irctd.po_id   = m_ret_ipod.po_id        
						AND   irctd.pod_id  = m_ret_ipod.pod_id       
						AND   irctd.rct_qty > 0
						AND   irctd.receipt_user = "IRRVH"            

						IF SQLCA.SQLCODE <> 0                             
						THEN                                              
							LET m_msg = "SELECT irctd fail. SQLCODE=",    
								SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
							CALL sh_elog_4gl(m_module,"%C%", m_msg)       
								RETURNING m_ignore                        
							CALL sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
								"EXIT: process_close") RETURNING m_ignore
							CALL sh_cmd_msg("I9060")    #-- system failure 
							SLEEP 5                                        
							RETURN                                         
						END IF                                             
					END IF
					IF m_over_short = TRUE
					OR (m_catch_wgt_req = "Y"
					AND m_avg_catch_wgt = 0)
					THEN
						# discrepancies...deal with it
						#-----------------------------
						CALL open_irctl_form()
						IF m_over_short = TRUE
						OR m_catch_wgt_req = "Y"
						THEN
						CALL input_irctl() RETURNING f_ret_status
	
						# user press DEL - does not verify po line
						#-----------------------------------------
						IF f_ret_status = TRUE
						THEN
							CALL suspend_po(m_ret_ipod.po_id)
						END IF
					END IF

					IF m_over_short = TRUE
					OR (m_catch_wgt_req = "Y"
					AND m_avg_catch_wgt = 0)
					THEN
						CALL close_irctl_form()
						IF f_ret_status = TRUE
						THEN
							CONTINUE WHILE
						END IF
					END IF
				ELSE
					LET f_scan_bypass = TRUE
					LET m_scr_irctl_rec.catch_wgt = m_avg_catch_wgt

					----------------------------------------------------------------
					-- CALL val_iprod() TO GET THE PRODUCTS IPROD RECORD SO THAT WE
					-- CAN CHECK THE PRODUCTS catch_wgt_cntl FLAG, BY ADDING THE
					-- CALL HERE THE catch_wgt_cntl FLAG HAS NOT BEEN ALTERED BY
					-- ANY OTHER PROCESS WITHIN THE PROGRAM
					----------------------------------------------------------------
					CALL val_iprod(m_scr_irctl_rec.dc_id, m_scr_irctl_rec.prod_id)
					RETURNING f_ret_status, m_ret_iprod.*

					IF f_ret_status = TRUE THEN
						LET m_msg = "BAD RETURN FROM val_iprod(). ",
							"|: DC = ", m_scr_irctl_rec.dc_id,
							"|: PROD = ", m_scr_irctl_rec.prod_id
						LET m_ignore =sh_elog_4gl(m_module, "%C%", m_msg)
						ROLLBACK WORK
						CALL msg_rollback_work()
						LET f_abort = TRUE
						EXIT WHILE
					END IF

					IF m_ret_iprod.catch_wgt_cntl = "Y" THEN
						LET f_ret_status = calc_catch_wgt()
						IF f_ret_status = TRUE THEN
							ROLLBACK WORK
							CALL msg_rollback_work()
							LET f_abort = TRUE
							EXIT WHILE
						END IF
					END IF
				END IF

				#################
				BEGIN WORK
				#################
					IF (m_rct_qty + m_ret_ipod.qty_damaged) = m_ret_ipod.qty_ord
					OR (m_rct_qty + m_ret_ipod.qty_damaged) > m_ret_ipod.qty_ord
					OR  m_scr_irctl_rec.bkord_allow = "N"
					OR ( (m_rct_qty = m_ret_ipod.qty_ord
						  OR f_scan_bypass = TRUE
						  OR  m_pallet_cnt  = f_tot_pallet_cnt)  ## Short/Over
						AND m_ret_iprod.catch_wgt_cntl = "Y"	##CR 11188
						)
					OR (m_rct_qty = 0 AND f_scan_bypass = TRUE)
					THEN
						LET f_ret_status = update_ipod("C")
					ELSE
						IF m_ret_ipod.bkord_allow = "Y"
						THEN
							LET f_ret_status = update_ipod("B")
						END IF
					END IF
	
					IF f_ret_status = TRUE
					THEN
						ROLLBACK WORK
						CALL msg_rollback_work()
						LET f_abort = TRUE
						EXIT WHILE
					END IF
	
					IF m_rct_qty + m_ret_ipod.qty_damaged > m_ret_ipod.qty_ord
					THEN
						CALL msg_send_event("PurchaseOrder", "Over",
											m_ret_ipod.po_id)
						CALL msg_send_po(m_ret_ipod.dc_id, m_ret_ipod.po_id)
					END IF
					IF m_rct_qty + m_ret_ipod.qty_damaged < m_ret_ipod.qty_ord
					THEN
						CALL msg_send_event("PurchaseOrder", "Short",
											m_ret_ipod.po_id)
						CALL msg_send_po(m_ret_ipod.dc_id, m_ret_ipod.po_id)
					END IF
	
					CALL active_iinvd(m_ret_ipod.dc_id, m_ret_ipod.whse_id,
									  m_ret_ipod.po_id, m_ret_ipod.pod_id,
									  f_irct.rcpt_id)
							RETURNING f_ret_status
					IF f_ret_status = TRUE
					THEN
						ROLLBACK WORK
						CALL msg_rollback_work()
						LET f_abort = TRUE
						EXIT WHILE
					END IF
	
					CALL msg_send_event("PurchaseOrder", "Available",
										m_ret_ipod.po_id)
					CALL msg_send_po(m_ret_ipod.dc_id, m_ret_ipod.po_id)
	
					## CR 13858 and 14133 combine pallets #####
					FOR f_ct = 1 to 4
						CASE f_ct
							WHEN 1 LET f_lcus_id = "P"
							WHEN 2 LET f_lcus_id = "A"
							WHEN 3 LET f_lcus_id = "F"
							WHEN 4 LET f_lcus_id = "V"
						END CASE
	
						OPEN c_group_pal USING	m_ret_ipod.dc_id,
												m_ret_ipod.whse_id,
												m_ret_ipod.prod_id,
												m_ret_irctd.prdd_id,
												f_lcus_id
	
							FETCH c_group_pal INTO f_plas_id
	
						IF SQLCA.SQLCODE < 0
						THEN
							LET m_msg = "FETCH c_group_pal ", f_lcus_id,
								" :  failed. ", "SQLCODE=",
								SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
							LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
							ROLLBACK WORK
							CALL msg_rollback_work()
							LET f_abort = TRUE
							EXIT WHILE
						END IF
	
						IF SQLCA.SQLCODE = 0
						THEN
							IF f_lcus_id = "P" OR f_lcus_id = "A" OR f_lcus_id = "V"
							THEN
								IF group_pallets(m_ret_ipod.dc_id,
									m_ret_ipod.whse_id,
									f_plas_id, f_lcus_id)  = TRUE
								THEN
									ROLLBACK WORK
									CALL msg_rollback_work()
									LET f_abort = TRUE
									EXIT WHILE
								END IF
							END IF
						END IF
	
						CLOSE c_group_pal
	
					END FOR
	
					#################
					COMMIT WORK	 -- for process_closed (rct_qty=ord_qty)
					LET m_ignore = sh_elog_4gl(m_module,11937,"COMMIT")
					#################

					LET f_scan_bypass = FALSE
				END WHILE	#-- for each receipt , pod_id (prod_id)
	
				IF f_abort = TRUE
				THEN
					ROLLBACK WORK
					LET m_msg = "system failure"
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: process_close")
					RETURN
				END IF
	
			END WHILE	#-- for each pod line
	
			# Complete and close po - by this time, updates have been done to
			# various tables to indicate that pallets have been verified.
			# This last logic loops around one more time to determine those
			# that may/may not be closed/verified. -pvg
			#-----------------------------------------------------------------
	  
			IF m_arr_po_close[f_arr_counter].close = "Y"
			THEN
				LET m_ret_ipod.po_id = m_arr_po_close[f_arr_counter].po_id
				LET m_ret_irct.rcpt_id = m_scr_irctd_rec.rcpt_id

				# See if there are any COOL/Bio products on this po
				CALL po_count_tracked(m_ret_ipod.dc_id, 
					m_ret_ipod.po_id, m_ret_irct.rcpt_id) 
					RETURNING f_ret_status, f_prod_count
	
				IF f_ret_status = TRUE
				THEN
					LET m_msg = "Call po_count_tracked() failed. ", 
						" dc=", m_ret_ipod.dc_id, 
						" po=", m_ret_irct.po_id 
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
					ROLLBACK WORK
					CALL sh_rf_err_msg("I9060")    
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
						"EXIT: process_close")
					RETURN
				END IF
		
				IF f_prod_count > 0
				THEN
					IF m_ret_ipo.po_type = "WT" OR m_ret_ipo.po_type = "DT"
					THEN
				       	LET f_ret_status = create_asn_iips(m_ret_ipod.dc_id,
                                                    m_ret_ipod.whse_id,
                                                    m_ret_ipod.po_id,
                                                    m_scr_irctd_rec.rcpt_id)
					ELSE
						LET f_ret_status = create_iips(m_ret_ipod.dc_id,
													m_ret_ipod.whse_id, 
													m_scr_irctd_rec.rcpt_id) 
					END IF
		
					IF f_ret_status = TRUE
					THEN
						LET m_msg = "Call create_iips() failed. ", 
						" dc=", m_ret_ipod.dc_id, 
						" whse=", m_ret_ipod.whse_id,
						" rcpt=", m_scr_irctd_rec.rcpt_id 
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
						ROLLBACK WORK
						CALL sh_rf_err_msg( "R4999" )  #-- system error
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,
							"%C%", "EXIT: process_close")
						RETURN
					END IF
				END IF

				## CR9881 - The status will be set to "A" regardless
				## the value of f_pod_cnt. Then IRRPA can process
				## the "open" ipod lines.
				##
				# set to available status
				#------------------------
				UPDATE irct SET (rsta_id, verify_user, verify_dtim) =
								("A", g_user.user_id, CURRENT YEAR TO SECOND)
						  WHERE irct.dc_id   = m_scr_irctl_rec.dc_id
							AND irct.rcpt_id = m_scr_irctd_rec.rcpt_id
							AND irct.appt_id = m_scr_irctd_rec.appt_id
	
				IF SQLCA.SQLCODE <> 0
				THEN
					LET m_msg = "UPDATE irct fail. SQLCODE:", SQLCA.SQLCODE,
								" ISAM:", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					ROLLBACK WORK
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
									"EXIT: process_close")
					RETURN
				END IF
	
				CALL msg_send_event("PurchaseOrder", "Received",
									m_ret_ipod.po_id)
				CALL msg_send_po(m_scr_irctl_rec.dc_id, m_ret_ipod.po_id)
			
				LET f_pod_cnt = 0
				SELECT COUNT(*)
					INTO f_pod_cnt
					FROM ipod
					WHERE ipod.dc_id    = m_ret_ipod.dc_id
					AND ipod.po_id    = m_ret_ipod.po_id
					AND plst_id NOT IN ("C", "B", "D")
	
				IF SQLCA.SQLCODE < 0
				THEN
					LET m_msg = "COUNT ipod fail. SQLCODE=", SQLCA.SQLCODE,
								" ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					ROLLBACK WORK
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
									"EXIT: process_close")
					RETURN
				END IF
				IF f_pod_cnt IS NULL
				THEN
					LET f_pod_cnt = 0
				END IF
	
				#-------------------------------------------------------
				# IF po details have been Completed, Backordered,
				# Deleted, etc (NO LONGER IN Putawayable status),
				# then close the po...
				# Otherwise, user has just verified some of the pallets.
				#-------------------------------------------------------
				IF f_pod_cnt  = 0
				AND m_arr_po_close[f_arr_counter].suspend = "N"
				THEN
					CALL lkp_iapt(	m_scr_irctl_rec.dc_id,
									m_scr_irctl_rec.whse_id,
									m_scr_irctd_rec.appt_id)
						RETURNING f_ret_status, m_ret_iapt.*
	
					CALL lkp_ipo(m_scr_irctl_rec.dc_id, m_ret_ipod.po_id)
					   RETURNING f_ret_status, m_ret_ipo.*
	
					LET m_ret_ipohl.pohl_id			= 0
					LET m_ret_ipohl.appt_dtim		= m_ret_iapt.appt_dtim
					LET m_ret_ipohl.sched_rcpt_dt	= m_ret_ipo.sched_rcpt_dt
					LET m_ret_ipohl.porc_id			= m_ret_ipo.porc_id
					LET m_ret_ipohl.complete_flag	= "Y"
					LET m_ret_ipohl.create_user		= g_user.user_id
					LET m_ret_ipohl.create_dtim		= CURRENT
					LET m_ret_ipohl.dc_id			= m_ret_iapt.dc_id
					LET m_ret_ipohl.whse_id			= m_ret_iapt.whse_id
					LET m_ret_ipohl.po_id			= m_ret_ipo.po_id
	
					INSERT INTO ipohl VALUES(m_ret_ipohl.*)
	
					IF SQLCA.SQLCODE <> 0
					THEN
						LET m_msg = "INSERT ipohl fail. SQLCODE=",
							SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						ROLLBACK WORK
						CALL sh_rf_cmd_msg("I9060")	#-- system failure
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: process_close")
						RETURN
					END IF
	
					UPDATE iaptd SET po_closed_flg = "Y"
							   WHERE dc_id   = m_ret_iapt.dc_id
								 AND whse_id = m_ret_iapt.whse_id
								 AND appt_id = m_ret_iapt.appt_id
								 AND po_id   = m_ret_ipo.po_id
	
					IF SQLCA.SQLCODE <> 0
					THEN
						LET m_msg = "UPDATE iaptd fail. SQLCODE=",SQLCA.SQLCODE,
									" ISAM=", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						ROLLBACK WORK
						CALL sh_rf_cmd_msg("I9060")	#-- system failure
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: process_close")
						RETURN
					END IF
					CALL msg_send_event("PurchaseOrder", "Closed",
										m_ret_ipo.po_id)
					CALL msg_send_po(m_ret_ipo.dc_id, m_ret_ipo.po_id)

					LET m_array[f_arr_counter].close_flag = "C"
					LET m_array2[f_arr_counter].close_flag = "C"

					CALL sh_rf_cmd_msg("I9140")	#-- PO completed
				ELSE
					## Every product entered has been verified.
					IF f_pod_cnt = 0
					THEN
						CALL sh_rf_cmd_msg("I9140")	#-- PO completed
					ELSE
						CALL sh_rf_cmd_msg("I9098")	#-- verify complete
					END IF
				END IF
				SLEEP 2
			END IF
	
			# now delete out pallets with zero qty
			#-------------------------------------
			CALL delete_zero_flow()
			CALL delete_zero_out()

			LET all_ver_flgs_set = TRUE
		
			# now check that all po's within this appointment
			# is closed so that the ENTIRE appointment is closed
			# to any further processes.
			#---------------------------------------------------
			LET f_appt_cnt = 0
			SELECT COUNT(*)
			  INTO f_appt_cnt
			  FROM iaptd
			 WHERE dc_id   = m_scr_irctd_rec.dc_id
			   AND whse_id = m_scr_irctd_rec.rcv_whse_id
			   AND appt_id = m_scr_irctd_rec.appt_id
			   AND (po_closed_flg = "N" OR
					po_closed_flg = " " OR
					po_closed_flg IS NULL)
		
			IF SQLCA.SQLCODE < 0
		 	THEN
		 		LET m_msg = "SELECT iaptd fail. SQLCODE:",SQLCA.SQLCODE,
		 					" ISAM:", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				ROLLBACK WORK
		 		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		 		SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
							"EXIT: process_close")
		 		RETURN
		 	END IF
			IF SQLCA.SQLCODE = NOTFOUND
			OR f_appt_cnt IS NULL
			OR f_appt_cnt = 0
		 	THEN
				LET f_iapt.closed_flg = "Y"
		 	ELSE
				LET f_iapt.closed_flg = "N"
		 	END IF
		
			# update departure data
			#----------------------
			UPDATE iapt SET depdtim	 = CURRENT YEAR TO SECOND,
							change_dtim = CURRENT YEAR TO SECOND,
							change_user = g_user.user_id,
							closed_flg  = f_iapt.closed_flg
					   WHERE dc_id	  = m_scr_irctd_rec.dc_id
						 AND whse_id	= m_scr_irctd_rec.rcv_whse_id
						 AND appt_id	= m_scr_irctd_rec.appt_id
		
			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "UPDATE iapt fail. SQLCODE=",SQLCA.SQLCODE,
							" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				ROLLBACK WORK
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
							"EXIT: process_close")
				RETURN
			END IF
		
			CALL msg_send_event("ReceivingAppointment", "Modified",
								m_scr_irctd_rec.appt_id)
			CALL msg_send_appt(m_scr_irctd_rec.dc_id,
				m_scr_irctd_rec.rcv_whse_id, m_scr_irctd_rec.appt_id)

		
				IF m_arr_po_close[f_arr_counter].close = "Y"
				THEN
					## CMS 22281 below is original code.
					##--------------------------------- rld --
		
					OPEN c_pod_flg USING
						m_scr_irctd_rec.dc_id,
						m_ret_ipod.po_id,
			  			m_scr_irctd_rec.rcpt_id
		
					IF SQLCA.SQLCODE <> 0
					THEN
						LET m_msg = "OPEN upc failed. SQLCODE=", SQLCA.SQLCODE,
						   			" ISAM=", SQLCA.SQLERRD[2]
			   			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						CALL sh_rf_cmd_msg("I9060")	#-- system failure
						SLEEP 2
			   			LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: process_close")
						RETURN
					END IF
					
					WHILE TRUE
						FETCH c_pod_flg INTO f_system_flag, f_irctd_dc_id,
								 			f_irctd_whse_id, f_irctd_lic_plt_id
		
						IF SQLCA.SQLCODE = NOTFOUND
						THEN
							EXIT WHILE
						END IF
						IF SQLCA.SQLCODE <> 0
						THEN
							LET m_msg = "FETCH pod failed. SQLCODE=",
								SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
				   			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
							CALL sh_rf_cmd_msg("I9060")	#-- system failure
							SLEEP 2
				   			LET m_ignore = sh_mlog_4gl(g_std_func_chan,
								m_module,"%C%", "EXIT: process_close")
							RETURN
						END IF
		
						## Reset the receipt_user back to user ID.
						IF f_system_flag = "N"
						THEN
							UPDATE irctd
							SET irctd.receipt_user	= g_user.user_id,
								 irctd.rdst_id		= "P"
				 			WHERE irctd.dc_id   	= f_irctd_dc_id
				   			AND irctd.whse_id		= f_irctd_whse_id
				   			AND irctd.lic_plt_id 	= f_irctd_lic_plt_id
						ELSE
							UPDATE irctd
							SET irctd.receipt_user	= g_user.user_id,
								irctd.rdst_id		= 'D' 
			 				WHERE irctd.dc_id   	= f_irctd_dc_id
			   				AND irctd.whse_id		= f_irctd_whse_id
			   				AND irctd.lic_plt_id	= f_irctd_lic_plt_id
						END IF
		
						IF SQLCA.SQLCODE <> 0
						THEN
							LET m_msg = "UPDATE irctd receipt_user failed.",
								"SQLCODE=", SQLCA.SQLCODE,
								" ISAM=", SQLCA.SQLERRD[2]
				   			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
							CALL sh_rf_cmd_msg("I9060")	#-- system failure
							SLEEP 2
				   			LET m_ignore = sh_mlog_4gl(g_std_func_chan,
								m_module,"%C%", "EXIT: process_close")
							RETURN
						END IF
		
					END WHILE		#-- FETCH c_pod_flg
		
					## CMS 22281 above is original code.
					##--------------------------------- rld --
		
					## CMS 22281 below is new code
					##--------------------------------- rld --
				END IF
		
			## CMS 22281 end of changes.
			##----------------------- rld --
		
			# CMS 12451 code added for chep processing, if chep is installed
			# and the vendor is a chep vendor and previous SQL was successfull
			# input chep data

			CALL lkp_sdc(m_ret_swhse.dc_id) RETURNING f_ret_status, m_ret_sdc.*

			IF f_ret_status = FALSE
			THEN
				CALL lkp_ipo(m_ret_swhse.dc_id,m_array[f_arr_counter].po_id)
				    RETURNING f_ret_status, m_ret_ipo.*
				CALL lkp_ivend(m_ret_sdc.dc_id, m_ret_ipo.vend_id)
					RETURNING f_ret_status, m_ret_ivend.*
			END IF

			IF f_ret_status = TRUE
			THEN
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
										  "EXIT: process_close")	
			RETURN 
			END IF

			IF f_abort = FALSE
			AND m_ret_sdc.chep_instld = "Y"
			AND m_ret_ivend.chep_vend = "Y"					
			THEN
				FOR f_count = 1 TO m_icnty_max  #-- initialize array rec to null
					LET m_idtnd_arr[f_count].* = m_n_cont_rec.*
				END FOR
				LET m_idtnd_ndx = 0
				CALL open_chep_form()
				CALL input_chep()			#-- input data
		
				# the following code will INSERT/UPDATE data in the idtnd table
		
				CALL set_defaults()
		
				BEGIN WORK
		
				FOR f_count = 1 TO m_icnty_max
		
					IF m_idtnd_arr[f_count].cnty_id IS NULL
					THEN
						EXIT FOR
					END IF
		
					OPEN c_cnt_idtnd USING m_default_rec.dtn_id,
										   m_idtnd_arr[f_count].cnty_id
		
					IF SQLCA.SQLCODE <> 0
					THEN
						LET m_msg = "OPEN c_cnt_idtnd failed, SQLCODE = ",
							SQLCA.SQLCODE, " ISAM CODE = ", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						LET f_abort = TRUE
						ROLLBACK WORK
						CALL sh_rf_cmd_msg("I9060")	#-- system error
						SLEEP 2
						EXIT FOR
					END IF
		
					FETCH c_cnt_idtnd
					IF SQLCA.SQLCODE < 0
					THEN
						LET m_msg = "FETCH cnt_idtnd failed, SQLCODE = ",
							SQLCA.SQLCODE, " ISAM CODE = ", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						LET f_abort = TRUE
						ROLLBACK WORK
						CALL sh_rf_cmd_msg("I9060")	#-- system error
						SLEEP 2
						EXIT FOR
					END IF
		
					LET f_lock_cnt = 1
		
					IF SQLCA.SQLCODE = NOTFOUND
					THEN
						WHILE TRUE
							EXECUTE c_ins_idtnd USING
										m_default_rec.dtn_id,
										m_default_rec.rsn_id,
										m_default_rec.rsn_seq,
										m_idtnd_arr[f_count].cnty_id,
										m_default_rec.csvn_id,
										m_default_rec.dc_id,
										m_default_rec.whse_id,
										m_idtnd_arr[f_count].trans_qty,
										m_idtnd_arr[f_count].exp_qty,
										m_default_rec.notation,
										m_default_rec.ref_id,
										m_default_rec.dtst_id,
										m_default_rec.bill_of_lading,
										m_default_rec.trans_date,
										m_default_rec.extract_qty,
										m_default_rec.create_dtim,
										m_default_rec.create_user,
										m_default_rec.create_dtim,
										m_default_rec.create_user
		
							CASE se_sqlcode_test()
							WHEN 0							#-- record inserted
								CALL sh_rf_cmd_msg("I9061")
								SLEEP 2
								EXIT WHILE
	
							WHEN -2							#-- record locked
								IF f_lock_cnt > 20
								THEN
									LET m_msg = "Recored locked by another user"
									LET m_ignore = sh_mlog_4gl(g_std_info_chan,
										m_module, "%C%", m_msg)
									LET f_abort = TRUE
									CALL sh_rf_cmd_msg("I9963")	# tabled locked
									SLEEP 2
									EXIT WHILE
								END IF
								LET f_lock_cnt = f_lock_cnt + 1
								CONTINUE WHILE
	
							WHEN -3							#-- system error
								LET m_msg = "INSERT into idtnd failed, ",
									"SQLCODE = ", SQLCA.SQLCODE,
									" ISAM CODE = ", SQLCA.SQLERRD[2]
								LET m_ignore = sh_elog_4gl(m_module,"%C%",
									m_msg)
								LET f_abort = TRUE
								CALL sh_rf_cmd_msg("I9954")	# failure rollback
								SLEEP 2
								EXIT WHILE
							END CASE
						END WHILE
					ELSE
						WHILE TRUE
							EXECUTE c_upd_idtnd USING
										m_idtnd_arr[f_count].trans_qty,
										m_idtnd_arr[f_count].exp_qty,
										m_default_rec.change_dtim,
										m_default_rec.change_user,
										m_default_rec.dtn_id,
										m_idtnd_arr[f_count].cnty_id
		
							CASE se_sqlcode_test()
							WHEN 0						#-- record updated
								CALL sh_rf_cmd_msg("I9061")
								SLEEP 2
								EXIT WHILE
	
							WHEN -2						#-- record locked
								IF f_lock_cnt > 20
								THEN
									LET m_msg =
										"Recorded locked by another user"
									LET m_ignore = sh_mlog_4gl(g_std_info_chan,
										m_module, "%C%", m_msg)
									LET f_abort = TRUE
									CALL sh_rf_cmd_msg("I9963") # table locked
									SLEEP 2
									EXIT WHILE
								END IF
								LET f_lock_cnt = f_lock_cnt = 1
								CONTINUE WHILE
	
							WHEN -3						#-- system error
								LET m_msg = "UPDATE of idtnd failed, ",
									"SQLCODE = ", SQLCA.SQLCODE,
									" ISAM CODE = ", SQLCA.SQLERRD[2]
								LET m_ignore = sh_elog_4gl(m_module,"%C%",
									m_msg)
								LET f_abort = TRUE
								CALL sh_rf_cmd_msg("I9954")	# rollback failed
								SLEEP 2
								EXIT WHILE
							END CASE
						END WHILE
		
					END IF
		
					IF f_abort = TRUE
					THEN
						EXIT FOR
					END IF
		
				END FOR
		
				IF f_abort = FALSE
				THEN
					COMMIT WORK
				ELSE
					ROLLBACK WORK
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: process_close")
					RETURN
				END IF
		
				CALL close_chep_form()
			END IF
		
			#end of chep code
	
--BUGAWARE item 3593
			LET f_next_po = FALSE

			IF f_arr_counter > 1
			THEN 
				IF m_arr_po_close[f_arr_counter].po_id <>
				m_arr_po_close[f_arr_counter -1].po_id
				THEN
					LET f_next_po = TRUE
				END IF
			END IF
--BUGAWARE item 3593 - End

###BEG AIS11505 Generate Driver Doc - no matter what!!!
			--LET m_arr_po_close[f_arr_counter].close = "Y"      
###END AIS11505 
		
			IF (m_arr_po_close[f_arr_counter].close = "Y")
			AND ((f_arr_counter = 1) OR f_next_po)
			THEN
				# CR #11197 added this code to call the Driver Document report
				CALL sp_rptop_batch("IRSverh_")
					RETURNING f_abort, f_rpt_file, f_rpt_prof_id
		
				IF f_abort = TRUE
				THEN
					LET m_msg = "Batch abort print parameter entry."
					LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: process_close")
					RETURN
				ELSE
					CALL sp_rptop_batch("CRRdrvdc") 	
						RETURNING f_abort, f_rpt_file1, f_rpt_prof_id1

					IF f_abort = TRUE
					THEN
						LET m_msg = "Batch abort print parameter entry."
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
						LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
							"EXIT: process_close")
						RETURN
					END IF

					CALL sp_rptop_batch("CRRrcvdc") 	
						RETURNING f_abort, f_rpt_file2, f_rpt_prof_id2

					IF f_abort = TRUE
					THEN
						LET m_msg = "Batch abort print parameter entry."
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
						LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
							"EXIT: process_close")
						RETURN
					END IF
				END IF
		
				IF f_abort = 0
				THEN
					SET ISOLATION TO DIRTY READ
					DECLARE c_zero1 CURSOR FOR
						SELECT lic_plt_id
						FROM irctd 
						WHERE dc_id = m_scr_irctd_rec.dc_id
						  AND whse_id = m_scr_irctd_rec.rcv_whse_id
						  AND po_id = m_arr_po_close[f_arr_counter].po_id
						  AND rcpt_id = m_scr_irctd_rec.rcpt_id
						  AND rct_qty = 0
						  AND catch_wgt <> 0

					OPEN c_zero1
				
					WHILE TRUE
						FETCH c_zero1 INTO f_zero_lp

						IF SQLCA.SQLCODE = NOTFOUND
						THEN
							EXIT WHILE
						END IF

						UPDATE irctd 
						SET catch_wgt = 0
						WHERE dc_id = m_scr_irctd_rec.dc_id
						  AND whse_id = m_scr_irctd_rec.rcv_whse_id 
						  AND lic_plt_id = f_zero_lp
			
						UPDATE irctl 
						SET catch_wgt = 0
						WHERE dc_id = m_scr_irctd_rec.dc_id
						  AND whse_id = m_scr_irctd_rec.rcv_whse_id
						  AND lic_plt_id = f_zero_lp
			
					END WHILE
					SET ISOLATION TO COMMITTED READ	
					LET f_cmd = "nohup IRRdrvdc00.4ge '",
								f_rpt_file CLIPPED, "' '",
								f_rpt_prof_id USING "<<<<<<<<<&", "' '",
								m_scr_irctd_rec.dc_id USING '#&', "' '",
								m_scr_irctd_rec.rcv_whse_id USING '#&', "' '",
						m_ret_ipod.po_id CLIPPED, "' '",
						m_scr_irctd_rec.rcpt_id, "'",
						" > /dev/null &"

					LET m_ignore = sh_elog_4gl(m_module,"%C%",f_cmd)
					CALL run_system_cmd(f_cmd)

					LET f_cmd = "nohup CRRdrvdc00.4ge '",
								f_rpt_file1 CLIPPED, "' '",
								f_rpt_prof_id1 USING "<<<<<<<<<&", "' '",
								m_scr_irctd_rec.dc_id USING '#&', "' '",
								m_scr_irctd_rec.rcv_whse_id USING '#&', "' '",
								m_ret_ipod.po_id CLIPPED, "' '",
								m_scr_irctd_rec.rcpt_id, "'",
								" > /dev/null &"

					LET m_ignore = sh_elog_4gl(m_module,"%C%",f_cmd)
					CALL run_system_cmd(f_cmd)

					LET f_cmd = "nohup CRRrcvdc00.4ge '",
								f_rpt_file2 CLIPPED, "' '",
								f_rpt_prof_id2 USING "<<<<<<<<<&", "' '",
								m_scr_irctd_rec.dc_id USING '#&', "' '",
								m_scr_irctd_rec.rcv_whse_id USING '#&', "' '",
								m_ret_ipod.po_id CLIPPED, "' '",
								m_scr_irctd_rec.rcpt_id, "'",
								" > /dev/null &"

					LET m_ignore = sh_elog_4gl(m_module,"%C%",f_cmd)
					CALL run_system_cmd(f_cmd)
		
				ELSE
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				END IF
			END IF
		END FOR		## END OF FOR each m_rcpt_cnt which 
					## loop through m_rcpt_array[f_i]

		LET f_arr_counter = f_arr_counter + 1
	END WHILE

	CALL next_blank("A")	#-- to clear appt_id AND "C" options

	IF  m_ret_swhse.flow_instld_flg = "Y"
	AND m_ret_swhse.flow_auto_ship_flg = "Y"
	AND m_ret_irctd.rctt_id = "F"
	THEN
		CALL extract()
	END IF
	LET m_orig_qty_arr[1].lic_plt_id = NULL

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: process_close")

END FUNCTION

{*****************************************************************************}
FUNCTION process_aothd()

	DEFINE f_result			INTEGER
	DEFINE f_dp				RECORD LIKE sdcpt.*
	DEFINE f_jbcd_id		LIKE sjbcd.jbcd_id
	DEFINE f_error			SMALLINT
	DEFINE f_err_code		CHAR(2)
	DEFINE f_rpln_mthd		LIKE aothd.rpln_mthd
	DEFINE f_count_ck       SMALLINT        # Fix for duplicate workunit

    LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
                    "ENTER: process_aothd")

	INITIALIZE m_ret_aothd.* TO NULL
	LET f_error = FALSE
	LET f_err_code = ""
	LET f_rpln_mthd = ""
	LET f_count_ck = 0

	IF m_ret_frewc.whse_id IS NULL OR m_ret_frewc.whse_id <> m_ret_irctd.whse_id
	THEN
		SELECT frewc.* 
		  INTO m_ret_frewc.*
		  FROM frewc
		 WHERE frewc.dc_id   = m_ret_irctd.dc_id
		   AND frewc.whse_id = m_ret_irctd.whse_id

		IF SQLCA.SQLCODE < 0 
		THEN
			LET m_msg = "SELECT frewc failed. SQLCODE: ", SQLCA.SQLCODE,
				" ISAM: ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			INITIALIZE m_ret_frewc.* TO NULL
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: process_aothd")
			RETURN
		END IF 
	END IF

 	LET m_ret_aothd.othd_id    = 0
	LET m_ret_aothd.dc_id      = m_ret_irctd.dc_id
	# Populate the aothd.whse_id with the umbrella whse id if possible.
	IF m_ret_frewc.rtim_wrk_whse IS NULL 
	THEN
		LET m_ret_aothd.phys_whse_id = m_ret_irctd.whse_id
		LET m_ret_aothd.whse_id      = m_ret_irctd.whse_id
	ELSE
		LET m_ret_aothd.phys_whse_id = m_ret_frewc.whse_id
		LET m_ret_aothd.whse_id      = m_ret_frewc.rtim_wrk_whse
	END IF
	LET m_ret_aothd.prod_id    = m_ret_irctd.prod_id  
	LET m_ret_aothd.prdd_id    = m_ret_irctd.prdd_id  
	LET m_ret_aothd.prod_qty   = m_ret_irctd.rct_qty 
	LET m_ret_aothd.lic_plt_id = m_ret_irctd.lic_plt_id
	LET m_ret_aothd.asgt_id    = "P"
	LET m_ret_aothd.change_user = g_user.user_id
	LET m_ret_aothd.change_dtim = CURRENT
	LET m_ret_aothd.create_user = g_user.user_id
	LET m_ret_aothd.create_dtim = CURRENT
	LET m_ret_aothd.sel_loc     = m_loc_id
	LET m_ret_aothd.cde_dt      = m_ret_irctd.code_date
	LET m_ret_aothd.appt_id     = m_scr_irctd_rec.appt_id
	LET m_ret_aothd.rcpt_id     = m_ret_irctd.rcpt_id
	LET m_ret_aothd.po_id       = m_ret_irctd.po_id  
	LET m_ret_aothd.pod_id      = m_ret_irctd.pod_id  
	LET m_ret_aothd.from_dcpt_id = m_ret_iapt.arrv_door 
	LET m_ret_aothd.from_dcpd_id = "DOR"
	LET m_ret_aothd.rcpt_dtim    = m_ret_irctd.receipt_dtim  

	LET m_ret_aothd.from_rtim_sect_id = "PUT"
	LET m_ret_aothd.from_sect_id      = "PUT"

	LET m_ret_aothd.wust_id = "AVL"		#-- available
	LET m_ret_aothd.lhty_id = "PU"		#-- putaway

	SELECT ptwy_prio
	  INTO m_ret_aothd.assg_prio
	  FROM ftrgp
	 WHERE ftrgp.dc_id   = m_ret_irctd.dc_id
	   AND ftrgp.whse_id = m_ret_irctd.whse_id

	IF SQLCA.SQLCODE < 0
    THEN
		LET m_msg = "SELECT ftrgp failed. SQLCODE= ", SQLCA.SQLCODE,
					" ISAM= ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: process_aothd")
		RETURN 
	END IF

	SELECT ptwy_anch, flthru_anch 
		INTO m_ptwy_anch, m_flthru_anch
	  	FROM iplas
	  	WHERE dc_id   = m_scr_irctd_rec.dc_id
	   	AND whse_id = m_scr_irctd_rec.rcv_whse_id
	   	AND prod_id = m_scr_irctd_rec.prod_id
	   	AND prdd_id = m_scr_irctd_rec.prdd_id 
	   	AND lcus_id = "P"
	   	AND loc_id IS NOT NULL

	IF SQLCA.SQLCODE <> 0
	THEN
		IF SQLCA.SQLCODE <> NOTFOUND
		THEN
			LET m_msg = "SELECT failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
		END IF
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: process_aothd")
		RETURN
	END IF

	IF m_ret_ipod.ptwy_anch IS NOT NULL
	OR m_ret_ipod.ptwy_anch <> " "
	THEN
		LET m_ret_aothd.ptwy_anch = m_ret_ipod.ptwy_anch
	ELSE 
		LET m_ret_aothd.ptwy_anch = m_ret_iplas.ptwy_anch
	END IF 

	IF m_ret_ipod.unit_ship_cse IS NOT NULL
	THEN
		LET m_ret_aothd.unit_ship_cse = m_ret_ipod.unit_ship_cse
	ELSE 
		LET m_ret_aothd.unit_ship_cse = m_ret_iprdd.unit_ship_cse
	END IF

	## CR11188
	LET m_ret_aothd.replen_qty 	    = m_ret_irctd.rct_qty
	LET m_ret_aothd.ptty_id = "N"	#-- RMGNF/IMPTW will reset it.
	LET m_ret_aothd.prod_wgt        = m_ret_iprdd.cse_wgt
	LET m_ret_aothd.prod_cub        = m_ret_iprdd.cse_cub
	LET m_ret_aothd.from_loc_id  	= m_ret_aothd.from_dcpd_id, 
									m_ret_aothd.from_dcpt_id

	CALL val_sdcpt_dcpt_id(m_ret_irctd.dc_id, m_ret_aothd.from_dcpd_id,
						   m_ret_aothd.from_dcpt_id) RETURNING f_result, f_dp.*
	IF f_result
	THEN
		CALL find_1st_door(m_ret_irctd.dc_id, m_ret_irctd.whse_id) 
			RETURNING f_result, f_dp.*
		LET m_ret_aothd.from_dcpt_id = f_dp.dcpt_id
	END IF

	LET m_ret_aothd.from_x_coord = f_dp.x_coord
	LET m_ret_aothd.from_y_coord = f_dp.y_coord
	LET m_ret_aothd.from_z_coord = f_dp.z_coord
	LET m_ret_aothd.rtime_flg         = "Y"
	LET m_ret_aothd.rpln_mthd         = "FK"
	LET m_ret_aothd.jcty_id         = "D"
	LET m_ret_aothd.jcfn_id         = "PU"
	LET m_ret_aothd.jcsf_id         = "RP"

	SELECT sjbcd.jbcd_id 
	  INTO f_jbcd_id
	  FROM sjbcd
	 WHERE sjbcd.dc_id   = m_ret_irctd.dc_id
	   AND sjbcd.whse_id = m_ret_irctd.whse_id
	   AND sjbcd.jcty_id = "D"
	   AND sjbcd.jcfn_id = "PU"
	   AND sjbcd.jcsf_id = "RP"

	IF SQLCA.SQLCODE <> 0 
	THEN
		LET m_msg = "SELECT sjbcd fail. SQLCODE:", SQLCA.SQLCODE,
			" ISAM:", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: process_aothd")
		RETURN
	END IF

	LET m_ret_aothd.jbcd_id        = f_jbcd_id
	## end of CR 11188


	INSERT INTO aothd VALUES (m_ret_aothd.*)
		
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "INSERT aothd failed. SQLCODE=", SQLCA.SQLCODE,
		    		" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: process_aothd")
		RETURN
	END IF

	##############################################################
	# Add Checking work unit.
	##############################################################
	IF m_ret_aassg.asgt_id = "C"
	OR m_ret_aassg.asgt_id = "B"
	THEN
		IF m_ret_aothd.lhty_id = "MP"
		THEN
			LET f_rpln_mthd = "MP"
		ELSE
			LET f_rpln_mthd = "UK"
		END IF
# Fix for duplicate work unit. - start - T20190710.0009

        SELECT COUNT(*)
        INTO   f_count_ck
        FROM   aothd
        WHERE  dc_id = m_scr_irctd_rec.dc_id
        AND    whse_id = m_scr_irctd_rec.whse_id
        AND    lic_plt_id = m_scr_irctd_rec.lic_plt_id
        AND    lhty_id = 'CK'

        IF SQLCA.SQLCODE < 0 THEN
            LET m_msg = "Fetch f_count_ck failed, SQLCODE:",
                        SQLCA.SQLCODE," ISAM:", SQLCA.SQLERRD[2],
                        " DC=", m_scr_irctd_rec.dc_id,
                        " WH=", m_scr_irctd_rec.whse_id,
                        " LP=", m_scr_irctd_rec.lic_plt_id
             LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
            LET m_ignore = sh_mlog_4gl(g_std_func_chan,
                               m_module,"%C%","EXIT: process_aothd")
            CALL sh_rf_cmd_msg("I9060")
            SLEEP 2
            RETURN TRUE
        END IF

        IF f_count_ck > 0
        THEN
            LET m_rescan_lp = "Y"

            SELECT othd_id
            INTO   m_rescan_othd_ck
            FROM   aothd
            WHERE  dc_id = m_scr_irctd_rec.dc_id
            AND    whse_id = m_scr_irctd_rec.whse_id
            AND    lic_plt_id = m_scr_irctd_rec.lic_plt_id
            AND    lhty_id = 'CK'

            IF SQLCA.SQLCODE < 0 THEN
                LET m_msg = "Fetch m_rescan_othd_ck failed, SQLCODE:",
                    SQLCA.SQLCODE," ISAM:", SQLCA.SQLERRD[2],
                    " DC=",m_scr_irctd_rec.dc_id,
                    " WH=",m_scr_irctd_rec.whse_id,
                    " LP=",m_scr_irctd_rec.lic_plt_id,
                    " LHTY_ID= 'CK' "
                LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                LET m_ignore = sh_mlog_4gl(g_std_func_chan,
                    m_module,"%C%","EXIT: process_aothd")
                CALL sh_rf_cmd_msg("I9060")
                SLEEP 2
                RETURN TRUE
            END IF
        ELSE
            LET m_rescan_lp = "N"
            LET m_rescan_othd_ck = NULL
        END IF

 # Fix for duplicate work unit. - End - T20190710.0009
		CALL add_chck_wku("CK",f_rpln_mthd, m_ret_aothd.*)
				RETURNING f_error, f_err_code
		IF f_error = TRUE
		THEN
			LET m_msg = "system failure"
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			CALL sh_rf_cmd_msg("I9060") # System failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: process_aothd")
			RETURN TRUE
		END IF
	END IF

    LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
                    "EXIT: process_aothd")

END FUNCTION

{******************************************************************************}
FUNCTION validate_irctd()

	DEFINE f_ret_err	INTEGER

    LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: validate_irctd")

	LET f_ret_err = 0

	IF  m_ret_iprod.lot_no_cntl = "Y"
	AND (m_scr_irctd_rec.lot_no = " "
	OR   m_scr_irctd_rec.lot_no IS NULL)
# Start CMS 13373 fix
	AND m_scr_irctd_rec.rct_qty > 0
# END CMS 13373 fix
	THEN
		LET f_ret_err = 9
#PTR805-bryanh-start
	ELSE
		IF m_scr_irctd_rec.lot_no = "              "
		THEN
			LET m_scr_irctd_rec.lot_no = ""
	END IF
#PTR805-bryanh-end
	END IF
	IF m_scr_irctd_rec.urcp_id IS NULL
	OR m_scr_irctd_rec.urcp_id = " "
	THEN
		LET f_ret_err = 8
	END IF
	IF m_scr_irctd_rec.rct_qty IS NULL
	THEN
		LET f_ret_err = 7
	END IF
	IF m_scr_irctd_rec.stor_hi IS NULL
	OR m_scr_irctd_rec.stor_hi = 0
	THEN
		LET f_ret_err = 6
	END IF
	IF m_scr_irctd_rec.stor_ti IS NULL
	OR m_scr_irctd_rec.stor_ti = 0
	THEN
		LET f_ret_err = 5
	END IF
	IF (m_scr_irctd_rec.code_date IS NULL
		OR m_scr_irctd_rec.code_date = " ")
	AND m_ret_iprod.pwy_dte_ctl = "Y"
	AND m_scr_irctd_rec.rct_qty > 0
	THEN
		LET f_ret_err = 4
	END IF
	IF m_scr_irctd_rec.prdd_id IS NULL
	THEN
		LET f_ret_err = 3
	END IF
	IF m_scr_irctd_rec.prod_id IS NULL
	THEN
		LET f_ret_err = 2
	END IF

	IF m_scr_irctd_rec.qc_req IS NULL
    THEN
        LET f_ret_err = -1
    ELSE
        IF m_scr_irctd_rec.qc_req = 'Y'
        THEN
        ELSE
            IF m_scr_irctd_rec.qc_req = 'N'
            THEN
            ELSE
                LET f_ret_err = -1
            END IF
        END IF
    END IF

	IF m_scr_irctd_rec.lic_plt_id IS NULL
	THEN
		LET f_ret_err = 1
	END IF

    LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: validate_irctd")

	RETURN f_ret_err

END FUNCTION

{******************************************************************************}
FUNCTION validate_negative()

	DEFINE f_ret_err	INTEGER

    LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: validate_negative")

	LET f_ret_err = 0

	IF m_scr_irctd_rec.rct_qty < 0
	THEN
		LET f_ret_err = 1
	END IF
	IF m_scr_irctd_rec.qty_damaged < 0
	THEN
		LET f_ret_err = 2
	END IF
	IF m_scr_irctd_rec.stor_ti < 0
	THEN
		LET f_ret_err = 3
	END IF
	IF m_scr_irctd_rec.stor_hi < 0
	THEN
		LET f_ret_err = 4
	END IF
	IF m_scr_irctl_rec.qty_claimed < 0
	THEN
		LET f_ret_err = 5
	END IF

    LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: validate_negative")

	RETURN f_ret_err

END FUNCTION

{******************************************************************************}
FUNCTION update_ipod(f_plst_id)

	DEFINE f_plst_id	  LIKE ipod.plst_id

	DEFINE f_dc_id		  LIKE ipod.dc_id
	DEFINE f_po_id		  LIKE ipod.po_id
	DEFINE f_pod_id		  LIKE ipod.pod_id
	DEFINE f_max_pod	  LIKE ipod.pod_id
	DEFINE f_ret_pod	  RECORD LIKE ipod.*
	
	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: update_ipod")

	LET f_dc_id = m_scr_irctl_rec.dc_id
	LET f_po_id = m_scr_irctl_rec.po_id
	LET f_pod_id = m_ret_ipod.pod_id

	IF f_plst_id = "C"
	THEN
		UPDATE ipod SET plst_id = f_plst_id 
			      WHERE dc_id   = f_dc_id
			        AND po_id   = f_po_id
			        AND pod_id  = f_pod_id
	ELSE
		# If rct_qty < qty_ord then create normal backorder quantity,
		# otherwise, create a backorder quantity of 50 % of detail line
		#-------------------------------------------------------------- 
		IF m_rct_qty < m_ret_ipod.qty_ord
		THEN
			LET m_ret_ipod.qty_backord = (m_ret_ipod.qty_ord - m_rct_qty)
		ELSE
			LET m_ret_ipod.qty_backord = (m_ret_ipod.qty_ord / 2)
		END IF

		UPDATE ipod SET plst_id     = f_plst_id,
						qty_backord = m_ret_ipod.qty_backord
			      WHERE dc_id  = f_dc_id
			        AND po_id  = f_po_id
			        AND pod_id = f_pod_id
	END IF

	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "UPDATE ipod failed. SQLCODE=", SQLCA.SQLCODE,
					"ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: update_ipod")
		RETURN TRUE
	END IF

	IF f_plst_id = "B"
	THEN
		# save the contents of current m_ret_ipod
		#----------------------------------------
		LET f_ret_pod.* = m_ret_ipod.*	

		SELECT MAX(pod_id)
          INTO f_max_pod
          FROM ipod
		 WHERE dc_id = f_dc_id
		   AND po_id = f_po_id

		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "SELECT MAX ipod failed.", "SQLCODE = ", SQLCA.SQLCODE,
						" ISAM = ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2

			# restore the contents of current m_ret_ipod
			#-------------------------------------------
			LET m_ret_ipod.* = f_ret_pod.* 
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: update_ipod")
			RETURN TRUE
		END IF
		IF f_max_pod IS NULL
		THEN
			LET f_max_pod = 1
		ELSE
			LET f_max_pod = f_max_pod + 1
		END IF

		LET m_ret_ipod.pod_id = f_max_pod
		LET m_ret_ipod.qty_ord = m_ret_ipod.qty_backord

		LET m_ret_ipod.plst_id = "O"
		LET m_ret_ipod.qty_damaged = 0
		LET m_ret_ipod.qty_claimed = 0
		LET m_ret_ipod.qty_backord = 0
		LET m_ret_ipod.qty_adj = 0
		LET m_ret_ipod.key = 0

		INSERT INTO ipod VALUES(m_ret_ipod.*)

		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "INSERT ipod failed.", "SQLCODE = ", SQLCA.SQLCODE,
						" ISAM = ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2

			# restore the contents of current m_ret_ipod
			#-------------------------------------------
			LET m_ret_ipod.* = f_ret_pod.* 
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: update_ipod")
			RETURN TRUE
		END IF

		# restore the contents of current m_ret_ipod
		#-------------------------------------------
		LET m_ret_ipod.* = f_ret_pod.* 
	END IF

	UPDATE	iasnd
	SET		asnst_id = 'C'
	WHERE	temp_product = m_ret_ipod.prod_id
	AND		asnst_id = 'R'
	AND		asn_id IN
			(SELECT	asn_id
			 FROM	iasn
			 WHERE	po_id = f_po_id)

	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "UPDATE iasnd failed. SQLCODE=", SQLCA.SQLCODE,
					"ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: update_ipod")
		RETURN TRUE
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: update_ipod")

	RETURN FALSE

END FUNCTION

{******************************************************************************}
FUNCTION update_irctd(f_option)

	DEFINE f_option     	 CHAR(1)
	
    LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
        "ENTER: update_irctd")

    # f_option = "E": this will prevent other users from a pallet in process
    # f_option <> "E": user aborted, reset to original status
    #-------------------------------------------------------
    IF f_option = "V"	## CR 15478 - This pallet has been scaned.
	THEN
		UPDATE  irctd
		SET     rdst_id    = f_option,
				receipt_user = "IRRVH"
		WHERE   dc_id      = m_scr_irctd_rec.dc_id
		AND     whse_id    = m_scr_irctd_rec.whse_id
		AND     lic_plt_id = m_scr_irctd_rec.lic_plt_id
	ELSE
		UPDATE  irctd
		SET     rdst_id    = f_option,
				receipt_user = g_user.user_id
		WHERE   dc_id      = m_scr_irctd_rec.dc_id
		AND     whse_id    = m_scr_irctd_rec.whse_id
		AND     lic_plt_id = m_scr_irctd_rec.lic_plt_id
	END IF
 	
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "UPDATE irctd failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
        LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
        LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
            "EXIT: update_irctd")
		CALL upd_irctd_error(m_scr_irctd_rec.lic_plt_id, 
							m_scr_irctd_rec.dc_id, m_scr_irctd_rec.whse_id)
	END IF

	LET m_entered = TRUE

    LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
        "EXIT: update_irctd")

END FUNCTION

{******************************************************************************}
#   Set up the receipt_user to IRRVH which means this license plate
#    has been scaned.   At the end, the receipt_user will be set back.
{******************************************************************************}
FUNCTION upd_irctd_user(f_dc_id, f_whse_id, f_lic_plt_id, f_option)

	DEFINE f_dc_id			 LIKE irctd.dc_id
	DEFINE f_whse_id		 LIKE irctd.whse_id
	DEFINE f_lic_plt_id		 LIKE irctd.lic_plt_id
	DEFINE f_option     	 CHAR(08)
	
	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: upd_irctd_user")

	UPDATE irctd SET receipt_user    = "IRRVH"
			   WHERE dc_id      = f_dc_id
				 AND whse_id    = f_whse_id
				 AND lic_plt_id = f_lic_plt_id
 	
 	
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "UPDATE irctd receipt_user failed. SQLCODE=", 
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: upd_irctd_user")
		CALL upd_irctd_error(f_lic_plt_id, f_dc_id, f_whse_id)
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: upd_irctd_user")

END FUNCTION

{******************************************************************************}
FUNCTION update_irctl()

	DEFINE f_ret_iialg      RECORD LIKE iialg.*
	DEFINE f_ret_iinvd   RECORD
		prod_qty	LIKE iinvd.prod_qty
	END RECORD
	DEFINE f_ret_iplas  RECORD
		loc_id	LIKE iplas.loc_id
	END RECORD
	DEFINE f_ret_status		INTEGER
	DEFINE f_pal_count      INTEGER

	DEFINE f_iinvd      	RECORD LIKE iinvd.*
	DEFINE f_iplas      	RECORD LIKE iplas.*
	DEFINE f_iloc       	RECORD LIKE iloc.*
	DEFINE f_status			INTEGER
	DEFINE f_message_id	 	LIKE smsgs.message_id
	DEFINE f_iinvd_inv_pos_cat	LIKE iinvd.inv_pos_cat
	DEFINE f_iplas_lcus_id		LIKE iplas.lcus_id
	DEFINE f_update_qty		LIKE iinvd.prod_qty
	
	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: update_irctl")

	# this is a receiving correction when the irctl has already
	# been sent to the host and rct_qty has changed.
	#----------------------------------------------------------
	IF m_ret_irctl.extr_flag = "Y"
	AND m_rct_change
	THEN
		# get current location of pallet 			
		#-------------------------------
		SELECT iplas.loc_id, iinvd.prod_qty 
	      INTO f_ret_iplas.loc_id, f_ret_iinvd.prod_qty
	      FROM iplas, iinvd
	     WHERE iinvd.dc_id      = m_scr_irctd_rec.dc_id
	       AND iinvd.whse_id    = m_scr_irctd_rec.whse_id
	       AND iinvd.lic_plt_id = m_scr_irctd_rec.lic_plt_id
	       AND iinvd.plas_id    = iplas.plas_id  

		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "SELECT iplas.loc_id SQLCODE=", SQLCA.SQLCODE,
                    	" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: update_irctl")
			RETURN 2
		END IF

		INITIALIZE f_ret_iialg.* TO NULL

		LET f_ret_iialg.ialg_id     = 0
		LET f_ret_iialg.dc_id       = m_ret_irctl.dc_id
		LET f_ret_iialg.whse_id     = m_ret_irctl.whse_id
		LET f_ret_iialg.loc_id      = f_ret_iplas.loc_id
		LET f_ret_iialg.prod_id     = m_ret_irctl.prod_id
	 	LET f_ret_iialg.iarc_id     = "RC"
#		LET f_ret_iialg.qty_o       = m_scr_irctd_rec.rct_qty
 		LET f_ret_iialg.qty_o       = m_iinvd_prod_qty
		LET f_ret_iialg.adj_qty     = m_scr_irctd_rec.rct_qty -
									  m_iinvd_prod_qty
#								      f_ret_iinvd.prod_qty
		LET f_ret_iialg.create_dtim = CURRENT YEAR TO SECOND
		LET f_ret_iialg.create_user = g_user.user_id
		LET f_ret_iialg.sel_loc_id  = m_loc_id
		LET f_ret_iialg.row_stat    = 'A'
		LET f_ret_iialg.prdd_id     = m_ret_irctl.prdd_id
		LET f_ret_iialg.po_id       = m_ret_irctl.po_id
		LET f_ret_iialg.rcpt_id     = m_ret_irctd.rcpt_id
		LET f_ret_iialg.catch_wgt   = m_ret_irctl.catch_wgt
		LET f_ret_iialg.whse_gnrt_flow_flg = "N"

		INSERT INTO iialg VALUES (f_ret_iialg.*)

		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "INSERT iialg failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			 	"EXIT: update_irctl")
			RETURN 2
		END IF

		CALL tecsys_installed() RETURNING m_tecsys_installed
		IF (m_tecsys_installed) THEN
			RUN "IIFotran09.sh 3001"
		END IF

		# if there is an iinvd for this lic plt, update iinvd,
		# otherwise, reduce the qty in the primary select location
		#---------------------------------------------------------
		CALL find_iinvd(m_ret_irctl.dc_id, m_ret_irctl.whse_id,
                        m_ret_irctl.lic_plt_id)
			  RETURNING f_ret_status, f_pal_count
		
		IF f_pal_count > 0     
		THEN
			UPDATE iinvd SET prod_qty   = m_scr_irctd_rec.rct_qty
		           	   WHERE dc_id      = m_ret_irctl.dc_id
		             	 AND whse_id    = m_ret_irctl.whse_id
		             	 AND lic_plt_id = m_ret_irctl.lic_plt_id
		ELSE 
			CALL check_primary (m_ret_irctl.dc_id,
						   		m_ret_irctl.whse_id,
						   		m_ret_irctl.prod_id,
						   		m_ret_irctl.prdd_id)
				   	  RETURNING f_ret_status
			IF NOT f_ret_status
			THEN
				UPDATE iinvd SET prod_qty   = (iinvd.prod_qty -
                                              m_scr_irctd_rec.rct_qty)
		           	       WHERE dc_id      = m_ret_irctl.dc_id
		             	     AND whse_id    = m_ret_irctl.whse_id
		             	     AND lic_plt_id = m_ret_irctl.lic_plt_id
			END IF
		END IF

		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "UPDATE iinvd failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: update_irctl")
			RETURN 2
		END IF

		CALL check_track_and_trace(m_ret_irctl.dc_id, m_ret_irctl.whse_id, m_ret_irctl.prod_id)
				RETURNING f_ret_status
		IF f_ret_status = -1
		THEN
			LET m_msg = "process_irctd(): Bad return from check_track_and_trace()",
				" dc=", m_ret_irctl.dc_id,
				" prod_id=", m_ret_irctl.prod_id
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: update_irctl")
			RETURN 2
		END IF
		IF f_ret_status
		THEN
			LET f_iinvd_inv_pos_cat = NULL
			LET f_iplas_lcus_id = NULL
			SELECT iinvd.inv_pos_cat, iplas.lcus_id
			INTO f_iinvd_inv_pos_cat, f_iplas_lcus_id
			FROM iinvd, iplas
			WHERE iinvd.dc_id    = m_ret_irctl.dc_id
			AND iinvd.whse_id    = m_ret_irctl.whse_id
			AND iinvd.lic_plt_id = m_ret_irctl.lic_plt_id
			AND iinvd.plas_id    = iplas.plas_id
			IF SQLCA.SQLCODE < 0
			THEN
				LET m_msg = "SELECT iinvd, iplas failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2], " dc=", m_ret_irctl.dc_id,
					" whse=", m_ret_irctl.whse_id,
					" lic_plt=", m_ret_irctl.lic_plt_id
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: update_irctl")
				RETURN 2
			END IF

			IF f_iinvd_inv_pos_cat = "P" AND 
				(f_iplas_lcus_id = "P" OR f_iplas_lcus_id = "A")
			THEN
				IF f_pal_count > 0
				THEN
					CALL upd_iinvq(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.whse_id, "", 
						m_scr_irctd_rec.lic_plt_id, "",
						m_scr_irctd_rec.rct_qty,
						m_scr_irctd_rec.lot_no, "", "")
						RETURNING f_ret_status
				ELSE
					LET f_update_qty = f_ret_iinvd.prod_qty - m_scr_irctd_rec.rct_qty
					CALL upd_iinvq(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.whse_id, "", 
							m_scr_irctd_rec.lic_plt_id, "",
							f_update_qty,
							m_scr_irctd_rec.lot_no, "", "")
							RETURNING f_ret_status
				END IF
				IF f_ret_status
				THEN
					LET m_msg = "update_irctl(): Bad return from upd_iinvq()",
						" dc=", m_scr_irctd_rec.dc_id,
						" whse=", m_scr_irctd_rec.whse_id,
						" lic_plt=", m_scr_irctd_rec.lic_plt_id
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: update_irctl")
					RETURN 2
				END IF
			END IF
		END IF

	ELSE
		UPDATE irctl
		SET rct_qty    = m_scr_irctd_rec.rct_qty, 
			code_date  = m_scr_irctd_rec.code_date
		   WHERE dc_id      = m_ret_irctl.dc_id
			 AND whse_id    = m_ret_irctl.whse_id
			 AND lic_plt_id = m_ret_irctl.lic_plt_id

		IF SQLCA.SQLCODE <> 0 THEN
			LET m_msg = "UPDATE irctl failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			#CALL sh_rf_cmd_msg("I9060")	#-- system failure
			#SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: update_irctl")
			#RETURN 2
			CALL upd_irctd_error(m_ret_irctl.lic_plt_id, 
									m_ret_irctl.dc_id, m_ret_irctl.whse_id) 
		END IF 
	END IF

	CALL tecsys_installed() RETURNING m_tecsys_installed
	IF (m_tecsys_installed) THEN
		RUN "IIFotran09.sh 1010"
	END IF 
	
	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: update_irctl")

	RETURN FALSE

END FUNCTION

{******************************************************************************}
FUNCTION insert_irctl( f_dc_id, f_whse_id, f_lic_plt_id, f_qty )

	DEFINE f_dc_id			 LIKE irctd.dc_id
	DEFINE f_whse_id		 LIKE irctd.whse_id
	DEFINE f_lic_plt_id		 LIKE irctd.lic_plt_id
	DEFINE f_qty       		 INTEGER	## = 0, insert irctl with qty = 0

	DEFINE f_ret_irctd		RECORD LIKE irctd.*
	DEFINE f_rec_cnt		INTEGER
	DEFINE f_count			INTEGER
	DEFINE f_cmd			CHAR(200) 
	
	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: insert_irctl")

	LET f_count = 0

	SELECT *
      INTO f_ret_irctd.* 
      FROM irctd 
	 WHERE dc_id      = f_dc_id
	   AND whse_id    = f_whse_id
	   AND lic_plt_id = f_lic_plt_id

	IF SQLCA.SQLCODE <> 0 THEN
		IF SQLCA.SQLCODE = NOTFOUND THEN	
			RETURN FALSE
		END IF

		LET m_msg = "SELECT irctd failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)

		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: insert_irctl")
		CALL upd_irctd_error(f_lic_plt_id, f_dc_id, f_whse_id)
	END IF

	## Insert irctl with qty = 0 to send back to host.	CR #10681
	## Do not insert irctl if rct_qty = 0.
	IF f_ret_irctd.rct_qty <= 0
		AND f_qty > 0	## set up to 1 when rct_qty > 0
						## set up to 0 when calling from delete_zero_out().
	THEN	
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: insert_irctl")
		RETURN FALSE
	END IF

	# Verify if irctl record already exists
	LET f_rec_cnt = 0
	SELECT COUNT(*)
	INTO f_rec_cnt
	FROM irctl
	WHERE lic_plt_id = f_ret_irctd.lic_plt_id
	IF SQLCA.SQLCODE THEN
		LET m_msg = "SELECT COUNT(*) FROM irctl failed. ",
					" SQLCODE=", SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: insert_irctl")
		CALL upd_irctd_error(f_lic_plt_id, f_dc_id, f_whse_id)
	END IF

	IF f_rec_cnt IS NOT NULL
	AND f_rec_cnt > 0
	THEN
		RETURN FALSE
	END IF

	INITIALIZE m_ret_irctl.rct_type TO NULL
	LET m_ret_irctl.rctl_id      = 0
	LET m_ret_irctl.dc_id	     = f_ret_irctd.dc_id
	LET m_ret_irctl.whse_id	     = f_ret_irctd.whse_id
	LET m_ret_irctl.lic_plt_id   = f_ret_irctd.lic_plt_id
	LET m_ret_irctl.prod_id	     = f_ret_irctd.prod_id
	LET m_ret_irctl.prdd_id	     = f_ret_irctd.prdd_id
	LET m_ret_irctl.code_date    = f_ret_irctd.code_date
	LET m_ret_irctl.rct_qty	     = f_ret_irctd.rct_qty
	LET m_ret_irctl.lot_no 	     = f_ret_irctd.lot_no 
	LET m_ret_irctl.catch_wgt    = f_ret_irctd.catch_wgt
	LET m_ret_irctl.po_id	     = f_ret_irctd.po_id
	LET m_ret_irctl.pod_id	     = f_ret_irctd.pod_id
	LET m_ret_irctl.create_dtim  = CURRENT
	LET m_ret_irctl.extr_flag    = "N"
	LET m_ret_irctl.roll_flag    = "N"
	LET m_ret_irctl.flow_dtl_flg = f_ret_irctd.flow_dtl_flg
	LET m_ret_irctl.rctt_id      = f_ret_irctd.rctt_id 
	LET m_ret_irctl.whse_gnrt_flow_flg = f_ret_irctd.whse_gnrt_flow_flg

	INSERT INTO irctl VALUES(m_ret_irctl.*)

	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "INSERT irctl failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: insert_irctl")
		CALL upd_irctd_error(f_lic_plt_id, f_dc_id, f_whse_id)
	END IF

	IF m_auto_com_haul = "Y" THEN
		LET f_cmd =
			"nohup CAChawku00.4ge ",
			" -d'", m_ret_irctl.dc_id USING "<<<<<", "'",
			" -w'", m_ret_irctl.whse_id USING "<<<<<", "'",
			" -p'", m_ret_irctl.po_id, "'",
			" -l'", m_ret_irctl.lic_plt_id, "'",
			" -u'", g_user.user_id, "'",
			" > /dev/null &"

		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%", f_cmd)
		CALL run_system_cmd(f_cmd)
	END IF
	
	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: insert_irctl")

	RETURN FALSE

END FUNCTION

{*****************************************************************************}
FUNCTION active_iinvd(f_dc_id, f_whse_id, f_po_id, f_pod_id, f_rcpt_id)

	DEFINE f_dc_id			 LIKE irctd.dc_id
	DEFINE f_whse_id		 LIKE irctd.whse_id
	DEFINE f_po_id			 LIKE irctd.po_id
	DEFINE f_pod_id			 LIKE irctd.pod_id
	DEFINE f_rcpt_id		 LIKE irctd.rcpt_id

	DEFINE f_ret_irctd 		 RECORD LIKE irctd.*
	DEFINE f_ret_status		 INTEGER
	DEFINE f_ret_swhse		 RECORD LIKE swhse.*
	DEFINE f_pre_whse_id     LIKE irctd.whse_id
	DEFINE f_ista_id         LIKE iinvd.ista_id    
	DEFINE f_qlty_id		 LIKE iinvd.qlty_id
    DEFINE f_char_date       CHAR(10)
	DEFINE f_iinvd_inv_pos_cat	LIKE iinvd.inv_pos_cat
	DEFINE f_iinvd_lot_no		LIKE iinvd.lot_no
	DEFINE f_iinvd_plas_prod_id	LIKE iinvd.plas_prod_id
	DEFINE f_iplas_lcus_id		LIKE iplas.lcus_id
	DEFINE f_count 				INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: active_iinvd")

	OPEN c_active_iinvd USING f_dc_id, f_po_id, f_pod_id,
		   f_whse_id, f_rcpt_id
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN c_active_iinvd failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: active_iinvd")
		RETURN TRUE
	END IF

	LET f_pre_whse_id = 0

	WHILE  TRUE
		FETCH c_active_iinvd INTO
			f_ret_irctd.lic_plt_id, f_ret_irctd.catch_wgt,
			f_ret_irctd.stor_ti, f_ret_irctd.stor_hi, 
			f_ret_irctd.rct_qty, f_ret_irctd.code_date, 
			f_ret_irctd.rctt_id,
			f_ret_irctd.calc_cde_dt_flg		#5.6.1


		IF SQLCA.SQLCODE = NOTFOUND
        THEN	
			EXIT WHILE
		END IF
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "FETCH c_active_iinvd failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: active_iinvd")
			RETURN TRUE
		END IF

		IF f_whse_id <> f_pre_whse_id		## CR 10305
		THEN
			LET f_pre_whse_id = f_whse_id
			CALL lkp_swhse(f_dc_id, f_whse_id)
				RETURNING f_ret_status, f_ret_swhse.*

			IF f_ret_status = TRUE
			THEN
				LET  f_ret_swhse.hld_invt_pend_rcon = "N"
			END IF
		END IF
		LET f_ret_status = 0
		IF f_ret_swhse.hld_invt_pend_rcon = "Y"
		THEN
			CALL chk_hld_invt_pend(
						 f_ret_irctd.lic_plt_id,
						 f_dc_id,
						 f_whse_id)
			  RETURNING f_ret_status 
		END IF
		IF f_ret_status > 0
		THEN
			{IF hold inven pend putaway = Y AND auto-fomb = Y}
			{AND flowthru pallet; THEN activate the pallet}
			IF  f_ret_swhse.flow_auto_ship_flg = "Y"
			AND f_ret_irctd.rctt_id = "F"
			THEN
				LET f_ista_id = "A"
			ELSE
				LET m_msg = "Found pending work for license plate ", 
						f_ret_irctd.lic_plt_id
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				LET f_ista_id = "P"			#-- Pending
			END IF
		ELSE
			LET f_ista_id = "A"		#-- Active
		END IF
            
	#### Update the ista_id of iinvd if pallet selected for QC.
		LET f_count = 0
		SELECT COUNT(*)
          INTO f_count
		  FROM irqca
		 WHERE lic_plt_id = f_ret_irctd.lic_plt_id
		   AND dc_id = f_dc_id
		   AND whse_id = f_whse_id
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "SELECT irqca failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: active_iinvd")
			RETURN TRUE
		END IF
		LET f_qlty_id = NULL
		IF f_count > 0
		THEN
			LET f_ista_id = 'H'
			LET f_qlty_id = 'QC'
		END IF 

		UPDATE iinvd SET cde_dt     = f_ret_irctd.code_date,
						 calc_cde_dt_flg    = f_ret_irctd.calc_cde_dt_flg,
						 prod_qty   = f_ret_irctd.rct_qty,
						 ista_id    = f_ista_id,
						 qlty_id	= f_qlty_id,
						 stor_ti    = f_ret_irctd.stor_ti,
						 stor_hi    = f_ret_irctd.stor_hi,
						 catch_wgt  = f_ret_irctd.catch_wgt, 
						pwy_dte_ctl_rcpt    = m_ret_iprod.pwy_dte_ctl,
                        cde_dt_var_rcpt     = m_ret_iprod.cde_dt_var,
                        cde_dt_incr_rcpt    = m_ret_iprod.cde_dt_incr,
                        prod_max_dy_rcpt    = m_ret_iprod.prod_max_dt,
                        pull_days_rcpt      = m_ret_iprod.pull_days,
                        po_typ_prcnt_rcpt   = m_ret_ipod.var_percent,
                        min_chk_only        = m_ret_iprod.min_chk_only,
                        min_chk_percent     = m_ret_iprod.min_chk_percent
				   WHERE lic_plt_id = f_ret_irctd.lic_plt_id
				     AND dc_id      = f_dc_id
					 AND whse_id    = f_whse_id

		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "UPDATE iinvd failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: active_iinvd")
			RETURN TRUE
		ELSE
			IF SQLCA.SQLERRD[3] = 0 
			THEN
				LET m_msg = "UPDATE iinvd failed ",
							f_dc_id," ",f_whse_id," ",
							f_ret_irctd.lic_plt_id," ",f_ista_id
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			END IF
		END IF

		LET f_iinvd_inv_pos_cat = NULL
		LET f_iinvd_lot_no = NULL
		LET f_iinvd_plas_prod_id = NULL
		LET f_iplas_lcus_id = NULL
		SELECT iinvd.inv_pos_cat, iinvd.lot_no, iinvd.plas_prod_id, iplas.lcus_id
		INTO f_iinvd_inv_pos_cat, f_iinvd_lot_no, f_iinvd_plas_prod_id, f_iplas_lcus_id
		FROM iinvd, iplas
		WHERE iinvd.dc_id    = f_dc_id
		AND iinvd.whse_id    = f_whse_id
		AND iinvd.lic_plt_id = f_ret_irctd.lic_plt_id
		AND iinvd.plas_id    = iplas.plas_id
		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "SELECT iinvd failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2], " dc=", f_dc_id,
					" whse=", f_whse_id,
		   			" lic_plt=", f_ret_irctd.lic_plt_id
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: active_iinvd")
			RETURN TRUE
		END IF

		CALL check_track_and_trace(f_dc_id, f_whse_id, f_iinvd_plas_prod_id) 
                                       RETURNING f_ret_status
		IF f_ret_status = -1
		THEN
			LET m_msg = "active_iinvd(): Bad return from check_track_and_trace().",
				" dc_id=", f_dc_id,
				" prod_id=", f_iinvd_plas_prod_id
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: active_iinvd")
			RETURN TRUE
		END IF
		IF f_ret_status
		THEN
			IF f_iinvd_inv_pos_cat = "P" AND 
				(f_iplas_lcus_id = "P" OR f_iplas_lcus_id = "A")
			THEN
                            	CALL upd_iinvq(f_dc_id, f_whse_id, "", 
                                         	f_ret_irctd.lic_plt_id, "",
						f_ret_irctd.rct_qty,
                                         	f_iinvd_lot_no, "", "")
						RETURNING f_ret_status
				IF f_ret_status 
				THEN
					LET m_msg = "active_iinvd(): Bad return from upd_iinvq().",
				            " dc=", f_dc_id,
				            " whse=", f_whse_id,
				            " lic_plt=", f_ret_irctd.lic_plt_id
			   		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: active_iinvd")
					RETURN TRUE
				END IF
			END IF
		END IF
	END WHILE

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: active_iinvd")

	RETURN FALSE

END FUNCTION

{****************************************************************************}
FUNCTION lst_rf_iclcd()

	DEFINE f_disp	   ARRAY[101] OF RECORD 
		iclcd_user_val	  LIKE iclcd.iclcd_user_val,
		iclcd_sdesc		  LIKE iclcd.iclcd_sdesc
	END RECORD
	
	DEFINE f_iclcd	  ARRAY[101] OF RECORD LIKE iclcd.*
	DEFINE f_rcnt		  INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: lst_rf_iclcd")

	INITIALIZE f_iclcd[101].* TO NULL
	LET f_iclcd[101].create_dtim = CURRENT YEAR TO SECOND
	LET f_iclcd[101].change_dtim = CURRENT YEAR TO SECOND

	CALL open_iclcd_form()

	OPEN c_lst_rf_iclcd USING g_user.lang_id
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN iclcd failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: lst_rf_iclcd")
		RETURN TRUE, f_iclcd[101].*
	END IF

	LET f_rcnt = 1

	WHILE f_rcnt <= 100
		FETCH c_lst_rf_iclcd INTO f_iclcd[f_rcnt].*

		IF SQLCA.SQLCODE = NOTFOUND
		THEN
			EXIT WHILE
		END IF 
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "FETCH iclcd failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: lst_rf_iclcd")
			RETURN TRUE, f_iclcd[101].*
		END IF

		LET f_disp[f_rcnt].iclcd_user_val = f_iclcd[f_rcnt].iclcd_user_val
		LET f_disp[f_rcnt].iclcd_sdesc = f_iclcd[f_rcnt].iclcd_sdesc

		LET f_rcnt = f_rcnt + 1
	END WHILE

	CALL set_count(f_rcnt - 1)
	LET int_flag = false

	OPTIONS 
		NEXT KEY F35,
		PREVIOUS KEY F34,
		INSERT KEY F36,
		DELETE KEY F36,
		HELP KEY F1

	DISPLAY ARRAY f_disp TO s_iclcd.*
		ON KEY (CONTROL-P)
			CALL spprtscr()
	END DISPLAY

	LET f_rcnt = arr_curr()

	CALL close_iclcd_form()

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: lst_rf_iclcd")

	IF int_flag
	THEN
		RETURN TRUE, f_iclcd[101].*
	END IF

	RETURN FALSE, f_iclcd[f_rcnt].*

END FUNCTION

{******************************************************************************}
# f_rct_qty is the new qty to be received 
{******************************************************************************}
FUNCTION sum_rct_qty(f_rct_qty)

	DEFINE f_rct_qty		INTEGER

	DEFINE f_tot_qty		INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: sum_rct_qty")

	LET f_tot_qty = 0

	IF m_add_update = "M" AND f_rct_qty > 0
    THEN
		SELECT SUM(irctd.rct_qty)
          INTO f_tot_qty
          FROM irctd
		 WHERE irctd.dc_id   = m_scr_irctd_rec.dc_id
		   AND irctd.rcpt_id = m_scr_irctd_rec.rcpt_id
		   AND irctd.po_id   = m_ret_ipod.po_id
		   AND irctd.pod_id  = m_ret_ipod.pod_id
		   AND irctd.lic_plt_id <> m_scr_irctd_rec.lic_plt_id

		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "SELECT SUM failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
		END IF
	ELSE
		SELECT SUM(irctd.rct_qty)
          INTO f_tot_qty
          FROM irctd
		 WHERE irctd.dc_id   = m_scr_irctd_rec.dc_id
		   AND irctd.rcpt_id = m_scr_irctd_rec.rcpt_id
		   AND irctd.po_id   = m_ret_ipod.po_id
		   AND irctd.pod_id  = m_ret_ipod.pod_id

		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "SELECT SUM failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
		END IF
	END IF

	IF f_tot_qty IS NULL
    THEN
		LET f_tot_qty = 0
	END IF

			#LET m_msg = "tot = ", f_tot_qty, " add = ", m_add_update, " rct = ", f_rct_qty
			#LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	IF m_urcp_id = "S"
	THEN
		LET f_tot_qty = (f_tot_qty / m_ret_iprdd.unit_ship_cse) + f_rct_qty
	ELSE
		LET f_tot_qty = (f_tot_qty / m_ret_iprdd.cse_unit) + f_rct_qty
	END IF

			#LET m_msg = "tot = ", f_tot_qty
			#LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: sum_rct_qty")

			#LET m_msg = "tot = ", f_tot_qty, " ord = ", m_scr_irctd_rec.qty_ord, " pct = ", m_qty_ord_num
			#LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	IF f_tot_qty > (m_scr_irctd_rec.qty_ord * (1 + (m_qty_ord_num/100))) OR
		 f_tot_qty < (m_scr_irctd_rec.qty_ord * (1 - (m_qty_ord_num/100)))
	THEN
		RETURN TRUE, f_tot_qty
	END IF

	RETURN FALSE, f_tot_qty

END FUNCTION

{*****************************************************************************}
# get number of open po lines in the appointment for that product
{*****************************************************************************}
FUNCTION chk_other_rec(f_dc_id, f_whse_id, f_appt_id, f_po_id, f_prod_id) 

	DEFINE f_dc_id			INTEGER
	DEFINE f_whse_id		INTEGER
	DEFINE f_appt_id		LIKE iaptd.appt_id
	DEFINE f_po_id			LIKE iaptd.po_id
	DEFINE f_prod_id		LIKE iprod.prod_id

	DEFINE f_count			INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: chk_other_rec")

	SELECT COUNT(*)
	  INTO f_count
	  FROM ipod, iaptd
	 WHERE ipod.dc_id    = f_dc_id
	   ##  AND ipod.whse_id  = f_whse_id	## not sel by ship whse
	   AND ipod.po_id    <> f_po_id
	   AND ipod.prod_id  = f_prod_id
	   AND ipod.plst_id  = "P"			#-- putaway
	   AND iaptd.dc_id   = f_dc_id
	   AND iaptd.whse_id = f_whse_id
	   AND iaptd.appt_id = f_appt_id
	   AND iaptd.po_id   = ipod.po_id

	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg="SELECT COUNT failed. SQLCODE=", SQLCA.SQLCODE,
                  " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: chk_other_rec")
		RETURN TRUE
	END IF

	IF f_count IS NULL
	THEN
		LET f_count = 0
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: chk_other_rec")

	IF f_count > 0
	THEN
		RETURN TRUE				#-- will give warning  
	END IF 					#-- while having open stock for the same item

	RETURN FALSE

END FUNCTION

{*****************************************************************************}
# This function will display a list of POs and the number of unverified
# pallets on each PO.  The function will input a flag to ask if the user
# wants to close each PO.  It will then set the close flag as appropriate.
{*****************************************************************************}
FUNCTION get_close_po()

	DEFINE f_ret_status	INTEGER
	DEFINE f_close_flg	INTEGER			## CMS 22281
	DEFINE f_rcnt		INTEGER
    DEFINE f_sysno      RECORD LIKE sysno.*
    DEFINE f_num_recs   INTEGER
    DEFINE f_count      INTEGER
    DEFINE f_found      INTEGER
    DEFINE f_arr_cur    INTEGER
    DEFINE f_scr_cur    INTEGER
	DEFINE f_i			SMALLINT
	DEFINE f_abort		INTEGER
	DEFINE f_dc_id		LIKE ipo.dc_id
	DEFINE f_whse_id	LIKE ipod.whse_id
	DEFINE f_appt_id	LIKE iaptd.appt_id
	DEFINE f_ret_ipo	RECORD LIKE ipo.*
	DEFINE f_rcpt_id	LIKE irct.rcpt_id
	DEFINE f_loop		SMALLINT
	DEFINE f_total		SMALLINT
	DEFINE f_close_po_cnt	INTEGER
	DEFINE f_po_closed_flag	SMALLINT
	DEFINE f_ret_iaptd		RECORD LIKE iaptd.*
	DEFINE f_po_id		LIKE ipo.po_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: get_close_po")

	LET f_close_po_cnt = 0
	LET f_abort = FALSE

    FOR f_rcnt = 1 TO 501
        LET m_arr_po_close[f_rcnt].* = m_int_po_close.*
        LET m_arr_del_zero[f_rcnt].* = m_int_del_zero.*
	END FOR

	CALL updt_m_array(f_po_id, m_scr_irctd_rec.rcv_whse_id, 
						f_appt_id, f_rcpt_id )

	LET m_ret_ipod.po_id = NULL
    LET f_found = FALSE
    LET f_num_recs = 1

    WHILE (m_array[f_num_recs].po_id IS NOT NULL
	AND  m_array[f_num_recs].close_flag <> "C")
		FOR f_i = 1 TO m_rcpt_cnt
			IF m_rcpt_array[f_i].rcpt_id IS NULL
			OR m_rcpt_array[f_i].appt_id IS NULL
			OR m_rcpt_array[f_i].whse_id IS NULL
			OR m_rcpt_array[f_i].po_id IS NULL
			THEN
				EXIT FOR
			ELSE
				IF m_rcpt_array[f_i].po_id != m_array[f_num_recs].po_id
				THEN
					CONTINUE FOR
				END IF
			END IF

 	       	OPEN c_count_unver USING m_scr_irctd_rec.dc_id, 
    	   						m_scr_irctd_rec.whse_id, 
            					m_array[f_num_recs].po_id,
								m_array2[f_num_recs].appt_id

	       	IF SQLCA.SQLCODE <> 0
        	THEN
       	    	LET m_msg = "OPEN c_count_unver failed. SQLCODE=",
           	    	SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
           		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	           	CALL sh_rf_cmd_msg("I9060")    #-- system failure
            	SLEEP 2
       	    	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%", 
           	    	"EXIT: get_close_po")
				RETURN TRUE
	       	END IF

	       	FETCH c_count_unver INTO m_array[f_num_recs].unver_cnt
        	IF SQLCA.SQLCODE <> 0
       		THEN
           		LET m_msg = "FETCH c_count_unver failed. SQLCODE=",
               		SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
	           	LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
            	CALL sh_rf_cmd_msg("I9060")    #-- system failure
       	    	SLEEP 2
           		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%", 
               			"EXIT: get_close_po")
				RETURN TRUE
        	END IF
	
        	IF m_array[f_num_recs].unver_cnt > 0
       		THEN
           		LET f_found = TRUE
	       	END IF

		END FOR

        LET f_num_recs = f_num_recs + 1

    END WHILE

    IF f_num_recs = 1
    THEN
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_close_po")
		RETURN TRUE
    END IF
	LET f_num_recs = f_num_recs - 1

    CALL open_po_list()
    CLEAR FORM
    CALL set_count(f_num_recs)
	LET f_abort = FALSE
	LET int_flag = FALSE

    INPUT ARRAY m_array
    	WITHOUT DEFAULTS
    	FROM    s_po_list.*

		BEFORE INPUT
			LET f_arr_cur = arr_curr()
			LET f_scr_cur = scr_line()

			FOR f_count = 1 TO 6
				DISPLAY m_array[101].* TO s_po_list[f_count].*
				ATTRIBUTE (NORMAL)
			END FOR

			FOR f_count = 1 TO f_num_recs
				DISPLAY m_array[f_count].* TO s_po_list[f_count].*
				ATTRIBUTE (NORMAL)
			END FOR

		BEFORE ROW
			LET f_arr_cur = arr_curr()
			LET f_scr_cur = scr_line()

			DISPLAY m_array[f_arr_cur].* TO s_po_list[f_scr_cur].*
					ATTRIBUTE (NORMAL)

		BEFORE FIELD close
			LET f_arr_cur = arr_curr()
			LET f_scr_cur = scr_line()

			IF m_array[f_arr_cur].close_flag = "C"
			THEN
				CALL sh_rf_cmd_msg("K0457")
				LET f_po_closed_flag = TRUE
			ELSE
				CALL sh_rf_cmd_msg("I5530")
				LET f_po_closed_flag = FALSE
			END IF

			CALL sh_rf_cmd_msg("I5530")
			DISPLAY m_array[f_arr_cur].close_flag
			TO s_po_list[f_scr_cur].close     ###CMS22381
			ATTRIBUTE (REVERSE)

		ON KEY (CONTROL-P)
			CALL spprtscr()

		AFTER FIELD close
			LET f_arr_cur = arr_curr()
			LET f_scr_cur = scr_line()
		IF f_po_closed_flag = FALSE
		THEN
			IF (m_array[f_arr_cur].close_flag <> "Y"
			AND m_array[f_arr_cur].close_flag <> "N")
			THEN
				LET m_array[f_arr_cur].close_flag = "N"
				LET m_array2[f_arr_cur].close_flag = "N"	--PTR851
				CALL sh_rf_err_msg("K1015") # Must Enter Y/N
				NEXT FIELD s_po_list.close
			ELSE
				SET ISOLATION TO DIRTY READ
				CALL lkp_iaptd(m_scr_irctd_rec.dc_id, 
 					m_array[f_arr_cur].whse_id, m_array2[f_arr_cur].appt_id,
					m_array[f_arr_cur].po_id)   
					RETURNING f_abort, f_ret_iaptd.*
				IF f_ret_iaptd.po_closed_flg = "Y"
				THEN
					LET m_array[f_arr_cur].close_flag = "C"
					LET m_array2[f_arr_cur].close_flag = "C"	--PTR851
				END IF
				SET ISOLATION TO COMMITTED READ
			END IF
		ELSE
			LET m_array[f_arr_cur].close_flag = "C"
			LET m_array2[f_arr_cur].close_flag = "C"	--PTR851
		END IF

        IF m_array[f_arr_cur].close_flag = "Y"                                
        OR m_array[f_arr_cur].close_flag = "N"                                
        OR m_array[f_arr_cur].close_flag = " "                                
        OR m_array[f_arr_cur].close_flag IS NULL                              
		AND f_po_closed_flag = FALSE
        THEN

			CALL lkp_sysno(m_array[f_arr_cur].close_flag)
				RETURNING f_ret_status, f_sysno.*
			IF f_ret_status = TRUE
			THEN
				LET m_array[f_arr_cur].close_flag = " "
				LET m_array2[f_arr_cur].close_flag = " "
				NEXT FIELD s_po_list.close
            ELSE                                                              
				LET m_array[f_arr_cur].close_flag = f_sysno.sysno_user_val
				--PTR851
				LET m_array2[f_arr_cur].close_flag = f_sysno.sysno_user_val 
				IF (m_array[f_arr_cur].close_flag <> "Y"
				AND m_array[f_arr_cur].close_flag <> "N")
				THEN
					LET m_array[f_arr_cur].close_flag = "N"
					LET m_array2[f_arr_cur].close_flag = "N"	--PTR851
					CALL sh_rf_err_msg("K1015") # Must Enter Y/N
					NEXT FIELD s_po_list.close
				END IF
            END IF                                                            
			IF f_po_closed_flag = FALSE
			AND m_array[f_arr_cur].close_flag <> "Y"
			THEN
				LET m_array[f_arr_cur].close_flag = "N"
				LET m_array2[f_arr_cur].close_flag = "N"
			END IF
			#LET m_array[f_arr_cur].close_flag = f_sysno.sysno_user_val
        ELSE                                                                  
            # User get's message that this PO is closed.                      
            #CALL sh_rf_err_msg("K0457")                                      
            LET m_array[f_arr_cur].close_flag = "C"                           
			LET m_array2[f_arr_cur].close_flag = "C"	--PTR851
        END IF 

			DISPLAY m_array[f_arr_cur].close_flag
			TO s_po_list[f_scr_cur].close    		##CMS22381
			ATTRIBUTE (NORMAL)

			IF f_arr_cur >= f_num_recs
			AND fgl_lastkey() <> fgl_keyval("UP")
			AND fgl_lastkey() <> fgl_keyval("LEFT")
			AND fgl_lastkey() <> fgl_keyval("ACCEPT")
			THEN
				NEXT FIELD s_po_list.close
			END IF

		ON KEY (ESCAPE, INTERRUPT, DELETE)
			LET int_flag	= FALSE
			LET f_abort		= TRUE
			EXIT INPUT

		AFTER ROW
			IF m_array[f_arr_cur].close_flag = "Y" THEN
				LET f_ret_status = capture_inbound_carrier("R",
									m_scr_irctd_rec.dc_id,
									m_array[f_arr_cur].whse_id,
									m_array[f_arr_cur].po_id,
									m_array2[f_arr_cur].appt_id,
									m_array2[f_arr_cur].rcpt_id)
				IF f_ret_status THEN
					NEXT FIELD close
				END IF
			END IF
    END INPUT

    CALL close_po_list()

	IF f_abort THEN
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%",
			"EXIT: get_close_po")
		RETURN TRUE
	END IF

	LET f_rcnt = 1
	LET f_close_flg = FALSE			## CMS 22281
	WHILE m_array[f_rcnt].po_id IS NOT NULL
		IF m_array[f_rcnt].close_flag = "N"
		THEN
			LET m_arr_po_close[f_rcnt].close = "N"
			LET m_arr_po_close[f_rcnt].po_id = m_array[f_rcnt].po_id
			LET f_rcnt = f_rcnt + 1
			IF f_rcnt > f_num_recs
			THEN
				EXIT WHILE
			ELSE
				CONTINUE WHILE
			END IF
		END IF

        IF m_array[f_rcnt].close_flag = "C"                         
        THEN                                                        
            LET m_arr_po_close[f_rcnt].close = "N"                  
            LET m_arr_po_close[f_rcnt].po_id = m_array[f_rcnt].po_id
            LET f_rcnt = f_rcnt + 1                                 
            LET f_close_po_cnt = f_close_po_cnt + 1                 
            IF f_rcnt > f_num_recs   # Mod 100 to f_num_recs 
            THEN                                             
				EXIT WHILE
            ELSE                                             
                CONTINUE WHILE                               
            END IF                                           
		END IF


		IF m_array[f_rcnt].close_flag = "Y"
		THEN 
			LET m_ret_ipod.po_id = m_array[f_rcnt].po_id

			LET m_scr_irctd_rec.rcv_whse_id = m_array[f_rcnt].whse_id
			LET m_scr_irctd_rec.appt_id = m_array2[f_rcnt].appt_id
			LET m_scr_irctd_rec.rcpt_id = m_array2[f_rcnt].rcpt_id

			LET m_scr_irctl_rec.* = m_scr_irctl_null.*
			LET m_scr_irctl_rec.dc_id = m_scr_irctd_rec.dc_id
			LET m_scr_irctl_rec.whse_id = m_scr_irctd_rec.rcv_whse_id
			LET m_scr_irctl_rec.appt_id = m_array2[f_rcnt].appt_id
			LET m_scr_irctl_rec.urcp_id = m_scr_irctd_rec.urcp_id

			LET f_close_flg = TRUE			## CMS 22281
			LET m_arr_po_close[f_rcnt].close   = "Y"
			LET m_arr_po_close[f_rcnt].po_id   = m_array[f_rcnt].po_id
			LET m_arr_po_close[f_rcnt].suspend = "N"
			LET m_arr_po_close[f_rcnt].rcpt_id = m_array2[f_rcnt].rcpt_id

			LET f_rcnt = f_rcnt + 1
			IF f_rcnt > 100
			THEN
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: get_close_po")
				RETURN FALSE
			END IF

			IF check_inbd_comp(f_rcnt-1)
			THEN
				RETURN TRUE
			END IF
		END IF
	END WHILE

	## CMS 22281 moved this message here.
	IF f_close_flg = TRUE AND f_found = TRUE
	THEN
       	CALL sh_rf_err_msg("I1540")
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: get_close_po")

	IF f_rcnt - 1 = 0
	OR f_close_flg = FALSE
	OR f_close_po_cnt = f_num_recs
    THEN
		RETURN TRUE
	END IF

	RETURN FALSE

END FUNCTION

{*****************************************************************************}
# check if po exits in the user toggle closed/Y-N array m_arr_po_close  
{*****************************************************************************}
##FUNCTION to_close_po( f_po_id ) 
FUNCTION to_close_po( f_po_id, f_rcpt_id )

	DEFINE f_po_id LIKE ipo.po_id
	DEFINE f_rcpt_id	LIKE irctd.rcpt_id

	DEFINE f_loop  INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: to_close_po")

	FOR f_loop = 1 TO 501
		IF m_arr_po_close[f_loop].po_id = f_po_id
		AND m_arr_po_close[f_loop].rcpt_id = f_rcpt_id
		THEN
			IF m_arr_po_close[f_loop].close = "Y"
			THEN
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: to_close_po")
				RETURN FALSE
			END IF
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: to_close_po")
			RETURN TRUE
		END IF
		IF m_arr_po_close[f_loop].po_id IS NULL
		THEN
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: to_close_po")
			RETURN TRUE
		END IF
	END FOR

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: to_close_po")

	RETURN TRUE

END FUNCTION

{*****************************************************************************}
# flag a po to have a suspend mode
{*****************************************************************************}
FUNCTION suspend_po( f_po_id ) 

	DEFINE f_po_id LIKE ipo.po_id

	DEFINE f_loop  INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: suspend_po")

	FOR f_loop = 1 TO 501
		IF m_arr_po_close[f_loop].po_id = f_po_id
		THEN
			LET m_arr_po_close[f_loop].suspend = "Y" 
			EXIT FOR     
		END IF
	END FOR

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: suspend_po")

END FUNCTION

{*****************************************************************************}
# check if any of the po lines has been suspended
{*****************************************************************************}
FUNCTION is_po_suspend( f_po_id ) 

	DEFINE f_po_id LIKE ipo.po_id

	DEFINE f_loop  INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: is_po_suspend")

	FOR f_loop = 1 TO 501
		IF m_arr_po_close[f_loop].po_id = f_po_id
		THEN
			IF m_arr_po_close[f_loop].suspend = "Y"
			THEN
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: is_po_suspend")
				RETURN FALSE
			END IF
		END IF
	END FOR

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: is_po_suspend")

	RETURN TRUE

END FUNCTION

{******************************************************************************}
FUNCTION group_pallets(f_dc_id, f_whse_id, f_plas_id, f_lcus_id)

	DEFINE f_dc_id		LIKE iplas.dc_id
	DEFINE f_whse_id	LIKE iplas.whse_id
	DEFINE f_plas_id	LIKE iplas.plas_id
	DEFINE f_lcus_id	LIKE iplas.lcus_id

	DEFINE f_lic_plt	LIKE irctd.lic_plt_id
	DEFINE f_iinvd		RECORD LIKE iinvd.*
	DEFINE f_prod_qty	INTEGER
	DEFINE f_count		INTEGER
	DEFINE f_new_inv_pos_cat	LIKE iinvd.inv_pos_cat

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: group_pallets")

	INITIALIZE f_iinvd.* TO NULL
	INITIALIZE f_lic_plt TO NULL
	LET f_prod_qty = 0

	IF f_lcus_id = "P"
	OR f_lcus_id = "A"
	OR f_lcus_id = "V"
	THEN
		LET f_new_inv_pos_cat = "P"
	ELSE	## f_lcus_id = "F"
		LET f_new_inv_pos_cat = "R"
	END IF

	OPEN c_iinvd USING f_plas_id, f_new_inv_pos_cat
	IF SQLCA.SQLCODE <> 0
    THEN
		LET m_msg = "OPEN c_iinvd failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: group_pallets")
		RETURN TRUE
	END IF
	
	## CR 11187 - Kept the most current lic_plt_id, rcpt_id and cde_dt.
	WHILE TRUE
	###FETCH c_iinvd INTO f_iinvd.*
		FETCH c_iinvd INTO f_iinvd.lic_plt_id, f_iinvd.prod_qty, f_iinvd.po_id,
			f_iinvd.rcpt_id, f_iinvd.plas_prod_id, f_iinvd.plas_id

		IF SQLCA.SQLCODE < 0 
		THEN
			LET m_msg = "FETCH c_iinvd failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
							"EXIT: group_pallets") 
			RETURN TRUE
		END IF

		IF SQLCA.SQLCODE = 100
	    THEN
			EXIT WHILE
		END IF

		IF f_iinvd.prod_qty IS NULL
		THEN
			LET f_iinvd.prod_qty = 0
		END IF
		LET f_prod_qty = f_prod_qty + f_iinvd.prod_qty

		## Delete all but the first one ##############################
		IF f_lic_plt IS NOT NULL AND f_lic_plt > 0
	    THEN
			DELETE FROM iinvd
				WHERE lic_plt_id = f_lic_plt
				AND dc_id   = f_dc_id
				AND whse_id = f_whse_id

			IF SQLCA.SQLCODE < 0 
	        THEN
				LET m_msg = "group_pallets: DELETE iinvd failed. SQLCODE=",
							SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
								"EXIT: group_pallets") 
				RETURN TRUE
			END IF
			LET f_lic_plt = f_iinvd.lic_plt_id
		ELSE
			LET f_lic_plt = f_iinvd.lic_plt_id
		END IF
	END WHILE

	CLOSE c_iinvd

	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "group_pallets: CLOSE c_iinvd failed. SQLCODE=",
					SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
						"EXIT: group_pallets") 
		RETURN TRUE
	END IF

	IF f_iinvd.lic_plt_id IS NOT NULL
	AND f_iinvd.lic_plt_id > 0 
    THEN
		UPDATE iinvd SET	prod_qty = f_prod_qty,
			  				create_user = g_user.user_id,
			    			create_dtim = CURRENT YEAR TO SECOND,
							inv_pos_cat = f_new_inv_pos_cat
					WHERE	lic_plt_id = f_iinvd.lic_plt_id
					AND		dc_id = f_dc_id
					AND		whse_id = f_whse_id

		IF SQLCA.SQLCODE <> 0 
		THEN
			LET m_msg = "UPDATE iinvd failed. SQLCODE=",
						SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2],
						" :: - lic_plt_id = ", f_iinvd.lic_plt_id
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
							"EXIT: group_pallets") 
			RETURN TRUE
		END IF
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: group_pallets")

	RETURN FALSE

END FUNCTION

{*****************************************************************************}
FUNCTION check_snrng(f_dc_id, f_whse_id, f_lic_plt_id)

	DEFINE f_dc_id			LIKE iprod.dc_id
	DEFINE f_whse_id		LIKE iplas.whse_id
	DEFINE f_lic_plt_id		LIKE iinvd.lic_plt_id

	DEFINE f_lp_char   		CHAR(18)
	DEFINE f_lp_num    		INTEGER
	DEFINE f_snrng			RECORD LIKE snrng.*
	DEFINE f_abort          SMALLINT
	DEFINE f_error          CHAR(5)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: check_snrng")

	 LET f_abort = FALSE
 	 LET f_error = '     '

	LET f_lp_char   = f_lic_plt_id     --- Get the curr_pal_no out of the

    #the lic_plt_id with leading 0 is not a case since l_lic_plt_id is decimal.
    #take off last digit since the last digit is check digit.

    IF LENGTH(f_lp_char) <> 18                         
    THEN             
                                                           
## Zero padded number                                      
    LET f_lp_char = f_lic_plt_id USING "&&&&&&&&&&&&&&&&&&"
                                                           
## Take out the check digit                                
    LET f_lp_num = f_lp_char[9,17]                         
##  LET f_lp_num = f_lp_num / 10                           


		SELECT *
      	INTO f_snrng.*   
      	FROM snrng
	 	WHERE snrng.dc_id   = f_dc_id
	   	AND snrng.whse_id = f_whse_id
	   	AND snrng.drng_id = "LPP"
	   	AND (snrng.from_no <= f_lp_num
	   	AND  snrng.to_no >= f_lp_num)

		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "SELECT snrng fail. SQLCODE:", SQLCA.SQLCODE,
					" ISAM:", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: check_snrng")
			LET f_abort = TRUE
			LET f_error = "I9060"        #    > current no
		END IF

		IF SQLCA.SQLCODE = NOTFOUND
		THEN
			LET f_abort = TRUE
			LET f_error = "S0064"     # Not in valid range
		END IF
	END IF 

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: check_snrng")

	RETURN f_abort, f_error

END FUNCTION

{*****************************************************************************}
FUNCTION check_primary(f_dc_id, f_whse_id, f_prod_id, f_prdd_id)

	DEFINE f_dc_id			LIKE iprod.dc_id
	DEFINE f_whse_id		LIKE iplas.whse_id
	DEFINE f_prod_id		LIKE iprod.prod_id
	DEFINE f_prdd_id		LIKE iprdd.prdd_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: check_primary")

	SELECT iplas.*
      INTO m_ret_iplas.*
      FROM iplas
	 WHERE iplas.dc_id   = f_dc_id
	   AND iplas.whse_id = f_whse_id
	   AND iplas.prod_id = f_prod_id
	   AND iplas.prdd_id = f_prdd_id
	   AND iplas.lcus_id = "P"
	 ORDER BY iplas.dc_id, iplas.prod_id, iplas.prdd_id

	IF SQLCA.SQLCODE <> 0
	THEN
		IF SQLCA.SQLCODE <> NOTFOUND
		THEN
			LET m_msg = "SELECT iplas fail. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
		END IF
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: check_primary")
		RETURN TRUE
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: check_primary")

	RETURN FALSE

END FUNCTION

{*****************************************************************************}
FUNCTION run_sys_dptwy()

	DEFINE f_cmd			CHAR(200)
	DEFINE f_print_labels	CHAR(1)
	DEFINE f_loop			SMALLINT 
	DEFINE f_chkstatus		SMALLINT 


	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: run_sys_dptwy")

	CALL sh_rf_info_msg("I1139")	#-- run sys dptwy...	
	SLEEP 1
	##  Reset to rdst_id from V to P due to putaway job.
	#--------------------------------------------------
	BEGIN WORK
 	UPDATE irctd SET rdst_id    = "P" 
 	           WHERE dc_id      = m_scr_irctd_rec.dc_id
 	             AND whse_id    = m_scr_irctd_rec.rcv_whse_id
 	             AND lic_plt_id = m_scr_irctd_rec.lic_plt_id
 
 	IF SQLCA.SQLCODE <> 0
 	THEN
 		LET m_msg = "UPDATE irctd failed. SQLCODE=", SQLCA.SQLCODE,
 					" ISAM=", SQLCA.SQLERRD[2]
		ROLLBACK WORK
 		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL upd_irctd_error(m_scr_irctd_rec.lic_plt_id, 
								m_scr_irctd_rec.dc_id, 
								m_scr_irctd_rec.rcv_whse_id)
 	END IF

	COMMIT WORK

	# if ptwy_trace_flg = yes, report will print at end of process;
	# do not reprint labels (IRRLB) since IRRPA/IRRVA has done so.
	#--------------------------------------------------------------
	LET f_print_labels = "N"
	## LET m_ret_sasso.ptwy_trace_flg= "Y"	## use default from smasa

     LET f_cmd = "nohup IMPdptwy00.4ge ",
		 		"-u", g_user.user_id, " ",
 		 		"-t", m_ret_sasso.ptwy_trace_flg, " ",
		 		"-d", m_scr_irctd_rec.dc_id USING "<<<<<<<<<<&", " ",
		 		"-w", m_scr_irctd_rec.rcv_whse_id USING "<<<<<<<<<<&", " ",
 		 		"-o'", m_scr_irctd_rec.po_id CLIPPED, "' ",
		 		"-r", m_scr_irctd_rec.rcpt_id USING "<<<<<<<<<<&", " ",
		 		"-l", m_scr_irctd_rec.lic_plt_id
		 		                       USING "<<<<<<<<<<<<<<<<<&", " ",
		 		"-a", f_print_labels,
			 	" > /tmp/dptwy.err "

	CALL open_error_file()
	LET m_ignore = sh_elog_4gl(m_module,"%C%", f_cmd)
	CALL run_system_cmd(f_cmd)

	LET m_chkr_flg.ptwy = TRUE
		
	##  Reset to rdst_id to V from D due to putaway job.
	##  If this is not done, this plate will show up on the
	##  unverified count.
	#--------------------------------------------------
	BEGIN WORK
 	UPDATE irctd SET rdst_id    = "V" 
 	           WHERE dc_id      = m_scr_irctd_rec.dc_id
 	             AND whse_id    = m_scr_irctd_rec.rcv_whse_id
 	             AND lic_plt_id = m_scr_irctd_rec.lic_plt_id
 
 	IF SQLCA.SQLCODE <> 0
 	THEN
 		LET m_msg = "UPDATE irctd failed. SQLCODE=", SQLCA.SQLCODE,
 					" ISAM=", SQLCA.SQLERRD[2]
		ROLLBACK WORK
 		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL upd_irctd_error(m_scr_irctd_rec.lic_plt_id, 
								m_scr_irctd_rec.dc_id, 
								m_scr_irctd_rec.rcv_whse_id)
 	END IF

	UPDATE iinvd 
	SET cde_dt_warn_flg = m_sav_ysno
	WHERE lic_plt_id = m_scr_irctd_rec.lic_plt_id

	IF SQLCA.SQLCODE <> 0 
	OR SQLCA.SQLERRD[3] = 0 	
	THEN
		LET m_msg = "UPDATE iinvd failed. SQLCODE = ", SQLCA.SQLCODE,
			", ISAM = ", SQLCA.SQLERRD[2],
			", ROW PROCESSED = ", SQLCA.SQLERRD[3],
			", lic_plt_id = ", m_scr_irctd_rec.lic_plt_id
 		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	END IF

	COMMIT WORK

	--Can't print label until putaway has completed
	IF m_cstm_vrfy = "Y" THEN
		LET f_chkstatus = -1
		LET f_cmd = " ls -l $DSCBASE/dat/dptwy.",
			m_scr_irctd_rec.rcpt_id USING "<<<<<<<<<<&",
			" > /dev/null 2>&1 "

		LET f_loop = 0

		WHILE f_loop <= 50
			CALL run_system_cmd2(f_cmd) RETURNING f_chkstatus

			IF f_chkstatus <> 0
			THEN
				EXIT WHILE
			END IF
			LET f_loop = f_loop + 1
			SLEEP 1
		END WHILE

		IF f_chkstatus = 0
		THEN
			CALL sh_rf_err_msg("P0005")
			LET m_msg = "Currently running putaway", f_chkstatus,
				" Label won't print for LP: ", m_scr_irctd_rec.lic_plt_id,
				" PO: ", m_scr_irctd_rec.po_id,
				" RCPT: ", m_scr_irctd_rec.rcpt_id
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: run_sys_dptwy")
			RETURN
		END IF
	END IF 


	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: run_sys_dptwy")

END FUNCTION

{*****************************************************************************}
#   Find the number rows which have not been verified, no code date or
#      with a zero quantity.
{*****************************************************************************}
FUNCTION process_zero_out()

	DEFINE f_irctd	RECORD LIKE irctd.*
	DEFINE f_iprod	RECORD
		pwy_dte_ctl	LIKE iprod.pwy_dte_ctl
	END RECORD
	DEFINE f_idx   	INTEGER ## count of 0 qty
	DEFINE f_rcnt  	INTEGER	## count of 0 qty and unverified
	DEFINE f_scan  	INTEGER	## count of unscan pallets
	DEFINE f_dt_ct 	INTEGER
	DEFINE f_unscan_plt 	LIKE irctd.lic_plt_id
	DEFINE f_undate_plt 	LIKE irctd.lic_plt_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: process_zero_out")

	LET f_irctd.code_date = NULL
	LET f_iprod.pwy_dte_ctl = NULL
	LET f_unscan_plt = 0
	LET f_undate_plt = 0

	OPEN c_ver_irctd
	     USING m_ret_ipod.dc_id, m_scr_irctd_rec.rcpt_id,
		   m_scr_irctl_rec.whse_id,
	       m_ret_ipod.po_id, m_scr_irctd_rec.appt_id
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN c_ver_irctd fail. SQLCODE=", 
					SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: process_zero_out")
		RETURN TRUE, 0, 0, 0, f_unscan_plt, f_undate_plt
	END IF
		
	LET f_scan = 0
	LET f_rcnt = 0
	LET f_idx  = 0
	LET f_dt_ct = 0

	WHILE TRUE
		FETCH c_ver_irctd INTO f_irctd.dc_id, f_irctd.whse_id, f_irctd.po_id,
			f_irctd.pod_id, f_irctd.rdst_id, f_irctd.rct_qty, 
			f_irctd.receipt_user, f_irctd.code_date, f_irctd.lic_plt_id,
			f_iprod.pwy_dte_ctl

		IF SQLCA.SQLCODE = NOTFOUND 
		THEN
			EXIT WHILE
		END IF

		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "FETCH c_ver_irctd failed. SQLCODE=", SQLCA.SQLCODE, 
           	            " ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: process_zero_out")
			RETURN TRUE, 0, 0, 0, f_unscan_plt, f_undate_plt
		END IF
		
		IF f_iprod.pwy_dte_ctl = "Y"
			AND f_irctd.rct_qty > 0
			AND f_irctd.receipt_user = "IRRVH"
		THEN   
			IF f_irctd.code_date IS NULL
			THEN
				LET f_dt_ct = f_dt_ct + 1
				IF f_dt_ct = 1
				THEN
					LET f_undate_plt = f_irctd.lic_plt_id
				END IF
				EXIT WHILE
			END IF
		END IF

 		IF f_irctd.receipt_user <> "IRRVH"
 		THEN
			IF f_irctd.rct_qty > 0
			THEN
			LET f_scan = f_scan + 1
			IF f_scan = 1
			THEN
				LET f_unscan_plt = f_irctd.lic_plt_id
			END IF
 		END IF
 		END IF

 		IF f_irctd.rct_qty = 0
			OR f_irctd.receipt_user <> "IRRVH"
		THEN
			# save pallets with zero qty to delete later
			#-------------------------------------------
			LET f_idx = f_idx + 1

			LET m_arr_del_zero[f_idx].dc_id      = f_irctd.dc_id
			LET m_arr_del_zero[f_idx].whse_id    = f_irctd.whse_id
			LET m_arr_del_zero[f_idx].po_id      = f_irctd.po_id
			LET m_arr_del_zero[f_idx].pod_id     = f_irctd.pod_id
			LET m_arr_del_zero[f_idx].lic_plt_id = f_irctd.lic_plt_id

			# ... and only those that are truly not verified
			#-----------------------------------------------
			## IF f_irctd.rdst_id <> "V"
			IF f_irctd.receipt_user <> "IRRVH"
			AND f_irctd.rct_qty > 0		
			THEN
				LET f_scan = f_scan + 1
				IF f_scan = 1
				THEN
					LET f_unscan_plt = f_irctd.lic_plt_id
				END IF
			END IF
			IF f_irctd.rct_qty = 0
				AND f_irctd.receipt_user <> "IRRVH"
			THEN

# Mod - karena  10/4/99
			    UPDATE irctd SET rdst_id    = "V",
							receipt_user	= "IRRVH"
           		    WHERE dc_id    = f_irctd.dc_id
                 	AND whse_id    = f_irctd.whse_id
                 	AND lic_plt_id = f_irctd.lic_plt_id
                                                                   
    			IF SQLCA.SQLCODE <> 0                                          
    			THEN                                                           
        			LET m_msg = "UPDATE irctd failed. SQLCODE=", SQLCA.SQLCODE,
                    			" ISAM=", SQLCA.SQLERRD[2]                     
        			ROLLBACK WORK                                              
        			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)           
					CALL upd_irctd_error(f_irctd.lic_plt_id, 
											f_irctd.dc_id, f_irctd.whse_id)
			END IF

#				LET f_rcnt = f_rcnt + 1
# End of Mod - karen  10/4/99

			END IF

			IF f_idx > 500
			THEN
				EXIT WHILE
			END IF
		END IF

	END WHILE

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: process_zero_out")

	RETURN FALSE, f_idx, f_rcnt, f_scan, f_dt_ct, f_unscan_plt, f_undate_plt

END FUNCTION

{*****************************************************************************}
FUNCTION update_zero_out()

	DEFINE f_loop	INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: update_zero_out")
		
	FOR f_loop = 1 to 500
		IF m_arr_del_zero[f_loop].dc_id IS NULL THEN
			EXIT FOR
		END IF

		UPDATE irctd
		SET rct_qty = 0, catch_wgt = 0
			WHERE dc_id			= m_arr_del_zero[f_loop].dc_id
			  AND po_id			= m_arr_del_zero[f_loop].po_id
			  AND pod_id		= m_arr_del_zero[f_loop].pod_id
			  AND lic_plt_id	= m_arr_del_zero[f_loop].lic_plt_id
 	
		IF SQLCA.SQLCODE <> 0 THEN
			LET m_msg = "UPDATE irctd failed. SQLCODE=",
						SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			LET m_ignore = sh_mlog_4gl( g_std_func_chan, m_module,"%C%",
										"EXIT: update_zero_out")
			CALL upd_irctd_error(m_arr_del_zero[f_loop].lic_plt_id, 
									m_arr_del_zero[f_loop].dc_id, 
									m_arr_del_zero[f_loop].whse_id)
		END IF

		UPDATE iinvd 
		 SET prod_qty   = 0 
		 WHERE dc_id     = m_arr_del_zero[f_loop].dc_id
		  AND whse_id    = m_arr_del_zero[f_loop].whse_id
		  AND lic_plt_id = m_arr_del_zero[f_loop].lic_plt_id

		IF SQLCA.SQLCODE <> 0 THEN
			LET m_msg = "UPDATE iinvd failed. SQLCODE=",
						SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl( g_std_func_chan, m_module,"%C%",
										"EXIT: update_zero_out")
			RETURN TRUE
		END IF
	
		UPDATE aothd SET prod_qty   = 0, 
						 replen_qty	= 0
   	      	  	   WHERE dc_id      	 = m_arr_del_zero[f_loop].dc_id
      	    	     AND phys_whse_id    = m_arr_del_zero[f_loop].whse_id
       	    	     AND lic_plt_id 	 = m_arr_del_zero[f_loop].lic_plt_id
	
    	IF SQLCA.SQLCODE <> 0
    	THEN
	    	LET m_msg = "UPDATE aothd failed. SQLCODE=",
               	    	SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
	    	LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		  	CALL sh_rf_cmd_msg("I9060")	#-- system failure
		   	SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			   				 "EXIT: update_zero_out")
		   	RETURN TRUE
	   	END IF
	END FOR

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: update_zero_out")

	RETURN FALSE

END FUNCTION

{*****************************************************************************}
FUNCTION delete_zero_out()

	DEFINE f_loop	INTEGER
	DEFINE f_iinvd      		RECORD LIKE iinvd.*
	DEFINE f_iplas      		RECORD LIKE iplas.*
	DEFINE f_iloc       		RECORD LIKE iloc.*
	DEFINE f_status				INTEGER
	DEFINE f_message_id	 		LIKE smsgs.message_id
	DEFINE f_pre_po_id    		LIKE ipod.po_id    
	DEFINE f_pre_pod_id    		LIKE ipod.pod_id    
	DEFINE f_ret_status			INTEGER
	DEFINE f_sum_rct_qty		INTEGER
	DEFINE f_plas_ct			INTEGER
	DEFINE f_prod_id		LIKE iinvd.plas_prod_id
	DEFINE track_coobio		INTEGER

    DEFINE f_sql_stmt       CHAR(2048)
    DEFINE ff_lcus_id       LIKE iplas.lcus_id
    DEFINE f_pos_cat        LIKE iinvd.inv_pos_cat

    INITIALIZE ff_lcus_id   TO NULL
    INITIALIZE f_pos_cat    TO NULL
    INITIALIZE f_sql_stmt   TO NULL

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: delete_zero_out")

	LET f_pre_po_id  = m_zero_po_id
	##rld... LET f_pre_po_id  = "0"
	LET f_pre_pod_id = "0"
	FOR f_loop = 1 to 500
		IF m_arr_del_zero[f_loop].dc_id IS NULL
		THEN
			EXIT FOR
		END IF

		## CR 10681
		## Create the irctl sent back to host with qty = 0.
		IF f_pre_po_id   = m_arr_del_zero[f_loop].po_id
		AND f_pre_pod_id   = m_arr_del_zero[f_loop].pod_id
		THEN
            UPDATE irctd
             SET catch_wgt = 0
             WHERE  dc_id   = m_arr_del_zero[f_loop].dc_id
                AND po_id   = m_arr_del_zero[f_loop].po_id
                AND pod_id  = m_arr_del_zero[f_loop].pod_id
                AND lic_plt_id = m_arr_del_zero[f_loop].lic_plt_id
                AND rct_qty = 0
            IF SQLCA.SQLCODE <> 0 THEN
                LET m_msg = "UPDATE irctd failed. SQLCODE=",
                            SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
                LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
                    "EXIT: delete_zero_out")
				CALL upd_irctd_error(m_arr_del_zero[f_loop].lic_plt_id, 
										m_arr_del_zero[f_loop].dc_id, 
										m_arr_del_zero[f_loop].whse_id)
            END IF
		ELSE
			LET f_pre_po_id    = m_arr_del_zero[f_loop].po_id
			LET f_pre_pod_id   = m_arr_del_zero[f_loop].pod_id
			## If the qty on irctd for the same pod is > 0, do not 
			##    send any 0 qty irctl to host.
			LET f_sum_rct_qty = 0
			SELECT sum(rct_qty)
			  INTO f_sum_rct_qty
			  FROM irctd
   	      	  WHERE dc_id   = m_arr_del_zero[f_loop].dc_id
      	    	AND po_id   = m_arr_del_zero[f_loop].po_id
       	    	AND pod_id  = m_arr_del_zero[f_loop].pod_id

			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "SELECT irctd failed. SQLCODE=",
							SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: delete_zero_out")
				RETURN 
			END IF

			IF f_sum_rct_qty = 0	## no partial receiving. keep this 0 pallet
			THEN
				CALL insert_irctl(m_scr_irctd_rec.dc_id,
								  m_arr_del_zero[f_loop].whse_id,
								  m_arr_del_zero[f_loop].lic_plt_id,0)
						RETURNING f_ret_status
				IF f_ret_status = TRUE
				THEN
					ROLLBACK WORK
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: delete_zero_out")
					RETURN 2
				END IF
			ELSE	## delete this 0 qty pallet
                UPDATE irctd
                 SET catch_wgt = 0
                 WHERE  dc_id   = m_arr_del_zero[f_loop].dc_id
                    AND po_id   = m_arr_del_zero[f_loop].po_id
                    AND pod_id  = m_arr_del_zero[f_loop].pod_id
                    AND lic_plt_id = m_arr_del_zero[f_loop].lic_plt_id
                    AND rct_qty = 0
                IF SQLCA.SQLCODE <> 0 THEN
                    LET m_msg = "UPDATE irctd failed. SQLCODE=",
                                SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                    LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
                    CALL sh_rf_cmd_msg("I9060") #-- system failure
                    SLEEP 2
                    LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
                        "EXIT: delete_zero_out")
					CALL upd_irctd_error(m_arr_del_zero[f_loop].lic_plt_id, 
											m_arr_del_zero[f_loop].dc_id, 
											m_arr_del_zero[f_loop].whse_id)
                END IF
			END IF
		END IF

    ## MATT ROGERS PMT TICKET # MROS-4YPPSC, DO NOT ALLOW IRRVH TO DIS-ASSOCIATE A PRODUCT 
    ## FROM A PRIMARY PICK (PP) LOCATION DURING RECEIVING.
    ## BEGIN -----

        LET f_sql_stmt =
        " SELECT iinvd.inv_pos_cat, iinvd.plas_prod_id, iplas.lcus_id ",
        " FROM iinvd, iplas ",
        " WHERE iplas.dc_id = iinvd.dc_id ",
        " AND iplas.whse_id = iinvd.whse_id ",
        " AND iplas.plas_id = iinvd.plas_id ",
        " AND iinvd.po_id = ? ",
        " AND iinvd.lic_plt_id = ? "

        PREPARE prim_pick_loc FROM f_sql_stmt
        IF SQLCA.SQLCODE <> 0 THEN
            LET m_msg = "PREPARE prim_pick_lock failed. SQLCODE=", SQLCA.SQLCODE,
                " ISAM=", SQLCA.SQLERRD[2]
            LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
            RETURN TRUE
        END IF

        DECLARE c_pp_loc CURSOR FOR prim_pick_loc

        OPEN c_pp_loc USING
            m_arr_del_zero[f_loop].po_id, m_arr_del_zero[f_loop].lic_plt_id

        IF SQLCA.SQLCODE <> 0
        THEN
            LET m_msg = "OPEN c_pp_loc failed. SQLCODE=",
                SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
            LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
            RETURN
        END IF


		INITIALIZE f_pos_cat TO NULL
		INITIALIZE ff_lcus_id TO NULL

        FETCH c_pp_loc INTO f_pos_cat, f_prod_id, ff_lcus_id

        IF SQLCA.SQLCODE < 0
        THEN
          LET m_msg = "FETCH c_pp_loc failed. SQLCODE=",
          	SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2], " Lic.Plt = ",
          	m_arr_del_zero[f_loop].lic_plt_id
          LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)        
          CALL sh_rf_err_msg("R4999") -- systems error             
          RETURN
        END IF

	CALL check_track_and_trace(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.whse_id, f_prod_id) 
                                   RETURNING f_ret_status
	IF f_ret_status = -1
	THEN
		LET m_msg = "delete_zero_out(): Bad return from check_track_and_trace().",
			" dc_id=", m_scr_irctd_rec.dc_id,
			" prod_id=", f_prod_id
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"EXIT: delete_zero_out")
		RETURN
	END IF
	IF f_ret_status
	THEN
		LET track_coobio = TRUE
	ELSE
		LET track_coobio = FALSE
	END IF

	IF f_pos_cat = "P" and ff_lcus_id = "P"  -- this is a Primary Pick Location.
        THEN
            ## we do not want to delete the iplas PP location for a 0(zero) verified
            ## product, the product was assigned to this location in IIPAA for
            ## a reason. When a BOMB occurs it will crete a let-down to replenish
            ## this location and will be picked for an order. To delete the relationship
            ## between the PP location and the product use the "Delete" option on the
            ## ring menu in IIPAA.(Note: Rotating Pick slots must have a PP loc.)
            ##
            ## However we do not want to create a work-unit for a 0(zero) verified
            ## pallet so delete the aothd record for this lic_plt.

            DELETE FROM aothd
                WHERE lic_plt_id        = m_arr_del_zero[f_loop].lic_plt_id
                    AND dc_id           = m_scr_irctd_rec.dc_id
                    AND phys_whse_id    = m_scr_irctd_rec.whse_id

            IF SQLCA.SQLCODE <> 0
            THEN
                LET m_msg = "DELETE aothd FAILED, for c_pp_loc. SQLCODE=",
                    SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
            END IF

            DELETE FROM iinvd 
                WHERE lic_plt_id        = m_arr_del_zero[f_loop].lic_plt_id
                    AND dc_id           = m_scr_irctd_rec.dc_id
                    AND whse_id    = m_scr_irctd_rec.whse_id

            IF SQLCA.SQLCODE <> 0
            THEN
                LET m_msg = "DELETE iinvd FAILED, for c_pp_loc. SQLCODE=",
                    SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
            END IF

		IF track_coobio
		THEN
			IF f_pos_cat = "P" AND 
				(ff_lcus_id = "P" OR ff_lcus_id = "A")
			THEN
				CALL del_iinvq(m_scr_irctd_rec.dc_id,
						m_scr_irctd_rec.whse_id,
						m_arr_del_zero[f_loop].lic_plt_id)
						RETURNING f_ret_status
				IF f_ret_status 
				THEN
					LET m_msg = "delete_zero_out(): Bad return from del_iinvq().",
						" dc=", m_scr_irctd_rec.dc_id, 
						" whse=", m_scr_irctd_rec.whse_id,
						" lic_plt=", m_arr_del_zero[f_loop].lic_plt_id
					LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
							"EXIT: delete_zero_out")
					RETURN
				END IF
			END IF
		END IF

        ELSE        -- it is not a PP location so we can delete the relationship

## END -----
## MATT ROGERS END PMT TICKET # MROS-4YPPSC

			####################################################################
			##  Delete iinvd.
			##  If no iinvd is found, skip this code.
			##  IF there is an iplas row found for this iinvd, call 
			##  add_delete_iinvd to handle iinvd, iplas and iloc.
			##  IF no iplas row found, only delete iinvd.  i.e. two pallets were
			##  put into the same ilocation.  When both pallets received 0 qty,
			##  delete the first pallet with the corresponding iplas and iloc.
			##  By the time to delete the second pallet, there is no iplas 
			##  for this second pallet.
			####################################################################
			INITIALIZE f_iinvd.* TO NULL
			SELECT iinvd.*
			INTO f_iinvd.*
			FROM iinvd
			WHERE lic_plt_id = m_arr_del_zero[f_loop].lic_plt_id
			AND dc_id      = m_arr_del_zero[f_loop].dc_id
			AND whse_id    = m_arr_del_zero[f_loop].whse_id

			-- doing nothing on not found
			IF SQLCA.SQLCODE < 0
			THEN
				LET m_msg = "SELECT iinvd failed. SQLCODE:",
					SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"EXIT: delete_zero_out")
				RETURN
			END IF

			IF SQLCA.SQLCODE = 0
			THEN
				LET f_plas_ct = 0
				SELECT COUNT(*)
			  	INTO f_plas_ct 
			  	FROM iplas
				WHERE iplas.plas_id = f_iinvd.plas_id

				IF SQLCA.SQLCODE <> 0
				THEN
					LET m_msg = "SELECT iplas failed. SQLCODE=",
								SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%", 
						"EXIT: delete_zero_out")
					RETURN 
				END IF

				IF f_plas_ct = 0
				OR f_plas_ct IS NULL
				THEN
					DELETE FROM iinvd 
			  		WHERE dc_id    = m_arr_del_zero[f_loop].dc_id
					AND whse_id    = m_arr_del_zero[f_loop].whse_id
					AND lic_plt_id = m_arr_del_zero[f_loop].lic_plt_id
		 
					IF SQLCA.SQLCODE <> 0
					THEN
						LET m_msg = "DELETE iinvd failed. SQLCODE=",
									SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						CALL sh_rf_cmd_msg("I9060")	#-- system failure
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%", 
							"EXIT: delete_zero_out")
						RETURN 
					END IF

					IF track_coobio
					THEN
						IF f_pos_cat = "P" AND 
							(ff_lcus_id = "P" OR ff_lcus_id = "A")
						THEN
							CALL del_iinvq(m_scr_irctd_rec.dc_id,
								m_scr_irctd_rec.whse_id,
								m_arr_del_zero[f_loop].lic_plt_id)
								RETURNING f_ret_status
							IF f_ret_status 
							THEN
								LET m_msg = "delete_zero_out(): Bad return from del_iinvq().",
									" dc=", m_scr_irctd_rec.dc_id, 
									" whse=", m_scr_irctd_rec.whse_id,
									" lic_plt=", m_arr_del_zero[f_loop].lic_plt_id
								LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
								CALL sh_rf_cmd_msg("I9060")	#-- system failure
								SLEEP 2
								LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
									"EXIT: delete_zero_out")
								RETURN
							END IF
						END IF
					END IF

				ELSE
					## delete the iinvd which links to iplas and iloc
					INITIALIZE f_iplas.* TO NULL
					INITIALIZE f_iloc.* TO NULL
					LET f_message_id	 		= ' '
					LET f_status = FALSE

					CALL add_del_iinvd("D", f_iinvd.*, f_iplas.*, f_iloc.*,
						"Y", g_user.user_id, "IRRVH", "Y") RETURNING 
						f_status, f_iinvd.*, f_iplas.*, f_iloc.*, f_message_id
					IF f_status <> 0
					THEN
						LET m_msg = "Bad Return from add_del_iinvd"
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						CALL sh_rf_cmd_msg("I9060")	#-- system failure
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
							"EXIT: delete_zero_out")
						RETURN
					END IF
				END IF 	## f_plas_ct = 0
			END IF ## sqlca = 0, find iinvd row.

			DELETE FROM aothd 
       		WHERE 	lic_plt_id 	 = m_arr_del_zero[f_loop].lic_plt_id
   	    	AND 	dc_id      	 = m_arr_del_zero[f_loop].dc_id
      		AND 	phys_whse_id = m_arr_del_zero[f_loop].whse_id
	
    		IF SQLCA.SQLCODE = 100
    		THEN
			-- doing nothing on not found
			ELSE
    		IF SQLCA.SQLCODE <> 0
    		THEN
				LET m_msg = "DELETE aothd failed. SQLCODE=",
					SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: delete_zero_out")
				RETURN 
			END IF
			END IF
		END IF  --- MATT ROGERS ADDED END IF FOR PMT TICKET # MROS-4YPPSC
	END FOR

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: delete_zero_out")

END FUNCTION

{**************************************************************************}
{ It is important to use the warehouse level unit of receipt to determine  }
{ which way to calculate quantities (in cases or shipping units).          }
{**************************************************************************}
FUNCTION lkp_whse_info(f_dc_id, f_whse_id)

	DEFINE f_dc_id		LIKE swhse.dc_id
	DEFINE f_whse_id	LIKE swhse.whse_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"ENTER: lkp_whse_info")

	CALL lkp_swhse(f_dc_id, f_whse_id)
		RETURNING m_ignore, m_ret_swhse.*
	CALL lkp_swttm(f_dc_id, f_whse_id)
    	RETURNING m_ignore, m_ret_swttm.*

	LET m_catch_wgt_num = m_ret_swhse.avg_wgt_var_pct
	LET m_qty_ord_num   = m_ret_swhse.avg_qty_var_pct

	CALL lkp_swhrc(f_dc_id, f_whse_id)
		 RETURNING m_ignore, m_ret_swhrc.*

	## CR 11509 - get the default value
	CALL lkp_surcp(m_ret_swhse.urcp_id) 
		 RETURNING m_ignore, m_ret_surcp.*
	LET m_swhse_urcp_id = m_ret_surcp.urcp_id

	# if the m_urcp_id is not null, then use the value throughout
	# program so that quantities are consistently calculated the 
	# same way - if it is null, this is the time to set it. -pvg
	#------------------------------------------------------------
	IF m_urcp_id = " "
	OR m_urcp_id IS NULL
	THEN
		LET m_urcp_id = m_ret_surcp.urcp_id
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"EXIT: lkp_whse_info")

END FUNCTION

{**************************************************************************}
{ Modularized the retrieval of po and product information.                 }
{**************************************************************************}
FUNCTION proc_po_prod(f_from_field)

	DEFINE f_from_field     CHAR(1)	#-- called from (U)pc or (P)rod field

	DEFINE f_ret_status     INTEGER
	DEFINE f_ret_choice     INTEGER
	DEFINE f_upc_id			LIKE iupcd.upc_id
	DEFINE f_sql_stmt		STRING	
	DEFINE f_skip			SMALLINT 
	
	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"ENTER: proc_po_prod")

	LET f_ret_status = FALSE
	LET f_skip = FALSE 

	WHILE TRUE
		CASE f_from_field
		WHEN "P"
			IF f_skip = FALSE THEN 
				CALL next_blank("P")	
			END IF 

			CALL get_po_prod(m_scr_irctd_rec.dc_id,
				         	 m_scr_irctd_rec.rcv_whse_id, 
				         	 m_scr_irctd_rec.appt_id,
				         	 m_scr_irctd_rec.prod_id)
	               RETURNING f_ret_status, f_ret_choice

			LET f_skip = FALSE 
		WHEN "U"
			CALL next_blank("U")
			CASE
				WHEN LENGTH(m_scr_irctd_rec.upc_id) = 12
					LET f_upc_id = m_scr_irctd_rec.upc_id [2, 11]
						 
				WHEN LENGTH(m_scr_irctd_rec.upc_id) = 13 
					LET f_upc_id = m_scr_irctd_rec.upc_id[3, 12]
					
				WHEN LENGTH(m_scr_irctd_rec.upc_id) = 14
					LET f_upc_id = m_scr_irctd_rec.upc_id 
					
			END CASE
			
	
			CALL get_upc_prod(m_scr_irctd_rec.dc_id,
				m_scr_irctd_rec.rcv_whse_id,
				m_scr_irctd_rec.appt_id,
				f_upc_id)
			RETURNING f_ret_status, f_ret_choice
						
			IF LENGTH(m_scr_irctd_rec.upc_id) = 5
			THEN
				CALL get_upc_prod_ucn(m_scr_irctd_rec.dc_id,
					m_scr_irctd_rec.whse_id,
					m_scr_irctd_rec.appt_id,
					m_scr_irctd_rec.upc_id)
					RETURNING f_ret_status, f_ret_choice
			END IF

			IF f_ret_status = 0
			AND f_ret_choice = 1
			THEN
				EXIT WHILE
			END IF
		END CASE 

    	IF f_ret_status = FALSE
    	THEN
			IF f_ret_choice = 0
			THEN
				CASE f_from_field
					WHEN "P"
						CALL sh_rf_cmd_msg("I9090")	#-- prod on wrong po
						SLEEP 1
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,
							"%C%", "EXIT: proc_po_prod")
						RETURN TRUE, 0

					WHEN "U"
						CALL lkp_iupc(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.prod_id) 
							 RETURNING f_ret_status, m_ret_iupc.*

						IF f_ret_status = FALSE
						THEN
							CALL sh_rf_cmd_msg("I9058")	#-- product not on po
							SLEEP 1
							LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,
								"%C%", "EXIT: proc_po_prod")
							RETURN TRUE, 0
				    	END IF     
						IF f_ret_status = TRUE
						THEN
							CALL sh_rf_cmd_msg("I9070")	#-- upc not found
							SLEEP 1
							LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,
								"%C%", "EXIT: proc_po_prod")
							RETURN TRUE, 0
						END IF

				END CASE
			END IF

			# once product is retrieved, go thru while loop
			# again to check if product is in multiple po's
			#-----------------------------------------------
			IF f_from_field = "U"
			THEN
				IF m_cstm_vrfy = "Y"
				AND m_scr_irctd_rec.upc_id IS NOT NULL
				AND m_multi_prod_upc = TRUE 
				THEN
					CALL sel_upc(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.whse_id,
								m_scr_irctd_rec.appt_id,  m_scr_irctd_rec.upc_id)
					RETURNING f_ret_status, f_ret_choice

					LET m_scr_irctd_rec.prod_id = m_scr_prod_sel_dtl[f_ret_choice].prod_id
					LET f_skip = TRUE
					LET m_multi_prod_upc = FALSE 
				ELSE 
					LET m_scr_irctd_rec.upc_id = m_arr_prod_sel_dtl[f_ret_choice].upc_id   
				END IF 

				LET f_from_field = "P"
				CONTINUE WHILE
			END IF 

			# found products in multiple po(s) 
			#---------------------------------
			IF m_mult_po_flg
			OR m_multi_prod_upc 
			THEN
				IF m_mult_po_flg THEN 
					# let user choose which po
					#-------------------------
					CALL sel_po(m_scr_irctd_rec.prod_id,
								m_scr_irctd_rec.prdd_id,
			   					m_scr_irctd_rec.sdesc)
			   	  	RETURNING f_ret_status, f_ret_choice

					IF f_ret_status
					THEN
						LET m_scr_irctd_rec.upc_id
											= m_scr_irctd_null.upc_id
						LET m_scr_irctd_rec.prod_id
											= m_scr_irctd_null.prod_id
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
							"EXIT: proc_po_prod")
						RETURN TRUE, 0      
					END IF
				END IF

        		LET m_ignore = proc_prod_prdd(f_ret_choice) 
				LET m_multi_prod_upc = FALSE

			END IF  

			# cannot process (W)arehouse (T)ransfers...
			#------------------------------------------
			IF m_arr_po_sel_dtl[f_ret_choice].po_type = "WT" AND  m_sacvv_value  <> "Y"
			THEN
				CALL sh_rf_cmd_msg("I1190") #-- invalid po type
				SLEEP 2
				LET m_scr_irctd_rec.upc_id = m_scr_irctd_null.upc_id
				LET m_scr_irctd_rec.prod_id = m_scr_irctd_null.prod_id
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
					"EXIT: proc_po_prod")
				RETURN TRUE, 0      
			END IF
		END IF 

		EXIT WHILE

    END WHILE

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"EXIT: proc_po_prod")

	RETURN f_ret_status, f_ret_choice

END FUNCTION

{**************************************************************************}
{ Modularized the retrieval of product detail information.                 }
{**************************************************************************}
FUNCTION proc_prod_prdd(f_po_choice)

	DEFINE f_po_choice      INTEGER

	DEFINE f_ret_status     INTEGER
	DEFINE f_ret_choice     INTEGER
	
	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"ENTER: proc_prod_prdd")

	IF f_po_choice IS NOT NULL
	THEN
		CALL lkp_ipod(m_scr_irctd_rec.dc_id, 
					  m_scr_po_sel_dtl[f_po_choice].po_id,
				      m_arr_po_sel_dtl[f_po_choice].pod_id)
		    RETURNING m_ignore, m_ret_ipod.*

		LET m_scr_irctd_rec.prod_id = m_ret_ipod.prod_id
		LET m_scr_irctd_rec.po_id   = m_ret_ipod.po_id
	END IF

	LET f_ret_status = FALSE

	CALL get_prdd_dtl(m_scr_irctd_rec.dc_id,
  					  m_scr_irctd_rec.rcv_whse_id,
  					  m_scr_irctd_rec.appt_id,
		  			  m_scr_irctd_rec.prod_id)
			RETURNING f_ret_status, f_ret_choice

	IF f_ret_status = FALSE
	THEN
		CASE
			WHEN f_ret_choice = 0
				CALL sh_rf_cmd_msg("I9091") #-- prod dtl rqd
				SLEEP 1
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
					"EXIT: proc_prod_prdd")
				RETURN TRUE
							
			WHEN f_ret_choice = 1
				EXIT CASE

			OTHERWISE
				CALL sel_prdd(m_scr_irctd_rec.dc_id,
		  					  m_scr_irctd_rec.rcv_whse_id,
		  					  m_scr_irctd_rec.appt_id,
		  					  m_scr_irctd_rec.prod_id,
		  					  m_ret_ipod.unit_ship_cse)
					RETURNING f_ret_status, f_ret_choice
				
				IF f_ret_status 
				THEN
					LET m_scr_irctd_rec.prod_id = m_scr_irctd_null.prod_id
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
						"EXIT: proc_prod_prdd")
					RETURN TRUE
				END IF
			END CASE

			CALL move_prdd_data(f_ret_choice)

			CALL move_po_data() RETURNING f_ret_status
			IF f_ret_status
			THEN
				LET m_scr_irctd_rec.prod_id = m_scr_irctd_null.prod_id
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
					"EXIT: proc_prod_prdd")
				RETURN TRUE
			END IF

			CALL get_sel_loc()
    END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"EXIT: proc_prod_prdd")

	RETURN f_ret_status

END FUNCTION


{**********************************************************************}
{* DISPLAY NON-VERIFIED LICENSE PLATES  - PIGWIG   karena  9/30/99    *}
{**********************************************************************}
FUNCTION display_non_ver_lic()                                 
                                                               
    DEFINE f_array  ARRAY[500] OF RECORD                       
        lic_plt_id  LIKE irctd.lic_plt_id                      
    END RECORD                                                 
    DEFINE f_count          INTEGER                            
    DEFINE f_msg            CHAR(80)                           
                                                               
    LET f_msg = "Entering display_non_ver_lic"                 
    CALL sh_mlog_4gl( g_std_func_chan, m_module,"%C%", f_msg )
        RETURNING m_ignore                                     
                                                                         
    LET f_count = 0                                                      
    DECLARE f_lic_cur CURSOR FOR p_lic_unver                             
    IF SQLCA.SQLCODE <> 0 THEN                                           
        LET m_msg = "Declare f_lic_cur failed, SQLCODE = ", SQLCA.SQLCODE
        CALL sh_elog_4gl( m_module,"%C%", m_msg ) RETURNING m_ignore    
        CALL sh_mlog_4gl( g_std_func_chan, m_module,"%C%",              
            "Exit display_non_ver_lic" ) RETURNING m_ignore              
        RETURN                                                           
    END IF                                                               
                                                                         
    OPEN f_lic_cur USING                                                 
        m_scr_irctd_rec.dc_id, m_scr_irctd_rec.rcpt_id,                  
        m_scr_irctd_rec.whse_id, m_ret_ipod.po_id                        
    IF SQLCA.SQLCODE < 0 THEN                                            
        LET m_msg = "Open f_lic_cur failed, SQLCODE = ", SQLCA.SQLCODE   
        CALL sh_elog_4gl( m_module,"%C%", m_msg ) RETURNING m_ignore    
        CALL sh_mlog_4gl( g_std_func_chan, m_module,"%C%",              
            "Exit display_non_ver_lic" ) RETURNING m_ignore              
        RETURN                                                           
    END IF                                                               
                                                                           
    WHILE TRUE                                                             
        LET f_count = f_count + 1                                          
        IF f_count > 500 THEN                                              
            EXIT WHILE                                                     
        END IF                                                             
        FETCH f_lic_cur INTO f_array[f_count].lic_plt_id                   
        IF SQLCA.SQLCODE < 0 THEN                                          
            LET m_msg = "Fetch f_lic_cur failed, SQLCODE = ", SQLCA.SQLCODE
            CALL sh_elog_4gl( m_module,"%C%", m_msg ) RETURNING m_ignore  
            CALL sh_mlog_4gl( g_std_func_chan, m_module,"%C%",            
                "Exit display_non_var_lic" ) RETURNING m_ignore            
            RETURN                                                         
        END IF                                                             
        IF SQLCA.SQLCODE = NOTFOUND THEN                                   
            LET f_count = f_count - 1                                      
            EXIT WHILE                                                     
        END IF                                                             
    END WHILE                                                              
                                                                           
    CLOSE f_lic_cur                                                        
                                                        
    OPEN WINDOW w_list_lic AT 1,1 WITH FORM m_nover_form
        ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
            MESSAGE LINE FIRST, FORM LINE FIRST, BOLD ) 
    CALL set_count(f_count)                             
    MESSAGE "<DEL> EXIT"                                
    DISPLAY ARRAY f_array TO s_lic_plt.*                
        ATTRIBUTE (NORMAL)                              
        ON KEY (ESCAPE, INTERRUPT) EXIT DISPLAY         
    END DISPLAY                                         
    CLOSE WINDOW w_list_lic                             
                                                        
    CALL sh_mlog_4gl( g_std_func_chan, m_module,"%C%", 
        "Exit display_non_ver_lic" ) RETURNING m_ignore 

END FUNCTION                                            

{**************************************************************************}
{**************************************************************************}
FUNCTION kill_mpp()

	DEFINE	f_ret_choice	CHAR(1)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: kill_mpp")

	OPEN c_count_mpp
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN c_count_mpp failed. SQLCODE=",
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%", 
			"EXIT: kill_mpp")
		RETURN
	END IF

	FETCH c_count_mpp
	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "FETCH c_count_mpp failed. SQLCODE=",
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%", 
			"EXIT: kill_mpp")
		RETURN
	ELSE 
		IF SQLCA.SQLCODE = 100
		THEN
			RETURN
		END IF
	END IF

	# a record was found

	CALL sh_rf_ysno_msg("I1542","N") RETURNING m_ignore, f_ret_choice
	IF f_ret_choice = "Y"
	THEN

		EXECUTE p_upd_aothd USING m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.lic_plt_id
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "EXECUTE upd_aothd failed. SQLCODE=",
				SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%", 
				"EXIT: kill_mpp")
			RETURN
		END IF

		EXECUTE p_upd_iinvd USING m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.lic_plt_id
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "EXECUTE upd_aothd failed. SQLCODE=",
				SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%", 
				"EXIT: kill_mpp")
			RETURN
		END IF

		EXECUTE p_upd_irctd USING m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.rcv_whse_id,
									m_scr_irctd_rec.lic_plt_id
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "EXECUTE upd_irctd failed. SQLCODE=",
				SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%", 
				"EXIT: kill_mpp")
			RETURN
		END IF
	END IF -- ret_choice = "Y"

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: kill_mpp")

END FUNCTION -- kill_mpp()

{**************************************************************************}
# This function is used to create the file /tmp/dpwty.err #
# with the correct access.  We are having a problem when  #
# some people create the file by running the program, and #
# their user group is different than most other peoples.  #
# This function will change the permisions on the file to #
# allow everyone access to it.                        s.c.#
{**************************************************************************}
FUNCTION open_error_file()

	DEFINE f_cmd          char(255)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: open_error_file") 

	LET f_cmd = "touch /tmp/dptwy.err >/dev/null 2>/dev/null"

	CALL run_system_cmd(f_cmd)

	-------------------------------------------------------
	# This is the command that actually does what we want.#
	# The re-direction is just in case this command blows.#
	# If the current user is not the owner of this file,  #
	# then the command will fail.  However, once this file#
	# is created once through this process the permisions #
	# will be o.k.  All we need to do is make sure that   #
	# every program that calls the putaway does this song #
	# and dance, and then everyone will be able to access #
	# this file.                                          #
	--------------------------------------------------s.c.-
	LET f_cmd = "chmod 777 /tmp/dptwy.err >/dev/null 2>/dev/null"

	CALL run_system_cmd(f_cmd)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: open_error_file")

END FUNCTION

{***************************************************************************}
{input chep data until user presses the delete or excape key}
{***************************************************************************}
FUNCTION input_chep()

	DEFINE f_abort			INTEGER
	DEFINE f_count			INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: input_chep")

	LET g_chosen	= TRUE
	LET f_abort		= FALSE

	WHILE TRUE
		INPUT	m_cont_rec.cnty_id,
			 	m_cont_rec.trans_qty,
				m_cont_rec.exp_qty
		WITHOUT DEFAULTS FROM
				s_cont_rec.cnty_id,
				s_cont_rec.trans_qty,
				s_cont_rec.exp_qty

			BEFORE INPUT
				LET m_cont_rec.* = m_n_cont_rec.*
				LET m_cnty_id = NULL
				CLEAR FORM
				LET m_cont_rec.csvn_id = m_ret_ivend.vend_id
				#DISPLAY m_cont_rec.csvn_id TO s_cont_rec.csvn_id

			BEFORE FIELD cnty_id
				CALL sh_rf_cmd_msg("I9956")
				DISPLAY m_cont_rec.cnty_id TO s_cont_rec.cnty_id
					ATTRIBUTE(REVERSE)

			BEFORE FIELD trans_qty
				CALL sh_rf_cmd_msg("I9957")
				DISPLAY m_cont_rec.trans_qty TO s_cont_rec.trans_qty
					ATTRIBUTE(REVERSE)

			BEFORE FIELD exp_qty
				CALL sh_rf_cmd_msg("I9958")
				DISPLAY m_cont_rec.exp_qty TO s_cont_rec.exp_qty
					ATTRIBUTE(REVERSE)

			ON KEY (CONTROL-P)
				CALL spprtscr()		--print screen

			ON KEY (ESCAPE, INTERRUPT, DELETE)
				LET int_flag	= FALSE
				LET g_chosen	= FALSE
				LET f_abort		= TRUE
				EXIT INPUT

			AFTER FIELD cnty_id
				DISPLAY m_cont_rec.cnty_id TO s_cont_rec.cnty_id
					ATTRIBUTE(NORMAL)

				IF m_cont_rec.cnty_id IS NOT NULL
				THEN
					CALL val_icnty(m_cont_rec.cnty_id)
						RETURNING f_abort, m_ret_icnty.*

					IF f_abort = TRUE
					THEN
						CALL sh_rf_cmd_msg("I9960")
						SLEEP 2
						LET f_abort = FALSE
						NEXT FIELD s_cont_rec.cnty_id
					END IF

					LET m_cnty_id = m_ret_icnty.cnty_id
					LET m_cont_rec.cnty_id = m_ret_icnty.icnty_user_val
					DISPLAY m_cont_rec.cnty_id TO s_cont_rec.cnty_id
						ATTRIBUTE(NORMAL)

				END IF

			AFTER FIELD trans_qty
				DISPLAY m_cont_rec.trans_qty TO s_cont_rec.trans_qty
					ATTRIBUTE(NORMAL)

				IF m_cont_rec.trans_qty IS NOT NULL
				AND m_cnty_id = "CP"
				AND m_cont_rec.trans_qty > m_po_pall_cnt
				THEN
					CALL sh_rf_cmd_msg("I9961")
					SLEEP 2
					NEXT FIELD s_cont_rec.trans_qty
				END IF


			AFTER FIELD exp_qty
				DISPLAY m_cont_rec.exp_qty TO s_cont_rec.exp_qty
					ATTRIBUTE(NORMAL)

				IF m_cont_rec.exp_qty IS NOT NULL
				AND m_cont_rec.trans_qty IS NOT NULL
				AND m_cont_rec.trans_qty > m_cont_rec.exp_qty
				THEN
					CALL sh_rf_cmd_msg("I9965")
					SLEEP 2
					NEXT FIELD s_cont_rec.trans_qty
				END IF 	

			AFTER INPUT
				CASE
					WHEN m_cont_rec.cnty_id IS NULL
						CALL sh_rf_cmd_msg("I9960")
						SLEEP 2
						NEXT FIELD s_cont_rec.cnty_id

					WHEN m_cont_rec.trans_qty IS NULL
						CALL sh_rf_cmd_msg("I9964")
						SLEEP 2
						NEXT FIELD s_cont_rec.trans_qty

					WHEN m_cont_rec.exp_qty IS NULL
						CALL sh_rf_cmd_msg("I9962")
						SLEEP 2
						NEXT FIELD s_cont_rec.exp_qty
				END CASE

				IF m_cont_rec.trans_qty > m_cont_rec.exp_qty
				THEN
					CALL sh_rf_cmd_msg("I9965")
					SLEEP 2
					NEXT FIELD s_cont_rec.trans_qty
				END IF

				IF m_cnty_id = "CP"
				AND m_cont_rec.trans_qty > m_po_pall_cnt
				THEN
					CALL sh_rf_cmd_msg("I9961")
					SLEEP 2
					NEXT FIELD s_cont_rec.trans_qty
				END IF

		END INPUT

		IF f_abort = TRUE
		THEN
			CLEAR FORM
			EXIT WHILE
		END IF

		IF m_idtnd_ndx = 0			#-- build the array record
		THEN
			LET m_idtnd_ndx = 1
			LET m_idtnd_arr[m_idtnd_ndx].* = m_cont_rec.*
			LET m_idtnd_arr[m_idtnd_ndx].cnty_id = m_cnty_id
		ELSE
			FOR f_count = 1 TO m_icnty_max

				IF m_idtnd_arr[f_count].cnty_id IS NULL
				THEN
					LET m_idtnd_ndx = m_idtnd_ndx + 1
					LET m_idtnd_arr[m_idtnd_ndx].* = m_cont_rec.*
					LET m_idtnd_arr[m_idtnd_ndx].cnty_id = m_cnty_id
					EXIT FOR
				END IF
				IF m_idtnd_arr[f_count].cnty_id = m_cnty_id
				THEN
					LET m_idtnd_arr[f_count].* = m_cont_rec.*
					LET m_idtnd_arr[f_count].cnty_id = m_cnty_id
					EXIT FOR
				END IF

			END FOR
		END IF

	END WHILE

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: input_chep")

END FUNCTION

{***************************************************************************}
{set default values for the idtnd table}
{***************************************************************************}
FUNCTION set_defaults()

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: set_defaults")

	LET m_default_rec.dtn_id = m_ret_ipo.po_id CLIPPED
	LET m_default_rec.rsn_id = "RE"
	LET m_default_rec.rsn_seq = 0
	LET m_default_rec.csvn_id = m_ret_ivend.vend_id
	LET m_default_rec.dc_id = m_ret_swhse.dc_id
	LET m_default_rec.whse_id = m_ret_swhse.whse_id
	LET m_default_rec.notation = NULL
	LET m_default_rec.ref_id = NULL
	LET m_default_rec.dtst_id = "A"
	LET m_default_rec.bill_of_lading = NULL
	LET m_default_rec.trans_date = TODAY
	LET m_default_rec.extract_qty = 0
	LET m_default_rec.change_dtim = CURRENT
	LET m_default_rec.change_user = g_user.user_id
	LET m_default_rec.create_dtim = CURRENT
	LET m_default_rec.create_user = g_user.user_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: set_defaults")

END FUNCTION

{***************************************************************************}
FUNCTION calc_flow_dmd(f_dc_id, f_whse_id, f_prod_id, f_prdd_id, f_po_id, 
			f_pod_id, f_rcpt_id, f_lic_plt_id) 

	DEFINE f_dc_id     	LIKE irctd.dc_id
	DEFINE f_whse_id     	LIKE irctd.whse_id
	DEFINE f_prod_id     	LIKE irctd.prod_id
	DEFINE f_prdd_id     	LIKE irctd.prdd_id
	DEFINE f_po_id     	LIKE irctd.po_id
	DEFINE f_pod_id     	LIKE irctd.pod_id
	DEFINE f_rcpt_id     	LIKE irctd.rcpt_id
	DEFINE f_lic_plt_id LIKE irctd.lic_plt_id

	DEFINE f_tot_rct_qty    INTEGER
  	DEFINE f_flow_recvd_qty INTEGER
	DEFINE f_tot_demand_qty	LIKE ift.tot_demand_qty 
	DEFINE f_tot_recvd_qty  LIKE ift.tot_recvd_qty
	DEFINE f_tot_ship_qty	LIKE ift.tot_ship_qty
	DEFINE f_sum_process_qty INTEGER
	DEFINE f_unit_ship_cse  LIKE iprdd.unit_ship_cse
	DEFINE f_cse_unit  	LIKE iprdd.cse_unit
	DEFINE f_case_rmd 	DECIMAL(9,3) 
	
	DEFINE f_rtrn_code		INTEGER
	DEFINE f_string_val		CHAR(18)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"ENTER: calc_flow_dmd")

	LET f_rtrn_code = FALSE
	INITIALIZE f_string_val TO NULL

	LET f_flow_recvd_qty = 0
	LET f_tot_rct_qty = 0
	LET f_tot_demand_qty = 0
	LET f_tot_recvd_qty = 0
	LET f_tot_ship_qty = 0
	LET f_sum_process_qty = 0

	SELECT unit_ship_cse, cse_unit
  	  	INTO f_unit_ship_cse, f_cse_unit 
	 	FROM iprdd
     	 	WHERE iprdd.dc_id   = f_dc_id	
       	   	AND iprdd.prod_id = f_prod_id
       	   	AND iprdd.prdd_id = f_prdd_id

	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "SELECT iprdd fail. SQLCODE: ", SQLCA.SQLCODE,
			" ISAM: ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system error
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: calc_flow_dmd")
		RETURN 0
	END IF

	SELECT ift.tot_recvd_qty
  	  	INTO f_flow_recvd_qty 
	 	FROM ift
     	 	WHERE ift.dc_id   = f_dc_id	
       	   	AND ift.whse_id = f_whse_id
       	   	AND ift.po_id   = f_po_id   
       	   	AND ift.prod_id = f_prod_id
       	   	AND ift.unit_ship_cse = f_unit_ship_cse

	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "SELECT irctd fail. SQLCODE: ", SQLCA.SQLCODE,
			" ISAM: ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system error
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: calc_flow_dmd")
		RETURN 0
	END IF

	SELECT SUM(irctd.rct_qty)
		INTO f_tot_rct_qty 
		FROM irctd
	     	WHERE irctd.dc_id   = f_dc_id	
	       	AND irctd.whse_id = f_whse_id
	       	AND irctd.po_id   = f_po_id   
           	AND irctd.pod_id  = f_pod_id
	       	AND irctd.prod_id = f_prod_id
	   	AND irctd.rcpt_id = f_rcpt_id

	IF SQLCA.SQLCODE < 0
        THEN
		LET m_msg = "SELECT irctd fail. SQLCODE: ", SQLCA.SQLCODE,
			" ISAM: ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system error
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: sel_ipod_dmd")
		RETURN 0
	END IF

   	SELECT ift.ft_id, ift.tot_demand_qty, ift.tot_recvd_qty, ift.tot_ship_qty,
 			SUM(process_qty) 
		INTO m_ft_id, f_tot_demand_qty, f_tot_recvd_qty, f_tot_ship_qty,
				f_sum_process_qty
	  	FROM ift, iftd
	 	WHERE ift.dc_id   = f_dc_id
	   	AND ift.whse_id = f_whse_id
	   	AND ift.prod_id = f_prod_id
	   	AND ift.po_id   = f_po_id
       	AND ift.unit_ship_cse = f_unit_ship_cse
		AND ift.purge_flg = "N"
		AND ift.ft_id = iftd.ft_id
		AND iftd.load_closed_flg <> "Y"
   		GROUP BY ift.ft_id, ift.tot_demand_qty, ift.tot_recvd_qty,
					ift.tot_ship_qty

	IF SQLCA.SQLCODE < 0 
	THEN
		LET m_msg = "SELECT ift fail. SQLCODE: ", SQLCA.SQLCODE,
			" ISAM: ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system error
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: calc_flow_dmd")
		RETURN 0
	END IF

	IF SQLCA.SQLCODE = NOTFOUND
	THEN
		## rld... Added due to conversion changes.  The select below
		## looks for flowthru demand with a 0 po.
		##------------------------------------------------------------
		LET f_po_id = "0"
		LET f_string_val = f_po_id 
	
		CALL convert_value("PO", f_string_val)
			RETURNING f_rtrn_code, f_string_val
		
		CASE
			WHEN (f_rtrn_code <> 0)
				LET m_msg = "CONVERT function FAILED, rtrn_code = ",
					f_rtrn_code
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				CALL sh_rf_cmd_msg("I9060")	#-- system error
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"EXIT: calc_flow_dmd")
				RETURN 0
			OTHERWISE
				--- Successful conversion.
				LET f_po_id = f_string_val
		END CASE
		## rld... Added due to conversion changes.  The select below
		## looks for flowthru demand with a 0 po.
		##------------------------------------------------------------

		LET f_tot_demand_qty = 0	
		LET f_tot_recvd_qty = 0
		LET f_tot_ship_qty = 0
		LET f_sum_process_qty = 0

#JY: Following changes is for DB2/Oracle9i. Original SQL is commented
#out.
#   		SELECT ift.ft_id, ift.tot_demand_qty, ift.tot_recvd_qty,
#				ift.tot_ship_qty, SUM(process_qty)  
#		INTO m_ft_id, f_tot_demand_qty, f_tot_recvd_qty, f_tot_ship_qty,
#				f_sum_process_qty
#		FROM ift, OUTER(iftd)
#		WHERE ift.dc_id   = f_dc_id
#		AND ift.whse_id = f_whse_id
#		AND ift.prod_id = f_prod_id
#       	AND ift.unit_ship_cse = f_unit_ship_cse
#		AND ift.po_id   = f_po_id
#	## rld... AND ift.po_id   = 0
#		AND ift.purge_flg = "N"
#		AND ift.ft_id = iftd.ft_id
#		AND iftd.load_closed_flg <> "Y"
#   		GROUP BY ift.ft_id, ift.tot_demand_qty, ift.tot_recvd_qty,
#					ift.tot_ship_qty

		OPEN c_sel_ift USING f_dc_id, f_whse_id, f_prod_id,
							 f_unit_ship_cse, f_po_id
   	
		IF SQLCA.SQLCODE < 0 
		THEN
			LET m_msg = "OPEN c_sel_ift fail. SQLCODE:", 
				SQLCA.SQLCODE, " ISAM: ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system error
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: calc_flow_dmd")
			RETURN 0
		END IF

		FETCH c_sel_ift INTO m_ft_id, f_tot_demand_qty, 
							 f_tot_recvd_qty, f_tot_ship_qty,
							 f_sum_process_qty
		IF SQLCA.SQLCODE < 0 
		THEN
			LET m_msg = "FETCH c_sel_ift fail. SQLCODE:", 
				SQLCA.SQLCODE, " ISAM: ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system error
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: calc_flow_dmd")
			RETURN 0
		END IF

		CLOSE c_sel_ift

	END IF

	IF f_tot_demand_qty IS NULL 
	THEN
		LET f_tot_demand_qty = 0
	END IF
	IF f_flow_recvd_qty IS NULL 
	THEN
		LET f_flow_recvd_qty = 0
	END IF
	IF f_tot_rct_qty IS NULL 
	THEN
		LET f_tot_rct_qty = 0
	END IF
	IF f_tot_recvd_qty IS NULL 
	THEN
		LET f_tot_recvd_qty = 0
	END IF
	IF f_tot_ship_qty IS NULL
	THEN
		LET f_tot_ship_qty = 0
	END IF
	IF f_sum_process_qty IS NULL
	THEN
		LET f_sum_process_qty = 0
	END IF

	IF f_tot_ship_qty > 0
	THEN
		LET f_tot_demand_qty = f_sum_process_qty
	ELSE
		LET f_tot_demand_qty = f_tot_demand_qty - f_tot_recvd_qty
	END IF

	CASE m_ret_swhse.urcp_id
	WHEN "S"
		LET f_flow_recvd_qty =
			(f_flow_recvd_qty / f_unit_ship_cse)
		LET f_tot_demand_qty =
			(f_tot_demand_qty / f_unit_ship_cse)
		LET f_tot_rct_qty =
			(f_tot_rct_qty / f_unit_ship_cse)
		LET f_tot_recvd_qty =
			(f_tot_recvd_qty / f_unit_ship_cse)

	WHEN "C"
		LET f_case_rmd = f_tot_rct_qty MOD f_cse_unit
		IF f_case_rmd <> 0
		THEN
			LET f_flow_recvd_qty = (f_flow_recvd_qty / f_unit_ship_cse)
			LET f_tot_demand_qty = (f_tot_demand_qty / f_unit_ship_cse)
			LET f_tot_rct_qty = (f_tot_rct_qty / f_unit_ship_cse)
			LET f_tot_recvd_qty = (f_tot_recvd_qty / f_unit_ship_cse)
		ELSE
			LET f_flow_recvd_qty = (f_flow_recvd_qty / f_cse_unit)
			LET f_tot_demand_qty = (f_tot_demand_qty / f_cse_unit)
			LET f_tot_rct_qty = (f_tot_rct_qty / f_cse_unit)
			LET f_tot_recvd_qty = (f_tot_recvd_qty / f_cse_unit)
		END IF

	OTHERWISE
		LET f_flow_recvd_qty = (f_flow_recvd_qty / f_cse_unit)
		LET f_tot_demand_qty = (f_tot_demand_qty / f_cse_unit)
		LET f_tot_rct_qty = (f_tot_rct_qty / f_cse_unit)
		LET f_tot_recvd_qty = (f_tot_recvd_qty / f_cse_unit)
	END CASE

    LET m_tot_demand_qty = f_tot_demand_qty 

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"EXIT: calc_flow_dmd")

END FUNCTION

{**************************************************************************}
{ Add record to iftl table - flowthru shipping location }
{**************************************************************************}
FUNCTION insert_iftl(f_dc_id, f_whse_id, f_lic_plt_id)

	DEFINE f_dc_id     	LIKE irctd.dc_id
	DEFINE f_whse_id     	LIKE irctd.whse_id
	DEFINE f_lic_plt_id    	LIKE irctd.lic_plt_id

	DEFINE f_iftl     	RECORD LIKE iftl.*
	DEFINE f_irctd     	RECORD LIKE irctd.*
	DEFINE f_loc_id     	LIKE iplas.loc_id
	DEFINE f_db2_err	INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"ENTER: insert_iftl")

	SELECT *
	INTO f_irctd.*
	FROM irctd
	WHERE dc_id = f_dc_id
	AND whse_id = f_whse_id
	AND lic_plt_id = f_lic_plt_id

	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "SELECT irctd  failed SQLCODE=", SQLCA.SQLCODE,
                    " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: insert_iftl")
		RETURN
	END IF

	IF f_irctd.rctt_id = "F"
	THEN
		SELECT iplas.loc_id
		  INTO f_loc_id 
		  FROM iplas, iinvd
		 WHERE iinvd.lic_plt_id = f_irctd.lic_plt_id
		   AND iinvd.dc_id      = f_irctd.dc_id
		   AND iinvd.whse_id    = f_irctd.whse_id
		   AND iplas.plas_id    = iinvd.plas_id
		   AND iplas.prod_id    = f_irctd.prod_id
		   AND iplas.prdd_id    = f_irctd.prdd_id

		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "SELECT iinvd fail. SQLCODE: ", SQLCA.SQLCODE,
					" ISAM: ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system error
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: insert_iftl")
			RETURN 
		END IF

		IF SQLCA.SQLCODE = 0
		THEN
			INITIALIZE f_iftl.* TO NULL
    		LET f_iftl.ft_id       = m_ft_id
    		LET f_iftl.loc_id      = f_loc_id
    		LET f_iftl.lic_plt_id  = f_irctd.lic_plt_id 
    		LET f_iftl.change_dtim = CURRENT 
    		LET f_iftl.change_user = g_user.user_id 
    		LET f_iftl.create_dtim = CURRENT 
    		LET f_iftl.create_user = g_user.user_id 

			IF f_iftl.ft_id IS NOT NULL
		   	THEN
				INSERT INTO iftl VALUES(f_iftl.*)

				LET f_db2_err = SQLCA.SQLERRD[2]	

				IF SQLCA.SQLCODE <> 0 
				THEN
					IF SQLCA.SQLCODE = -268
					OR f_db2_err = -803
					THEN
						LET m_msg = 
							"INSERT iftl failed due to duplicate insert."
					ELSE
						LET m_msg = "INSERT iftl fail. SQLCODE:", SQLCA.SQLCODE,
							" ISAM:", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
						CALL sh_rf_cmd_msg("I9060") 	#-- system error
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,
							12593, "EXIT: insert_iftl")
						RETURN 
					END IF
				END IF
			END IF
		END IF
	END IF 	

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"EXIT: insert_iftl")

END FUNCTION

{**************************************************************************}
{ flowthru => create a new inventory receipt detail record with the 
       remaining quantiry and create a work (aothd) record }
{**************************************************************************}
FUNCTION add_inv_irctd(f_inv_rct_qty)

	DEFINE f_inv_rct_qty    LIKE irctd.rct_qty

	DEFINE f_irctd_rec     	RECORD LIKE irctd.*
	DEFINE f_ret_lic_plt    LIKE irctd.lic_plt_id
	DEFINE f_arrv_door      LIKE iapt.arrv_door
	DEFINE f_ret_status     SMALLINT
	DEFINE f_count_irctd    SMALLINT
	DEFINE f_count          SMALLINT
	DEFINE f_null_int       INTEGER
	DEFINE f_db2_err		INTEGER

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"ENTER: add_inv_irctd")

	LET f_null_int = NULL

	SELECT COUNT(*)
		INTO f_count_irctd
		FROM irctd
		WHERE dc_id = m_scr_irctd_rec.dc_id
		AND whse_id = m_scr_irctd_rec.whse_id
		AND rcpt_id = m_scr_irctd_rec.rcpt_id
		AND po_id = m_scr_irctd_rec.po_id
		AND prod_id = m_scr_irctd_rec.prod_id
		AND prdd_id = m_scr_irctd_rec.prdd_id
		AND rctt_id = "I"
		AND rdst_id = "D"       #-- pallet have not verified at this stage

	IF f_count_irctd = 1 
	THEN
		LET m_putwy_flg = 1
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
			"EXIT: add_inv_irctd")
		RETURN 0
	END IF

	INITIALIZE f_irctd_rec.* TO NULL

	LET f_irctd_rec.dc_id   = m_scr_irctd_rec.dc_id
	LET f_irctd_rec.whse_id   = m_scr_irctd_rec.whse_id
	LET f_irctd_rec.po_id   = m_scr_irctd_rec.po_id
	LET f_irctd_rec.pod_id  = m_ret_irctd.pod_id
	LET f_irctd_rec.rcpt_id = m_scr_irctd_rec.rcpt_id
	LET f_irctd_rec.prod_id = m_scr_irctd_rec.prod_id
	LET f_irctd_rec.prdd_id = m_scr_irctd_rec.prdd_id
	LET f_irctd_rec.stor_ti = m_scr_irctd_rec.stor_ti
	LET f_irctd_rec.stor_hi = m_scr_irctd_rec.stor_hi
	LET f_irctd_rec.lot_no  = m_scr_irctd_rec.lot_no
	LET f_irctd_rec.coo_id  = m_coo_id
	LET f_irctd_rec.receipt_dtim = CURRENT
	LET f_irctd_rec.receipt_user = g_user.user_id
	LET f_irctd_rec.rdst_id = "P"	#-- putawayable status
	LET f_irctd_rec.rctt_id = "I"
	LET f_irctd_rec.rct_qty = f_inv_rct_qty 

	LET f_irctd_rec.flow_dtl_flg = m_ret_irctd.flow_dtl_flg
	LET f_irctd_rec.whse_gnrt_flow_flg = m_ret_irctd.whse_gnrt_flow_flg

	LET f_count = 0
	WHILE TRUE	## CR 8960
---		CALL get_number(f_irctd_rec.dc_id, f_irctd_rec.whse_id, "LPP")
		CALL get_lic_plt_id(f_irctd_rec.dc_id, f_irctd_rec.whse_id, "LPP", 1)
			RETURNING f_ret_status, f_ret_lic_plt

		IF f_ret_status = TRUE
		THEN
			LET m_msg = "get_lic_plt_id failed- Try to get number again."
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			LET f_count  = f_count + 1
			IF f_count > 4
			THEN
				EXIT WHILE
			END IF
		ELSE
			EXIT WHILE
		END IF
	END WHILE

	IF f_ret_status = TRUE
	THEN
		LET m_msg = "get_lic_plt_id failed"
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: add_inv_irctd")
		RETURN TRUE
	END IF

	LET f_irctd_rec.lic_plt_id = f_ret_lic_plt
	LET f_irctd_rec.key = 0

	INSERT INTO irctd VALUES(f_irctd_rec.*)
	
	LET f_db2_err = SQLCA.SQLERRD[2]

	IF SQLCA.SQLCODE <> 0
	THEN
		IF SQLCA.SQLCODE = -268
		OR f_db2_err = -803
		THEN
			LET m_msg = 
			"INSERT irctd failed due to duplicate license plate number."
		ELSE
			LET m_msg = "INSERT irctd fail. SQLCODE:", SQLCA.SQLCODE,
				" ISAM:", SQLCA.SQLERRD[2]
		END IF
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			 "EXIT: add_inv_irctd")
		RETURN TRUE
	END IF

	SELECT arrv_door
        INTO f_arrv_door
        FROM iapt
 		WHERE dc_id   = m_scr_irctd_rec.dc_id
   		AND whse_id = m_scr_irctd_rec.whse_id
		AND appt_id = m_scr_irctd_rec.appt_id

	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "SELECT iaptd.arrv_door failed. SQLCODE=",
			 SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			 "EXIT: add_inv_irctd")
		RETURN TRUE
	END IF

	# create work unit
	#-----------------
	CALL rcv_work_unit(f_irctd_rec.*, f_arrv_door,
		   m_scr_irctd_rec.appt_id, m_null_iloc.*, f_null_int) RETURNING m_ignore
# lam m_null_iloc is never set

	LET m_putwy_flg = 1

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"EXIT: add_inv_irctd")

	RETURN 0

END FUNCTION

{**************************************************************************}
{ check if there are any zero received quantity for flowthru receipt 
  detail record.  If there are any needs to delete associated iftl record }
{*****************************************************************************}
FUNCTION delete_zero_flow()

	DEFINE f_loop	INTEGER
	DEFINE f_ret_irctd	RECORD LIKE irctd.*
	DEFINE f_ft_id    	LIKE ift.ft_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"ENTER: delete_zero_flow")

 {
	DECLARE c_zero_flow CURSOR FOR 
		SELECT * 
          	FROM irctd 
		WHERE dc_id  = m_scr_irctd_rec.dc_id 
		AND rcpt_id = m_scr_irctd_rec.rcpt_id 
		AND rctt_id = "F" 
		AND rct_qty =  0

	OPEN c_zero_flow
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN c_zero_flow failed. SQLCODE= ",SQLCA.SQLCODE,
			    " ISAM= ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: delete_zero_flow")
		RETURN 
	END IF

	WHILE TRUE
		FETCH c_zero_flow INTO f_ret_irctd.*

		IF SQLCA.SQLCODE = NOTFOUND
		THEN
			EXIT WHILE
		END IF
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "FETCH c_zero_flow failed. SQLCODE= ",SQLCA.SQLCODE,
			    	" ISAM= ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: delete_zero_flow")
			RETURN 
		END IF

		SELECT unit_ship_cse 
  	  		INTO f_unit_ship_cse 
	 		FROM iprdd
     	 	WHERE iprdd.dc_id   = f_ret_irctd.dc_id	
       	   	AND iprdd.prod_id = f_ret_irctd.prod_id
       	   	AND iprdd.prdd_id = f_ret_irctd.prdd_id

		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "SELECT iprdd fail. SQLCODE: ", SQLCA.SQLCODE,
				" ISAM: ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system error
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: delete_zero_flow")
			RETURN
		END IF

   		SELECT ft_id
			INTO f_ft_id
	  		FROM ift
	 		WHERE dc_id   = f_ret_irctd.dc_id
	   		AND whse_id = f_ret_irctd.whse_id
	   		AND prod_id = f_ret_irctd.prod_id
	   		AND po_id   = f_ret_irctd.po_id
      		AND unit_ship_cse = f_unit_ship_cse
			AND purge_flg = "N"

		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "SELECT ft_id failed. SQLCODE= ",SQLCA.SQLCODE,
			    	" ISAM= ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: delete_zero_flow")
			RETURN 
		END IF
}
	FOR f_loop = 1 to 500
		IF m_arr_del_zero[f_loop].dc_id IS NULL
		THEN
			EXIT FOR
		END IF

		DELETE FROM iftl
		WHERE lic_plt_id = m_arr_del_zero[f_loop].lic_plt_id
		AND lic_plt_id = f_ret_irctd.lic_plt_id
 
		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "DELETE iftl failed. SQLCODE= ",SQLCA.SQLCODE,
			    	" ISAM= ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: delete_zero_flow")
			RETURN 
		END IF

	END FOR
#	END WHILE

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", 
		"EXIT: delete_zero_flow")

END FUNCTION

{***************************************************************************}
{ This is a little different than the normal flowthru processing because we
will only release the FOMB by dc, whse, prod, and po matching the ift and
having allocations on the iftd.  }
{***************************************************************************}
FUNCTION extract()	

	DEFINE f_ckpt_id	INTEGER
	DEFINE f_ret_choice	CHAR(1)
	DEFINE f_abort		SMALLINT
	DEFINE f_loop		SMALLINT
	DEFINE f_chkfile	CHAR(100)
	DEFINE f_cmd		CHAR(100)
	DEFINE f_chkstatus	SMALLINT
	DEFINE f_ickpd		RECORD LIKE ickpd.*
	DEFINE f_proc_qty	LIKE iftd.process_qty

	LET m_ignore = sh_mlog_4gl (g_std_func_chan, m_module,"%C%",
		"ENTER: extract") 

	INITIALIZE f_ckpt_id TO NULL
	INITIALIZE f_proc_qty TO NULL
	INITIALIZE f_ret_choice TO NULL

	LET	f_chkstatus = -1
	LET f_chkfile = "$DSCBASE/bin/ISSoext_01.sh"
	RUN f_chkfile RETURNING f_chkstatus
	IF f_chkstatus = 0
	THEN
		CALL sh_rf_err_msg("P0004")
		LET m_msg="Currently running Inbound Orders", f_chkstatus
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: extract") 
		RETURN
	END IF

	LET	f_chkstatus = -1
	LET f_cmd = " ls -l $DSCBASE/dat/dptwy.", 
				m_scr_irctd_rec.rcpt_id USING "<<<<<<<<<<&",
				" > /dev/null 2>&1 "

	LET f_loop = 0

	WHILE f_loop <= 50
		CALL run_system_cmd2(f_cmd) RETURNING f_chkstatus
		IF f_chkstatus <> 0
		THEN
			EXIT WHILE
		END IF
		LET f_loop = f_loop + 1
	END WHILE	
	
	IF f_chkstatus = 0
	THEN
		CALL sh_rf_err_msg("P0005")
		LET m_msg="Currently running putaway", f_chkstatus
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: extract") 
		RETURN
	END IF

	LET	f_chkstatus = -1
	LET f_cmd = " ls -l $DSCBASE/dat/*ifptb*", 
				" > /dev/null 2>&1 "
	CALL run_system_cmd2(f_cmd) RETURNING f_chkstatus

	IF f_chkstatus = 0
	THEN
		CALL sh_rf_err_msg("I0010")
		LET m_msg="Currently running IFPTB, Create-To_Do ", f_chkstatus
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: extract")
		RETURN
	END IF

	SELECT COUNT(*)
		INTO f_proc_qty
		FROM ift
		WHERE ift.dc_id  		= m_scr_irctd_rec.dc_id
		AND ift.whse_id  		= m_scr_irctd_rec.whse_id
		AND ift.flow_dtl_flg	= "Y"
		AND ift.ftac_id IN ("C","N","R")

	IF SQLCA.SQLCODE <> 0 OR f_proc_qty = 0
	THEN
		CALL sh_rf_err_msg("I2551")
		LET m_msg="No products selected to Fomb1", f_chkstatus
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: extract") 
		RETURN
	END IF

	SELECT COUNT(*) INTO f_proc_qty
	FROM ifcpt
	WHERE ifcpt.dc_id   = m_scr_irctd_rec.dc_id
	AND ifcpt.whse_id = m_scr_irctd_rec.whse_id
	AND ifcpt.proc_flag = "Y"

	IF SQLCA.SQLCODE <> 0 OR f_proc_qty = 0
	THEN
		CALL sh_rf_err_msg("I2551")
		LET m_msg="No products are sequenced to FOMB2.", f_chkstatus
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: extract") 
		RETURN
	END IF

	BEGIN WORK

	## Initate the autofom. Y/N
	CALL sh_rf_ysno_msg("I1294","Y")
 		  RETURNING m_ignore, f_ret_choice

	IF f_ckpt_id IS NULL
	AND f_ret_choice = "Y"
	THEN
		INSERT INTO ickpt (ckpt_id, dc_id, create_user, create_dtim,
			strt_fin, change_dtim, change_user, plan_type_id, whse_id) VALUES
			(0, m_scr_irctd_rec.dc_id, g_user.user_id, CURRENT YEAR TO SECOND, 
			"S", CURRENT YEAR TO SECOND,
			g_user.user_id, "F", m_scr_irctd_rec.whse_id)
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "INSERT ickpt fail. SQLCODE:", SQLCA.SQLCODE,
						" ISAM:", SQLCA.SQLERRD[2]
			ROLLBACK WORK
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			CALL sh_rf_err_msg("I2547")	--Batching failed
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: extract") 
			RETURN
		END IF

		# Get the ckpt_id id of the inserted rec.
		LET f_ckpt_id = SQLCA.SQLERRD[2] 

		# Create the first ickpd record for this fomb run.
		LET f_ickpd.ckpt_id 		= f_ckpt_id
		LET f_ickpd.tran_id 		= "IRRVH"
		LET f_ickpd.row_stat 		= "F"
		LET f_ickpd.ord_msg_text 	= "Completed"
		LET f_ickpd.start_dtim 		= CURRENT
		LET f_ickpd.end_dtim 		= CURRENT
 
		INSERT INTO ickpd VALUES(f_ickpd.*)
 
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "INSERT ickpd failed. SQLCODE:",SQLCA.SQLCODE,
						"ISAM:", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			ROLLBACK WORK
			CALL sh_rf_cmd_msg("I9060")
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: extract") 
			RETURN 
		END IF
 
		UPDATE firwc SET ir_proc_flg = "Y"
		WHERE firwc.dc_id = m_scr_irctd_rec.dc_id
		  AND firwc.whse_id = m_scr_irctd_rec.whse_id
		  AND firwc.ir_proc_flg = "N"
		IF SQLCA.SQLCODE <> 0 OR f_proc_qty = 0
		THEN
			ROLLBACK WORK
			CALL sh_rf_cmd_msg("I9060")
			LET m_msg="No products selected to Fomb", f_chkstatus
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: extract") 
			RETURN
		END IF
 
		IF SQLCA.SQLERRD[3] = 0
		THEN
			ROLLBACK WORK
			CALL sh_rf_err_msg("I1066")
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: extract") 
			RETURN
		END IF
 
		# Add ckpt_id to headers that have an allocation in the iftd
		#-----------------------------------------------------------
			UPDATE ift SET (ckpt_id, change_user, change_dtim) =
				(f_ckpt_id, g_user.user_id, CURRENT YEAR TO SECOND)
			WHERE ift.dc_id  = m_scr_irctd_rec.dc_id
			AND ftac_id IN ("N", "R")
			AND ckpt_id IS NULL
			AND purge_flg = "N"
		    AND change_user   = g_user.user_id
	
			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "UPDATE ift fail. SQLCODE:", SQLCA.SQLCODE,
							" ISAM:", SQLCA.SQLERRD[2]
				ROLLBACK WORK
				LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg CLIPPED)
				CALL sh_rf_err_msg("I2547")	--Batching failed
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"EXIT: extract")
				RETURN
			END IF

		LET f_abort = pilot(f_ckpt_id, 0)
		IF f_abort = TRUE
		THEN
			ROLLBACK WORK
			LET m_msg = "Pilot function failed; FOMB will not continue, ckpt=",
				f_ckpt_id
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_err_msg("I2901")	# FOMB failed
		ELSE
			COMMIT WORK
			CALL new_sicom("ckpt_id", f_ckpt_id) RETURNING m_ignore
			CALL sh_rf_err_msg("I2902")	# FOMB ok
		END IF
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: extract")

END FUNCTION

{***************************************************************************}
# Create a file dptwy.xx where xx is the receipt number. This file will
# be used by other programs to determine if putawy for this receipt has 
# finished running. This file is deleted by the putaway process when
# it finishes.
{***************************************************************************}
FUNCTION create_dptwy()	

	DEFINE f_cmd			CHAR(1024)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: create_dptwy")

	LET f_cmd = "echo ", m_scr_irctd_rec.rcpt_id USING "<<<<<<<<<<&", 
				">>$DSCBASE/dat/dptwy.", 
				m_scr_irctd_rec.rcpt_id USING "<<<<<<<<<<&",
				" > /dev/null 2>&1 "

	CALL run_system_cmd(f_cmd)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: create_dptwy")

END FUNCTION

{**************************************************************************}
FUNCTION select_po()

	DEFINE f_counter    INTEGER
	DEFINE f_abort      INTEGER

	DEFINE f_po_array ARRAY[500] OF RECORD
		po_id           LIKE iaptd.po_id,
		whse_id         LIKE iaptd.whse_id
	END RECORD

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: select_po") 

	OPEN c_list_pos
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN c_list_pos failed. SQLCODE=",
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")    #-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: select_po") 
		RETURN TRUE
	END IF

	LET f_counter = 1
	WHILE TRUE
		FETCH c_list_pos INTO f_po_array[f_counter].*
		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "FETCH c_list_pos failed. SQLCODE=",
				SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")    #-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: select_po") 
			RETURN TRUE
		END IF

		IF SQLCA.SQLCODE = 100
		THEN
			EXIT WHILE
		END IF

		LET f_counter = f_counter + 1
	END WHILE

	LET f_counter = f_counter - 1
	IF f_counter = 0
	THEN
		CALL sh_rf_cmd_msg("I9093")
		SLEEP 1
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: select_po") 
		RETURN TRUE
	END IF

	IF f_counter = 1
	THEN
		LET m_scr_irctd_rec.po_id = f_po_array[1].po_id
		LET m_scr_irctd_rec.rcv_whse_id = f_po_array[1].whse_id

		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: select_po") 
		RETURN FALSE
	END IF

	LET f_abort = FALSE
	CALL set_count(f_counter)

	OPEN WINDOW w_main_winC AT 1,1 WITH FORM m_po_arr_form
		ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
		MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)
	IF status <> 0
	THEN
		LET m_msg = "Bad open on po_arr form"       
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")    #-- system failure
		SLEEP 2 
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: select_po") 
		RETURN TRUE
	END IF

	DISPLAY ARRAY f_po_array TO s_po_array.*

		ON KEY (CONTROL-P)
			CALL spprtscr()

		ON KEY (ESC, INTERRUPT)
			LET f_abort = TRUE
			EXIT DISPLAY

	END DISPLAY

	CLOSE WINDOW w_main_winC

	LET f_counter = arr_curr()

	IF f_abort = TRUE
	THEN
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: select_po") 
		RETURN TRUE
	END IF

	LET m_scr_irctd_rec.po_id = f_po_array[f_counter].po_id
	LET m_scr_irctd_rec.rcv_whse_id = f_po_array[f_counter].whse_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: select_po") 

	RETURN FALSE

END FUNCTION
{**************************************************************************}
FUNCTION select_po2() 

	DEFINE f_counter    INTEGER
	DEFINE f_abort      INTEGER

	DEFINE f_po_array ARRAY[500] OF RECORD
		po_id			LIKE iaptd.po_id,
		whse_id			LIKE iaptd.whse_id
	END RECORD

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: select_po2")

	OPEN c_list_pos
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN c_list_pos failed. SQLCODE=",
			SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")    #-- system failure
			SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: select_po2")
		RETURN TRUE
	END IF

	LET f_counter = 1
	WHILE TRUE
		FETCH c_list_pos INTO f_po_array[f_counter].*

		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "FETCH c_list_pos failed. SQLCODE=",
				SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")    #-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: select_po2")
			RETURN TRUE
		END IF

		IF SQLCA.SQLCODE = 100
		THEN
			EXIT WHILE
		END IF

		LET f_counter = f_counter + 1
	END WHILE

	LET f_counter = f_counter - 1
	IF f_counter = 0
	THEN
		CALL sh_rf_cmd_msg("I9093")
		SLEEP 1
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: select_po2")
		RETURN TRUE
	END IF

	LET m_scr_irctd_rec.po_id = f_po_array[1].po_id
	LET m_scr_irctd_rec.rcv_whse_id = f_po_array[1].whse_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: select_po2")

	RETURN FALSE

END FUNCTION
{**************************************************************************}
     
#_begin GAP 011 011_SPEC_2
{*****************************************************************************}
  FUNCTION open_temp_form()

    DEFINE f_ret_status INTEGER

    CALL sh_mlog_4gl(g_std_func_chan,m_module,"%C%","ENTER: open_temp_form")
           RETURNING f_ret_status

    OPEN WINDOW w_main_winE AT 1,1 WITH FORM m_temp_form
        ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
            MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

    IF status <> 0
    THEN
        LET m_msg = "Bad open on temp form"
        CALL sh_elog_4gl(m_module,"%C%", m_msg) RETURNING f_ret_status
        CALL sh_rf_cmd_msg("I9060")    #-- system failure
        SLEEP 2
        EXIT PROGRAM
    END IF

    CALL sh_mlog_4gl(g_std_func_chan,m_module,"%C%", "EXIT: open_temp_form")
  RETURNING f_ret_status

END FUNCTION
#_end GAP 011 011_SPEC_2

{*****************************************************************************}
#_begin GAP 011 011_SPEC_2
{*****************************************************************************}
FUNCTION close_temp_form()

    DEFINE f_ret_status INTEGER

    CALL sh_mlog_4gl(g_std_func_chan,m_module,"%C%","ENTER: close_temp_form")
           RETURNING f_ret_status

    CLOSE WINDOW w_main_winE
    IF status <> 0
    THEN
        LET m_msg = "Bad close on temp form"
        CALL sh_elog_4gl(m_module,"%C%", m_msg) RETURNING f_ret_status
        CALL sh_rf_cmd_msg("I9060")    #-- system failure
        SLEEP 2
        EXIT PROGRAM
       
           END IF

    CALL sh_mlog_4gl(g_std_func_chan,m_module,"%C%", "EXIT: close_temp_form")
           RETURNING f_ret_status

END FUNCTION
#_end GAP 011 011_SPEC_2

{******************************************************************************}
#_begin GAP 011 011_SPEC_2
{*****************************************************************************}
FUNCTION validate_wust()
    DEFINE f_abort          SMALLINT
    DEFINE  f_cnt           INTEGER

    CALL sh_mlog_4gl(g_std_func_chan, m_module,"%C%", "ENTER: validate_wust")
           RETURNING m_ignore

    LET f_abort = TRUE 

          SELECT count(*) INTO f_cnt FROM aothd 
          WHERE aothd.lic_plt_id  =   m_scr_irctd_rec.lic_plt_id 
          AND   aothd.dc_id       =   m_scr_irctd_rec.dc_id 
          AND   aothd.whse_id     =   m_scr_irctd_rec.whse_id
          AND   aothd.rcpt_id     =   m_scr_irctd_rec.rcpt_id
          AND   aothd.wust_id     =   "RSL"

          IF SQLCA.SQLCODE = 0 AND f_cnt > 0  THEN
             LET f_abort = FALSE
          ELSE         
             LET f_abort = TRUE
          END IF
         RETURN f_abort
END FUNCTION
{*****************************************************************************}
FUNCTION input_temp()

    DEFINE f_temperature    LIKE irctd.temperature
    DEFINE f_abort          SMALLINT

    CALL sh_mlog_4gl(g_std_func_chan, m_module,"%C%", "ENTER: input_temp")
           RETURNING m_ignore

    LET f_abort = FALSE
    INITIALIZE f_temperature TO NULL

    SELECT temperature
     INTO f_temperature
    FROM irctd
    WHERE dc_id = m_scr_irctd_rec.dc_id
      AND whse_id = m_scr_irctd_rec.rcv_whse_id
      AND lic_plt_id = m_scr_irctd_rec.lic_plt_id

    INPUT f_temperature WITHOUT DEFAULTS
     FROM s_add_temp.temperature

        BEFORE INPUT
            DISPLAY m_scr_irctd_rec.dc_id TO s_add_temp.dc_id
                ATTRIBUTE(NORMAL)
            DISPLAY m_scr_irctd_rec.whse_id TO s_add_temp.whse_id
                ATTRIBUTE(NORMAL)
            DISPLAY m_scr_irctd_rec.rcv_whse_id TO s_add_temp.rcv_whse_id
                ATTRIBUTE(NORMAL)
            DISPLAY m_scr_irctd_rec.appt_id TO s_add_temp.appt_id
                ATTRIBUTE(NORMAL)
            DISPLAY m_scr_irctd_rec.lic_plt_id TO s_add_temp.lic_plt_id
                ATTRIBUTE(NORMAL)

        BEFORE FIELD s_add_temp.temperature
            DISPLAY f_temperature TO s_add_temp.temperature
            ATTRIBUTE(REVERSE)

        ON KEY (CONTROL-P)
            CALL spprtscr()

#Do not allow user to escape this screen.
#ssw        ON KEY (ESCAPE, INTERRUPT)
#ssw        LET f_abort = TRUE
#ssw    EXIT INPUT

        AFTER FIELD s_add_temp.temperature
            DISPLAY f_temperature TO s_add_temp.temperature
                ATTRIBUTE(NORMAL)

        AFTER INPUT
            IF f_temperature IS NULL
            THEN
                CALL sh_rf_cmd_msg("I9087")
                SLEEP 2
                NEXT FIELD s_add_temp.temperature
            END IF

            IF f_temperature > 999
            THEN
                CALL sh_rf_cmd_msg("I0013")
                SLEEP 2
                NEXT FIELD s_add_temp.temperature
            END IF

            UPDATE irctd
            SET temperature = f_temperature
            WHERE dc_id = m_scr_irctd_rec.dc_id
              AND whse_id = m_scr_irctd_rec.rcv_whse_id
              AND lic_plt_id = m_scr_irctd_rec.lic_plt_id

            IF  SQLCA.SQLCODE <> 0
            THEN
                LET m_msg = "Update temperature failed. SQLCODE=",
                    SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                CALL sh_elog_4gl(m_module,"%C%", m_msg) RETURNING m_ignore
				CALL upd_irctd_error(m_scr_irctd_rec.lic_plt_id, 
										m_scr_irctd_rec.dc_id, 
										m_scr_irctd_rec.rcv_whse_id)
            END IF
    END INPUT
    
    CALL sh_mlog_4gl(g_std_func_chan, m_module,"%C%", "EXIT: input_temp")
           RETURNING m_ignore

  END FUNCTION
#_end GAP 011 011_SPEC_2

{*****************************************************************************}
{*****************************************************************************}
FUNCTION process_man_aothd() 

	DEFINE f_sel_stmt   	CHAR(2000)
	DEFINE f_aothd 			RECORD LIKE aothd.*
	DEFINE f_iplas			RECORD LIKE iplas.*
	DEFINE f_iloc			RECORD LIKE iloc.*
	DEFINE f_iplas_count		INTEGER
	DEFINE f_sum_qty		INTEGER
	DEFINE f_abort			SMALLINT 
	DEFINE f_free_selloc_flg CHAR(1)
	DEFINE f_no_iplas		SMALLINT 
	DEFINE f_no_iloc		SMALLINT 

	LET f_sum_qty = 0 
	LET f_iplas_count = 0 
	LET f_no_iplas = FALSE
	LET f_no_iloc = FALSE

	LET f_sel_stmt = "SELECT * FROM aothd WHERE ",
					 " dc_id =",m_scr_irctd_rec.dc_id,
					" AND whse_id =",m_scr_irctd_rec.rcv_whse_id,
					" AND lic_plt_id =",m_scr_irctd_rec.lic_plt_id,
					" AND ptty_id <> 'N' ",
					" AND to_loc_id[1,3] NOT IN ( 'DOR','PND','HAU','STK')",
					" AND lhty_id IN ('PU','MP')",
					" AND to_loc_id IS NOT NULL ",
					" AND to_loc_id <> '    ' " 
	PREPARE p_cur_iinvd FROM f_sel_stmt
	IF SQLCA.SQLCODE <> 0 THEN 
		LET m_msg = "PREPARE from aothd FAILED SQLCODE =",SQLCA.SQLCODE,
				"ISAM=",SQLCA.SQLERRD[2]
		CALL sh_elog_4gl(m_module,"%C%",m_msg) RETURNING m_ignore
		CALL sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"Exit:process_man_aothd")	RETURNING m_ignore
		RETURN TRUE 
	END IF 

	DECLARE d_cur_iinvd CURSOR FOR p_cur_iinvd

	OPEN d_cur_iinvd
	IF SQLCA.SQLCODE <> 0 THEN 
		LET m_msg = "OPEN d_cur_iinvd FAILED SQLCODE=",SQLCA.SQLCODE,
					"ISAM=",SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"Exit: process_man_aothd")
		RETURN TRUE 
	END IF 
	WHILE TRUE 	 
		FETCH d_cur_iinvd INTO f_aothd.*
	
		IF SQLCA.SQLCODE <> 0 THEN
			IF SQLCA.SQLCODE = NOTFOUND THEN 
				EXIT WHILE 
			END IF  
			LET m_msg = "FETCH d_cur_iinvd FAILED SQLCODE=",SQLCA.SQLCODE,
					"ISAM=",SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)      
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
						"Exit:process_man_aothd") 
			RETURN TRUE 
		END IF 
		SELECT * INTO f_iloc.* 
		FROM iloc 
		WHERE dc_id = m_scr_irctd_rec.dc_id
		AND whse_id = m_scr_irctd_rec.whse_id
		AND loc_id = f_aothd.to_loc_id
		IF SQLCA.SQLCODE <> 0 THEN 
			IF SQLCA.SQLCODE = NOTFOUND THEN 	
				IF f_aothd.to_loc_id[1,1] = "@" OR f_aothd.to_loc_id[1,1] ="!" THEN 
					LET f_no_iloc = TRUE
					EXIT WHILE 
				END IF 
				CONTINUE WHILE 
			END IF 
			LET m_msg = "SELECT location information FAILED SQLCODE=",
					SQLCA.SQLCODE,"ISAM=",SQLCA.SQLERRD[2],f_aothd.to_loc_id
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"EXIT: process_man_aothd")
			RETURN TRUE
		END IF 	
		SELECT * INTO f_iplas.* 
		FROM iplas 
		WHERE dc_id = m_scr_irctd_rec.dc_id
		AND whse_id = m_scr_irctd_rec.whse_id
		AND loc_id = f_aothd.to_loc_id
		AND prod_id = f_aothd.prod_id
		AND prdd_id = f_aothd.prdd_id
		IF SQLCA.SQLCODE <> 0 THEN 
			IF SQLCA.SQLCODE = NOTFOUND THEN 
				BEGIN WORK 
				LET f_no_iplas = TRUE 
				SELECT SUM(iinvd.prod_qty) INTO f_sum_qty 
				FROM iinvd,iplas 
				WHERE iplas.dc_id = m_scr_irctd_rec.dc_id
				AND	iplas.whse_id = m_scr_irctd_rec.whse_id
				AND iplas.loc_id = f_aothd.to_loc_id
				AND iplas.dc_id = iinvd.dc_id
				AND iplas.whse_id = iinvd.whse_id
				AND iplas.plas_id = iinvd.plas_id
				IF SQLCA.SQLCODE <> 0 THEN 
					LET m_msg = "SELECT sum(iinvd.prod_qty) FAILED SQLCODE=",
						SQLCA.SQLCODE,"ISAM=",SQLCA.SQLERRD[2],f_aothd.to_loc_id
					LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
							"Exit:process_man_aothd")
					RETURN TRUE
				END IF 
				IF f_sum_qty IS NULL OR f_sum_qty = "    " THEN 
					LET f_sum_qty = 0 
				END IF 
				EXIT WHILE 
			END IF 
			LET m_msg = "SELECT iplas information FAILED SQLCODE =",
				SQLCA.SQLCODE,"ISAM=",SQLCA.SQLERRD[2],f_aothd.to_loc_id
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: process_man_aothd")
			RETURN TRUE 
		END IF 
		SELECT COUNT(*) INTO f_iplas_count 
		FROM iinvd
		WHERE dc_id = m_scr_irctd_rec.dc_id
		AND whse_id = m_scr_irctd_rec.whse_id
		AND plas_id = f_iplas.plas_id
		IF SQLCA.SQLCODE <> 0 THEN 
			LET m_msg = "SELECT plas_count FROM iinvd FAILED SQLCODE=",
				SQLCA.SQLCODE,"ISAM=",SQLCA.SQLERRD[2],f_iplas.plas_id
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"Exit: process_man_aothd")
			RETURN TRUE 
		END IF 

		SELECT SUM(iinvd.prod_qty) INTO f_sum_qty 
		FROM iinvd,iplas 
		WHERE iplas.dc_id = m_scr_irctd_rec.dc_id
		AND iplas.whse_id = m_scr_irctd_rec.whse_id
		AND iplas.loc_id = f_aothd.to_loc_id
		AND iplas.dc_id = iinvd.dc_id
		AND iplas.whse_id = iinvd.whse_id
		AND iplas.plas_id = iinvd.plas_id
		IF SQLCA.SQLCODE <> 0 THEN 
			LET m_msg = "SELECT sum(iinvd.prod_qty) FAILED SQLCODE=",
				SQLCA.SQLCODE,"ISAM=",SQLCA.SQLERRD[2],f_aothd.to_loc_id
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"Exit:process_man_aothd")
			RETURN TRUE
		END IF 
		IF f_sum_qty IS NULL OR f_sum_qty = "    " THEN 
			LET f_sum_qty = 0 
		END IF 
		IF f_iloc.lrea_id <> 'R' OR f_iloc.ldsp_id <> "K" THEN 
		IF f_iplas_count = 0 THEN 
		CALL find_fpcwc_sel_flg(m_scr_irctd_rec.dc_id,m_scr_irctd_rec.whse_id,f_aothd.to_loc_id) RETURNING f_abort,f_free_selloc_flg
			IF f_abort = TRUE THEN 
				LET m_msg = "Function find_fpcwc_sel_flg returned TRUE "
				LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
						"Exit:process_man_aothd")
				RETURN TRUE 
			END IF 
			BEGIN WORK 	
			IF f_free_selloc_flg = "Y" THEN 		
				DELETE FROM iplas WHERE 
				iplas.plas_id = f_iplas.plas_id
				IF SQLCA.SQLCODE <> 0 THEN 
					LET m_msg = "DELETE FROM iplas FAILED SQLCODE="
						,SQLCA.SQLCODE,"ISAM=",SQLCA.SQLERRD[2]
					CALL sh_elog_4gl(m_module,"%C%",m_msg) RETURNING m_ignore
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
						"Exit:process_man_aothd")
					ROLLBACK WORK 
					RETURN TRUE 
				END IF 
			ELSE
				DELETE FROM iplas WHERE 
				iplas.plas_id = f_iplas.plas_id
				AND lcus_id NOT IN ( "P","A","S","F","V")
				IF SQLCA.SQLCODE <> 0 THEN 
					LET m_msg = "DELETE FROM iplas FAILED SQLCODE="
						,SQLCA.SQLCODE,"ISAM=",SQLCA.SQLERRD[2]
					CALL sh_elog_4gl(m_module,"%C%",m_msg) RETURNING m_ignore
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
						"Exit:process_man_aothd")
					ROLLBACK WORK 
					RETURN TRUE 
				END IF 
			END IF 
			IF SQLCA.SQLERRD[3] > 0  AND f_sum_qty = 0   THEN 
				CASE f_iloc.ldsp_id
				WHEN "F"
					UPDATE iloc SET lsta_id = "F"
					WHERE dc_id = m_scr_irctd_rec.dc_id
					AND whse_id = m_scr_irctd_rec.whse_id
					AND loc_id = f_aothd.to_loc_id
					IF SQLCA.SQLCODE <> 0 THEN 
						LET m_msg = "UPDATE iloc TO FREE FAILED SQLCODE=",
						SQLCA.SQLCODE,"ISAM=",SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module
							,13863,"Exit:process_man_aothd")
						ROLLBACK WORK 
						RETURN TRUE 
					END IF 
				WHEN "D"
					DELETE FROM iloc 
					WHERE dc_id = m_scr_irctd_rec.dc_id
					AND whse_id = m_scr_irctd_rec.whse_id
					AND loc_id = f_aothd.to_loc_id
				
					IF SQLCA.SQLCODE <> 0 THEN 
						LET m_msg = "DELETE iloc FAILED SQLCODE=",
						SQLCA.SQLCODE,"ISAM=",SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module
							,13878,"Exit:process_man_aothd")
						ROLLBACK WORK 
						RETURN TRUE 
					END IF 
				END CASE 
			END IF 	
		END IF 
		END IF 
		DELETE FROM aothd WHERE 
		dc_id = f_aothd.dc_id
		AND whse_id = f_aothd.whse_id
		AND lic_plt_id = f_aothd.lic_plt_id
		AND prod_id = f_aothd.prod_id
		AND prdd_id = f_aothd.prdd_id 
		AND to_loc_id[1,3] IN ( "HAU","PND","STK","DOR")
		IF SQLCA.SQLCODE <> 0 THEN 
			LET m_msg = "DELETE FROM aothd LINKED workunits FAILED SQLCODE",
					SQLCA.SQLCODE,"ISAM=",SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"Exit: process_man_aothd")
			ROLLBACK WORK 
			RETURN TRUE 
		END IF 
		UPDATE aothd SET ptty_id = "N" ,to_loc_id = "    " 
		WHERE dc_id = f_aothd.dc_id
		AND whse_id = f_aothd.whse_id
		AND lic_plt_id = f_aothd.lic_plt_id
		AND prod_id = f_aothd.prod_id
		AND prdd_id = f_aothd.prdd_id
		AND lhty_id IN ("PU","MP")
		IF SQLCA.SQLCODE <> 0 THEN 
			LET m_msg = "UPDATE aothd FAILED SQLCODE=",SQLCA.SQLCODE,
						"ISAM=",SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"Exit: process_man_aothd")
			ROLLBACK WORK 
			RETURN TRUE 
		END IF 
		EXIT WHILE 
	END WHILE 
	IF f_no_iplas AND f_sum_qty = 0  THEN 
		CASE f_iloc.ldsp_id
		WHEN "F"
			UPDATE iloc SET lsta_id = "F"
			WHERE dc_id = m_scr_irctd_rec.dc_id
			AND whse_id = m_scr_irctd_rec.whse_id
			AND loc_id = f_aothd.to_loc_id
			IF SQLCA.SQLCODE <> 0 THEN 
				LET m_msg = "UPDATE iloc TO FREE FAILED SQLCODE=",
				SQLCA.SQLCODE,"ISAM=",SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module
					,13932,"Exit:process_man_aothd")
				ROLLBACK WORK 
				RETURN TRUE 
			END IF 
		WHEN "D"
			DELETE FROM iloc 
			WHERE dc_id = m_scr_irctd_rec.dc_id
			AND whse_id = m_scr_irctd_rec.whse_id
			AND loc_id = f_aothd.to_loc_id
			IF SQLCA.SQLCODE <> 0 THEN 
				LET m_msg = "DELETE iloc FAILED SQLCODE=",
				SQLCA.SQLCODE,"ISAM=",SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module
					,13946,"Exit:process_man_aothd")
				ROLLBACK WORK 
				RETURN TRUE 
			END IF 
		END CASE
	END IF 
	IF f_no_iplas OR f_no_iloc THEN 
		DELETE FROM aothd WHERE 
		dc_id = f_aothd.dc_id
		AND whse_id = f_aothd.whse_id
		AND lic_plt_id = f_aothd.lic_plt_id
		AND prod_id = f_aothd.prod_id
		AND prdd_id = f_aothd.prdd_id 
		AND to_loc_id[1,3] IN ( "HAU","PND","STK","DOR")
		IF SQLCA.SQLCODE <> 0 THEN 
			LET m_msg = "DELETE FROM aothd LINKED workunits FAILED SQLCODE",
					SQLCA.SQLCODE,"ISAM=",SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"Exit: process_man_aothd")
			ROLLBACK WORK 
			RETURN TRUE 
		END IF 
		UPDATE aothd SET ptty_id = "N" ,to_loc_id = "    " 
		WHERE dc_id = f_aothd.dc_id
		AND whse_id = f_aothd.whse_id
		AND lic_plt_id = f_aothd.lic_plt_id
		AND prod_id = f_aothd.prod_id
		AND prdd_id = f_aothd.prdd_id
		AND lhty_id IN ("PU","MP")
		IF SQLCA.SQLCODE <> 0 THEN 
			LET m_msg = "UPDATE aothd FAILED SQLCODE=",SQLCA.SQLCODE,
						"ISAM=",SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg) 
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"Exit: process_man_aothd")
			ROLLBACK WORK 
			RETURN TRUE 
		END IF 
	END IF 
	COMMIT WORK
		
 	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
						"Exit:process_man_aothd")
	RETURN FALSE
END FUNCTION 
##############################################################################	

FUNCTION find_fpcwc_sel_flg(f_dc_id, f_whse_id, f_loc_id)
################################################################################

	DEFINE f_dc_id		LIKE sdc.dc_id
	DEFINE f_whse_id	LIKE swhse.whse_id
	DEFINE f_loc_id		LIKE iloc.loc_id
	DEFINE f_free_selloc_flg	LIKE fpcwc.free_selloc_flg
	DEFINE f_count		INTEGER

	CALL sh_mlog_4gl (g_std_func_chan, m_module,"%C%", 
		"ENTER find_fpcwc_sel_flg") RETURNING m_ignore
	LET f_free_selloc_flg	= "N"

	SELECT free_selloc_flg 
	INTO f_free_selloc_flg FROM fpcwc
	WHERE dc_id = f_dc_id
	  AND whse_id = f_whse_id
	  AND f_loc_id >= from_loc
	  AND f_loc_id <= to_loc

	IF	SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "SELECT fpcwc fail. SQLCODE:", SQLCA.SQLCODE,
					" ISAM:", SQLCA.SQLERRD[2]
		CALL sh_elog_4gl(m_module,"%C%", m_msg) RETURNING m_ignore
		RETURN TRUE, f_free_selloc_flg
	END IF
	CALL sh_mlog_4gl (g_std_func_chan, m_module,"%C%", 
		"EXIT find_fpcwc_sel_flg") RETURNING m_ignore

	RETURN FALSE, f_free_selloc_flg

END FUNCTION

{####################################################################################################}

FUNCTION populate_from_scanned()

	DEFINE f_ret_status	INTEGER
	DEFINE f_ret_choice	INTEGER
	DEFINE f_irctd_rec	RECORD LIKE irctd.*

    CALL sh_mlog_4gl(g_std_func_chan, m_module,"%C%", 
		"ENTER: populate_from_scanned")
		RETURNING m_ignore

	IF m_scan_rec.upc_id IS NOT NULL
	OR (m_scan_rec.upc_id IS NULL
	AND (m_scr_irctd_rec.upc_id IS NOT NULL
		AND m_scr_irctd_rec.upc_id <> "              "))
	THEN
		IF m_scr_irctd_rec.upc_id IS NULL
		OR m_scr_irctd_rec.upc_id = "              "
		THEN
			LET m_scr_irctd_rec.upc_id = m_scan_rec.upc_id
		END IF

		# determine whether the lic_plate is a new license plate or not.
		SELECT *
		INTO f_irctd_rec.*
		FROM irctd
		WHERE irctd.lic_plt_id = m_scr_irctd_rec.lic_plt_id

		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "SELECT irctd failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: populate_from_scanned")
			EXIT PROGRAM
		END IF

		IF SQLCA.SQLCODE != 100
		THEN
			# ensure upc is the upc for that pallet (not a upc for a different
			# pallet on the same po)
			SELECT 1
			FROM irctd, iupcd
			WHERE irctd.prod_id = iupcd.prod_id
			AND irctd.lic_plt_id = m_scr_irctd_rec.lic_plt_id
			AND iupcd.upc_id = m_scr_irctd_rec.upc_id
			AND iupcd.prod_id = f_irctd_rec.prod_id

			IF SQLCA.SQLCODE = 100
			THEN
				# invalid upc
				LET m_scr_irctd_rec.upc_id = NULL
				CALL sh_rf_cmd_msg("I9070")	#-- upc not found
				SLEEP 1
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,
					"%C%", "EXIT: populate_from_scanned")
				RETURN 1
			END IF
	
			IF SQLCA.SQLCODE < 0
			THEN
				LET m_msg = "SELECT irctd, iupcd failed.",
							" SQLCODE=", SQLCA.SQLCODE,
							" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				CALL sh_rf_cmd_msg("I9060")	#-- system failure
				SLEEP 2
				LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
					"EXIT: populate_from_scanned")
				EXIT PROGRAM
			END IF
		END IF

		# retrieve upc
		CALL proc_po_prod("U") RETURNING f_ret_status, f_ret_choice
		IF f_ret_status
		THEN
			# invalid upc
			LET m_scr_irctd_rec.upc_id = NULL
			RETURN 1
		END IF

		#retrieve product detail
		CALL proc_prod_prdd(f_ret_choice) RETURNING f_ret_status
		IF f_ret_status
		THEN
			# invalid product detail
			RETURN 2
		END IF
	END IF

	IF m_scan_rec.code_date IS NOT NULL
	THEN
		LET m_scr_irctd_rec.code_date = m_scan_rec.code_date
	END IF

	IF m_scan_rec.lot_no IS NOT NULL
	THEN
		LET m_scr_irctd_rec.lot_no = m_scan_rec.lot_no
	END IF

    IF m_scr_irctd_rec.rcpt_id IS NULL
    OR m_scr_irctd_rec.rcpt_id = 0
    THEN
        LET m_scr_irctd_rec.rcpt_id = f_irctd_rec.rcpt_id
    END IF

    CALL sh_mlog_4gl(g_std_func_chan, m_module,"%C%", 
		"EXIT: populate_from_scanned")
		 RETURNING m_ignore

	RETURN 0

END FUNCTION


FUNCTION process_EAN128_scan(f_barcode)

	DEFINE	f_status		SMALLINT
	DEFINE  f_barcode		CHAR(60)
	DEFINE	f_mindate_ytd	DATETIME YEAR TO DAY
	DEFINE	f_maxdate_ytd	DATETIME YEAR TO DAY
	DEFINE	f_lic_plt_id	LIKE iinvd.lic_plt_id
	DEFINE	f_upc_id		LIKE iupcd.upc_id
	DEFINE	f_code_date		LIKE irctd.code_date
	DEFINE	f_catch_wgt		LIKE irctd.catch_wgt
 	DEFINE	f_lot_no	 	LIKE irctd.lot_no
	DEFINE	f_prd_varies	SMALLINT

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: process_EAN128_scan")

	-- 00  SSCC License Plate
	CALL get_EAN128_lic_plt(f_barcode)
		RETURNING m_ignore, f_lic_plt_id
	IF f_lic_plt_id IS NOT NULL
		AND LENGTH(f_barcode) > 18
	THEN
		LET m_scan_rec.lic_plt_id = f_lic_plt_id
	END IF

	-- If the first three chars are "]C1", it is probably
	-- an EAN128 barcode.  We will try to extract all the values we need.
	IF f_barcode[1,3] = "]C1"
	THEN

		-- 01  UPC Code
		CALL get_EAN128_upc(f_barcode)
			RETURNING m_ignore, f_upc_id
		IF f_upc_id IS NOT NULL
		THEN
			LET m_scan_rec.upc_id = f_upc_id
		END IF

		IF m_scan_wgt_units = "P"
		THEN
			-- 320  Net weight product in pounds
			CALL get_EAN128_wgt_lbs(f_barcode) 
				RETURNING m_ignore, f_catch_wgt
			IF f_catch_wgt IS NOT NULL
			THEN
				LET m_scan_rec.catch_wgt = f_catch_wgt
			END IF
		ELSE
			IF m_scan_wgt_units = "K"
			THEN
				-- 310	Net weight product in kgs
				CALL get_EAN128_wgt_kgs(f_barcode) 
					RETURNING m_ignore, f_catch_wgt
				IF f_catch_wgt IS NOT NULL
				THEN
					LET m_scan_rec.catch_wgt = f_catch_wgt
				END IF
			ELSE
				-- 320  Net weight product in pounds
				CALL get_EAN128_wgt_lbs(f_barcode) 
					RETURNING m_ignore, f_catch_wgt
				IF f_catch_wgt IS NOT NULL
				THEN
					LET m_scan_rec.catch_wgt = f_catch_wgt
				END IF
				IF f_catch_wgt IS NULL
				THEN
					-- 310  Net weight product in kgs
					CALL get_EAN128_wgt_kgs(f_barcode) 
						RETURNING m_ignore, f_catch_wgt
					IF f_catch_wgt IS NOT NULL
					THEN
						LET m_scan_rec.catch_wgt = f_catch_wgt
					END IF
				END IF
			END IF
		END IF

		-- 15  Minimum Code date (YYMMDD)
		CALL get_EAN128_min_date(f_barcode) 
			RETURNING m_ignore, f_mindate_ytd
		
		-- 17  Maximum Code date (YYMMDD)
		CALL get_EAN128_max_date(f_barcode) 
			RETURNING m_ignore, f_maxdate_ytd

		IF f_maxdate_ytd IS NOT NULL
		AND f_mindate_ytd IS NOT NULL
		THEN
			IF f_mindate_ytd < f_maxdate_ytd
			THEN
				LET m_scan_rec.code_date = f_mindate_ytd
			ELSE
				LET m_scan_rec.code_date = f_maxdate_ytd
			END IF
		ELSE
			IF f_maxdate_ytd IS NOT NULL
			THEN
				LET m_scan_rec.code_date = f_maxdate_ytd
			END IF
			IF f_mindate_ytd IS NOT NULL
			THEN
				LET m_scan_rec.code_date = f_mindate_ytd
			END IF
		END IF
		
		-- 20  Product Variant
		CALL get_EAN128_variant(f_barcode) 
			RETURNING m_ignore, f_prd_varies

		IF f_prd_varies IS NOT NULL
		THEN
			LET m_scan_rec.prd_varies = TRUE
		END IF

	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: process_EAN128_scan")

	RETURN FALSE

END FUNCTION
{*****************************************************************************}
FUNCTION check_inbd_comp(f_rcnt)
	DEFINE f_rcnt SMALLINT
	DEFINE f_i	SMALLINT
	DEFINE f_arr_cur	INTEGER
	DEFINE f_scr_cur	INTEGER
	DEFINE f_abort		SMALLINT
	DEFINE f_inbd_excep RECORD
		desc	CHAR(30),
		ysno	CHAR(1)
	END RECORD

	DEFINE f_scope			LIKE sacvv.scope_key
	DEFINE f_sacvv			RECORD LIKE sacvv.*

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: check_inbd_com")

	# Get inbound compliance flag here
	LET f_scope = m_scr_irctd_rec.whse_id USING "<&"
	CALL lkp_sacvv("GLOBAL", "inbd_comp", "WH", f_scope)
		RETURNING f_abort, f_sacvv.*
	IF f_abort
	THEN
		LET m_inbd_comp = 'N'
	ELSE
		LET m_inbd_comp = f_sacvv.value
	END IF		

	IF m_inbd_comp <> 'Y'
	THEN
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: check_inbd_com")
		RETURN FALSE
	END IF	

	LET  f_abort = FALSE

	OPEN c_inbd_desc USING g_user.lang_id,m_scr_irctd_rec.appt_id,m_arr_po_close[f_rcnt].po_id
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN c_inbd_desc failed. SQLCODE = ",
			SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: check_inbd_com")
		CALL sh_rf_cmd_msg("I9060")
		SLEEP 2
		RETURN TRUE	
	END IF
	LET f_i = 0
	WHILE TRUE
		LET f_i = f_i + 1
		FETCH c_inbd_desc INTO f_inbd_excep.desc, m_inbd_serial_array[f_i].*
		IF SQLCA.SQLCODE = NOTFOUND
		THEN
			EXIT WHILE
		END IF
		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "FETCH c_inbd_desc failed. SQLCODE = ",
				SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: check_inbd_com")
			CALL sh_rf_cmd_msg("I9060")
			SLEEP 2
			RETURN TRUE	
		END IF

		OPEN c_sel_iians USING g_user.lang_id, 
							m_inbd_serial_array[f_i].inbc_id,	
							m_inbd_serial_array[f_i].serial_id	
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "OPEN c_sel_iians failed. SQLCODE = ",
				SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: check_inbd_com")
			CALL sh_rf_cmd_msg("I9060")
			SLEEP 2
			RETURN TRUE	
		END IF

		FETCH c_sel_iians INTO f_inbd_excep.ysno
		IF SQLCA.SQLCODE != 0
		THEN
			LET m_msg = "FETCH c_sel_iians failed. SQLCODE = ",
				SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			LET f_inbd_excep.ysno = NULL
		END IF

		LET m_inbd_excep_array[f_i].inbc_desc_1 = f_inbd_excep.desc[1,15]
		LET m_inbd_excep_array[f_i].inbc_desc = f_inbd_excep.desc[16,30]
		LET m_inbd_excep_array[f_i].ysno = f_inbd_excep.ysno
		LET m_inbd_excep_orig[f_i].*  = m_inbd_excep_array[f_i].*
		IF LENGTH(m_inbd_excep_array[f_i].ysno) = 0
		OR m_inbd_excep_array[f_i].ysno IS NULL
		THEN
			LET m_inbd_excep_array[f_i].ysno = 'N'
		END IF

		IF f_i >= 100
		THEN
			LET m_msg = "Array exceeded max limit. f_i = ", f_i
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			EXIT WHILE
		END IF
	END WHILE

	LET m_dtl_rows = f_i - 1
	IF m_dtl_rows < 1
	THEN
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: check_inbd_com")
		RETURN FALSE
	END IF

	CALL set_count(m_dtl_rows)
	CALL open_inbd_excep()
	INPUT ARRAY m_inbd_excep_array WITHOUT DEFAULTS FROM s_det_rec.*
		BEFORE INPUT 
			LET f_arr_cur = arr_curr()
			LET f_scr_cur = scr_line()		
			FOR f_i = 1 TO 4
					DISPLAY m_inbd_excep_array[101].* TO s_det_rec[f_i].*
						ATTRIBUTE(NORMAL)
			END FOR
			FOR f_i = 1 TO m_dtl_rows
				DISPLAY m_inbd_excep_array[f_i].* TO s_det_rec[f_i].*
					ATTRIBUTE(NORMAL)
			END FOR 
			DISPLAY m_scr_irctd_rec.appt_id TO s_hdr_rec.appt_id
					ATTRIBUTE(NORMAL)
			DISPLAY m_arr_po_close[f_rcnt].po_id TO s_hdr_rec.po_id 
					ATTRIBUTE(NORMAL)
		BEFORE ROW
			LET f_arr_cur = arr_curr()
			LET f_scr_cur = scr_line()		
			DISPLAY m_inbd_excep_array[f_arr_cur].* TO s_det_rec[f_scr_cur].*
					ATTRIBUTE(NORMAL)
		BEFORE FIELD ysno
			LET f_arr_cur = arr_curr()
			LET f_scr_cur = scr_line()		
			DISPLAY m_inbd_excep_array[f_arr_cur].ysno TO s_det_rec[f_scr_cur].ysno
					ATTRIBUTE(REVERSE)

		ON KEY (ESCAPE, INTERRUPT, DELETE)
			LET  f_abort = TRUE
			EXIT INPUT
			
		AFTER FIELD ysno 
			DISPLAY m_inbd_excep_array[f_arr_cur].ysno TO s_det_rec[f_scr_cur].ysno
					ATTRIBUTE(NORMAL)
			IF m_inbd_excep_array[f_arr_cur].ysno <> 'Y'
			AND m_inbd_excep_array[f_arr_cur].ysno <> 'N'
			THEN
				NEXT FIELD ysno
			END IF
        	IF f_arr_cur >= m_dtl_rows
        	AND fgl_lastkey() <> fgl_keyval("UP")
        	AND fgl_lastkey() <> fgl_keyval("LEFT")
        	AND fgl_lastkey() <> fgl_keyval("ACCEPT")
        	THEN
           	 NEXT FIELD ysno
        	END IF
	END INPUT	
	CALL close_inbd_excep()
	IF NOT f_abort
	THEN
		IF update_dtl()
		THEN
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: check_inbd_com")
			LET m_msg = "system failure"
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			CALL sh_rf_cmd_msg("I9060")
			SLEEP 2 
			RETURN TRUE
		END IF
	END IF
	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: check_inbd_com")
	RETURN FALSE
END FUNCTION
{**************************************************************}
FUNCTION update_dtl()
	DEFINE f_i	SMALLINT
	DEFINE f_iians	RECORD LIKE iians.*
	
	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"ENTER: update_dtl")

	BEGIN WORK
	FOR f_i =  1 TO m_dtl_rows
		IF LENGTH(m_inbd_excep_orig[f_i].ysno) = 0 
		THEN
			LET f_iians.inbc_id = m_inbd_serial_array[f_i].inbc_id
			LET f_iians.serial_id = m_inbd_serial_array[f_i].serial_id
			LET f_iians.lang_id = g_user.lang_id
			LET f_iians.change_dtim = CURRENT
			LET f_iians.change_user = g_user.user_id
			LET f_iians.create_dtim = CURRENT
			LET f_iians.create_user = g_user.user_id
			LET f_iians.inbc_ans = m_inbd_excep_array[f_i].ysno
			INSERT INTO iians VALUES(f_iians.*)
			IF SQLCA.SQLCODE <> 0
			THEN
				LET m_msg = "INSERT iians failed. SQLCODE = ",
					SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2]
				LET m_ignore =sh_elog_4gl(m_module,"%C%",m_msg)
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
						"EXIT: update_dtl")
				ROLLBACK WORK
				RETURN TRUE
			END IF
		ELSE 
			IF m_inbd_excep_array[f_i].ysno <> m_inbd_excep_orig[f_i].ysno
			THEN
				UPDATE iians SET inbc_ans = m_inbd_excep_array[f_i].ysno,
					change_dtim = CURRENT YEAR TO SECOND,
					change_user = g_user.user_id
				WHERE iians.lang_id = g_user.lang_id
				AND iians.inbc_id = m_inbd_serial_array[f_i].inbc_id
				AND iians.serial_id = m_inbd_serial_array[f_i].serial_id
				IF SQLCA.SQLCODE <> 0
				THEN
					LET m_msg = "UPDATE iians failed. SQLCODE = ",
						SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
						"EXIT: update_dtl")
					ROLLBACK WORK
					RETURN TRUE	
				END IF
			END IF
		END IF
	END FOR
	COMMIT WORK
	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: update_dtl")
	RETURN FALSE
END FUNCTION

#----------------------------------------------------------------#
FUNCTION find_iinvd_prod_qty()
#----------------------------------------------------------------#
	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"ENTER: find_iinvd_prod_qty")

	LET m_iinvd_prod_qty	= 0

	SELECT SUM(prod_qty) INTO m_iinvd_prod_qty
	FROM iinvd
	WHERE iinvd.dc_id    = m_scr_irctd_rec.dc_id     
  	AND iinvd.whse_id    = m_scr_irctd_rec.whse_id   
  	AND iinvd.lic_plt_id = m_scr_irctd_rec.lic_plt_id
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "SELECT iinvd failed. SQLCODE = ",
				SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2],
				", lic=", m_scr_irctd_rec.lic_plt_id
		LET m_ignore =sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
									m_msg)
		LET m_iinvd_prod_qty = 0
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: find_iinvd_prod_qty")
END FUNCTION

#----------------------------------------------------------------#
FUNCTION find_iinvd_cde_dt(f_dc_id, f_whse_id, f_lic_plt_id)
#----------------------------------------------------------------#

	DEFINE f_dc_id			LIKE irctd.dc_id
	DEFINE f_whse_id		LIKE irctd.whse_id
	DEFINE f_lic_plt_id		LIKE irctd.lic_plt_id

	DEFINE f_date_char		CHAR(10)
	DEFINE f_plas_id		LIKE iplas.plas_id
	DEFINE f_receipt_dtim	DATETIME YEAR TO SECOND

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"ENTER: find_iinvd_cde_dt")

	LET m_pwy_dte_ctl = "N"
	LET m_iinvd_cde_dt = "" 
	LET f_receipt_dtim = ""

	SELECT cde_dt, receipt_dtim, plas_id INTO m_iinvd_cde_dt, f_receipt_dtim, 
		f_plas_id
	FROM iinvd
	WHERE iinvd.dc_id    = f_dc_id     
  	AND iinvd.whse_id    = f_whse_id   
  	AND iinvd.lic_plt_id = f_lic_plt_id
	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "SELECT iinvd(cde_dt) failed. SQLCODE = ",
				SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2],
				", lic=", f_lic_plt_id
		LET m_ignore =sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", m_msg)
		RETURN
	END IF

	IF SQLCA.SQLCODE = 100				#possible generic L/P
	THEN
		LET f_receipt_dtim = CURRENT
	END IF

	SELECT pwy_dte_ctl INTO m_pwy_dte_ctl
	FROM iplas, iprod
	WHERE iplas.dc_id = f_dc_id     
  	AND iplas.whse_id = f_whse_id   
  	AND iplas.plas_id = f_plas_id
  	AND iplas.dc_id   = iprod.dc_id
  	AND iplas.prod_id = iprod.prod_id
	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "SELECT iplas(cde_dt_prod) failed. SQLCODE = ",
				SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2],
				", lic=", f_lic_plt_id, ", plas_id=", f_plas_id
		LET m_ignore =sh_elog_4gl(m_module,"%C%",m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%", m_msg)
		RETURN
	END IF

	LET f_date_char = m_iinvd_cde_dt

	IF (m_iinvd_cde_dt IS NULL 
		OR m_iinvd_cde_dt = "12/31/2099"
		OR m_iinvd_cde_dt = "12/31/1899"
		OR LENGTH(f_date_char) = 0)
	AND m_ret_iprod.pwy_dte_ctl != "Y"
	THEN
		LET m_iinvd_cde_dt = f_receipt_dtim
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: find_iinvd_cde_dt")
END FUNCTION

{******************************************************************************}
FUNCTION find_unld_aothd(f_dc_id, f_whse_id, f_lic_plt_id)

	DEFINE f_dc_id		  LIKE aothd.dc_id
	DEFINE f_whse_id	  LIKE aothd.whse_id
	DEFINE f_lic_plt_id	  LIKE aothd.lic_plt_id
	DEFINE f_phys_whse_id LIKE aothd.phys_whse_id

	DEFINE f_not_found	  LIKE aothd.lic_plt_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: find_unld_aothd") 

	LET f_not_found = FALSE
	INITIALIZE m_unld_aothd.* TO NULL

	# Check to see if we already have the proper frewc record.
	IF m_ret_frewc.whse_id IS NULL
	OR m_ret_frewc.whse_id <> f_whse_id
	THEN
		OPEN c_frewc USING	f_dc_id,
							f_whse_id
		IF SQLCA.SQLCODE < 0
        THEN
			LET m_msg = "find_unld_aothd:  OPEN c_frewc failed. SQLCODE=",
						SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2],
						" DC=", f_dc_id, " WH=", f_whse_id
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	    	CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: find_unld_aothd")
			RETURN TRUE
		END IF

		FETCH c_frewc INTO m_ret_frewc.*

		IF SQLCA.SQLCODE < 0 
		THEN
			LET m_msg = "find_unld_aothd:   FETCH c_frewc failed. SQLCODE=",
				SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2],
				" DC=", f_dc_id, " WH=", f_whse_id
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			INITIALIZE m_ret_frewc.* TO NULL
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: find_unld_aothd")
			RETURN TRUE
		END IF

		CLOSE c_frewc

	END IF

	# Populate the aothd.whse_id with the umbrella whse id if possible.
	IF m_ret_frewc.rtim_wrk_whse IS NULL 
	THEN
		LET f_phys_whse_id = f_whse_id
		LET f_whse_id      = f_whse_id
	ELSE
		LET f_phys_whse_id = m_ret_frewc.whse_id
		LET f_whse_id      = m_ret_frewc.rtim_wrk_whse
	END IF

	##################################################################
	#SELECT *
    #  FROM aothd
	# WHERE aothd.dc_id          = f_dc_id
	#   AND aothd.whse_id        = f_whse_id
	#   AND aothd.phys_whse_id   = f_phys_whse_id
	#   AND aothd.lic_plt_id	 = f_lic_plt_id
	##################################################################

	OPEN c_find_aothd USING f_dc_id,
							f_whse_id,
							f_phys_whse_id,
							f_lic_plt_id
	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "OPEN c_find_aothd failed. SQLCODE=", SQLCA.SQLCODE,
					"ISAM=", SQLCA.SQLERRD[2], " DC=", f_dc_id,
					" Wh=", f_whse_id, " LP=", f_lic_plt_id
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: find_unld_aothd")
		RETURN SQLCA.SQLCODE
	END IF

	FETCH c_find_aothd INTO m_unld_aothd.*

	CASE
	WHEN ( SQLCA.SQLCODE = NOTFOUND )
		LET f_not_found = NOTFOUND
	WHEN ( SQLCA.SQLCODE < 0 )
		LET m_msg = "FETCH c_find_aothd failed. SQLCODE=", SQLCA.SQLCODE,
					"ISAM=", SQLCA.SQLERRD[2], " DC=", f_dc_id,
					" Wh=", f_whse_id, " LP=", f_lic_plt_id
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: find_unld_aothd")
		RETURN SQLCA.SQLCODE
	END CASE

	CLOSE c_find_aothd

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: find_unld_aothd")

	RETURN f_not_found

END FUNCTION

{****************************************************************************}
 # Builds and inserts a Checking work unit.
{****************************************************************************}
FUNCTION add_chck_wku(f_lhty_id, f_rpln_mthd, f_ret_aothd)

	DEFINE f_lhty_id		LIKE aothd.lhty_id
	DEFINE f_rpln_mthd		LIKE aothd.rpln_mthd

	DEFINE f_error			SMALLINT

	DEFINE f_dp				RECORD LIKE sdcpt.*
	DEFINE f_now			LIKE aothd.create_dtim
	DEFINE f_ret_aothd		RECORD LIKE aothd.*
	
	#T20190710.0009
    DEFINE f_sum_replen_qty LIKE aothd.replen_qty
    DEFINE f_sum_prod_qty   LIKE aothd.prod_qty
    DEFINE f_sum_rtrn_qty   LIKE aothd.rtrn_qty
    DEFINE f_sum_cse_qty    LIKE aothd.cse_qty

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module, "%C%",
		"ENTER: add_chck_wku")

	##############################################################
	# Check for ongoing Checking assignment
	##############################################################

    LET f_sum_replen_qty = 0
    LET f_sum_prod_qty = 0
    LET f_sum_rtrn_qty = 0
    LET f_sum_cse_qty = 0

	OPEN c_get_assg USING g_user.dflt_dc_id,
						g_user.assoc_id,
						g_user.dflt_whse_id

	FETCH c_get_assg INTO m_ret_aassg.*

	CASE
	WHEN ( SQLCA.SQLCODE = NOTFOUND )
		LET m_msg = "No current Checking assignment for user ",
			g_user.user_id CLIPPED, ", DC ", g_user.dflt_dc_id USING "<&",
		   ", Whse ", g_user.dflt_whse_id USING "<&", "."
		LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
		CALL sh_rf_err_msg("R4999") ## System error ##
		EXIT PROGRAM 5
	WHEN ( SQLCA.SQLCODE < 0 ) ## Error ##
		LET m_msg = "ERROR SELECT sasso, aassg dc_id= ",
			g_user.dflt_dc_id, " whse_id= ", g_user.dflt_whse_id,
			"SQLCODE: ",  SQLCA.SQLCODE, "ISAM:", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
		CALL sh_rf_err_msg("R4999") ## System error ##
		EXIT PROGRAM 5
	END CASE

	CLOSE c_get_assg

	LET f_now = CURRENT
	LET m_chck_aothd.* = f_ret_aothd.*

    IF m_rescan_lp = 'Y'
    THEN
        # Use othd_id for CK record to Update WHERE OTHD_ID = m_rescan_othd_ck
		# T20190710.0009
        LET m_chck_aothd.change_user = g_user.user_id
        LET m_chck_aothd.complete_dtim = f_now
    ELSE
        LET m_chck_aothd.othd_id = 0
    END IF

	LET m_chck_aothd.create_user = g_user.user_id
	LET m_chck_aothd.change_user = g_user.user_id
	LET m_chck_aothd.create_dtim = m_start_dtim
	LET m_chck_aothd.change_dtim = m_start_dtim
	LET m_chck_aothd.start_dtim  = m_start_dtim
	LET m_chck_aothd.complete_dtim = f_now

	LET m_chck_aothd.asgt_id = m_ret_aassg.asgt_id
	LET m_chck_aothd.appt_id = m_scr_irctd_rec.appt_id
	LET m_chck_aothd.po_id = m_ret_ipod.po_id
	LET m_chck_aothd.pod_id = m_ret_ipod.pod_id

	LET m_chck_aothd.assg_id = m_ret_aassg.assg_id
	LET m_chck_aothd.assoc_id = m_ret_aassg.assoc_id

	LET m_chck_aothd.jbcd_id = m_sjbcd.jbcd_id
	LET m_chck_aothd.jcty_id = m_sjbcd.jcty_id
	LET m_chck_aothd.jcfn_id = m_sjbcd.jcfn_id
	LET m_chck_aothd.jcsf_id = m_sjbcd.jcsf_id

	##################################################################
	# Flag Load Prep time for Standards calc.
	##################################################################
	IF m_load_task.load_prep = TRUE
	THEN
		LET m_chck_aothd.assg_prio = 1
	ELSE
		LET m_chck_aothd.assg_prio = 9
	END IF

	LET m_chck_aothd.trip_no = m_trip_no
	LET m_chck_aothd.trip_seq = m_trip_seq

	IF m_ret_aassg.asgt_id = "C"
	THEN
		LET m_chck_aothd.lhty_id = "CK"	## Checking
		# T20190710.0009 - SUM Total(s) Cases handled
        SELECT SUM(replen_qty), SUM(prod_qty), SUM(rtrn_qty),
                SUM(prod_qty / m_ret_iprdd.cse_unit)
          INTO f_sum_replen_qty, f_sum_prod_qty, f_sum_rtrn_qty, f_sum_cse_qty
          FROM aothd
         WHERE lic_plt_id = m_chck_aothd.lic_plt_id
           AND from_loc_id = m_chck_aothd.from_loc_id
           AND to_loc_id = m_chck_aothd.to_loc_id
           AND prod_id = m_chck_aothd.prod_id
           AND po_id = m_chck_aothd.po_id

        IF SQLCA.SQLCODE <> 0
        THEN
            LET m_msg = "SELECT SUM Checking aothd failed, SQLCODE=", SQLCA.SQLCODE,
                " ISAM=", SQLCA.SQLERRD[2], " Appt=", m_chck_aothd.appt_id,
                " PO=", m_chck_aothd.po_id, " Prod=", m_chck_aothd.prod_id,
                " Dtl=", m_chck_aothd.prdd_id, " LP=", m_chck_aothd.lic_plt_id
            LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
            LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%",
            "EXIT: add_chck_wku")
        ELSE
            LET m_msg = "TOTALS For LP=",m_chck_aothd.lic_plt_id,
                " : replen_qty=",f_sum_replen_qty," prod_qty=",
                f_sum_prod_qty," rtrn_qty=",f_sum_rtrn_qty," cse_qty=",f_sum_cse_qty
            LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
            LET m_chck_aothd.replen_qty = f_sum_replen_qty
            LET m_chck_aothd.prod_qty = f_sum_prod_qty
            LET m_chck_aothd.rtrn_qty = f_sum_rtrn_qty
            LET m_chck_aothd.cse_qty = f_sum_cse_qty
        END IF
	ELSE
		LET m_chck_aothd.lhty_id = "UC"	## Unloader Checking
	END IF

	##################################################################
	# Flag Unstack in Trailer time for Standards calc.
	##################################################################
	CASE
	WHEN m_load_task.man_unstk = TRUE
		LET m_chck_aothd.rpln_mthd = "MU"
	WHEN m_load_task.fork_unstk = TRUE
		LET m_chck_aothd.rpln_mthd = "TU"
	OTHERWISE
		LET m_chck_aothd.rpln_mthd = "FK"
	END CASE

	##################################################################
	# Flag Pinwheel time for Standards calc.
	##################################################################
	IF m_load_task.pinwheel = TRUE
	THEN
		LET m_chck_aothd.rotate_pal_flg = "Y"
	ELSE
		LET m_chck_aothd.rotate_pal_flg = "N"
	END IF

	##################################################################
	# Flag Special Handling time for Standards calc.
	##################################################################
	IF m_load_task.spec_hnd = TRUE
	THEN
		LET m_chck_aothd.mult_mve_typ = "S"
	ELSE
		LET m_chck_aothd.mult_mve_typ = "N"
	END IF

	##################################################################
	# Check Put-Away work unit to see if it was MPP-ed.  If so, flag
	# to give MPP time.
	##################################################################
	IF f_ret_aothd.lhty_id = "MP"
	THEN
		LET m_chck_aothd.mpp_othd_id = f_ret_aothd.othd_id
	END IF

	##################################################################
	# Check modular flags for alloting Checker standard time.
	##################################################################
	IF m_chkr_flg.alarm = TRUE
	THEN
		LET m_chck_aothd.skip_wunit_flg = "A"
		LET m_chkr_flg.alarm = FALSE
	END IF
	IF m_chkr_flg.ptwy = TRUE
	THEN
		LET m_chck_aothd.ptty_id = "C"
		LET m_chkr_flg.ptwy = FALSE
	END IF

	LET m_chck_aothd.wust_id = "COM"

	LET m_chck_aothd.cse_unit = m_ret_iprdd.cse_unit
	LET m_chck_aothd.cse_qty = f_ret_aothd.prod_qty / m_ret_iprdd.cse_unit

	##############################################################
	# From location data.
	##############################################################
	LET m_chck_aothd.from_dcpd_id = "DOR"
	LET m_chck_aothd.from_dcpt_id = f_ret_aothd.from_dcpt_id

	LET m_chck_aothd.from_loc_id =
		m_chck_aothd.from_dcpd_id, m_chck_aothd.from_dcpt_id

	CALL val_sdcpt_dcpt_id(	f_ret_aothd.dc_id,
							m_chck_aothd.from_dcpd_id,
							m_chck_aothd.from_dcpt_id)
		RETURNING m_ignore, f_dp.*

	LET m_chck_aothd.from_x_coord = f_dp.x_coord
	LET m_chck_aothd.from_y_coord = f_dp.y_coord
	LET m_chck_aothd.from_z_coord = f_dp.z_coord

	CALL get_sect_unld(	f_ret_aothd.dc_id,
						f_ret_aothd.whse_id,
						f_dp.dcpd_id,
						f_dp.dcpt_id)
		RETURNING	f_error,
					m_chck_aothd.from_sect_id,
					m_chck_aothd.from_rtim_sect_id
	IF f_error
	THEN
		LET m_msg = "Missing Whse or RF section for Door ", f_dp.dcpt_id,
			" From Loc: ", f_ret_aothd.from_loc_id, 
			" To Loc: ", f_ret_aothd.to_loc_id 

		LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%",
			"EXIT: add_chck_wku")
		RETURN TRUE, "R5614"
	END IF

	##############################################################
	# To location data.
	##############################################################
	LET m_chck_aothd.to_dcpd_id = "STG"
	LET m_chck_aothd.to_dcpt_id = m_chck_aothd.from_dcpt_id
	LET m_chck_aothd.to_loc_id =
		m_chck_aothd.to_dcpd_id, m_chck_aothd.to_dcpt_id

	CALL val_sdcpt_dcpt_id(	f_ret_aothd.dc_id,
							m_chck_aothd.to_dcpd_id,
							m_chck_aothd.to_dcpt_id)
		RETURNING m_ignore, f_dp.*

	LET m_chck_aothd.to_x_coord = f_dp.x_coord
	LET m_chck_aothd.to_y_coord = f_dp.y_coord
	LET m_chck_aothd.to_z_coord = f_dp.z_coord

	CALL get_sect_unld(	f_ret_aothd.dc_id,
						f_ret_aothd.whse_id,
						f_dp.dcpd_id,
						f_dp.dcpt_id)
		RETURNING	f_error,
					m_chck_aothd.to_sect_id,
					m_chck_aothd.to_rtim_sect_id
	IF f_error
	THEN
		LET m_msg = "Missing Whse or RF section for Stage Pt ", f_dp.dcpt_id,
			" From Loc: ", f_ret_aothd.from_loc_id, 
			" To Loc: ", f_ret_aothd.to_loc_id 

		LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%",
			"EXIT: add_chck_wku")
		RETURN TRUE, "R5614"
	END IF

    IF m_rescan_lp = 'Y'
    THEN
        # Update CK Workunit T20190710.0009
        # Use othd_id for CK record to Update WHERE OTHD_ID = m_rescan_othd_ck
        UPDATE aothd
           SET (replen_qty,
                prod_qty,
                cse_qty,
                rtrn_qty,
                change_user,
                change_dtim,
                complete_dtim)
             = (f_sum_replen_qty,
                f_sum_prod_qty,
                f_sum_cse_qty,
                f_sum_rtrn_qty,
                g_user.user_id,
                f_now,
                f_now)
         WHERE othd_id = m_rescan_othd_ck
        IF SQLCA.SQLCODE <> 0
        THEN
            LET m_msg = "UPDATE Checking aothd failed, SQLCODE=", SQLCA.SQLCODE,
                " ISAM=", SQLCA.SQLERRD[2],
                " Othd_id=", m_rescan_othd_ck,
                " LP=",m_chck_aothd.lic_plt_id
            LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
        END IF
	ELSE
		INSERT INTO aothd VALUES (m_chck_aothd.*)
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "INSERT Checking aothd failed, SQLCODE=", SQLCA.SQLCODE,
				" ISAM=", SQLCA.SQLERRD[2],
				" Appt=", m_chck_aothd.appt_id, " PO=", m_chck_aothd.po_id,
				" Prod=", m_chck_aothd.prod_id, " Dtl=", m_chck_aothd.prdd_id,
				" LP=", m_chck_aothd.lic_plt_id, " Door=", m_chck_aothd.from_dcpt_id
			LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%",
				"EXIT: add_chck_wku")
			RETURN TRUE, "R5608"
		END IF
	END IF

	UPDATE aassg
	   SET (last_sect_id, last_loc_id, last_dcpd_id, last_dcpt_id,
			last_trip_no, change_user, change_dtim)
		 = (m_chck_aothd.to_rtim_sect_id,
			m_chck_aothd.to_loc_id,
			m_chck_aothd.to_dcpd_id,
			m_chck_aothd.to_dcpt_id,
			m_trip_no,
			g_user.user_id,
			f_now)
	WHERE assg_id = m_ret_aassg.assg_id
	  AND dc_id = m_chck_aothd.dc_id
	IF SQLCA.SQLCODE
	THEN
		LET m_msg = "add_chck_wku:  ERROR updating aassg ID= ",
			m_chck_aothd.assg_id, ". SQLCODE: ",
			SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
		LET m_ignore =
			sh_mlog_4gl(g_std_func_chan,m_module, "%C%","EXIT: add_chck_wku")
		RETURN TRUE, "R5608"
	END IF

	##################################################################
	# If Unloading and Checking are done by different people, make the
	# Unloader work unit unavailable.
	##################################################################
	IF m_ret_aassg.asgt_id = "C"
	THEN
		UPDATE aothd
		SET (wust_id, change_user, change_dtim)
		  = ("COM", g_user.user_id, f_now)
		WHERE othd_id = m_unld_aothd.othd_id
		IF SQLCA.SQLCODE <> 0
		THEN
			LET m_msg = "add_chck_wku:  ",
				"Update Unload workunit failed, SQLCODE=",
				SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%",
				"EXIT: add_chck_wku")
			RETURN TRUE, "R5608"
		END IF
	END IF

	LET m_trip_seq = m_trip_seq + 1
	LET m_start_dtim = f_now
	LET m_rows_added = TRUE
    INITIALIZE m_unld_aothd.* TO NULL
    INITIALIZE m_chck_aothd.* TO NULL

    LET m_load_task.load_prep   = FALSE
    LET m_load_task.pinwheel    = FALSE
    LET m_load_task.man_unstk   = FALSE
    LET m_load_task.fork_unstk  = FALSE
    LET m_load_task.spec_hnd    = FALSE

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module, "%C%",
		"EXIT: add_chck_wku")

	RETURN FALSE, ""

END FUNCTION

{*****************************************************************************}
FUNCTION get_irct_id(f_dc_id, f_whse_id, f_appt_id, f_po_id)

	DEFINE f_dc_id	       LIKE irct.dc_id
	DEFINE f_whse_id	   LIKE irct.whse_id
	DEFINE f_appt_id   	   LIKE irct.appt_id
	DEFINE f_po_id	       LIKE irct.po_id

	DEFINE f_ret_irct	   RECORD LIKE irct.*
	DEFINE f_ret_rcpt_id   LIKE irct.rcpt_id
	DEFINE f_ret_status	   INTEGER
	DEFINE f_count		SMALLINT

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: get_irct_id")

	INITIALIZE f_ret_irct.* TO NULL

	OPEN c_max_irct_id USING f_dc_id,
							 f_whse_id,
							 f_appt_id,
							 f_po_id

	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN c_max_irct_id failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2],
					" DC=", f_dc_id,
					" WH=", f_whse_id,
					" Appt=", f_appt_id,
					" PO=", f_po_id
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT: get_irct_id")
		RETURN TRUE, f_ret_irct.*
	END IF

	FETCH c_max_irct_id INTO f_ret_irct.rcpt_id
	##################################################################
	#SELECT MAX(irct.rcpt_id)
	#  FROM irct
	# WHERE irct.dc_id   = f_dc_id
	#   AND irct.whse_id = f_whse_id
	#   AND irct.appt_id = f_appt_id
	#   AND irct.po_id   = f_po_id
	#   AND irct.rsta_id = "P"
	##################################################################

	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "FETCH c_max_irct_id failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2],
					" DC=", f_dc_id,
					" WH=", f_whse_id,
					" Appt=", f_appt_id,
					" PO=", f_po_id
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_irct_id")
		RETURN TRUE, f_ret_irct.*
	END IF

	CLOSE c_max_irct_id
	
	## Now get the whole record. #####################################
	OPEN c_irct USING	f_dc_id,
						f_whse_id,
						f_appt_id,
						f_ret_irct.rcpt_id,
						f_po_id

	IF SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "OPEN c_irct failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2],
					" DC=", f_dc_id,
					" WH=", f_whse_id,
					" Appt=", f_appt_id,
					" Rcpt=", f_ret_irct.rcpt_id,
					" PO=", f_po_id
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_irct_id")
		RETURN TRUE, f_ret_irct.*
	END IF

	FETCH c_irct INTO f_ret_irct.*
	##################################################################
	#SELECT irct.*
    #  FROM irct
 	# WHERE irct.dc_id   = f_dc_id
	#   AND irct.whse_id = f_whse_id
	#   AND irct.appt_id = f_appt_id
	#   AND irct.rcpt_id = f_ret_irct.rcpt_id
	#   AND irct.po_id   = f_po_id
	##################################################################

	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "FETCH c_irct failed. SQLCODE=", SQLCA.SQLCODE,
					" ISAM=", SQLCA.SQLERRD[2],
					" DC=", f_dc_id,
					" WH=", f_whse_id,
					" Appt=", f_appt_id,
					" Rcpt=", f_ret_irct.rcpt_id,
					" PO=", f_po_id
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_irct_id")
		RETURN TRUE, f_ret_irct.*
	END IF

	CLOSE c_irct

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: get_irct_id")

	RETURN FALSE, f_ret_irct.*

END FUNCTION

{##########################################################################}
FUNCTION calc_catch_wgt()

	DEFINE f_sv_catch_wgt	    LIKE irctd.catch_wgt
	DEFINE f_usc_rcv_qty	    INTEGER		## unit_ship_cse qty
	DEFINE f_catch_wgt_pallets	INTEGER
	DEFINE f_abort			    INTEGER
	DEFINE f_ret_status		    INTEGER
	DEFINE f_avg_wgt			LIKE iprdd.cse_wgt
	DEFINE f_u_cse				LIKE iprdd.unit_ship_cse

	LET f_abort = false

	LET f_sv_catch_wgt = m_scr_irctl_rec.catch_wgt

	LET m_scr_irctl_rec.catch_wgt = m_scr_irctl_rec.catch_wgt *
			m_scr_irctl_rec.rct_qty

	IF m_urcp_id = "S"
	THEN
		LET f_usc_rcv_qty = m_scr_irctl_rec.rct_qty
	ELSE
		LET f_usc_rcv_qty =
			(m_scr_irctl_rec.rct_qty * m_ret_iprdd.cse_unit
				/ m_ret_iprdd.unit_ship_cse)
	END IF
	# needs to do special calc (in IRSfuncs00)
	#-----------------------------------------
	CALL update_wgt(m_scr_irctl_rec.dc_id,
				    m_scr_irctl_rec.whse_id,
				    m_scr_irctl_rec.prod_id,
				    m_scr_irctl_rec.prdd_id,
				    f_usc_rcv_qty,
				    m_scr_irctl_rec.catch_wgt,
					m_urcp_id)
		RETURNING f_ret_status 

	SELECT COUNT(*)
	INTO f_catch_wgt_pallets
	FROM irctd
	WHERE dc_id = m_scr_irctl_rec.dc_id
  		AND irctd.po_id   = m_ret_ipod.po_id
  		AND irctd.pod_id  = m_ret_ipod.pod_id
	AND irctd.rct_qty > 0

	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "SELECT f_catch_wgt_pallets fail. SQLCODE=", 
			SQLCA.SQLCODE, "ISAM=", SQLCA.SQLERRD[2]
		CALL sh_elog_4gl(m_module,"%C%", m_msg) RETURNING m_ignore
		CALL sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: input_irctl") RETURNING m_ignore
		CALL sh_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET f_abort = TRUE
		RETURN f_abort 
	END IF

	IF f_catch_wgt_pallets = 0 THEN                                   
		LET f_catch_wgt_pallets = 1   
	END IF                            

#CC update catch_wgt based on actual received qty.                       
    LET f_avg_wgt = m_ret_iprdd.inner_pack_wgt                  
    IF m_ret_iprdd.cse_unit IS NULL                             
    OR m_ret_iprdd.cse_unit = 0                                 
    THEN                                                        
        LET f_u_cse = 1                                         
    ELSE                                                        
        LET f_u_cse = m_ret_iprdd.cse_unit                      
    END IF                                                      

    UPDATE irctd SET catch_wgt = (rct_qty*f_sv_catch_wgt)/f_u_cse    
     WHERE dc_id     = m_scr_irctl_rec.dc_id
       AND po_id     = m_ret_ipod.po_id
       AND pod_id    = m_ret_ipod.pod_id
	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "UPDATE irctd fail. SQLCODE=", SQLCA.SQLCODE,
				"ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_err_msg("C0130")	#-- system failure

		## Set the status to an invalid status so that the license        
		## plate being processed when the program fails will show up      
		## on the unverified list.                                        

		UPDATE irctd                                                      
		SET rdst_id = "E",                                                
		receipt_user = g_user.user_id                                     
		WHERE pod_id = m_ret_ipod.pod_id
		AND po_id = m_ret_ipod.po_id
		AND whse_id = m_scr_irctl_rec.whse_id
		AND dc_id = m_scr_irctl_rec.dc_id
		IF SQLCA.SQLCODE < 0                                              
		THEN                                                              
			LET m_msg = "UPDATE irctd status failed po_id = ", 
				m_ret_ipod.po_id, ", pod_id = ", m_ret_ipod.pod_id,
				" SQLCODE=", SQLCA.SQLCODE, "ISAM=", SQLCA.SQLERRD[2]     
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)             
		END IF                                                            

		EXIT PROGRAM
	END IF

#CC19: update catch_wgt based on actual received qty. TRACE                 
    UPDATE irctl SET catch_wgt = (rct_qty*f_sv_catch_wgt)/f_u_cse    
     WHERE dc_id     = m_scr_irctl_rec.dc_id
       AND po_id     = m_ret_ipod.po_id
       AND pod_id    = m_ret_ipod.pod_id
	IF SQLCA.SQLCODE <> 0 THEN
		LET m_msg = "UPDATE irctl fail. SQLCODE=", SQLCA.SQLCODE,
			"ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_err_msg("C0130")	#-- system failure

		## Set the status to an invalid status so that the license        
		## plate being processed when the program fails will show up      
		## on the unverified list.                                        

		UPDATE irctd                                                      
		SET rdst_id = "E",                                                
		receipt_user = g_user.user_id                                     
		WHERE pod_id = m_ret_ipod.pod_id
		AND po_id = m_ret_ipod.po_id
		AND whse_id = m_scr_irctl_rec.whse_id
		AND dc_id = m_scr_irctl_rec.dc_id
		IF SQLCA.SQLCODE < 0                                              
		THEN                                                              
			LET m_msg = "UPDATE irctd status failed po_id = ", 
				m_ret_ipod.po_id, ", pod_id = ", m_ret_ipod.pod_id,
				" SQLCODE=", SQLCA.SQLCODE, "ISAM=", SQLCA.SQLERRD[2]     
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)             
		END IF                                                            

		EXIT PROGRAM
	END IF

	RETURN f_abort
END FUNCTION

{**************************************************************}
FUNCTION upd_irctd_error(f_lic_plt_id, f_dc_id, f_whse_id)

	DEFINE f_lic_plt_id		LIKE irctd.lic_plt_id
	DEFINE f_dc_id			LIKE irctd.dc_id
	DEFINE f_whse_id		LIKE irctd.whse_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: upd_irctd_error")

	CALL sh_rf_err_msg("C0130")	#-- system failure

	## Set the status to an invalid status so that the license
	## plate being processed when the program fails will show up
	## on the unverified list.

	UPDATE irctd
	   SET rdst_id = "E",
		   receipt_user = g_user.user_id
	 WHERE lic_plt_id = f_lic_plt_id
	   AND whse_id = f_whse_id
	   AND dc_id = f_dc_id
	IF SQLCA.SQLCODE < 0 THEN
		LET m_msg = "UPDATE irctd status failed LP = ", f_lic_plt_id,
				" SQLCODE=", SQLCA.SQLCODE, "ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
	END IF
	EXIT PROGRAM

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: upd_irctd_error")

END FUNCTION

{*****************************************************************************}
FUNCTION get_upc_prod_ucn(f_dc_id, f_whse_id, f_appt_id, f_upc_id)

	DEFINE f_dc_id			LIKE iapt.dc_id
	DEFINE f_whse_id		LIKE iapt.whse_id
	DEFINE f_appt_id		LIKE iapt.appt_id
	DEFINE f_upc_id			LIKE iupcd.upc_id

	DEFINE f_count			INTEGER
	DEFINE f_old_prod_id	LIKE iprod.prod_id
	DEFINE f_len			SMALLINT
	DEFINE f_old_po			LIKE ipo.po_id 

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"ENTER: get_upc_prod_ucn")

	LET f_count = 0
	LET f_len = 0
	INITIALIZE f_old_prod_id TO NULL

	OPEN c_upc_cur_ucn USING f_dc_id,
							f_dc_id,
							f_whse_id,
							f_appt_id,
							f_dc_id,
							f_dc_id,
							f_upc_id 
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "OPEN c_upc_cur_ucn failed. SQLCODE=", SQLCA.SQLCODE,
                    " ISAM=", SQLCA.SQLERRD[2],
					" DC=", f_dc_id,
					" WH=", f_whse_id,
					" Appt= ", f_appt_id,
					" UPC= ", f_upc_id 
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_upc_prod_ucn")
		RETURN TRUE, 0
	END IF

	LET f_count = 1
	LET f_old_prod_id = m_zero_prod_id
	LET f_old_po = "0" 

	WHILE f_count <= 100
		FETCH c_upc_cur_ucn INTO m_ret_ipod.*, 
			m_ret_iprod.prod_id, m_ret_iprod.lot_no_cntl,
			m_ret_iprod.pwy_dte_ctl, m_ret_iprod.cde_dt_var,
			m_ret_iprod.cde_dt_incr, m_ret_iprod.catch_wgt_cntl,
			m_ret_iprod.description, m_ret_iprod.sdesc,
			m_ret_iupcd.*

		IF SQLCA.SQLCODE = 100
		THEN
			EXIT WHILE
		END IF

		IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "FETCH c_upc_cur_ucn failed. SQLCODE=", SQLCA.SQLCODE,
						" ISAM=", SQLCA.SQLERRD[2],
						" DC=", f_dc_id,
						" WH=", f_whse_id,
						" Appt= ", f_appt_id,
						" UPC= ", f_upc_id 
			LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
			CALL sh_rf_cmd_msg("I9060")	#-- system failure
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: get_upc_prod_ucn")
			RETURN TRUE, 0
		END IF

		# eliminate duplicate products
		#-----------------------------
		IF m_ret_iprod.prod_id = f_old_prod_id
		AND m_ret_ipod.po_id = f_old_po 
		THEN
			CONTINUE WHILE
		ELSE 
			IF f_old_prod_id <> m_zero_prod_id THEN 
				LET m_multi_prod_upc = TRUE 
			END IF 
		END IF

		LET f_old_prod_id = m_ret_iprod.prod_id 
		LET f_old_po = m_ret_ipod.po_id 

		CALL lkp_ipo(m_ret_ipod.dc_id, m_ret_ipod.po_id)
			RETURNING m_ignore, m_ret_ipo.*

		LET m_scr_prod_sel_dtl[f_count].prod_id = m_ret_iprod.prod_id 
		LET m_scr_prod_sel_dtl[f_count].sdesc   = m_ret_iprod.description 
		LET m_arr_prod_sel_dtl[f_count].po_id  = m_ret_ipod.po_id 
		LET m_arr_prod_sel_dtl[f_count].pod_id = m_ret_ipod.pod_id 
		LET m_arr_prod_sel_dtl[f_count].upc_id = m_ret_iupc.upc_id 
		LET m_scr_po_sel_dtl[f_count].po_id   = m_ret_ipod.po_id 
		LET m_arr_po_sel_dtl[f_count].pod_id  = m_ret_ipod.pod_id 
		LET m_arr_po_sel_dtl[f_count].po_type = m_ret_ipo.po_type 

		LET m_scr_irctd_rec.prod_id = m_ret_iprod.prod_id
		LET m_scr_irctd_rec.sdesc = m_ret_iprod.description
		LET m_scr_irctd_rec.po_id = m_ret_ipod.po_id
		LET m_scr_irctd_rec.pod_id = m_ret_ipod.pod_id
		LET m_scr_irctd_rec.upc_id = m_ret_iupcd.upc_id
		LET m_scr_irctd_rec.qty_ord = m_ret_ipod.qty_ord

		LET m_ignore = NULL
		LET m_ignore = proc_prod_prdd(m_ignore)
		LET m_scr_irctd_rec.prdd_id = m_ret_iprdd.prdd_id
		LET m_scr_irctd_rec.stor_ti = m_ret_iprdd.stor_ti
		LET m_scr_irctd_rec.stor_hi = m_ret_iprdd.stor_hi
		LET m_scr_irctd_rec.unit_ship_cse = m_ret_iprdd.unit_ship_cse
		LET m_scr_irctd_rec.prod_sz = m_ret_iprdd.prod_sz
		LET f_count = f_count + 1
	END WHILE

	CLOSE c_upc_cur_ucn
	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "CLOSE c_upc_cur_ucn failed. SQLCODE=", SQLCA.SQLCODE,
                    " ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		CALL sh_rf_cmd_msg("I9060")	#-- system failure
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
			"EXIT: get_upc_prod_ucn")
		RETURN TRUE, 0
	END IF

	LET f_count = f_count - 1
	CALL set_count(f_count)

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: get_upc_prod_ucn")

	RETURN FALSE, f_count

END FUNCTION
{******************************************************************************}
# Function cstm_inp_irctd is called instead of input_irctd where the SMACB
# for IRSverh_00.4ge; rf_custom_verify flag is set to 'Y'. This function
# allows the users to print labels by choosing a UPC or Product after entering
# the appointment and receipt. Users will also be able to add new license plates by
# using CONTROL-A in the lic_plt_field.
{******************************************************************************}
FUNCTION cstm_inp_irctd()

	DEFINE f_ret_status	    	INTEGER
	DEFINE f_vldt_status		INTEGER
	DEFINE f_ret_choice	    	INTEGER
	DEFINE f_old_prdd_id    	LIKE iprdd.prdd_id
	DEFINE f_old_rct_qty    	LIKE irctd.rct_qty
	DEFINE f_hold_qty	    	LIKE irctd.rct_qty
	DEFINE f_ysno		    	LIKE sysno.ysno_id
	DEFINE f_pal_count      	INTEGER
	DEFINE f_ipod_cnt       	INTEGER
	DEFINE f_ret_ipod	 		RECORD LIKE ipod.*
	DEFINE f_msg     	 		CHAR(05)
	DEFINE f_cur_dt				DATE
	DEFINE f_cde_count 			INTEGER
	DEFINE f_incr_cde_dt		DATE
	DEFINE f_override_date 		CHAR(01)
	DEFINE f_case_rmd 			INTEGER
	DEFINE f_counter			INTEGER
	DEFINE f_irqca_cnt      	INTEGER
    DEFINE f_old_qc_req     	CHAR(1)
    DEFINE f_new_qc_req     	CHAR(1)
    DEFINE f_ptwy_at_rc     	CHAR(1)
    DEFINE f_qc_status      	CHAR(1)

	DEFINE f_string_val			CHAR(18)
	DEFINE f_rtrn_code			INTEGER
	DEFINE f_aborted  			INTEGER
	DEFINE f_abort  			INTEGER
	DEFINE f_abort_wt   		INTEGER
	DEFINE f_lp_char   			CHAR(18)
	DEFINE f_lp_num    			INTEGER
	DEFINE f_new_msg_flag   	CHAR(1)
    DEFINE f_dc_id          	CHAR(2)
    DEFINE f_whse_id        	CHAR(2)
    DEFINE f_sacvv           	RECORD LIKE sacvv.*
	DEFINE f_old_code_date		LIKE irctd.code_date
	DEFINE f_cnt_pod			INTEGER
	DEFINE f_len SMALLINT
	DEFINE f_err_code			CHAR(2)
	DEFINE f_std_tim			INTERVAL HOUR TO SECOND
	DEFINE f_rf_chk				SMALLINT
	DEFINE f_task_del			SMALLINT
	DEFINE f_alarm				CHAR(1)
	DEFINE f_cnt            	INTEGER
    DEFINE f_lic_cnt        	INTEGER
	DEFINE f_ipod_system_flag 	LIKE ipod.system_flag
	DEFINE f_old_code_date1 	LIKE irctd.code_date
	DEFINE f_old_code_date2 	LIKE irctd.code_date
	DEFINE f_dflt_days      	SMALLINT
	DEFINE f_hold_lp			LIKE irctd.lic_plt_id 
	DEFINE f_iasn_cnt			SMALLINT
	DEFINE f_batch_no			LIKE cvlbl.batch_no 
	DEFINE f_print_flg			LIKE cvlbl.print_flg 
	DEFINE f_curr_dtim			LIKE cvlbl.print_dtim 
	DEFINE f_count				SMALLINT 
	DEFINE f_ret_lic_plt    	LIKE irctd.lic_plt_id 
	DEFINE f_gen_plt			SMALLINT 
	DEFINE f_count_ck       	SMALLINT        # Fix for duplicate workunit
	DEFINE f_return				SMALLINT 
	
	#START:LMISHRA:T20210316.0163:Add Repack:3/2/2021
	DEFINE f_is_repack				SMALLINT
	DEFINE f_rpk					LIKE iprdd.unit_ship_cse
	#END:LMISHRA:T20210316.0163:Add Repack:3/2/2021

	INITIALIZE f_cur_dt TO NULL
	INITIALIZE f_incr_cde_dt TO NULL
	LET m_ignore = sh_mlog_4gl( g_std_func_chan, m_module,"%C%",
								"ENTER: cstm_inp_irctd")

	LET f_rtrn_code = FALSE
	INITIALIZE f_string_val TO NULL
	LET f_gen_plt = FALSE 

	LET m_scope_key = m_scr_irctd_rec.whse_id USING '<&'
	CALL lkp_sacvv("code_date","dflt_days","WH",m_scope_key)
		RETURNING f_ret_status, f_sacvv.*
	IF f_ret_status
	THEN
		LET f_dflt_days = 9999
	ELSE
		LET f_dflt_days = f_sacvv.value
	END IF

	INITIALIZE m_scan_rec.* TO NULL
	LET f_rf_chk = FALSE
	LET f_alarm = "N"
	LET m_gen_lic_flag			= FALSE
	LET m_load_task.load_prep	= FALSE
	LET m_load_task.pinwheel	= FALSE
	LET m_load_task.man_unstk	= FALSE
	LET m_load_task.fork_unstk	= FALSE
	LET m_load_task.spec_hnd	= FALSE

	LET m_scr_irctd_rec.totr = m_tot_qty
	LET m_add_update  = "M"
	LET m_entered     = FALSE
	LET m_iinvd_found  = TRUE
    LET m_orig_rdst_id  = NULL
	LET m_code_date   = NULL
	LET f_abort       = FALSE
	LET f_old_prdd_id    = NULL
	LET f_old_rct_qty    = NULL
	LET f_msg            = "     " 
	LET f_case_rmd 	 	 = 0
	LET f_new_msg_flag   = m_new_msg_flag
	LET f_count_ck = 0
	LET f_return = FALSE 
	
	IF m_scr_irctd_rec.urcp_id IS NOT NULL
	THEN
		CALL val_surcp(m_scr_irctd_rec.urcp_id)
			RETURNING m_ignore, m_ret_surcp.*
		LET m_old_urcp_id = m_ret_surcp.urcp_id
	ELSE
		LET m_old_urcp_id = " "
	END IF

	IF m_urcp_id IS NULL
	OR m_urcp_id = " "
	THEN
		CALL lkp_whse_info(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.rcv_whse_id)
		LET m_scr_irctd_rec.urcp_id = m_urcp_id
	END IF

	LET f_qc_status = NULL
    LET f_ptwy_at_rc = NULL
    LET f_old_qc_req = NULL
    LET f_new_qc_req = NULL
    LET m_scr_irctd_rec.qc_req = "N" 
	LET m_lbl_curr_pal = NULL 

	INITIALIZE f_incr_cde_dt TO NULL
	INITIALIZE f_hold_lp TO NULL 
	LET m_scr_irctd_rec.urcp_id = NULL

	  INPUT m_scr_irctd_rec.appt_id,
	        m_scr_irctd_rec.rcpt_id,
	        m_scr_irctd_rec.lic_plt_id,
			m_scr_irctd_rec.upc_id,
			m_scr_irctd_rec.prod_id,
			m_scr_irctd_rec.prdd_id,
			#m_scr_irctd_rec.lot_no, #LMISHRA:T20210316.0163:Add Repack:3/2/2021
			m_scr_irctd_rec.urcp_id,
			m_scr_irctd_rec.rct_qty,
			m_scr_irctd_rec.qty_damaged,
			m_scr_irctd_rec.inner_pack_unit,
			m_scr_irctd_rec.stor_ti,
			m_scr_irctd_rec.stor_hi,
			m_scr_irctd_rec.code_date,
			m_scr_irctd_rec.qc_req WITHOUT DEFAULTS
	   FROM    
			s_rf_vrfy.appt_id,
			s_rf_vrfy.rcpt_id,
			s_rf_vrfy.lic_plt_id,
			s_rf_vrfy.upc_id,
			s_rf_vrfy.prod_id,
			s_rf_vrfy.prdd_id,
			#s_rf_vrfy.lot_no, #LMISHRA:T20210316.0163:Add Repack:3/2/2021
			s_rf_vrfy.urcp_id,
			s_rf_vrfy.rct_qty,
			s_rf_vrfy.qty_damaged,
			s_rf_vrfy.inner_pack_unit,
			s_rf_vrfy.stor_ti,
			s_rf_vrfy.stor_hi,
			s_rf_vrfy.code_date,
			s_rf_vrfy.qc_req 

		BEFORE INPUT 
			DISPLAY m_scr_irctd_rec.dc_id TO s_rf_vrfy.dc_id
				ATTRIBUTE(NORMAL)
			DISPLAY m_scr_irctd_rec.whse_id TO s_rf_vrfy.whse_id
				ATTRIBUTE(NORMAL)
			DISPLAY m_scr_irctd_rec.rcv_whse_id TO s_rf_vrfy.rcv_whse_id
				ATTRIBUTE(NORMAL)

			IF m_scr_irctd_rec.rct_qty IS NOT NULL
			THEN
				LET f_hold_qty = m_scr_irctd_rec.rct_qty
			ELSE
				LET f_hold_qty = 0
			END IF
			LET f_old_code_date = NULL
			LET f_override_date = NULL

		BEFORE FIELD appt_id
			LET m_hold_appt_id = m_scr_irctd_rec.appt_id
			IF fgl_lastkey() = fgl_keyval("UP")
			OR fgl_lastkey() = fgl_keyval("LEFT")
			OR m_add_update = "A"
			OR m_scr_irctd_rec.appt_id IS NULL 
			THEN
				LET m_add_update = "A"

				IF f_new_msg_flag = "Y"
				THEN
					CALL sh_rf_cmd_msg("I9147")
				ELSE
					CALL sh_rf_cmd_msg("I9062") 	#-- enter appt
				END IF

				DISPLAY m_scr_irctd_rec.appt_id TO s_rf_vrfy.appt_id
					ATTRIBUTE(REVERSE)
			ELSE
				NEXT FIELD s_rf_vrfy.lic_plt_id
			END IF

			IF m_scr_irctd_rec.lic_plt_id IS NOT NULL THEN 
				DISPLAY m_scr_irctd_rec.appt_id TO s_rf_vrfy.appt_id 
					ATTRIBUTE(NORMAL) 
				NEXT FIELD s_rf_vrfy.lic_plt_id 
			END IF 

		BEFORE FIELD rcpt_id
			IF m_scr_irctd_rec.appt_id IS NULL THEN
				NEXT FIELD s_rf_vrfy.appt_id 
			END IF

			IF m_add_update = "M"
			THEN
				NEXT FIELD s_rf_vrfy.lic_plt_id
			END IF

			CALL sh_rf_cmd_msg("I1181") 	#-- enter receipt
			DISPLAY m_scr_irctd_rec.rcpt_id TO s_rf_vrfy.rcpt_id
					ATTRIBUTE(REVERSE)

		BEFORE FIELD lic_plt_id
			IF f_new_msg_flag = "Y" OR
			   (m_scr_irctd_rec.appt_id IS NOT NULL AND
			    m_scr_irctd_rec.rcpt_id IS NOT NULL)
			THEN
				CALL sh_rf_cmd_msg("I9088") #-- Ent Lic-P,F3 Ver/Cls
			ELSE
				CALL sh_rf_cmd_msg("I9075")	#-- Ent Lic-P, DEL Abort
			END IF
			LET m_add_update = "M"
			LET m_iinvd_found = TRUE 
			LET f_ipod_system_flag = NULL
				
			DISPLAY m_scr_irctd_rec.lic_plt_id TO s_rf_vrfy.lic_plt_id
				ATTRIBUTE(REVERSE)

		BEFORE FIELD upc_id
			IF m_add_update = "M"
			THEN
				IF m_scr_irctd_rec.lic_plt_id IS NOT NULL 
				AND NOT f_gen_plt
				THEN
					NEXT FIELD s_rf_vrfy.rct_qty
				END IF
			END IF
			CALL sh_rf_cmd_msg("I9071")	#-- enter upc
			DISPLAY m_scr_irctd_rec.upc_id TO s_rf_vrfy.upc_id
				ATTRIBUTE(REVERSE)

		BEFORE FIELD prod_id
			IF f_rf_chk = TRUE
			THEN
				LET f_rf_chk = FALSE
			ELSE
				IF m_add_update = "M"
				THEN
					IF (fgl_lastkey() = fgl_keyval("UP")
   	        		OR  fgl_lastkey() = fgl_keyval("LEFT"))
   	        		THEN 
						NEXT FIELD s_rf_vrfy.lic_plt_id
   	        		END IF 
					IF m_ret_iprod.lot_no_cntl = 'Y'
	                THEN
    	                #NEXT FIELD lot_no
						NEXT FIELD s_rf_vrfy.rct_qty #LM
        	        ELSE
            	        NEXT FIELD s_rf_vrfy.rct_qty
                	END IF
				END IF
			END IF

			CALL sh_rf_cmd_msg("I9053")	#-- enter product
			DISPLAY m_scr_irctd_rec.prod_id TO s_rf_vrfy.prod_id
				ATTRIBUTE(REVERSE)

		BEFORE FIELD prdd_id
			IF m_add_update = "M"
			THEN
				IF (fgl_lastkey() = fgl_keyval("UP")
           		OR  fgl_lastkey() = fgl_keyval("LEFT"))
           		THEN 
					NEXT FIELD s_rf_vrfy.lic_plt_id
           		END IF 
				IF m_ret_iprod.lot_no_cntl = 'Y' 
				THEN
					NEXT FIELD lot_no
				ELSE
					NEXT FIELD s_rf_vrfy.rct_qty
				END IF
			END IF

			CALL sh_rf_cmd_msg("I9065")	#-- enter detail
			DISPLAY m_scr_irctd_rec.prdd_id TO s_rf_vrfy.prdd_id
				ATTRIBUTE(REVERSE)
#LM
		{BEFORE FIELD lot_no
			IF m_ret_iprod.lot_no_cntl IS NULL
			OR m_ret_iprod.lot_no_cntl <> "Y"
			THEN
				IF fgl_lastkey() = fgl_keyval("UP")
				OR	fgl_lastkey() = fgl_keyval("LEFT")
				THEN
					NEXT FIELD s_rf_vrfy.lic_plt_id
				END IF
				IF fgl_lastkey() = fgl_keyval("DOWN")
				THEN
					NEXT FIELD s_rf_vrfy.urcp_id
				END IF
			END IF

			CALL sh_rf_cmd_msg("I9204")	#-- enter lot no
			DISPLAY m_scr_irctd_rec.lot_no TO s_rf_vrfy.lot_no
				ATTRIBUTE(REVERSE)
				}
			#LM

		BEFORE FIELD urcp_id
			CALL sh_rf_cmd_msg("I1179")	#-- enter ship or case
			DISPLAY m_scr_irctd_rec.urcp_id TO s_rf_vrfy.urcp_id
				ATTRIBUTE(REVERSE)

		BEFORE FIELD rct_qty
			IF (m_ret_ipo.po_type = "WT" 
				OR m_ret_ipo.po_type = "DT")
			AND m_sacvv_value <> "Y" THEN
				IF fgl_lastkey() = fgl_keyval("UP")
				OR fgl_lastkey() = fgl_keyval("LEFT")
				THEN
					NEXT FIELD s_rf_vrfy.urcp_id
				END IF
				NEXT FIELD s_rf_vrfy.qty_damaged
			END IF

			IF f_old_rct_qty IS NOT NULL
			AND m_scr_irctd_rec.lic_plt_id IS NOT NULL 
			THEN
				LET m_scr_irctd_rec.rct_qty = f_old_rct_qty
			ELSE 
				IF m_scr_irctd_rec.lic_plt_id IS NULL 
				THEN
					LET f_old_rct_qty = NULL 
					LET m_scr_irctd_rec.rct_qty = NULL 
				END IF 
			END IF 

			CALL sh_rf_cmd_msg("I9077")	#-- enter rcvd qty
			DISPLAY m_scr_irctd_rec.rct_qty TO s_rf_vrfy.rct_qty
				ATTRIBUTE(REVERSE)

			IF m_scr_irctd_rec.rct_qty IS NOT NULL
			THEN
				LET f_old_rct_qty = m_scr_irctd_rec.rct_qty
				LET f_hold_qty = m_scr_irctd_rec.rct_qty
			ELSE
				LET f_old_rct_qty = 0
				LET f_hold_qty = 0
			END IF

			CALL find_iinvd_cde_dt(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.rcv_whse_id,
									m_scr_irctd_rec.lic_plt_id)

			IF m_iinvd_cde_dt <> "12/31/2099"
			AND m_iinvd_cde_dt <> "12/31/1899"
			AND m_scr_irctd_rec.code_date IS NULL
			THEN
				LET m_scr_irctd_rec.code_date = m_iinvd_cde_dt
				DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
					ATTRIBUTE(NORMAL)
			END IF

		BEFORE FIELD qty_damaged 
			CALL sh_rf_cmd_msg("I9137") 	#-- enter pallet damage qty
			DISPLAY m_scr_irctd_rec.qty_damaged TO s_rf_vrfy.qty_damaged
				ATTRIBUTE(REVERSE)

		BEFORE FIELD stor_ti
			CALL sh_rf_cmd_msg("I9073")	#-- enter store ti
			DISPLAY m_scr_irctd_rec.stor_ti TO s_rf_vrfy.stor_ti
				ATTRIBUTE(REVERSE)

		BEFORE FIELD stor_hi
			CALL sh_rf_cmd_msg("I9074")	#-- enter store hi
			DISPLAY m_scr_irctd_rec.stor_hi TO s_rf_vrfy.stor_hi
				ATTRIBUTE(REVERSE)

		BEFORE FIELD code_date

			IF f_old_code_date IS NULL
			AND m_scan_rec.code_date IS NOT NULL 
			THEN
			--Do nothing
			ELSE
				LET f_old_code_date = m_scr_irctd_rec.code_date
			END IF

			IF m_ret_iprod.pwy_dte_ctl = "Y"
			THEN
				CALL sh_rf_cmd_msg("I9066")	#-- enter code date
			ELSE
				IF m_scr_irctd_rec.code_date IS NULL
				THEN
					LET m_scr_irctd_rec.code_date = CURRENT
				END IF
				DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
					ATTRIBUTE(NORMAL)

				IF fgl_lastkey() = fgl_keyval("UP")
				OR fgl_lastkey() = fgl_keyval("LEFT")
				THEN
					NEXT FIELD s_rf_vrfy.stor_hi
				END IF
				NEXT FIELD qc_req
			END IF

			DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
				ATTRIBUTE(REVERSE)

		ON KEY (CONTROL-P)
	    	CALL spprtscr()

		ON KEY (ESCAPE, INTERRUPT, DELETE)
			IF m_scr_irctd_rec.lic_plt_id IS NULL
			THEN
				LET int_flag = FALSE
				LET f_abort = TRUE
				LET f_qc_status = NULL
			ELSE
				# reset to original status 
				#------------------------
                IF m_orig_rdst_id IS NOT NULL
                THEN
                    CALL update_irctd(m_orig_rdst_id)
                END IF

				LET m_scr_irctd_rec.* = m_scr_irctd_null.*
				LET m_func_key = "CL"	#-- just clearing screen		
			END IF
			EXIT INPUT

		ON KEY (F1)
		    # validate_irctd returns a number in f_ret_status which will
			# refer to edit checking done on the screen record.  The number
			# can then be used to Next Field to the value in error/missing. 
			#--------------------------------------------------------------
			CALL get_fldbuf(lic_plt_id, prod_id, prdd_id, upc_id,
							stor_ti, stor_hi, rct_qty, urcp_id, 
							qty_damaged, lot_no, code_date, qc_req)
				RETURNING m_scr_irctd_rec.lic_plt_id, m_scr_irctd_rec.prod_id,
							m_scr_irctd_rec.prdd_id, m_scr_irctd_rec.upc_id,
							m_scr_irctd_rec.stor_ti, m_scr_irctd_rec.stor_hi,
							m_scr_irctd_rec.rct_qty, m_scr_irctd_rec.urcp_id,
							m_scr_irctd_rec.qty_damaged,  
							m_scr_irctd_rec.lot_no,  m_scr_irctd_rec.code_date,
							m_scr_irctd_rec.qc_req

			LET f_ret_status = validate_irctd()

			IF f_ret_status = 0
			OR f_ret_status = 1
			THEN
				LET m_func_key = "EN"		 #-- irctd complete for this pallet 
				CONTINUE INPUT
			END IF
			CALL sh_rf_cmd_msg("I9087")	 #-- required field
			SLEEP 1

			CASE f_ret_status
				WHEN 2
					NEXT FIELD s_rf_vrfy.prod_id
				WHEN 3
					NEXT FIELD s_rf_vrfy.prdd_id
				WHEN 4
					NEXT FIELD s_rf_vrfy.code_date
				WHEN 5
					NEXT FIELD s_rf_vrfy.stor_ti
				WHEN 6
					NEXT FIELD s_rf_vrfy.stor_hi
				WHEN 7
					NEXT FIELD s_rf_vrfy.rct_qty
				WHEN 8
					NEXT FIELD s_rf_vrfy.urcp_id
				WHEN 9
					#NEXT FIELD s_rf_vrfy.lot_no
					NEXT FIELD s_rf_vrfy.rct_qty #LM
				WHEN -1
					NEXT FIELD s_rf_vrfy.qc_req
				OTHERWISE
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					LET m_msg = "system failure"
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
					SLEEP 2
					LET m_func_key = "QU"
					EXIT INPUT
			END CASE

		ON KEY (F2)
			IF INFIELD(appt_id)
			THEN
				LET f_ret_status = select_po()
				IF f_ret_status = TRUE
				THEN
					NEXT FIELD s_rf_vrfy.appt_id
				END IF

				CALL lkp_ipo(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.po_id)
					RETURNING f_ret_status, m_ret_ipo.*
    			DISPLAY m_scr_irctd_rec.po_id[10,18] TO s_rf_vrfy.po_id     ATTRIBUTE(NORMAL)
				#DISPLAY m_scr_irctd_rec.po_id TO s_rf_vrfy.po_id ATTRIBUTE(NORMAL)
				DISPLAY m_scr_irctd_rec.rcv_whse_id TO s_rf_vrfy.rcv_whse_id
					ATTRIBUTE(NORMAL)
			END IF

		ON KEY (F3)
			IF m_scr_irctd_rec.appt_id IS NULL
			THEN
				CALL sh_rf_cmd_msg("I9087")	 #-- required field
				SLEEP 1
				NEXT FIELD s_rf_vrfy.appt_id
			END IF
			LET m_func_key = "F3"
			EXIT INPUT

		ON KEY (F4)

			IF INFIELD(prod_id)
			OR INFIELD(upc_id)
			THEN
				DISPLAY m_scr_irctd_rec.upc_id TO s_rf_vrfy.upc_id
					ATTRIBUTE(NORMAL)
				DISPLAY m_scr_irctd_rec.prod_id TO s_rf_vrfy.prod_id
					ATTRIBUTE(NORMAL)

				IF m_scr_irctd_rec.prod_id IS NULL
				OR m_scr_irctd_rec.upc_id IS NULL 
				THEN
					#-----------------
					# retrieve product 
					#-----------------
					CALL get_list_prod(m_scr_irctd_rec.dc_id,
									   m_scr_irctd_rec.rcv_whse_id,
									   m_scr_irctd_rec.appt_id)
							 RETURNING f_ret_status, f_ret_choice

					IF f_ret_status = TRUE
					THEN	   
						NEXT FIELD s_rf_vrfy.upc_id
					END IF
	
					IF f_ret_choice = 0
					THEN
						CALL sh_rf_cmd_msg("I9090")	#-- product not on po
						SLEEP 1
						LET m_scr_irctd_rec.prod_id = NULL
						NEXT FIELD s_rf_vrfy.upc_id
					END IF

					CALL sel_prod(m_scr_irctd_rec.dc_id,
								  m_scr_irctd_rec.rcv_whse_id,
								  m_scr_irctd_rec.appt_id)
						RETURNING f_ret_status, f_ret_choice


					--IF upc_id IS NULL, ask user if they want to add
					--If so, call IBUPB transaction
					IF INFIELD(prod_id) 
					AND m_scr_irctd_rec.upc_id IS NULL 
					THEN
						IF m_scr_irctd_rec.upc_id IS NULL THEN
							CALL sh_rf_ysno_msg("C1205","N")
								RETURNING m_ignore, f_ysno

							IF f_ysno = 'Y' THEN
								RUN "IISupcph00.4ge"
							END IF
						END IF
					END IF

					IF f_ret_status = FALSE
					AND m_scr_irctd_rec.lic_plt_id IS NOT NULL 
					THEN
						CALL move_list_data(f_ret_choice)
						CALL display_irctd()

						#-----------------
						# retrieve product
						#-----------------
						CALL proc_po_prod("P") RETURNING f_ret_status,
														 f_ret_choice
					    IF f_ret_status 
					    THEN
							NEXT FIELD s_rf_vrfy.prod_id
						END IF

						#------------------------
						# retrieve product detail
						#------------------------
					    IF proc_prod_prdd(f_ret_choice) = TRUE
					    THEN
							NEXT FIELD s_rf_vrfy.prdd_id
						END IF
						CALL display_irctd()

						# Calculate the code date
						IF m_ret_iprod.pwy_dte_ctl = "Y"
						AND m_ret_iprod.cde_dt_var >= f_dflt_days
						AND m_ret_iprod.cde_dt_incr = 0
						# Cannot be a transfer PO
						AND (m_ret_ipo.po_type <> "TR"
				  		OR m_ret_ipo.po_type IS NULL)
						# Cannot be a synergy PO
						AND m_ret_ipo.vend_id <> "00019108"
						THEN
							CALL get_code_date_info(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.prod_id,
									m_ret_ipod.po_id,
									m_ret_ipod.pod_id,
									'V')
								RETURNING m_calc_code_date
							LET m_calc_cde_dt_flg = 'Y'
							LET m_scr_irctd_rec.code_date = m_calc_code_date
							DISPLAY m_scr_irctd_rec.code_date 
									TO s_rf_vrfy.code_date ATTRIBUTE(NORMAL)
						ELSE
							INITIALIZE m_calc_code_date TO NULL 
							LET m_calc_cde_dt_flg = 'N'
						END IF

						IF m_ret_iprod.lot_no_cntl = 'Y'
                		THEN
                    		NEXT FIELD lot_no
                		ELSE
							IF NOT f_gen_plt THEN 
								CALL next_blank("R")	#-- clear rct_qty only
							END IF 
                    		NEXT FIELD s_rf_vrfy.rct_qty
                		END IF
					ELSE 
						CALL move_list_data(f_ret_choice)
						CALL proc_po_prod("P") RETURNING f_ret_status,
														 f_ret_choice
    					IF f_ret_status 
    					THEN
							NEXT FIELD s_rf_vrfy.prod_id
						END IF
    					IF proc_prod_prdd(f_ret_choice) = TRUE
    					THEN
							NEXT FIELD s_rf_vrfy.prdd_id
						END IF

						--Check to see if labels have been printed for product
						SELECT MAX(UNIQUE batch_no) 
						INTO f_batch_no
						FROM cvlbl
						WHERE po_id = m_scr_irctd_rec.po_id
						AND rcpt_id = m_rcpt_id
						AND prod_id = m_scr_irctd_rec.prod_id
						AND print_flg = "N" 

						IF SQLCA.SQLCODE = NOTFOUND 
						OR (SQLCA.SQLCODE = 0 
						AND f_batch_no IS NULL) THEN 
							LET f_print_flg = "Y"
							LET m_msg = "No cvlbl records where print_flg = N ",
								" PO: ", m_scr_irctd_rec.po_id,
								" RCPT: ", m_rcpt_id,
								" PROD: ", m_scr_irctd_rec.prod_id
							LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						ELSE
							LET f_print_flg = "N"
							IF SQLCA.SQLCODE < 0 THEN 
								LET m_msg = "SELECT cvlbl FAILED. SQLCODE: ", SQLCA.SQLCODE,
                    				" ISAM=", SQLCA.SQLERRD[2]
								LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
								LET m_msg = "PO: ", m_scr_irctd_rec.po_id,
									" RCPT: ", m_rcpt_id,
									" PROD: ", m_scr_irctd_rec.prod_id
								LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
								CALL sh_rf_cmd_msg("I9060")	#-- system failure
								SLEEP 1
								CALL sh_rf_err_msg("C1203") 
								CALL next_blank("A")
								CALL display_irctd()
								NEXT FIELD s_rf_vrfy.appt_id 
							END IF
						END IF

						IF f_print_flg = "N" THEN
 							CALL sh_rf_ysno_msg("C1201","Y") 
                        		RETURNING m_ignore, f_ysno
                			IF f_ysno = "Y"
                			THEN
								LET f_aborted =  print_lp_labels(f_batch_no, m_scr_irctd_rec.prod_id, 
																m_scr_irctd_null.lic_plt_id)
								IF f_aborted = FALSE THEN
									--Update cvlbl print_flg to "Y"
									LET f_curr_dtim = CURRENT

									UPDATE cvlbl
									SET print_flg = "Y",
										print_user = g_user.user_id,
										print_dtim = f_curr_dtim,
										change_user = g_user.user_id,
										change_dtim = f_curr_dtim
									WHERE batch_no = f_batch_no
									AND po_id = m_scr_irctd_rec.po_id
									AND rcpt_id = m_rcpt_id
									AND prod_id = m_scr_irctd_rec.prod_id

									IF SQLCA.SQLCODE <> 0 
									OR SQLCA.SQLERRD[3] = 0 THEN
										LET m_msg = "UPDATE cvlbl(2) FAILED. SQLCODE: ", SQLCA.SQLCODE,
                    						" ISAM=", SQLCA.SQLERRD[2]
										LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
										LET m_msg = "PO: ", m_scr_irctd_rec.po_id,
											" RCPT: ", m_rcpt_id,
											" PROD: ", m_scr_irctd_rec.prod_id,
											" BATCH_NO ", f_batch_no
										LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
										CALL sh_rf_cmd_msg("I9060")	#-- system failure
									END IF
								ELSE
										LET m_msg = " Call to function print_lp_labels Failed. "
										LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
								END IF
							END IF
							CALL next_blank("B")
							CALL display_irctd()
							NEXT FIELD s_rf_vrfy.lic_plt_id
						ELSE
							CALL sh_rf_err_msg("C1202") #Labels already printed
							CALL next_blank("B")
						END IF
						CALL display_irctd()
						NEXT FIELD s_rf_vrfy.upc_id
					END IF 
				END IF
			ELSE
				######################################################
				# View the Vendor Profile Exception screen.
				######################################################
				IF m_ret_ipod.po_id IS NOT NULL
				AND m_scr_irctd_rec.appt_id IS NOT NULL
				THEN
					CALL display_ivore_dt(  g_user.lang_id,
											m_scr_irctd_rec.appt_id,
											m_ret_ipod.po_id,
											m_upd_vorex,
											m_scr_irctd_rec.dc_id,
											m_scr_irctd_rec.whse_id,
											g_user.user_id)
						RETURNING f_ret_status
					IF f_ret_status
					THEN
						CALL sh_rf_err_msg("R4999") ## System error
						CONTINUE INPUT
					END IF
				ELSE
					CALL sh_rf_err_msg("R3010") ## Enter a valid Prod/Dtl first
					CONTINUE INPUT
				END IF
			END IF

		ON KEY(CONTROL-A)
			IF INFIELD(lic_plt_id) THEN 
				LET f_count = 0
				WHILE TRUE 
					CALL get_lic_plt_id(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.whse_id,
                		"LPP", 1)
                    	RETURNING f_aborted, f_ret_lic_plt

					IF  f_aborted = TRUE THEN
						IF  f_count = 5 THEN
							CALL sh_rf_err_msg("C1206") 
						END IF
						LET m_msg = "get_lic_plt_id failed- Try to get number again."
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						LET f_count  = f_count + 1

						IF f_count > 4 THEN
							EXIT WHILE
						END IF
					ELSE
						EXIT WHILE
					END IF
					LET f_count = 0
				END WHILE

				IF f_aborted = FALSE THEN
					LET m_scr_irctd_rec.lic_plt_id = f_ret_lic_plt
					CALL display_irctd()
					LET f_gen_plt = TRUE
					LET m_gen_lic_flag = TRUE
					LET m_add_update = "A" 
					NEXT FIELD s_rf_vrfy.upc_id
				END IF
			END IF 

		ON KEY (CONTROL-F)
			IF m_ret_ipod.po_id IS NOT NULL
			AND m_scr_irctd_rec.appt_id IS NOT NULL
			THEN
				######################################################
				# Function displays its own errors, etc.
				######################################################
				CALL view_perform(	m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.whse_id,
									m_scr_irctd_rec.appt_id,
									m_ret_aassg.assg_id,
									m_ret_aassg.asgt_id,
									m_ret_aassg.assoc_id,
									m_ret_aassg.start_dtim,
									'N',				## Audit level
									m_recalc_day)
				LET m_recalc_day = FALSE
			ELSE
				CALL sh_rf_err_msg("R3010") ## Enter a valid Prod/Dtl first
				CONTINUE INPUT
			END IF

		ON KEY (CONTROL-G)
			IF m_ret_ipod.po_id IS NOT NULL
			AND m_scr_irctd_rec.appt_id IS NOT NULL
			THEN
				######################################################
				# Function displays its own errors, etc.
				######################################################
				CALL load_task_scrn(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.whse_id,
									m_scr_irctd_rec.appt_id,
									m_ret_ipod.po_id,
									g_user.user_id,
									g_user.lang_id,
									m_ret_aassg.asgt_id)
					RETURNING f_task_del, m_load_task.*
				IF f_task_del
				THEN
					LET m_load_task.load_prep   = FALSE
					LET m_load_task.pinwheel    = FALSE
					LET m_load_task.man_unstk   = FALSE
					LET m_load_task.fork_unstk  = FALSE
					LET m_load_task.spec_hnd    = FALSE
					CONTINUE INPUT
				END IF
			ELSE
				CALL sh_rf_err_msg("R3010") ## Enter a valid Prod/Dtl first
				CONTINUE INPUT
			END IF

		ON KEY (CONTROL-Q)
			IF m_ret_ipod.po_id IS NOT NULL
			AND m_scr_irctd_rec.appt_id IS NOT NULL
			THEN
				LET f_alarm = "N"
				CALL sh_rf_ysno_msg("R3000","N")    ## Send alarm on PO?
					RETURNING m_ignore, f_alarm
				IF f_alarm = "Y"
				THEN
					CALL msg_send_alert("PurchaseOrder",
										"UserAlarm",
										 m_ret_ipod.po_id)
					LET m_msg = "User Alarm sent.  P.O.=", m_ret_ipod.po_id
					LET m_ignore = se_log_xevent (300, m_msg,
						g_icomm.curr_prg_name, m_module, "%C")
					CALL sh_rf_cmd_msg("R5621") ## Alarm sent.
					SLEEP 2
					LET m_chkr_flg.alarm = TRUE
				END IF
			ELSE
				CALL sh_rf_err_msg("R3010") ## Enter valid Prod first.
			END IF

		BEFORE FIELD qc_req
            CALL sh_rf_cmd_msg("I9971")
            DISPLAY m_scr_irctd_rec.qc_req TO s_rf_vrfy.qc_req
                ATTRIBUTE(REVERSE)

		AFTER FIELD appt_id
			DISPLAY m_scr_irctd_rec.appt_id TO s_rf_vrfy.appt_id
				ATTRIBUTE(NORMAL)

			##########################################################
			# New 'trip', so run labor calc if anything new was added.
			##########################################################
			IF (m_hold_appt_id <> m_scr_irctd_rec.appt_id)
			AND m_scr_irctd_rec.appt_id IS NOT NULL
			THEN
				IF m_rows_added = TRUE
				AND m_albdf.chk_stds_calc_flg = "Y"
				THEN
					CALL rf_unload_calc(m_ret_aassg.assg_id,
										m_trip_no,
										m_audit_lvl,
										'Y')			## Update table?
						RETURNING f_aborted, f_err_code, f_std_tim
					IF f_aborted = TRUE
					THEN
						CALL sh_rf_cmd_msg("R5620") ## Standards calc error
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,7504, "EXIT: cstm_inp_irctd")
						RETURN TRUE
					END IF
					LET m_rows_added = FALSE
					LET m_recalc_day = TRUE
				END IF
				LET m_trip_no = m_trip_no + 1
				LET m_trip_seq = 1
			END IF

			IF m_scr_irctd_rec.appt_id IS NOT NULL
			THEN
				CALL lkp_iapt(m_scr_irctd_rec.dc_id,m_scr_irctd_rec.rcv_whse_id,
							  m_scr_irctd_rec.appt_id)
					RETURNING f_ret_status, m_ret_iapt.*

				IF f_ret_status = TRUE
				THEN
					CALL sh_rf_cmd_msg("I9093")	#-- appt not found
					SLEEP 1
					NEXT FIELD s_rf_vrfy.appt_id
				END IF
				IF m_ret_iapt.closed_flg = "Y"
				THEN
					CALL sh_rf_cmd_msg("I9177")	#-- appt is closed
					SLEEP 1
					NEXT FIELD s_rf_vrfy.appt_id
				END IF

				IF m_scr_irctd_rec.po_id IS NULL
				OR m_scr_irctd_rec.rcv_whse_id IS NULL
				THEN
					LET f_ret_status = select_po2()
					IF f_ret_status = TRUE
					THEN
						NEXT FIELD s_rf_vrfy.appt_id
					END IF

					CALL lkp_ipo(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.po_id)
						RETURNING f_ret_status, m_ret_ipo.*
    				DISPLAY m_scr_irctd_rec.po_id[10,18] TO s_rf_vrfy.po_id ATTRIBUTE(NORMAL)
					DISPLAY m_scr_irctd_rec.rcv_whse_id TO s_rf_vrfy.rcv_whse_id ATTRIBUTE(NORMAL)
					NEXT FIELD s_rf_vrfy.rcpt_id
				END IF

			END IF
			IF fgl_lastkey() = fgl_keyval("UP")
            THEN 
				NEXT FIELD s_rf_vrfy.lic_plt_id
			END IF

		AFTER FIELD rcpt_id
			DISPLAY m_scr_irctd_rec.rcpt_id TO s_rf_vrfy.rcpt_id
				ATTRIBUTE(NORMAL)

			IF m_scr_irctd_rec.rcpt_id IS NOT NULL
			THEN
				CALL lkp_irct_ap(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.rcpt_id,
							  m_scr_irctd_rec.appt_id)
	    			RETURNING f_ret_status, m_ret_irct.*

				IF m_ret_irct.rcpt_id IS NULL 
				THEN
					LET m_scr_irctd_rec.rcpt_id = NULL 
           	    	CALL sh_rf_cmd_msg("I1182")	#-- no rcpt record
					SLEEP 1
					NEXT FIELD s_rf_vrfy.rcpt_id
				END IF
			
				LET m_scr_irctd_rec.po_id = m_ret_irct.po_id
				LET m_scr_irctd_rec.rcv_whse_id = m_ret_irct.whse_id
				CALL lkp_ipo(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.po_id)
					RETURNING f_ret_status, m_ret_ipo.*
    			DISPLAY m_scr_irctd_rec.po_id[10,18] TO s_rf_vrfy.po_id ATTRIBUTE(NORMAL)
				DISPLAY m_scr_irctd_rec.rcv_whse_id TO s_rf_vrfy.rcv_whse_id ATTRIBUTE(NORMAL)

				SELECT COUNT(*)
				  INTO f_ipod_cnt
				  FROM ipod, irctd
				 WHERE ipod.dc_id	 = m_scr_irctd_rec.dc_id
				   AND ipod.po_id    = m_scr_irctd_rec.po_id
				   AND ipod.plst_id  = "V"
				   AND ipod.dc_id    = irctd.dc_id
				   AND ipod.po_id    = irctd.po_id
				   AND ipod.pod_id   = irctd.pod_id
				   AND irctd.rcpt_id <> m_scr_irctd_rec.rcpt_id

				IF f_ipod_cnt <> 0
				THEN
					CALL sh_rf_cmd_msg("I1183")	#-- other user receiving po
					SLEEP 1
					NEXT FIELD s_rf_vrfy.rcpt_id
				END IF

				IF orig_cstm_vrfy = "Y" THEN 
					LET f_return = check_ver_method("C") 

					IF f_return = TRUE THEN
						CALL sh_rf_info_msg3("C9160") 
						LET m_scr_irctd_rec.appt_id = NULL 
						LET m_scr_irctd_rec.rcpt_id = NULL 
						LET m_scr_irctd_rec.po_id = NULL 
						LET m_cstm_vrfy = "N"
						LET m_prt_queue = NULL
                		LET m_func_key = "SM"   #--Continue main loop
						RETURN FALSE
					END IF 

					IF m_prt_queue IS NULL THEN
						LET f_return = get_printer()
					END IF
				END IF 

				LET m_rcpt_id = m_ret_irct.rcpt_id
				CALL updt_m_array(	m_scr_irctd_rec.po_id, 
									m_scr_irctd_rec.rcv_whse_id, 
									m_scr_irctd_rec.appt_id,
									m_scr_irctd_rec.rcpt_id )
			ELSE 
				LET m_scr_irctd_rec.rcpt_id = NULL 
          	   	CALL sh_rf_cmd_msg("I1182")	#-- no rcpt record
				NEXT FIELD s_rf_vrfy.rcpt_id
			END IF

			IF m_scr_irctd_rec.lic_plt_id IS NOT NULL THEN 
				NEXT FIELD s_rf_vrfy.lic_plt_id  
			ELSE 
				NEXT FIELD s_rf_vrfy.upc_id 
			END IF 

		AFTER FIELD lic_plt_id 
			DISPLAY m_scr_irctd_rec.lic_plt_id TO s_rf_vrfy.lic_plt_id
				ATTRIBUTE(NORMAL)


			IF (fgl_lastkey() = fgl_keyval("DOWN") 
            OR  fgl_lastkey() = fgl_keyval("RIGHT"))
            THEN 
				IF m_scr_irctd_rec.lic_plt_id IS NULL 
				THEN
					LET m_scr_irctd_rec.rct_qty = NULL
					LET f_old_rct_qty = m_scr_irctd_rec.rct_qty
                	LET f_hold_qty = m_scr_irctd_rec.rct_qty
					LET m_add_update = "A"
					NEXT FIELD upc_id 
				END IF
			END IF 

			IF m_comp_lic_plt IS NOT NULL
			AND m_scr_irctd_rec.lic_plt_id IS NOT NULL
			AND m_comp_lic_plt <> m_scr_irctd_rec.lic_plt_id 
			THEN
				--User scanned an existing plate, then changed the plate. 
				--Need to reset values.
 				IF m_orig_rdst_id IS NOT NULL THEN
					LET f_hold_lp = m_scr_irctd_rec.lic_plt_id
					LET m_scr_irctd_rec.lic_plt_id = m_comp_lic_plt
 					CALL update_irctd(m_orig_rdst_id)
					LET m_scr_irctd_rec.lic_plt_id = f_hold_lp
					INITIALIZE f_hold_lp TO NULL
				END IF
 				CALL next_blank("C")
 				LET f_old_rct_qty = NULL
				INITIALIZE m_ret_irctd.* TO NULL
			END IF 

			LET m_lbl_curr_pal = m_scr_irctd_rec.lic_plt_id 

			LET m_comp_lic_plt = m_scr_irctd_rec.lic_plt_id 

			LET m_lic_plt_glob =  m_scr_irctd_rec.lic_plt_id
			IF m_scr_irctd_rec.lic_plt_id IS NOT NULL
			THEN

				CALL process_EAN128_scan(m_scr_irctd_rec.lic_plt_id) 
					RETURNING m_ignore

				IF m_scan_rec.lic_plt_id IS NOT NULL
				THEN
					LET m_scr_irctd_rec.lic_plt_id = m_scan_rec.lic_plt_id
				END IF

                # Fix for duplicate work unit. - start

                {SELECT COUNT(*)
                INTO f_count_ck
                FROM aothd
                WHERE dc_id = m_scr_irctd_rec.dc_id
                AND lic_plt_id = m_scr_irctd_rec.lic_plt_id
                AND lhty_id = 'CK'

                IF SQLCA.SQLCODE < 0 THEN
                    LET m_msg = "Fetch f_count_ck failed, SQLCODE:",
                                SQLCA.SQLCODE," ISAM:", SQLCA.SQLERRD[2]
                     LET f_ret_status = sh_elog_4gl(m_module,"%C%",m_msg)
                    LET f_ret_status = sh_mlog_4gl(g_std_func_chan,
                                       m_module,"%C%","EXIT: input_irctd")
                    CALL sh_rf_cmd_msg("I9060")
                    SLEEP 2
                    RETURN TRUE
                END IF

                IF f_count_ck > 0
                THEN
                    CALL sh_rf_cmd_msg("R7080")
                    SLEEP 2
                    LET m_scr_irctd_rec.lic_plt_id = NULL
                    DISPLAY m_scr_irctd_rec.lic_plt_id TO s_rf_vrfy.lic_plt_id
                    ATTRIBUTE(NORMAL)
                    NEXT FIELD s_rf_vrfy.lic_plt_id
                END IF}
                # Fix for duplicate work unit. - End


				# FBR IAB-743 get receiving warehouse if 
				#not already found via appt
				IF m_scr_irctd_rec.po_id IS NULL
                THEN
                    IF m_scr_irctd_rec.rcpt_id IS NULL
                    THEN
						SELECT whse_id,po_id,pod_id INTO m_scr_irctd_rec.rcv_whse_id,
								m_scr_irctd_rec.po_id, m_scr_irctd_rec.pod_id 
						FROM irctd
						WHERE dc_id = m_scr_irctd_rec.dc_id
						AND lic_plt_id = m_scr_irctd_rec.lic_plt_id
					ELSE
						SELECT whse_id,po_id,pod_id INTO m_scr_irctd_rec.rcv_whse_id,
								m_scr_irctd_rec.po_id, m_scr_irctd_rec.pod_id 
						FROM irctd
						WHERE dc_id = m_scr_irctd_rec.dc_id
						AND lic_plt_id = m_scr_irctd_rec.lic_plt_id
						AND rcpt_id = m_scr_irctd_rec.rcpt_id
					END IF
		
					IF SQLCA.SQLCODE < 0 THEN
						IF SQLCA.SQLCODE = -284 THEN
							CALL sh_rf_cmd_msg("R7079")  # Multiple LPs for DC.  Need to scan APPT and Receipt
							SLEEP 2
							NEXT FIELD s_rf_vrfy.appt_id
							 							
						ELSE
 
							IF SQLCA.SQLCODE <> -284 THEN

								LET m_msg = "SELECT irctd failed! SQLCODE:",
								SQLCA.SQLCODE," ISAM:", SQLCA.SQLERRD[2]
								LET f_ret_status = sh_elog_4gl(m_module,"%C%",m_msg)
								LET f_ret_status = sh_mlog_4gl(g_std_func_chan,
								m_module,"%C%","EXIT: cstm_inp_irctd")
								CALL sh_rf_cmd_msg("I9060")
								SLEEP 2
								RETURN TRUE
							END IF
						END IF
					ELSE
						LET m_scr_irctd_rec.whse_id 
								= m_scr_irctd_rec.rcv_whse_id
						DISPLAY m_scr_irctd_rec.whse_id TO s_rf_vrfy.whse_id
								ATTRIBUTE(NORMAL)
						DISPLAY m_scr_irctd_rec.rcv_whse_id 
								TO s_rf_vrfy.rcv_whse_id
								ATTRIBUTE(NORMAL)
					END IF
				END IF

				IF m_scr_irctd_rec.lic_plt_id = 0
				THEN
					NEXT FIELD s_rf_vrfy.lic_plt_id
				END IF

				#############################################################
				## Determine if putaway has been run for this pallet, if   ##
				## not, check to see if putaway at receiving is turned on, ##
				## if it is, display error, but allow user to continue.    ##
				#############################################################
				SELECT	UNIQUE 1
				FROM	irctd
				WHERE	dc_id = m_scr_irctd_rec.dc_id
				  AND	lic_plt_id = m_scr_irctd_rec.lic_plt_id
				  AND	rdst_id = "P"
				IF SQLCA.SQLCODE < 0
				THEN
					LET m_msg = "SELECT irctd failed. SQLCODE:",
						SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
					CALL sh_rf_cmd_msg("I9060")
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,
						m_module,"%C%", "EXIT: cstm_inp_irctd")
					RETURN TRUE
				END IF
				IF SQLCA.SQLCODE = 0
				THEN
					SELECT	UNIQUE 1
					FROM	swhse
					WHERE   dc_id = m_scr_irctd_rec.dc_id
					AND		whse_id = m_scr_irctd_rec.whse_id
					AND		ptwy_at_rc = 'Y'
					IF SQLCA.SQLCODE < 0
					THEN
						LET m_msg = "SELECT swhse failed. SQLCODE:",
							SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
						CALL sh_rf_cmd_msg("I9060")
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: cstm_inp_irctd")
						RETURN TRUE
					END IF
					IF SQLCA.SQLCODE = 0
					THEN
						LET f_ptwy_at_rc = 'Y'
						CALL sh_rf_cmd_msg("I6007")
						SLEEP 2
					END IF
				END IF
				#############################################################

                #------------------------------------------------------------------#
                #//////////////////////////////////////////////////////////////////#
                #  Following codes are added based on IAB 084                      #
                #\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\#
                #                                                           jjt--  #
                #------------------------------------------------------------------#
				CALL lkp_ipo(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.po_id) 
					RETURNING f_ret_status, m_ret_ipo.* 

                IF m_ret_ipo.po_type = "WT" 
                OR m_ret_ipo.po_type = "DT" 
				THEN
                    LET f_dc_id    = m_scr_irctd_rec.dc_id 
                    LET f_whse_id  = m_scr_irctd_rec.whse_id 
                    LET m_scope_key =  f_dc_id clipped, "-", f_whse_id clipped
                    CALL val_sacvv("WAREHOUSE_TRANSFER", "auto_inv_adjust","WH",
                                    m_scope_key) RETURNING f_abort_wt, f_sacvv.*
                
                    IF f_abort_wt = TRUE THEN
                       LET m_sacvv_value = "N"
                    ELSE
                
                       IF f_sacvv.value = "Y" THEN
                          LET m_sacvv_value = "Y"
                       ELSE
                          LET m_sacvv_value = "N"
                       END IF
                   
                    END IF
				END IF

				IF orig_cstm_vrfy = "Y" 
				AND m_ret_ipo.prnt_notice = "I" THEN 
					CALL sh_rf_info_msg3("C9160")
					LET m_scr_irctd_rec.appt_id = NULL 
					LET m_scr_irctd_rec.rcpt_id = NULL 
					LET m_scr_irctd_rec.po_id = NULL 
					LET m_cstm_vrfy = "N"
					LET m_prt_queue = NULL
               		LET m_func_key = "SM"   #--Continue main loop
					RETURN FALSE
				ELSE 
					IF m_prt_queue IS NULL THEN 
						LET f_return = get_printer() 
					END IF 
				END IF 

                #------------------------------------------------------------------#
				LET m_scr_irctd_rec.rcv_whse_id = m_scr_irctd_rec.whse_id
				LET f_lp_char   = m_scr_irctd_rec.lic_plt_id 
					USING "&&&&&&&&&&&&&&&&&&"

				LET f_lp_num    = f_lp_char[9,17]  

				EXECUTE p_iasn_cnt INTO f_iasn_cnt
					USING  m_scr_irctd_rec.lic_plt_id, m_scr_irctd_rec.po_id

				IF SQLCA.SQLCODE < 0 THEN
					LET m_msg = "EXECUTE p_iasn_cnt FAILED. SQLCODE:",
						SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,4546,m_msg)
					CALL sh_rf_cmd_msg("I9060")
					SLEEP 2
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,
						m_module,"%C%", "EXIT: cstm_inp_irctd")
					RETURN TRUE
				END IF

				IF f_iasn_cnt = 0 THEN 

					OPEN c_plate_whse USING m_scr_irctd_rec.dc_id,
											f_lp_num,
											f_lp_num

					IF SQLCA.SQLCODE < 0
					THEN
						LET m_msg = "OPEN c_plate_whse failed. SQLCODE:",
							SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
						CALL sh_rf_cmd_msg("I9060")
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: cstm_inp_irctd")
						RETURN TRUE
					END IF

					FETCH c_plate_whse INTO m_scr_irctd_rec.rcv_whse_id

					IF SQLCA.SQLCODE < 0
					THEN
						LET m_msg = "FETCH c_plate_whse failed. SQLCODE:",
							SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
						CALL sh_rf_cmd_msg("I9060")
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: cstm_inp_irctd")
						RETURN TRUE
					END IF

					IF SQLCA.SQLCODE < 0
					THEN
						LET m_msg = "Warehouse not found for plate ",
							m_scr_irctd_rec.lic_plt_id, " in dc ",
							m_scr_irctd_rec.dc_id
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
					END IF

					CALL check_snrng(m_scr_irctd_rec.dc_id,
								 m_scr_irctd_rec.rcv_whse_id,
								 m_scr_irctd_rec.lic_plt_id)
					 	RETURNING f_ret_status, f_msg

					IF f_ret_status
					THEN
						CALL sh_rf_cmd_msg(f_msg)	#-- not in valid range or > curr no
						SLEEP 1
						NEXT FIELD s_rf_vrfy.lic_plt_id 
					END IF
				END IF

				CALL find_irctd(m_scr_irctd_rec.dc_id,
							    m_scr_irctd_rec.rcv_whse_id,
							    m_scr_irctd_rec.lic_plt_id)
					RETURNING f_ret_status

				IF f_ret_status = TRUE 		#-- not found
				THEN

                    ## Only check the range if it is a new
                    ## license plate                      
					CALL check_snrng(m_scr_irctd_rec.dc_id,
								 m_scr_irctd_rec.rcv_whse_id,
								 m_scr_irctd_rec.lic_plt_id)
					 	RETURNING f_ret_status, f_msg
					IF f_ret_status
					THEN
						CALL sh_rf_cmd_msg(f_msg)	#-- not in valid range or > curr no
						SLEEP 1
						NEXT FIELD s_rf_vrfy.lic_plt_id 
					END IF

					CALL find_iinvd(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.rcv_whse_id,
									m_scr_irctd_rec.lic_plt_id)
						RETURNING f_ret_status, f_pal_count

					IF f_ret_status = TRUE
					THEN
						NEXT FIELD s_rf_vrfy.lic_plt_id
					END IF
					IF f_pal_count = 0
					AND m_scr_irctd_rec.appt_id IS NOT NULL
					THEN
						IF m_ret_aassg.asgt_id = "C"
						THEN
							##############################
							# Check for unloading workunit
							##############################
							LET f_ret_status = 
								find_unld_aothd(m_scr_irctd_rec.dc_id,
												m_scr_irctd_rec.whse_id,
												m_scr_irctd_rec.lic_plt_id) 
							CASE
							WHEN f_ret_status = 0
								#############################
								# Populates screen rec, m_ret_iprod.*
								# m_ret_iprdd.*, m_ret_ipod.*
								# sel loc, UPC.
								###############################	
								LET f_ret_status = move_irctd_unld()
								IF f_ret_status = TRUE
								THEN
									CALL sh_rf_cmd_msg("R5608")
									SLEEP 2
									NEXT FIELD s_rf_vrfy.lic_plt_id
								END IF
								CALL sh_rf_cmd_msg("R5801")
								SLEEP 1
								LET m_add_update = "A"
								CALL display_irctd()
								LET f_rf_chk = TRUE
								NEXT FIELD s_rf_vrfy.prod_id
							WHEN f_ret_status = NOTFOUND
								# Ok, No unloading workunit exists.
							OTHERWISE
								CALL sh_rf_cmd_msg("R5608")
								SLEEP 2
								NEXT FIELD s_rf_vrfy.lic_plt_id
							END CASE
						END IF

						--Disable generic plate ability
						CALL sh_rf_cmd_msg("I5310")	#-- Invalid LP
						SLEEP 2
						NEXT FIELD s_rf_vrfy.lic_plt_id

						# rcpt required to continue process	
						#----------------------------------
						IF m_scr_irctd_rec.rcpt_id IS NULL
						THEN
							CALL sh_rf_cmd_msg("I9087")	 #-- required field
							SLEEP 1
							LET m_scr_irctd_rec.lic_plt_id = NULL
							NEXT FIELD s_rf_vrfy.rcpt_id
						END IF
						CALL lkp_irct(m_scr_irctd_rec.dc_id, 
									  m_scr_irctd_rec.rcpt_id,
									  m_ret_irctd.po_id)
							RETURNING f_ret_status, m_ret_irct.*

						IF m_scr_irctd_rec.appt_id IS NOT NULL
						THEN
							CALL lkp_iapt(m_scr_irctd_rec.dc_id, 
										  m_scr_irctd_rec.rcv_whse_id,
										  m_scr_irctd_rec.appt_id)
								RETURNING f_ret_status, m_ret_iapt.*

							IF f_ret_status = TRUE
							THEN
								CALL sh_rf_cmd_msg("I9093")  #-- appt not found
								SLEEP 1
								NEXT FIELD s_rf_vrfy.appt_id
							END IF
							IF m_ret_iapt.closed_flg = "Y"
							THEN
								#-- appt is closed
								CALL sh_rf_cmd_msg("I9177") 
								SLEEP 1
								NEXT FIELD s_rf_vrfy.appt_id
							END IF
						END IF

						IF m_scan_rec.lic_plt_id IS NOT NULL
						OR m_scan_rec.upc_id IS NOT NULL
						OR m_scan_rec.code_date IS NOT NULL
						OR m_scan_rec.catch_wgt IS NOT NULL
						OR m_scan_rec.lot_no IS NOT NULL
						THEN
							IF f_gen_plt = FALSE THEN 
								CALL next_blank("C")	#-- clear all+/not a,r,l
							ELSE 
								CALL next_blank("B") 
								LET m_gen_lic_flag = TRUE 
							END IF 
							CALL populate_from_scanned()
								RETURNING f_ret_status
							IF f_ret_status <> 0	#-- upc invalid
							THEN
								NEXT FIELD upc_id
							END IF
						END IF

                        CALL find_iinvd_cde_dt(m_scr_irctd_rec.dc_id,           
                            m_scr_irctd_rec.rcv_whse_id,                        
                            m_scr_irctd_rec.lic_plt_id)                         
                        IF m_iinvd_cde_dt <> "12/31/2099"                       
                        THEN                                                    
                            LET m_scr_irctd_rec.code_date = m_iinvd_cde_dt      
                            DISPLAY m_scr_irctd_rec.code_date 
									TO s_rf_vrfy.code_date                                                                            
                            ATTRIBUTE(NORMAL)                                   
                        END IF                                                  


						CALL display_irctd()
						NEXT FIELD s_rf_vrfy.upc_id
					END IF
					# appt required to continue process	
					#----------------------------------
					LET m_add_update = "A"
					CALL sh_rf_cmd_msg("I9087")	 #-- required field
					SLEEP 1
					LET m_scr_irctd_rec.lic_plt_id = NULL
					NEXT FIELD s_rf_vrfy.appt_id
				ELSE
					LET m_gen_lic_flag = FALSE
				END IF 
				LET m_rcpt_id = m_ret_irctd.rcpt_id 
				LET m_add_update = "M"
				CALL find_iinvd(m_scr_irctd_rec.dc_id,
								m_scr_irctd_rec.rcv_whse_id,
								m_scr_irctd_rec.lic_plt_id)
					RETURNING f_ret_status, f_pal_count
			
				IF f_ret_status = FALSE 
				THEN 
					IF f_pal_count = 0
					THEN
						LET m_iinvd_found = FALSE	## run putaway job
					END IF
				ELSE
 					 NEXT FIELD s_rf_vrfy.lic_plt_id   
				END IF 

				CALL lkp_ipod(m_ret_irctd.dc_id, m_ret_irctd.po_id,
							  m_ret_irctd.pod_id)
					RETURNING f_ret_status, f_ret_ipod.*

				LET f_ipod_system_flag = f_ret_ipod.system_flag
				LET m_scr_irctd_rec.pod_id = f_ret_ipod.pod_id
                LET f_old_qc_req = f_ret_ipod.qc_req
                LET m_scr_irctd_rec.qc_req = f_ret_ipod.qc_req

				CALL lkp_ipo(m_ret_irctd.dc_id, m_ret_irctd.po_id)
		   	    	RETURNING f_ret_status, m_ret_ipo.*

				IF f_ret_status = TRUE
				THEN
					NEXT FIELD s_rf_vrfy.lic_plt_id
				END IF

				IF orig_cstm_vrfy = "Y" 
				AND m_ret_ipo.prnt_notice = "I"
				THEN 
					CALL sh_rf_info_msg3("C9160")
					LET m_scr_irctd_rec.appt_id = NULL 
					LET m_scr_irctd_rec.rcpt_id = NULL 
					LET m_scr_irctd_rec.po_id = NULL 
					LET m_cstm_vrfy = "N"
					LET m_prt_queue = NULL
               		LET m_func_key = "SM"   #--Continue main loop
					RETURN FALSE
				ELSE
					IF m_prt_queue IS NULL THEN 
						LET f_return = get_printer() 
					END IF 
				END IF 

				IF f_ret_ipod.plst_id <> "P"
				THEN
					IF f_ret_ipod.plst_id = "H"
					THEN
						LET m_scr_irctd_rec.qc_req = NULL
						CALL sh_rf_err_msg("I1194")	#-- cannot do RF rcv recs
					ELSE   
						IF f_ret_ipod.plst_id = "C"
						THEN
							CALL sh_rf_cmd_msg("I9222")	#PO Closed
						ELSE
							CALL sh_rf_cmd_msg("I1169")	#-- s/b putawayable
						END IF
					END IF
					SLEEP 1
					NEXT FIELD s_rf_vrfy.lic_plt_id
				END IF

				IF m_ret_irctd.rdst_id = "E" 
				AND m_ret_irctd.receipt_user <> g_user.user_id
				THEN
					# previously scanned? check log; if not found,
					# someone is currently processing this pallet
					#---------------------------------------------
					CALL find_irctl(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.rcv_whse_id,
									m_scr_irctd_rec.lic_plt_id)
						RETURNING f_ret_status

					IF f_ret_status = TRUE		
					THEN
						CALL sh_rf_cmd_msg("I1170")	#-- already exist	
						SLEEP 1
						NEXT FIELD s_rf_vrfy.lic_plt_id
					END IF
				END IF

				--If plate already verified, prompt for reprint of label
				IF m_ret_irctd.rdst_id = "V" 
				THEN
 					CALL sh_rf_ysno_msg("C1204","N")
                    	RETURNING m_ignore, f_ysno

					IF f_ysno = "Y" THEN
						--Get cvlbl batch_no to pass to print_lp_labels function
						SELECT UNIQUE batch_no, print_flg 
						INTO f_batch_no, f_print_flg
						FROM cvlbl
						WHERE po_id = m_ret_ipo.po_id
						AND rcpt_id = m_rcpt_id
						AND lp_cpn = m_scr_irctd_rec.lic_plt_id

						IF SQLCA.SQLCODE = NOTFOUND
						THEN
							-- User may have scanned a curr_pal_no from a case tag if there wasn't an LP printed
							SELECT UNIQUE batch_no, print_flg
							INTO f_batch_no, f_print_flg
							FROM cvlbl
							WHERE po_id = m_ret_ipo.po_id
							AND rcpt_id = m_rcpt_id
							AND lp_cpn = m_lbl_curr_pal

							IF SQLCA.SQLCODE <> 0 THEN
								LET m_msg = "SELECT cvlbl FAILED. SQLCODE: ", SQLCA.SQLCODE,
                  						" ISAM=", SQLCA.SQLERRD[2]
								LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
								LET m_msg = "PO: ", m_scr_irctd_rec.po_id,
									" RCPT: ", m_rcpt_id,
									" CP: ", m_lbl_curr_pal
								LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
								CALL sh_rf_cmd_msg("I9060")	#-- system failure
								SLEEP 1
								CALL sh_rf_err_msg("C1203") 
								CALL next_blank("B")
								LET m_scr_irctd_rec.lic_plt_id = NULL 
								CALL display_irctd()
								NEXT FIELD s_rf_vrfy.appt_id 
							END IF
							LET f_aborted =  print_lp_labels(f_batch_no, m_scr_irctd_rec.prod_id,
												m_lbl_curr_pal)
						ELSE
							IF SQLCA.SQLCODE <> 0 THEN
								LET m_msg = "SELECT cvlbl FAILED. SQLCODE: ", SQLCA.SQLCODE,
                  					" ISAM=", SQLCA.SQLERRD[2]
								LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
								LET m_msg = "PO: ", m_scr_irctd_rec.po_id,
									" RCPT: ", m_rcpt_id,
									" LP: ", m_scr_irctd_rec.lic_plt_id
								LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
								CALL sh_rf_cmd_msg("I9060")	#-- system failure
								SLEEP 1
								CALL sh_rf_err_msg("C1203") 
								CALL next_blank("B")
								LET m_scr_irctd_rec.lic_plt_id = NULL 
								CALL display_irctd()
								NEXT FIELD s_rf_vrfy.appt_id 
							END IF
							LET f_aborted =  print_lp_labels(f_batch_no, m_scr_irctd_rec.prod_id,
											m_scr_irctd_rec.lic_plt_id)
						END IF

							--This is only a label reprint, clear the screen
							CALL next_blank("B") 
							LET m_scr_irctd_rec.lic_plt_id = NULL 
							CALL display_irctd() 
							NEXT FIELD s_rf_vrfy.lic_plt_id 
					END IF
				END IF


				CALL move_ret_irctd() RETURNING f_ret_status
				IF f_ret_status 
				THEN
					CALL sh_rf_cmd_msg("I1189")	#-- cannot receive  
					SLEEP 2
					NEXT FIELD s_rf_vrfy.lic_plt_id
				END IF

				CALL sum_rct_qty(0) RETURNING f_ret_status, m_tot_qty

				IF m_ret_swhse.flow_instld_flg = "Y"  
				AND m_ret_irctd.rctt_id = "F"
				THEN
					CALL calc_flow_dmd( m_scr_irctd_rec.dc_id,
					   						m_scr_irctd_rec.whse_id,
                                           	m_ret_irctd.prod_id,
                                           	m_ret_irctd.prdd_id,
 					   						m_ret_irctd.po_id,
					   						m_ret_irctd.pod_id,
					   						m_ret_irctd.rcpt_id,
											m_ret_irctd.lic_plt_id) 

					LET m_scr_irctd_rec.flowthru_dmd = m_tot_demand_qty
				END IF

				LET m_scr_irctd_rec.totr = m_tot_qty

				# Calculate the code date
				IF m_ret_iprod.pwy_dte_ctl = "Y"
				AND m_ret_iprod.cde_dt_var >= f_dflt_days
				AND m_ret_iprod.cde_dt_incr = 0
				# Cannot be a transfer PO      
				AND (m_ret_ipo.po_type <> "TR"
				  OR m_ret_ipo.po_type IS NULL)
				AND m_ret_ipo.vend_id <> "00019108" # Cannot be a synergy PO
				THEN
					CALL get_code_date_info(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.prod_id,
									m_ret_irctd.po_id,
									m_ret_irctd.pod_id,
									'V')
						RETURNING m_calc_code_date
					LET m_calc_cde_dt_flg = 'Y'
					LET m_scr_irctd_rec.code_date = m_calc_code_date
					DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
						ATTRIBUTE(NORMAL)
				ELSE
					INITIALIZE m_calc_code_date TO NULL 
					LET m_calc_cde_dt_flg = 'N'
				END IF

				# If user already entered a code_date, use that value instead
				# of the one extracted from move_ret_irctd().
				IF m_code_date IS NOT NULL
				THEN
					LET m_scr_irctd_rec.code_date = m_code_date
				END IF

				IF m_scan_rec.lic_plt_id IS NOT NULL
				OR m_scan_rec.upc_id IS NOT NULL
				OR m_scan_rec.code_date IS NOT NULL
				OR m_scan_rec.catch_wgt IS NOT NULL
				OR m_scan_rec.lot_no IS NOT NULL
				THEN
					CALL populate_from_scanned()
						RETURNING f_ret_status
					IF f_ret_status <> 0		#-- upc invalid
					THEN
						NEXT FIELD upc_id
					END IF
				END IF

				# If user changes the calculated code date, 
				# change the flag to "N"
				IF m_calc_code_date IS NOT NULL
				AND m_calc_code_date <> m_scr_irctd_rec.code_date
				THEN
					LET m_calc_cde_dt_flg = 'N'
				END IF

				CALL display_irctd()

				IF m_scr_irctd_rec.appt_id <> m_ret_irct.appt_id
				THEN
					CALL sh_rf_cmd_msg("I7075")	#-- lic not this appt
					SLEEP 1
					NEXT FIELD s_rf_vrfy.lic_plt_id
				END IF

				LET f_counter = 1
				WHILE m_orig_qty_arr[f_counter].lic_plt_id IS NOT NULL
				AND m_orig_qty_arr[f_counter].lic_plt_id
					<> m_scr_irctd_rec.lic_plt_id
				AND f_counter < 500
					LET f_counter = f_counter + 1
				END WHILE

				IF m_orig_qty_arr[f_counter].lic_plt_id IS NULL
				OR f_counter = 500
				THEN
					LET m_orig_qty_arr[f_counter].po_id = m_scr_irctd_rec.po_id
					LET m_orig_qty_arr[f_counter].prod_id = m_scr_irctd_rec.prod_id
					LET m_orig_qty_arr[f_counter].rcpt_id = m_scr_irctd_rec.rcpt_id
					LET m_orig_qty_arr[f_counter].lic_plt_id 
						= m_scr_irctd_rec.lic_plt_id

					CALL lkp_iprdd(m_scr_irctd_rec.dc_id,
							   	m_scr_irctd_rec.prod_id,
							   	m_scr_irctd_rec.prdd_id)
						RETURNING f_ret_status, m_ret_iprdd.*

					LET m_orig_qty_arr[f_counter].qty
						= (m_scr_irctd_rec.qty_ord
						* m_ret_iprdd.unit_ship_cse)

				
					LET m_orig_qty_arr[f_counter + 1].lic_plt_id = NULL
				END IF

				IF m_add_update = "M" 
				THEN
					IF m_ret_iprod.lot_no_cntl = 'Y'
                	THEN
                    	#NEXT FIELD lot_no
						NEXT FIELD s_rf_vrfy.upc_id #LM
                	ELSE
						NEXT FIELD s_rf_vrfy.upc_id 
                	END IF
				END IF
			ELSE  
				NEXT FIELD s_rf_vrfy.appt_id 
			END IF

		AFTER FIELD upc_id

			DISPLAY m_scr_irctd_rec.upc_id TO s_rf_vrfy.upc_id
				ATTRIBUTE(NORMAL)

			IF m_scr_irctd_rec.lic_plt_id IS NULL
			AND m_scr_irctd_rec.upc_id IS NOT NULL
			THEN
				CALL strip_upc()
				DISPLAY m_scr_irctd_rec.upc_id TO s_rf_vrfy.upc_id
				    ATTRIBUTE(NORMAL)
				CALL proc_po_prod("U") 
					RETURNING f_ret_status, f_ret_choice
				IF f_ret_status = 1
				THEN
					LET m_scr_irctd_rec.upc_id = NULL
					DISPLAY m_scr_irctd_rec.upc_id TO s_rf_vrfy.upc_id
						ATTRIBUTE(NORMAL)
					NEXT FIELD prod_id
				END IF

				--Check to see if labels have been printed for product
				SELECT MAX(UNIQUE batch_no) 
				INTO f_batch_no 
				FROM cvlbl
				WHERE po_id = m_scr_irctd_rec.po_id
				AND rcpt_id = m_rcpt_id
				AND prod_id = m_scr_irctd_rec.prod_id
				AND print_flg = "N"

				IF SQLCA.SQLCODE = NOTFOUND
				OR (SQLCA.SQLCODE = 0 
				AND f_batch_no IS NULL) THEN 
					LET f_print_flg = "Y"
					LET m_msg = "No cvlbl records where print_flg = N ",
						" PO: ", m_scr_irctd_rec.po_id,
						" RCPT: ", m_rcpt_id,
						" PROD: ", m_scr_irctd_rec.prod_id
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				ELSE
					LET f_print_flg = "N"
					IF SQLCA.SQLCODE < 0 THEN
						LET m_msg = "SELECT cvlbl FAILED. SQLCODE: ", SQLCA.SQLCODE,
                  				" ISAM=", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						LET m_msg = "PO: ", m_scr_irctd_rec.po_id,
							" RCPT: ", m_rcpt_id,
							" PROD: ", m_scr_irctd_rec.prod_id
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						CALL sh_rf_cmd_msg("I9060")	#-- system failure
						SLEEP 1
						CALL sh_rf_err_msg("C1203") 
						CALL next_blank("A")
						CALL display_irctd()
						NEXT FIELD s_rf_vrfy.appt_id 
					END IF
				END IF

				IF f_print_flg = "N" THEN
 					CALL sh_rf_ysno_msg("C1201","Y") 
                    	RETURNING m_ignore, f_ysno
               		IF f_ysno = "Y"
                	THEN
						LET f_aborted =  print_lp_labels(f_batch_no, m_scr_irctd_rec.prod_id, 
														 m_scr_irctd_null.lic_plt_id)
						IF f_aborted = FALSE THEN
							--Update cvlbl print_flg to "Y"
							LET f_curr_dtim = CURRENT

							UPDATE cvlbl
							SET print_flg = "Y",
								print_user = g_user.user_id,
								print_dtim = f_curr_dtim,
								change_user = g_user.user_id,
								change_dtim = f_curr_dtim
							WHERE batch_no = f_batch_no
							AND po_id = m_scr_irctd_rec.po_id
							AND rcpt_id = m_rcpt_id
							AND prod_id = m_scr_irctd_rec.prod_id

							IF SQLCA.SQLCODE <> 0 
							OR SQLCA.SQLERRD[3] = 0 THEN
								LET m_msg = "UPDATE cvlbl(3) FAILED. SQLCODE: ", SQLCA.SQLCODE,
                    				" ISAM=", SQLCA.SQLERRD[2]
								LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
								LET m_msg = "PO: ", m_scr_irctd_rec.po_id,
									" RCPT: ", m_rcpt_id,
									" PROD: ", m_scr_irctd_rec.prod_id,
									" BATCH_NO ", f_batch_no
								LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
								CALL sh_rf_cmd_msg("I9060")	#-- system failure
							END IF
						ELSE
							LET m_msg = " Call to function print_lp_labels Failed. "
							LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
						END IF
					END IF
						CALL next_blank("B")
						CALL display_irctd()
						NEXT FIELD s_rf_vrfy.lic_plt_id
				ELSE
					CALL sh_rf_err_msg("C1202") #Labels already printed
					CALL next_blank("B")
				END IF
				CALL display_irctd()
				NEXT FIELD s_rf_vrfy.lic_plt_id 
			END IF
			
			IF  m_scr_irctd_rec.upc_id IS NOT NULL
			THEN

				IF m_scr_irctd_rec.lic_plt_id IS NOT NULL
				THEN
					CALL proc_po_prod("U") 
						RETURNING f_ret_status, f_ret_choice
					IF f_ret_status = 1
					THEN
						NEXT FIELD upc_id
					END IF
				END IF

				IF m_scan_rec.lic_plt_id IS NOT NULL
				OR m_scan_rec.upc_id IS NOT NULL
				OR m_scan_rec.code_date IS NOT NULL
				OR m_scan_rec.catch_wgt IS NOT NULL
				OR m_scan_rec.lot_no IS NOT NULL
				THEN
					CALL populate_from_scanned()
						RETURNING f_ret_status
	
					IF f_ret_status = 1 
					THEN
						# upc invalid
						NEXT FIELD s_rf_vrfy.upc_id
					END IF

					IF f_ret_status = 2 
					THEN
						# product detail invalid
						NEXT FIELD s_rf_vrfy.prdd_id
					END IF
				END IF

				# Calculate the code date
				IF m_ret_iprod.pwy_dte_ctl = "Y"
				AND m_ret_iprod.cde_dt_var >= f_dflt_days
				AND m_ret_iprod.cde_dt_incr = 0
				# Cannot be a transfer PO      
				AND (m_ret_ipo.po_type <> "TR"
				  OR m_ret_ipo.po_type IS NULL)
				AND m_ret_ipo.vend_id <> "00019108" # Cannot be a synergy PO
				THEN
					CALL get_code_date_info(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.prod_id,
									m_ret_irctd.po_id,
									m_ret_irctd.pod_id,
									'V')
						RETURNING m_calc_code_date
					LET m_calc_cde_dt_flg = 'Y'
					LET m_scr_irctd_rec.code_date = m_calc_code_date
					DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
						ATTRIBUTE(NORMAL)
				ELSE
					INITIALIZE m_calc_code_date TO NULL 
					LET m_calc_cde_dt_flg = 'N'
				END IF

				CALL display_irctd()
				IF m_ret_iprod.lot_no_cntl = 'Y'
				THEN
					#NEXT FIELD lot_no
					NEXT FIELD s_rf_vrfy.rct_qty #LM
				ELSE
					NEXT FIELD s_rf_vrfy.rct_qty
				END IF
			END IF

		AFTER FIELD prod_id
			DISPLAY m_scr_irctd_rec.prod_id TO s_rf_vrfy.prod_id
				ATTRIBUTE(NORMAL)

			################################################
			# If we are reading in Unloaded LP's, the following
			# redoes a lot of stuff we just did and then blanks
			# the quantity. Skip unless prod_id changed.
			IF m_ret_aassg.asgt_id = "C"
			AND m_unld_aothd.prod_id = m_scr_irctd_rec.prod_id
			THEN
				CALL display_irctd()
				IF m_ret_iprod.lot_no_cntl = 'Y'
				THEN
					#NEXT FIELD lot_no
					NEXT FIELD s_rf_vrfy.code_date #LM
				ELSE
					NEXT FIELD s_rf_vrfy.code_date
				END IF
			END IF

			IF m_scr_irctd_rec.prod_id IS NOT NULL
			AND m_scr_irctd_rec.lic_plt_id IS NOT NULL 
			THEN
				LET f_string_val = m_scr_irctd_rec.prod_id 
				CALL convert_value("PROD", f_string_val)
					RETURNING f_rtrn_code, f_string_val
	
				CASE
					WHEN f_rtrn_code = 1				
						CALL convert_error("PROD", "RF") RETURNING F_aborted
						IF f_aborted <> 0
						THEN
							CALL sh_rf_cmd_msg("S0005")
							SLEEP 2
							LET m_ignore = sh_mlog_4gl(g_std_func_chan,
								m_module,"%C%", "EXIT: cstm_inp_irctd")
							EXIT PROGRAM 2
						END IF 
						NEXT FIELD s_rf_vrfy.prod_id

					WHEN (f_rtrn_code < 0)
						CALL sh_rf_cmd_msg("S0005")
						SLEEP 2
						LET m_ignore = sh_mlog_4gl(g_std_func_chan,
							m_module,"%C%", "EXIT: cstm_inp_irctd")
						EXIT PROGRAM 2

					OTHERWISE
						--- Successful conversion.
						LET m_scr_irctd_rec.prod_id = f_string_val 
				END CASE

				CALL val_iprod(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.prod_id)
					 RETURNING f_ret_status, m_ret_iprod.*

				IF f_ret_status = TRUE
				THEN
					CALL sh_rf_cmd_msg("I9089")	#-- product not on DC
					SLEEP 1
					LET m_scr_irctd_rec.sdesc = m_scr_irctd_null.sdesc
					DISPLAY m_scr_irctd_rec.sdesc TO s_rf_vrfy.sdesc
						ATTRIBUTE(NORMAL)
					NEXT FIELD s_rf_vrfy.prod_id
				END IF

				DISPLAY m_scr_irctd_rec.prod_id TO s_rf_vrfy.prod_id
					ATTRIBUTE(NORMAL)
	
				#-----------------
				# retrieve product
				#-----------------
				CALL proc_po_prod("P") RETURNING f_ret_status, f_ret_choice
			    IF f_ret_status 
			    THEN
					NEXT FIELD s_rf_vrfy.prod_id
				END IF

				# Calculate the code date
				IF m_ret_iprod.pwy_dte_ctl = "Y"
				AND m_ret_iprod.cde_dt_var >= f_dflt_days
				AND m_ret_iprod.cde_dt_incr = 0
				# Cannot be a transfer PO      
				AND (m_ret_ipo.po_type <> "TR"
				  OR m_ret_ipo.po_type IS NULL)
				AND m_ret_ipo.vend_id <> "00019108" # Cannot be a synergy PO
				THEN
					CALL get_code_date_info(m_scr_irctd_rec.dc_id,
									m_scr_irctd_rec.prod_id,
									m_ret_irctd.po_id,
									m_ret_irctd.pod_id,
									'V')
						RETURNING m_calc_code_date
					LET m_calc_cde_dt_flg = 'Y'
					LET m_scr_irctd_rec.code_date = m_calc_code_date
					DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
						ATTRIBUTE(NORMAL)
				ELSE
					INITIALIZE m_calc_code_date TO NULL 
					LET m_calc_cde_dt_flg = 'N'
				END IF

				#------------------------
				# retrieve product detail
				#------------------------
				CALL proc_prod_prdd(f_ret_choice) RETURNING f_ret_status
			    IF f_ret_status 
			    THEN
					NEXT FIELD s_rf_vrfy.prdd_id
				END IF

				CALL display_irctd()

			ELSE 
				--Check to see if labels have been printed for this PO and product.
				IF m_scr_irctd_rec.lic_plt_id IS NULL
				AND m_scr_irctd_rec.prod_id IS NOT NULL
				THEN

					LET f_string_val = m_scr_irctd_rec.prod_id 
					CALL convert_value("PROD", f_string_val)
						RETURNING f_rtrn_code, f_string_val
	
					CASE
						WHEN f_rtrn_code = 1				
							CALL convert_error("PROD", "RF") RETURNING F_aborted
							IF f_aborted <> 0
							THEN
								CALL sh_rf_cmd_msg("S0005")
								SLEEP 2
								LET m_ignore = sh_mlog_4gl(g_std_func_chan,
									m_module,"%C%", "EXIT: cstm_inp_irctd")
								EXIT PROGRAM 2
							END IF 
							NEXT FIELD s_rf_vrfy.prod_id

						WHEN (f_rtrn_code < 0)
							CALL sh_rf_cmd_msg("S0005")
							SLEEP 2
							LET m_ignore = sh_mlog_4gl(g_std_func_chan,
								m_module,"%C%", "EXIT: cstm_inp_irctd")
							EXIT PROGRAM 2
						OTHERWISE
							--- Successful conversion.
							LET m_scr_irctd_rec.prod_id = f_string_val 
					END CASE

					CALL val_iprod(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.prod_id)
					 	RETURNING f_ret_status, m_ret_iprod.*

					IF f_ret_status = TRUE
					THEN
						CALL sh_rf_cmd_msg("I9089")	#-- product not on DC
						SLEEP 1
						LET m_scr_irctd_rec.sdesc = m_scr_irctd_null.sdesc
						DISPLAY m_scr_irctd_rec.sdesc TO s_rf_vrfy.sdesc
							ATTRIBUTE(NORMAL)
						NEXT FIELD s_rf_vrfy.prod_id
					END IF

					DISPLAY m_scr_irctd_rec.prod_id TO s_rf_vrfy.prod_id
						ATTRIBUTE(NORMAL)

					--IF upc_id IS NULL, ask user if they want to add
					--If so, call IBUPB transaction 
					IF m_scr_irctd_rec.upc_id IS NULL THEN
 						CALL sh_rf_ysno_msg("C1205","N") 
                    		RETURNING m_ignore, f_ysno

						IF f_ysno = 'Y' THEN
							RUN "IISupcph00.4ge"
						END IF
					END IF

					IF m_scr_irctd_rec.po_id IS NULL
					AND m_rcpt_id IS NOT NULL
					THEN
						LET m_scr_irctd_rec.po_id = m_ret_irct.po_id
					END IF

					--Check to see if labels have been printed for product
					SELECT MAX(UNIQUE batch_no) 
					INTO f_batch_no 
					FROM cvlbl
					WHERE po_id = m_scr_irctd_rec.po_id
					AND rcpt_id = m_rcpt_id
					AND prod_id = m_scr_irctd_rec.prod_id
					AND print_flg = "N"

					IF SQLCA.SQLCODE = NOTFOUND
					OR (SQLCA.SQLCODE = 0 
					AND f_batch_no IS NULL) THEN 
						LET f_print_flg = "Y"
						LET m_msg = "No cvlbl records where print_flg = N ",
							" PO: ", m_scr_irctd_rec.po_id,
							" RCPT: ", m_rcpt_id,
							" PROD: ", m_scr_irctd_rec.prod_id
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					ELSE
						LET f_print_flg = "N"
						IF SQLCA.SQLCODE <> 0 THEN
							LET m_msg = "SELECT cvlbl FAILED. SQLCODE: ", SQLCA.SQLCODE,
                  					" ISAM=", SQLCA.SQLERRD[2]
							LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
							LET m_msg = "PO: ", m_scr_irctd_rec.po_id,
								" RCPT: ", m_rcpt_id,
								" PROD: ", m_scr_irctd_rec.prod_id
							LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
							CALL sh_rf_cmd_msg("I9060")	#-- system failure
							SLEEP 1
							CALL sh_rf_err_msg("C1203") 
							CALL next_blank("A")
							CALL display_irctd()
							NEXT FIELD s_rf_vrfy.appt_id 
						END IF
					END IF

					IF f_print_flg = "N" THEN
 						CALL sh_rf_ysno_msg("C1201","Y") 
                    		RETURNING m_ignore, f_ysno
               			IF f_ysno = "Y"
                		THEN
							LET f_aborted =  print_lp_labels(f_batch_no, m_scr_irctd_rec.prod_id, 
															 m_scr_irctd_null.lic_plt_id)
							IF f_aborted = FALSE THEN
								--Update cvlbl print_flg to "Y"
								LET f_curr_dtim = CURRENT

								UPDATE cvlbl
								SET print_flg = "Y",
									print_user = g_user.user_id,
									print_dtim = f_curr_dtim,
									change_user = g_user.user_id,
									change_dtim = f_curr_dtim
								WHERE batch_no = f_batch_no
								AND po_id = m_scr_irctd_rec.po_id
								AND rcpt_id = m_rcpt_id
								AND prod_id = m_scr_irctd_rec.prod_id

								IF SQLCA.SQLCODE <> 0 
								OR SQLCA.SQLERRD[3] = 0 THEN
									LET m_msg = "UPDATE cvlbl(4) FAILED. SQLCODE: ", SQLCA.SQLCODE,
                    					" ISAM=", SQLCA.SQLERRD[2]
									LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
									LET m_msg = "PO: ", m_scr_irctd_rec.po_id,
										" RCPT: ", m_rcpt_id,
										" PROD: ", m_scr_irctd_rec.prod_id,
										" BATCH_NO ", f_batch_no
									LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
									CALL sh_rf_cmd_msg("I9060")	#-- system failure
								END IF
							ELSE
								LET m_msg = " Call to function print_lp_labels Failed. ",
									" PO: ", m_scr_irctd_rec.po_id, "RCPT: ", m_rcpt_id,
									" PROD: ", m_scr_irctd_rec.prod_id, " BATCH: ", f_batch_no
								LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
							END IF
						END IF
						CALL next_blank("B")
						CALL display_irctd()
						NEXT FIELD s_rf_vrfy.lic_plt_id
					ELSE
						CALL sh_rf_err_msg("C1202") #Labels already printed
						CALL next_blank("B")
					END IF
					CALL display_irctd()
					NEXT FIELD s_rf_vrfy.upc_id
				END IF
			END IF

			IF (fgl_lastkey() = fgl_keyval("UP")
            OR  fgl_lastkey() = fgl_keyval("LEFT"))
            THEN 
				NEXT FIELD s_rf_vrfy.lic_plt_id
            END IF 
			IF m_ret_iprod.lot_no_cntl = 'Y'
			THEN
				#NEXT FIELD lot_no
				NEXT FIELD s_rf_vrfy.rct_qty #LM
			ELSE
				NEXT FIELD s_rf_vrfy.rct_qty
			END IF	

		AFTER FIELD prdd_id
			DISPLAY m_scr_irctd_rec.prdd_id TO s_rf_vrfy.prdd_id
				ATTRIBUTE(NORMAL)

 	 		IF m_scr_irctd_rec.prod_id IS NOT NULL
			AND m_scr_irctd_rec.prdd_id IS NOT NULL
			AND f_old_prdd_id <> m_scr_irctd_rec.prdd_id
			THEN
				CALL val_iprdd(m_scr_irctd_rec.dc_id,
							   m_scr_irctd_rec.prod_id,
							   m_scr_irctd_rec.prdd_id)
					 RETURNING f_ret_status, m_ret_iprdd.*

				IF f_ret_status = FALSE
				THEN
					CALL move_ret_iprdd()
				ELSE  
					CALL sh_rf_cmd_msg("I1107")	#-- invalid product detail
					SLEEP 1
					NEXT FIELD s_rf_vrfy.prdd_id
				END IF
	
				#------------------------
				# retrieve product detail
				#------------------------
				LET f_ret_choice = NULL
				CALL proc_prod_prdd(f_ret_choice) RETURNING f_ret_status
				IF f_ret_status 
				THEN
					NEXT FIELD s_rf_vrfy.prdd_id
				END IF

				CALL display_irctd()
				IF m_ret_iprod.lot_no_cntl = 'Y'	
				THEN
					#NEXT FIELD lot_no
					NEXT FIELD s_rf_vrfy.code_date #LM
				ELSE
					NEXT FIELD s_rf_vrfy.code_date
				END IF
			END IF
			
			#START:LMISHRA:T20210316.0163:Add Repack:3/2/2021
			IF (m_ret_iprdd.unit_ship_cse > 1 and m_ret_iprdd.cse_unit <> m_ret_iprdd.unit_ship_cse) 
				OR (m_ret_iprdd.inner_pack_unit > 1 and m_ret_iprdd.cse_unit <> m_ret_iprdd.inner_pack_unit) 
				OR ((m_ret_iprdd.unit_ship_cse = 1 or m_ret_iprdd.inner_pack_unit = 1) and m_ret_iprdd.cse_unit <> 1)
			THEN 
				LET f_is_repack =  TRUE
			ELSE 
				LET f_is_repack =  FALSE 
		
			END IF 
 
			
			IF f_is_repack = TRUE
			THEN			
				LET f_rpk = m_ret_iprdd.cse_unit / m_ret_iprdd.unit_ship_cse
			END IF 
			
			DISPLAY  f_rpk TO s_rf_vrfy.rpak
				ATTRIBUTE(NORMAL)

		{AFTER FIELD lot_no
			IF  m_ret_iprod.lot_no_cntl = "Y"
    		AND (m_scr_irctd_rec.lot_no = " "
    		OR   m_scr_irctd_rec.lot_no IS NULL)
    		AND m_scr_irctd_rec.rct_qty > 0
    		THEN
				NEXT FIELD s_rf_vrfy.lot_no
				CALL sh_rf_cmd_msg("I9203")
				SLEEP 2
    		END IF

			DISPLAY m_scr_irctd_rec.lot_no TO s_rf_vrfy.lot_no
				ATTRIBUTE(NORMAL)} 
		#END:LMISHRA:T20210316.0163:Add Repack:3/2/2021

		AFTER FIELD urcp_id
			LET m_urcp_id = m_scr_irctd_rec.urcp_id
 	 		IF m_scr_irctd_rec.urcp_id IS NOT NULL
			THEN
				# user may have changed product detail...
				#---------------------------------------- 
				CALL lkp_iprdd(m_scr_irctd_rec.dc_id,
							   m_scr_irctd_rec.prod_id,
				   			   m_scr_irctd_rec.prdd_id)
		 			 RETURNING f_ret_status, m_ret_iprdd.*

				IF m_old_urcp_id <> m_urcp_id
				OR LENGTH(m_old_urcp_id) = 0
				THEN
					CALL val_surcp(m_scr_irctd_rec.urcp_id)
						RETURNING f_ret_status, m_ret_surcp.*

			   		IF f_ret_status = TRUE
			   		THEN
			    		CALL lst_rf_surcp()
							 RETURNING f_ret_status, m_ret_surcp.*

						IF f_ret_status = TRUE 
						THEN
							NEXT FIELD s_rf_vrfy.urcp_id
						END IF
					END IF

					LET m_scr_irctd_rec.urcp_id = m_ret_surcp.surcp_user_val
					LET m_urcp_id = m_ret_surcp.urcp_id
					IF m_old_urcp_id = " "
						OR m_old_urcp_id = m_urcp_id	## CR 11509
					THEN
						LET m_old_urcp_id = m_urcp_id
					ELSE
	
						IF m_urcp_id = "S"
						THEN
							LET m_scr_irctd_rec.qty_ord =
							   (m_ret_ipod.qty_ord / m_ret_iprdd.unit_ship_cse)
	
							LET m_scr_irctd_rec.rct_qty = 
								m_scr_irctd_rec.rct_qty * m_ret_iprdd.cse_unit
								/ m_ret_iprdd.unit_ship_cse 
							LET m_scr_irctd_rec.totr = m_scr_irctd_rec.totr  
								* m_ret_iprdd.cse_unit
								/ m_ret_iprdd.unit_ship_cse 
						ELSE
							## change from "S" to "C"
 							LET f_case_rmd = m_ret_ipod.qty_ord
									MOD m_ret_iprdd.cse_unit
							## 06-12-96 - Changed to use ipod and irctd
							IF f_case_rmd = 0
							THEN
								LET f_case_rmd = (m_scr_irctd_rec.rct_qty
									* m_ret_iprdd.unit_ship_cse)
										MOD m_ret_iprdd.cse_unit
							END IF
	
							CASE
							WHEN f_case_rmd <> 0 -- Forced to keep to S.
								LET m_scr_irctd_rec.urcp_id = m_urcp_s_val
								LET m_urcp_id = "S"
	
								#-- change urcp to S?
								CALL sh_rf_err_msg("I1188")	#-- For one loc, 
	
								DISPLAY m_scr_irctd_rec.urcp_id
									 TO s_rf_vrfy.urcp_id ATTRIBUTE(NORMAL)
								LET m_scr_irctd_rec.qty_ord =
								   (m_ret_ipod.qty_ord 
									/ m_ret_iprdd.unit_ship_cse)
								
								#-- Do not change qty on screen unless NULL. 
								IF m_scr_irctd_rec.rct_qty IS NULL 
								THEN
									LET m_scr_irctd_rec.rct_qty =
										m_scr_irctd_rec.qty_ord 
								END IF
	
							WHEN f_case_rmd = 0 -- change urcp_id from S to C.
								LET m_scr_irctd_rec.qty_ord =
								   (m_ret_ipod.qty_ord / m_ret_iprdd.cse_unit)
								LET m_scr_irctd_rec.totr = m_scr_irctd_rec.totr 
									* m_ret_iprdd.unit_ship_cse 
									/ m_ret_iprdd.cse_unit
								-- urcp_id changed from S to C.
								IF m_scr_irctd_rec.rct_qty IS NOT NULL
								AND m_old_urcp_id = "S"
								THEN
									LET m_scr_irctd_rec.rct_qty = 
										m_scr_irctd_rec.rct_qty 
										* m_ret_iprdd.unit_ship_cse 
										/ m_ret_iprdd.cse_unit
								END IF
							END CASE
						END IF
						LET m_old_urcp_id = m_urcp_id
						LET f_old_rct_qty = m_scr_irctd_rec.rct_qty
					END IF ## if m_old_urcp_id = " "
				END IF
 	 		END IF 

			DISPLAY m_scr_irctd_rec.qty_ord
                 TO s_rf_vrfy.qty_ord ATTRIBUTE(NORMAL)
			DISPLAY m_scr_irctd_rec.rct_qty 
                 TO s_rf_vrfy.rct_qty ATTRIBUTE(NORMAL)
			DISPLAY m_scr_irctd_rec.urcp_id
                 TO s_rf_vrfy.urcp_id ATTRIBUTE(NORMAL)
			DISPLAY m_scr_irctd_rec.totr
                 TO s_rf_vrfy.totr ATTRIBUTE(NORMAL)
	
	
		AFTER FIELD rct_qty
			DISPLAY m_scr_irctd_rec.rct_qty TO s_rf_vrfy.rct_qty
				ATTRIBUTE(NORMAL)

			IF m_scan_rec.prd_varies
			THEN
				CALL sh_rf_err_msg("I5312")
			END IF
         
			LET m_rct_change = FALSE

			IF m_scr_irctd_rec.rct_qty IS NOT NULL
			AND m_scr_irctd_rec.lic_plt_id IS NOT NULL
			THEN
				IF m_add_update = "A" 
					AND m_scr_irctd_rec.rct_qty = 0
				THEN
       				CALL sh_rf_err_msg("I1245")	#-- no 0 for new lic_plt
					NEXT FIELD s_rf_vrfy.rct_qty
				END IF
            	LET f_ret_status = validate_negative()
				IF f_ret_status = 1
				THEN
       				CALL sh_rf_cmd_msg("I1253")	#-- no negative numbers
					SLEEP 1
					NEXT FIELD s_rf_vrfy.rct_qty
				END IF
				
				IF f_hold_qty <> m_scr_irctd_rec.rct_qty
				THEN
					CALL kill_mpp()
				END IF

				CALL sum_rct_qty(m_scr_irctd_rec.rct_qty)
					 RETURNING f_ret_status, m_ignore

				IF f_ret_status = TRUE
				AND f_hold_qty <> m_scr_irctd_rec.rct_qty
				THEN
					CALL sh_rf_ysno_msg("I9152","N")	#-- rct > ord qty
						RETURNING f_ret_status, f_ysno
					IF f_ysno = "N"
					THEN
						LET m_scr_irctd_rec.rct_qty = m_scr_irctd_null.rct_qty
						NEXT FIELD s_rf_vrfy.rct_qty
					END IF
				END IF
	
				# warn if over rec of product if product exist on same appt
				#----------------------------------------------------------
				IF (m_scr_irctd_rec.rct_qty  ## + m_scr_irctd_rec.totr >
					>  m_scr_irctd_rec.qty_ord)
				THEN
					CALL chk_other_rec(m_scr_irctd_rec.dc_id,
								   	   m_scr_irctd_rec.rcv_whse_id,
								   	   m_scr_irctd_rec.appt_id,
								   	   m_scr_irctd_rec.po_id,
								   	   m_scr_irctd_rec.prod_id) 
						   RETURNING f_ret_status
	
					IF f_ret_status = TRUE		#-- give warning if over rec
					OR m_scr_irctd_rec.rct_qty > m_scr_irctd_rec.qty_ord
					THEN
						CALL sh_rf_ysno_msg("I9135","N") #-- rct > ord_qty
							RETURNING f_ret_status, f_ysno
						IF f_ysno = "N"
						THEN
							NEXT FIELD s_rf_vrfy.rct_qty
						END IF
					END IF
				END IF
	
				IF f_old_rct_qty <> m_scr_irctd_rec.rct_qty
				THEN
					LET f_old_rct_qty = m_scr_irctd_rec.rct_qty
					LET m_rct_change  = TRUE
				END IF

				## CR 11509 - IF the order and received quantities are in full
				##    cases and not repack, change urcp_id to the value on
				##    swhse.
				IF m_swhse_urcp_id = "C"
				AND m_urcp_id = "S"
				THEN
					IF m_ret_iprdd.unit_ship_cse = m_ret_iprdd.cse_unit
					THEN
						-- doing nothing here   ## always display "C"
						LET m_scr_irctd_rec.urcp_id = m_urcp_c_val
						LET m_urcp_id = "C"
						LET m_old_urcp_id = m_urcp_id
						DISPLAY m_scr_irctd_rec.urcp_id
							TO s_rf_vrfy.urcp_id ATTRIBUTE(NORMAL)
					ELSE
						LET f_case_rmd = m_ret_ipod.qty_ord
							MOD m_ret_iprdd.cse_unit
						IF f_case_rmd = 0
						THEN
							LET f_case_rmd = (m_scr_irctd_rec.rct_qty
								* m_ret_iprdd.unit_ship_cse)
								MOD m_ret_iprdd.cse_unit
						END IF
						IF f_case_rmd = 0 -- change urcp_id from S to C.
						THEN
							LET m_scr_irctd_rec.qty_ord =
								(m_ret_ipod.qty_ord / m_ret_iprdd.cse_unit)
							LET m_scr_irctd_rec.totr = m_scr_irctd_rec.totr 
								* m_ret_iprdd.unit_ship_cse 
								/ m_ret_iprdd.cse_unit
							LET m_scr_irctd_rec.rct_qty = 
								m_scr_irctd_rec.rct_qty 
								* m_ret_iprdd.unit_ship_cse 
								/ m_ret_iprdd.cse_unit
							LET m_scr_irctd_rec.urcp_id = m_urcp_c_val
							LET m_urcp_id = "C"
							LET m_old_urcp_id = m_urcp_id
							LET f_old_rct_qty = m_scr_irctd_rec.rct_qty
							DISPLAY m_scr_irctd_rec.qty_ord
								TO s_rf_vrfy.qty_ord ATTRIBUTE(NORMAL)
							DISPLAY m_scr_irctd_rec.rct_qty 
								TO s_rf_vrfy.rct_qty ATTRIBUTE(NORMAL)
							DISPLAY m_scr_irctd_rec.urcp_id
								TO s_rf_vrfy.urcp_id ATTRIBUTE(NORMAL)
							DISPLAY m_scr_irctd_rec.totr
								TO s_rf_vrfy.totr ATTRIBUTE(NORMAL)
						END IF
					END IF
				END IF
			END IF

		AFTER FIELD qty_damaged
         	DISPLAY m_scr_irctd_rec.qty_damaged TO s_rf_vrfy.qty_damaged
				ATTRIBUTE(NORMAL)
			IF m_scr_irctd_rec.qty_damaged > m_scr_irctd_rec.qty_ord
			THEN	#Damage entered is more than rec qty
				CALL sh_rf_err_msg("Z0101")
				SLEEP 1
				NEXT FIELD s_rf_vrfy.qty_damaged
			END IF
			DISPLAY m_scr_irctd_rec.tot_damage TO s_rf_vrfy.tot_damage
				ATTRIBUTE(NORMAL)
		AFTER FIELD stor_ti
			DISPLAY m_scr_irctd_rec.stor_ti TO s_rf_vrfy.stor_ti
				ATTRIBUTE(NORMAL)

		AFTER FIELD stor_hi
			DISPLAY m_scr_irctd_rec.stor_hi TO s_rf_vrfy.stor_hi
				ATTRIBUTE(NORMAL)

		AFTER FIELD code_date
			LET m_sav_ysno = NULL			
			LET f_abort = check_code_date( "H", m_ret_iprod.cde_dt_incr,
							               m_scr_irctd_rec.code_date )
			IF f_abort = TRUE
			THEN
				NEXT FIELD s_rf_vrfy.code_date
			END IF

			DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
				ATTRIBUTE(NORMAL)

            IF m_ret_iprod.pwy_dte_ctl = "Y"
                AND  m_scr_irctd_rec.code_date IS  NULL
                AND m_ret_iprod.cde_dt_incr > 0
                AND m_scr_irctd_rec.rct_qty > 0
                OR m_scr_irctd_rec.code_date = "12/31/2099"
            THEN
                CALL sh_rf_cmd_msg("I9087")  #-- required field
                LET m_scr_irctd_rec.code_date = NULL
                DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
                NEXT FIELD s_rf_vrfy.code_date
            END IF

			IF m_ret_iprod.pwy_dte_ctl = "Y"
				AND  m_scr_irctd_rec.code_date IS  NULL
				AND m_scr_irctd_rec.rct_qty > 0
				OR m_scr_irctd_rec.code_date = "12/31/2099"
			THEN   
				#CALL sh_rf_cmd_msg("I9087")	 #-- required field
				LET m_scr_irctd_rec.code_date = CURRENT
				DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
					ATTRIBUTE(NORMAL)
			END IF

			# If user changes the calculated code date, change the flag to "N"
			IF m_calc_code_date IS NOT NULL
			AND m_calc_code_date <> m_scr_irctd_rec.code_date
			THEN
				LET m_calc_cde_dt_flg = 'N'
			END IF

			IF m_ret_iprod.pwy_dte_ctl = "Y"
			THEN   
				LET f_override_date = "N"
				LET f_cur_dt = CURRENT
				IF m_ret_iprod.cde_dt_var IS NULL THEN
					LET m_ret_iprod.cde_dt_var = 0
				END IF
				IF m_ret_iprod.cde_dt_incr IS NULL THEN
					LET m_ret_iprod.cde_dt_incr = 0
				END IF

				IF f_old_code_date = m_scr_irctd_rec.code_date
				THEN
					LET f_incr_cde_dt = m_scr_irctd_rec.code_date
				ELSE
					LET f_incr_cde_dt = m_scr_irctd_rec.code_date +
										m_ret_iprod.cde_dt_incr UNITS DAY
				END IF
				IF f_cur_dt + m_ret_iprod.cde_dt_var >
					f_incr_cde_dt
					AND	f_override_date = "N"
					AND m_calc_cde_dt_flg = "N"			#5.6.1
				THEN
					CALL sh_rf_ysno_msg("I9136","N")	#-- date too old
						RETURNING f_ret_status, f_ysno
					LET m_sav_ysno = f_ysno
					UPDATE iinvd
					SET cde_dt_warn_flg = f_ysno
					WHERE lic_plt_id = m_scr_irctd_rec.lic_plt_id
			
					IF SQLCA.SQLCODE <> 0 THEN
						LET m_msg = "UPDATE iinvd cde_dt_warn_flg failed.",
							" SQLCODE = ", SQLCA.SQLCODE, ", ISAM = ", SQLCA.SQLERRD[2],
							", ROW PROCESSED = ", SQLCA.SQLERRD[3],
							", lic_plt_id = ", m_scr_irctd_rec.lic_plt_id 
						LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
					END IF

					-- No records processed, must be a generic lic_plt_id
					IF SQLCA.SQLERRD[3] = 0
					THEN
						LET m_sav_ysno = f_ysno
					END IF

					IF f_ysno = "N"
					THEN
						LET m_scr_irctd_rec.code_date = " "
						DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
							ATTRIBUTE(NORMAL)
						NEXT FIELD s_rf_vrfy.code_date
					END IF
					LET	f_override_date = "Y"
				ELSE
					LET m_sav_ysno = 'N'
					UPDATE iinvd
					SET cde_dt_warn_flg = 'N'
					WHERE lic_plt_id = m_scr_irctd_rec.lic_plt_id
			
					IF SQLCA.SQLCODE <> 0 THEN
						LET m_msg = "UPDATE iinvd cde_dt_warn_flg failed.",
							" SQLCODE = ", SQLCA.SQLCODE, ", ISAM = ", SQLCA.SQLERRD[2],
							", ROW PROCESSED = ", SQLCA.SQLERRD[3],
							", lic_plt_id = ", m_scr_irctd_rec.lic_plt_id 
						LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
					END IF

					-- No records processed, must be a generic lic_plt_id
					IF SQLCA.SQLERRD[3] = 0
					THEN
						LET m_sav_ysno = 'N'
					END IF
				END IF

				IF chk_max_cde_dt(m_scr_irctd_rec.dc_id,
								  m_scr_irctd_rec.whse_id,
								  m_scr_irctd_rec.prod_id,
								  m_scr_irctd_rec.code_date)
				AND m_calc_cde_dt_flg = 'N'			#5.6.1
				THEN
					CALL sh_rf_ysno_msg("I9271", "N")
							RETURNING f_ret_status, f_ysno
					LET m_sav_ysno = f_ysno
					UPDATE iinvd
					SET cde_dt_warn_flg = f_ysno
					WHERE lic_plt_id = m_scr_irctd_rec.lic_plt_id
			
					IF SQLCA.SQLCODE <> 0 THEN
						LET m_msg = "UPDATE iinvd cde_dt_warn_flg failed.",
							" SQLCODE = ", SQLCA.SQLCODE, ", ISAM = ", SQLCA.SQLERRD[2],
							", lic_plt_id = ", m_scr_irctd_rec.lic_plt_id 
						LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
					END IF

					-- No records processed, must be a generic lic_plt_id
					IF SQLCA.SQLERRD[3] = 0
					THEN
						LET m_sav_ysno = f_ysno
					END IF
					IF f_ysno = "N"
					THEN
						LET m_scr_irctd_rec.code_date =
								m_scr_irctd_null.code_date
						NEXT FIELD s_rf_vrfy.code_date  
					END IF
				END IF
			END IF

			## CR 8059 - For one location only one code date is allowed.
			IF m_ret_iprod.pwy_dte_ctl = "Y"
			AND m_scr_irctd_rec.rct_qty > 0
			THEN   
				LET f_cde_count 		= 0

				DECLARE c_old_cde_date CURSOR FOR 
				SELECT  irctd.code_date	
				FROM	iinvd, irctd, iplas
				WHERE	iinvd.plas_id =
						(SELECT	a.plas_id
						 FROM	iinvd a
						 WHERE	a.lic_plt_id = m_scr_irctd_rec.lic_plt_id
						 AND	a.dc_id      = m_scr_irctd_rec.dc_id
						 AND	a.whse_id    = m_scr_irctd_rec.rcv_whse_id)
				AND		iinvd.cde_dt  	 <> f_incr_cde_dt
				AND		iinvd.lic_plt_id <> m_scr_irctd_rec.lic_plt_id
				AND 	iplas.plas_id	 = iinvd.plas_id
				AND 	iplas.lcus_id NOT IN ('P','Z','V') 
				AND		irctd.dc_id 	 = iinvd.dc_id
				AND		irctd.whse_id 	 = iinvd.whse_id
				AND		irctd.lic_plt_id = iinvd.lic_plt_id
				AND		irctd.code_date  IS NOT NULL

				IF SQLCA.SQLCODE < 0
				THEN
					LET m_msg = "DECLARE c_check_old_cde_date failed. SQLCODE=", 
						SQLCA.SQLCODE, "ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET f_abort = TRUE
					EXIT INPUT 
				END IF
				
				FOREACH c_old_cde_date INTO f_old_code_date1

					IF SQLCA.SQLCODE <> 0
					THEN
						LET m_msg = "FOREACH c_old_cde_date failed. SQLCODE=", 
							SQLCA.SQLCODE, "ISAM=", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
						CALL sh_rf_cmd_msg("I9060")	#-- system failure
						SLEEP 2
						LET f_abort = TRUE
						EXIT INPUT 
					END IF

                    IF (YEAR(f_old_code_date1)=1899 AND MONTH(f_old_code_date1)=12 AND DAY(f_old_code_date1)=31)
                    OR (YEAR(f_old_code_date1)=2099 AND MONTH(f_old_code_date1)=12 AND DAY(f_old_code_date1)=31)
                    THEN
						CONTINUE FOREACH	
                    ELSE
                        CALL sh_rf_err_msg("I1283")
                        NEXT FIELD s_rf_vrfy.code_date
                    END IF
                END FOREACH
			END IF

				#LET m_code_date = m_scr_irctd_rec.code_date
				LET m_code_date = f_incr_cde_dt
				LET m_scr_irctd_rec.code_date = f_incr_cde_dt
				DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
					ATTRIBUTE(NORMAL)

		 AFTER FIELD qc_req
            DISPLAY m_scr_irctd_rec.qc_req TO s_rf_vrfy.qc_req
                ATTRIBUTE(NORMAL)

            ###Check for getting a correct value
            IF m_scr_irctd_rec.qc_req IS NULL OR
               m_scr_irctd_rec.qc_req = " "
            THEN
                CALL sh_rf_cmd_msg("I5043")
                SLEEP 2
                NEXT FIELD qc_req
            ELSE
                CASE m_scr_irctd_rec.qc_req
                    WHEN 'Y'
                        LET f_new_qc_req = m_scr_irctd_rec.qc_req
						#BA4465-If QC is On, then change the ipod.system flag to 'S' 
						#system directed putaway.
						LET f_ipod_system_flag = 'S'
                    WHEN 'N'
						#BA4465-If QC is Off, then change the ipod.system flag to old one. 
						LET f_ipod_system_flag = f_ret_ipod.system_flag 
                        LET f_new_qc_req = m_scr_irctd_rec.qc_req
                    OTHERWISE
                        CALL sh_rf_cmd_msg("I9037")
                        SLEEP 2
                        NEXT FIELD qc_req
                END CASE
			END IF

            ###### Check for Putaway at recieving
            SELECT ptwy_at_rc
             INTO f_ptwy_at_rc
             FROM swhse
            WHERE dc_id = m_scr_irctd_rec.dc_id
              AND whse_id = m_scr_irctd_rec.whse_id

            IF SQLCA.SQLCODE <> 0 THEN
                CALL sh_rf_err_msg("S9201")
                SLEEP 2
                LET m_msg = "smwhe selection failed. SQLCODE=",
                    SQLCA.SQLCODE," ISAM=", SQLCA.SQLERRD[2]
                LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                "EXIT: cstm_inp_irctd")
                LET m_scr_irctd_rec.* = m_scr_irctd_null.*
                LET m_func_key = "CL"   #-- just clearing screen
                EXIT INPUT
            END IF
         
            IF f_old_qc_req <> f_new_qc_req
            THEN
                IF f_ptwy_at_rc = 'Y'
                THEN
					#BA4465 --If putaway already executed  then revert back the value of 
					#f_ipod_system_flag to old one.
					LET f_ipod_system_flag = f_ret_ipod.system_flag
                    LET m_scr_irctd_rec.qc_req = f_old_qc_req
                    LET f_new_qc_req = f_old_qc_req
                    DISPLAY m_scr_irctd_rec.qc_req TO s_rf_vrfy.qc_req
                    CALL sh_rf_cmd_msg("I6055")
                    SLEEP 2
                    NEXT FIELD qc_req 
                END IF
            END IF

		AFTER INPUT
			IF m_scr_irctd_rec.lic_plt_id IS NULL THEN
				NEXT FIELD s_rf_vrfy.lic_plt_id 
			END IF
			IF m_iinvd_found = FALSE
			THEN
				CALL check_snrng(m_scr_irctd_rec.dc_id,
							 	m_scr_irctd_rec.rcv_whse_id,
							 	m_scr_irctd_rec.lic_plt_id)
				 	RETURNING f_ret_status, f_msg

				IF f_ret_status
				THEN
					CALL sh_rf_cmd_msg(f_msg) 	#-- not in valid range or > curr no
					SLEEP 1
					NEXT FIELD s_rf_vrfy.lic_plt_id 
				END IF
			END IF

			UPDATE irctd 
			  SET urcp_id = m_urcp_id
			WHERE dc_id		= m_scr_irctd_rec.dc_id
			AND whse_id		= m_scr_irctd_rec.rcv_whse_id
			AND lic_plt_id	= m_scr_irctd_rec.lic_plt_id

			IF SQLCA.SQLCODE <> 0 THEN
				LET m_msg = "UPDATE irctd failed. SQLCODE=", SQLCA.SQLCODE,
							" ISAM=", SQLCA.SQLERRD[2]
				LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
				CALL upd_irctd_error(m_scr_irctd_rec.lic_plt_id, 
										m_scr_irctd_rec.dc_id, 
										m_scr_irctd_rec.rcv_whse_id)
			END IF


			IF m_add_update = "A" 
				AND m_scr_irctd_rec.rct_qty = 0
			THEN
				CALL sh_rf_err_msg("I1245")	#-- no 0 for new lic_plt
				NEXT FIELD s_rf_vrfy.rct_qty
			END IF
			LET f_ret_status = validate_negative()
			CASE f_ret_status
				WHEN 1
					CALL sh_rf_cmd_msg("I1253")	#-- no negative numbers
					SLEEP 1
					NEXT FIELD s_rf_vrfy.rct_qty
				WHEN 2
					CALL sh_rf_cmd_msg("I1253")	#-- no negative numbers
					SLEEP 1
					NEXT FIELD s_rf_vrfy.qty_damaged
				WHEN 3
					CALL sh_rf_cmd_msg("I1253")	#-- no negative numbers
					SLEEP 1
					NEXT FIELD s_rf_vrfy.stor_ti
				WHEN 4
					CALL sh_rf_cmd_msg("I1253")	#-- no negative numbers
					SLEEP 1
					NEXT FIELD s_rf_vrfy.stor_hi
				OTHERWISE 
					EXIT CASE
			END CASE

			IF m_scr_irctd_rec.prod_id IS NULL
			AND m_scr_irctd_rec.upc_id IS NULL
			THEN
				CALL sh_rf_cmd_msg("I9176")	#-- enter product or UPC
				SLEEP 1
				DISPLAY m_scr_irctd_rec.upc_id
					 TO s_rf_vrfy.upc_id ATTRIBUTE(NORMAL)
				DISPLAY m_scr_irctd_rec.prod_id
					 TO s_rf_vrfy.prod_id ATTRIBUTE(NORMAL)
				NEXT FIELD s_rf_vrfy.upc_id
			END IF
				
			# capture what is on screen
			#--------------------------
			CALL get_fldbuf(lic_plt_id, prod_id, prdd_id, upc_id,
							stor_ti, stor_hi, rct_qty, urcp_id, 
							qty_damaged, lot_no, code_date,qc_req)
				RETURNING m_scr_irctd_rec.lic_plt_id, m_scr_irctd_rec.prod_id,
							m_scr_irctd_rec.prdd_id, m_scr_irctd_rec.upc_id,
							m_scr_irctd_rec.stor_ti, m_scr_irctd_rec.stor_hi,
							m_scr_irctd_rec.rct_qty, m_scr_irctd_rec.urcp_id,
							m_scr_irctd_rec.qty_damaged,m_scr_irctd_rec.lot_no, 
							m_scr_irctd_rec.code_date, m_scr_irctd_rec.qc_req

			CALL validate_irctd() RETURNING f_vldt_status

			IF f_vldt_status = 0
			OR f_vldt_status = 1
			THEN
				-- doing nothing here
				LET m_func_key = "EN"	 #-- irctd complete for this pallet 
			ELSE
				CALL sh_rf_cmd_msg("I9087")	 #-- required field
				SLEEP 1
			END IF
			CASE f_vldt_status
				WHEN 0
					EXIT CASE
				WHEN 1
					EXIT CASE
				WHEN 2
					NEXT FIELD s_rf_vrfy.prod_id
				WHEN 3
					NEXT FIELD s_rf_vrfy.prdd_id
				WHEN 4
					NEXT FIELD s_rf_vrfy.code_date
				WHEN 5
					NEXT FIELD s_rf_vrfy.stor_ti
				WHEN 6
					NEXT FIELD s_rf_vrfy.stor_hi
				WHEN 7
					NEXT FIELD s_rf_vrfy.rct_qty
				WHEN 8
					NEXT FIELD s_rf_vrfy.urcp_id
				WHEN 9
					#NEXT FIELD s_rf_vrfy.lot_no
					NEXT FIELD s_rf_vrfy.rct_qty
				WHEN -1
					NEXT FIELD s_rf_vrfy.qc_req
				OTHERWISE
					LET m_msg = "Invalid Input "
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET m_func_key = "QU"
					EXIT INPUT
			END CASE

			SELECT 1 FROM irct
			WHERE dc_id = m_scr_irctd_rec.dc_id
			AND whse_id = m_scr_irctd_rec.whse_id
			AND po_id = m_scr_irctd_rec.po_id
			AND rcpt_id = m_scr_irctd_rec.rcpt_id
			AND appt_id = m_scr_irctd_rec.appt_id
			IF SQLCA.SQLCODE <> 0 
			THEN
				IF SQLCA.SQLCODE < 0
				THEN
					LET m_msg = "system failure"
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
					CALL sh_cmd_msg("I9060")
					SLEEP 2
					LET m_func_key = "QU"
					EXIT INPUT
				ELSE
					CALL sh_cmd_msg("I1182")
					SLEEP 1
					NEXT FIELD s_rf_vrfy.rcpt_id
				END IF
			END IF

			IF f_old_rct_qty <> m_scr_irctd_rec.rct_qty
			THEN
				LET m_rct_change = TRUE
			END IF

			IF f_incr_cde_dt IS NULL
			THEN
				LET f_incr_cde_dt = m_scr_irctd_rec.code_date
			END IF
			IF m_ret_iprod.pwy_dte_ctl = "Y"
			THEN   
				IF f_override_date IS NULL
				THEN
					LET	f_override_date = "N"
				END IF

				LET f_cur_dt = CURRENT
				IF m_ret_iprod.cde_dt_var IS NULL THEN
					LET m_ret_iprod.cde_dt_var = 0
				END IF
				IF m_ret_iprod.cde_dt_incr IS NULL THEN
					LET m_ret_iprod.cde_dt_incr = 0
				END IF
				IF f_old_code_date IS NULL
				AND m_scan_rec.code_date IS NOT NULL
				THEN
					IF f_old_code_date = m_scr_irctd_rec.code_date
					THEN
						LET f_incr_cde_dt = m_scr_irctd_rec.code_date
					ELSE
						LET f_incr_cde_dt = m_scr_irctd_rec.code_date +
											m_ret_iprod.cde_dt_incr UNITS DAY
					END IF
					LET m_code_date = f_incr_cde_dt
					LET m_scr_irctd_rec.code_date = f_incr_cde_dt
					DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
						ATTRIBUTE(NORMAL)
				END IF
				IF f_cur_dt + m_ret_iprod.cde_dt_var >
					#(f_new_cde_dt + m_ret_iprod.cde_dt_incr)
					f_incr_cde_dt
					AND	f_override_date = "N"
					AND m_calc_cde_dt_flg = 'N'		#5.6.1
				THEN
					CALL sh_rf_ysno_msg("I9136","N")	#-- date too old
						RETURNING f_abort, f_ysno
					IF f_ysno = "N"
					THEN
						LET m_scr_irctd_rec.code_date = " "
						DISPLAY m_scr_irctd_rec.code_date TO s_rf_vrfy.code_date
							ATTRIBUTE(NORMAL)
						NEXT FIELD s_rf_vrfy.code_date
					END IF
					LET	f_override_date = "Y"
				END IF
			ELSE
				LET m_scr_irctd_rec.code_date = CURRENT
			END IF

			## CR 8059 - For one location only one code date is allowed.
			IF m_ret_iprod.pwy_dte_ctl = "Y"
			AND m_scr_irctd_rec.rct_qty > 0
			THEN   
				LET f_cde_count 		= 0

				DECLARE c_old_cde_date1 CURSOR FOR
				SELECT  irctd.code_date	
				FROM	iinvd, irctd, iplas
				WHERE	iinvd.plas_id =
						(SELECT	a.plas_id
						 FROM	iinvd a
						 WHERE	a.lic_plt_id = m_scr_irctd_rec.lic_plt_id
						 AND	a.dc_id      = m_scr_irctd_rec.dc_id
						 AND	a.whse_id    = m_scr_irctd_rec.rcv_whse_id)
				AND		iinvd.cde_dt     <> f_incr_cde_dt
				AND		iinvd.lic_plt_id <> m_scr_irctd_rec.lic_plt_id
				AND 	iplas.plas_id	 = iinvd.plas_id
				AND 	iplas.lcus_id	NOT IN ('P','Z','V') 
				AND		irctd.dc_id 	 = iinvd.dc_id
				AND		irctd.whse_id 	 = iinvd.whse_id
				AND		irctd.lic_plt_id = iinvd.lic_plt_id
				AND		irctd.code_date  IS NOT NULL

				IF SQLCA.SQLCODE < 0
				THEN
					LET m_msg = "DECLARE c_old_cde_date1 failed. SQLCODE=", 
						SQLCA.SQLCODE, "ISAM=", SQLCA.SQLERRD[2]
					LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
					CALL sh_rf_cmd_msg("I9060")	#-- system failure
					SLEEP 2
					LET f_abort = TRUE
					EXIT INPUT 
				END IF

				FOREACH c_old_cde_date1 INTO f_old_code_date2

					IF SQLCA.SQLCODE <> 0
					THEN
						LET m_msg = "FOREACH c_old_cde_date1 failed. SQLCODE=", 
							SQLCA.SQLCODE, "ISAM=", SQLCA.SQLERRD[2]
						LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg) 
						CALL sh_rf_cmd_msg("I9060")	#-- system failure
						SLEEP 2
						LET f_abort = TRUE
						EXIT INPUT 
					END IF

					IF (YEAR(f_old_code_date2)=1899 AND MONTH(f_old_code_date2)=12 AND DAY(f_old_code_date2)=31)
					OR (YEAR(f_old_code_date2)=2099 AND MONTH(f_old_code_date2)=12 AND DAY(f_old_code_date2)=31)
					THEN
						CONTINUE FOREACH
					ELSE
						CALL sh_rf_err_msg("I1283")
						NEXT FIELD s_rf_vrfy.code_date
					END IF
				END FOREACH
			END IF

            ###Check for getting a correct value
            IF m_scr_irctd_rec.qc_req IS NULL OR
               m_scr_irctd_rec.qc_req = " "
            THEN
                CALL sh_rf_cmd_msg("I5043")
                SLEEP 2
                NEXT FIELD qc_req
            ELSE
                CASE m_scr_irctd_rec.qc_req
                    WHEN 'Y'
						#BA4465-If QC is On, then change the ipod.system flag to 'S' system 
						#directed putaway.
					    LET f_ipod_system_flag = 'S'	
                        LET f_new_qc_req = m_scr_irctd_rec.qc_req
                    WHEN 'N'
						#BA4465-If QC is Off, then change the ipod.system flag to old one. 
					    LET f_ipod_system_flag = f_ret_ipod.system_flag 
                        LET f_new_qc_req = m_scr_irctd_rec.qc_req
                    OTHERWISE
                        CALL sh_rf_cmd_msg("I9037")
                        SLEEP 2
                        NEXT FIELD qc_req
                END CASE
            END IF

			INITIALIZE m_comp_lic_plt TO NULL 

			###### Check for Putaway at recieving
            SELECT ptwy_at_rc
              INTO f_ptwy_at_rc
              FROM swhse
             WHERE dc_id = m_scr_irctd_rec.dc_id
               AND whse_id = m_scr_irctd_rec.whse_id

            IF SQLCA.SQLCODE <> 0 THEN
                CALL sh_rf_err_msg("S9201")
                SLEEP 2
                LET m_msg = "smwhe selection failed. SQLCODE=",
                    SQLCA.SQLCODE," ISAM=", SQLCA.SQLERRD[2]
                LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                "EXIT: cstm_inp_irctd")
                LET m_scr_irctd_rec.* = m_scr_irctd_null.*
                LET m_func_key = "CL"   #-- just clearing screen
                EXIT INPUT
            END IF
		
			### Check for unique constraint
                LET f_cnt = 0
                SELECT COUNT(*)
                  INTO f_cnt
                  FROM irqca
                 WHERE dc_id = m_scr_irctd_rec.dc_id
                   AND whse_id = m_scr_irctd_rec.whse_id
                   AND prod_id = m_scr_irctd_rec.prod_id
                   AND lic_plt_id = m_scr_irctd_rec.lic_plt_id

                IF SQLCA.SQLCODE <> 0 THEN
                   CALL sh_rf_err_msg("S9201")
                   SLEEP 2
                   LET m_msg = "SELECT irqca failed. SQLCODE=",
                   SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                   LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                   LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                               "EXIT:cstm_inp_irctd")
                   LET m_func_key = " "
                   EXIT INPUT
                 END IF

            IF f_old_qc_req <> f_new_qc_req
            THEN
                IF f_ptwy_at_rc = 'Y'
                THEN
				#BA4465 --If putaway already executed  then revert back the value of 
				#f_ipod_system_flag to old one.
					LET f_ipod_system_flag = f_ret_ipod.system_flag
                    LET m_scr_irctd_rec.qc_req = f_old_qc_req
                    LET f_new_qc_req = f_old_qc_req
                    DISPLAY m_scr_irctd_rec.qc_req TO s_rf_vrfy.qc_req
                    CALL sh_rf_cmd_msg("I6055")
                    SLEEP 2
                ELSE
                	#### Check the verification flag for given po,pod_id & reciept id
					LET f_lic_cnt = 0
                    SELECT COUNT(*)
                      INTO f_lic_cnt
                      FROM irctd
                     WHERE dc_id = m_scr_irctd_rec.dc_id
                       AND whse_id = m_scr_irctd_rec.whse_id
                       AND po_id = m_scr_irctd_rec.po_id
                       AND pod_id = m_scr_irctd_rec.pod_id
                       AND rcpt_id = m_scr_irctd_rec.rcpt_id
                       AND rdst_id = 'V'

                    IF SQLCA.SQLCODE <> 0 THEN
                       CALL sh_rf_err_msg("S9201")
                       SLEEP 2
                       LET m_msg = "SELECT irctd failed. SQLCODE=",
                       SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                       LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                       LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                                      "EXIT:cstm_inp_irctd")
                       LET m_func_key = " "
                       EXIT INPUT
                    END IF
                    IF f_lic_cnt > 0
                    THEN
                        SELECT qc_req
                          INTO f_old_qc_req
                          FROM ipod
                         WHERE dc_id = m_scr_irctd_rec.dc_id
                           AND whse_id = m_scr_irctd_rec.whse_id
                           AND po_id = m_scr_irctd_rec.po_id
                           AND pod_id = m_scr_irctd_rec.pod_id
                        IF SQLCA.SQLCODE <> 0 THEN
                            CALL sh_rf_err_msg("S9201")
                            SLEEP 2
                            LET m_msg = "SELECT ipod failed. SQLCODE=",
                            SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                            LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                            LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                                          "EXIT:cstm_inp_irctd")
                            LET m_func_key = " "
                            EXIT INPUT
                        END IF
                        CALL sh_rf_err_msg("I9972")
                        SLEEP 2
                        LET m_scr_irctd_rec.qc_req = f_old_qc_req
                        LET f_new_qc_req = f_old_qc_req
                        DISPLAY m_scr_irctd_rec.qc_req TO s_rf_vrfy.qc_req
                    END IF
                END IF
            END IF
            BEGIN WORK  #### 1
            CALL msg_begin_work()

            CASE m_scr_irctd_rec.qc_req
                 WHEN 'Y'
					LET f_ipod_system_flag = 'S'
                 	IF f_cnt = 0 THEN
                       ### insert record in irqca
                       EXECUTE p_insert_irqca USING m_scr_irctd_rec.dc_id,
                                                    m_scr_irctd_rec.whse_id,
                                                    m_scr_irctd_rec.prod_id,
                                                    m_scr_irctd_rec.lic_plt_id
                       IF SQLCA.SQLCODE <> 0 THEN
                          CALL sh_rf_err_msg("S9201")
                          SLEEP 2
                          LET m_msg = "EXECUTE p_insert_irqca failed. SQLCODE=",
                          SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                          LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                          LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                          "EXIT:cstm_inp_irctd")
                          ROLLBACK WORK ### 1
                          CALL msg_rollback_work()
                          LET m_func_key = " "
                          EXIT INPUT
                       END IF
                    END IF
                 WHEN 'N'
					LET f_ipod_system_flag = f_ret_ipod.system_flag
                    IF f_cnt > 0 THEN
                       EXECUTE p_delete_irqca USING m_scr_irctd_rec.dc_id,
                                                    m_scr_irctd_rec.whse_id,
                                                    m_scr_irctd_rec.prod_id,
                                                    m_scr_irctd_rec.lic_plt_id
                       IF SQLCA.SQLCODE <> 0 THEN
                          CALL sh_rf_err_msg("S9201")
                          SLEEP 2
                          LET m_msg = "EXECUTE p_delete_irqca failed. SQLCODE=",
                          SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
                          LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
                          LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
                          "EXIT:cstm_inp_irctd")
                          ROLLBACK WORK ### 1
                          CALL msg_rollback_work()
                          LET m_func_key = " "
                          EXIT INPUT
                       END IF
                    END IF
            END CASE
			IF f_ipod_system_flag IS NULL OR
               f_ipod_system_flag = " "
			THEN
				LET f_ipod_system_flag = f_ret_ipod.system_flag
			END IF

			--Set f_ipod_system_flag = "S" if this is a new generic lic_plt_id regardless of QC flag.
			IF m_gen_lic_flag 
			THEN
				LET f_ipod_system_flag = "S"
			END IF

			#BA4465 --If putaway already executed  then revert back the value of f_ipod_system_flag
			LET m_ret_ipod.system_flag = f_ipod_system_flag
            EXECUTE p_update_ipod USING f_new_qc_req,
                                        f_ipod_system_flag,
                                        m_scr_irctd_rec.dc_id,
                                        m_scr_irctd_rec.whse_id,
                                        m_scr_irctd_rec.po_id,
                                        m_ret_ipod.pod_id
			
			IF f_old_qc_req = "N" AND f_new_qc_req = "Y"
            THEN
                UPDATE aothd
                   SET ptty_id = 'N'
                 WHERE dc_id   = m_scr_irctd_rec.dc_id 
                   AND whse_id = m_scr_irctd_rec.whse_id 
                   AND po_id   = m_scr_irctd_rec.po_id 
                   AND pod_id  = m_ret_ipod.pod_id 
            END IF
	
            IF SQLCA.SQLCODE <> 0 THEN
               CALL sh_rf_err_msg("S9201")
               SLEEP 2
               LET m_msg = "EXECUTE p_update_ipod failed. SQLCODE=",
               SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
               LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
               LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
               "EXIT:cstm_inp_irctd")
               ROLLBACK WORK ### 1
               LET m_func_key = " "
               EXIT INPUT
            END IF

			IF f_vldt_status = 0
			OR f_vldt_status = 1
			THEN
				LET m_func_key = "EN"		 #-- irctd complete for this pallet 
				# Set the receipt_user to IRRVH after scaning the
				#  license plate.
				#-------------------------
				
				IF m_scr_irctd_rec.rct_qty IS NOT NULL
				AND m_func_key = "EN"
				THEN
					LET m_new_msg_flag = "Y" 
				END IF

				EXIT INPUT
			END IF

			CONTINUE INPUT
	END INPUT

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
		"EXIT: cstm_inp_irctd")

	IF f_abort = TRUE
	THEN
		RETURN TRUE
	END IF

	RETURN FALSE

END FUNCTION
{*******************************************************************************}
FUNCTION get_printer()

	DEFINE f_abort              BOOLEAN
	DEFINE f_spdef              RECORD LIKE spdef.*

	DEFINE f_printer	RECORD
		queue_id		LIKE spdef.queue_id
	END RECORD

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%", "ENTER: get_printer")

	LET f_abort = FALSE
	INITIALIZE f_printer TO NULL
	INITIALIZE f_spdef.* TO NULL

	OPEN WINDOW w_que_win AT 3,4 WITH FORM m_prtr_form
		ATTRIBUTES(BORDER, BOLD)

	IF status <> 0 THEN
		CALL sh_rf_err_msg("S0011")
		LET m_msg = "Bad open on queue screen window"
 		LET m_ignore = sh_elog_4gl(m_module,27413,m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"EXIT get_printer")
		EXIT PROGRAM 3
	END IF

	INPUT f_printer.* WITHOUT DEFAULTS
	FROM s_printer.*

	ON KEY (ESCAPE, INTERRUPT)
		LET f_abort = TRUE
		LET int_flag = TRUE
		EXIT INPUT

	AFTER FIELD queue_id
		IF f_printer.queue_id IS NOT NULL
		THEN

			SELECT *
			INTO f_spdef.*
			FROM spdef
			WHERE queue_id = f_printer.queue_id

			IF SQLCA.SQLCODE <> 0 THEN
				LET m_msg = "get_printer(): Invalid Printer entered!",
					"|:Printer-", f_printer.queue_id
				LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
				CALL sh_rf_info_msg("I7017")
				NEXT FIELD queue_id
			END IF
			EXIT INPUT
        ELSE
			LET m_msg = "get_printer(): Invalid Printer entered!",
				"|:Printer-", f_printer.queue_id
			LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
			CALL sh_rf_info_msg("I7017")
            NEXT FIELD queue_id
        END IF

    END INPUT

    CLOSE WINDOW w_que_win


    IF NOT INT_FLAG
    AND f_spdef.queue_id IS NOT NULL
    THEN
		LET m_prt_queue = f_spdef.queue_id
    END IF

    LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%", "EXIT: get_printer")

    RETURN f_abort

END FUNCTION --get_printer()
{*******************************************************************************}
FUNCTION print_lp_labels(f_batch_no, f_prod_id, f_lic_plt_id)

	DEFINE f_cmd			STRING
	DEFINE f_ret_status		SMALLINT
	DEFINE f_batch_no		LIKE srd.batch_no
	DEFINE f_queue_id		LIKE irct.queue_id
	DEFINE f_prod_id		LIKE cvlbl.prod_id
	DEFINE f_outfile		STRING
	DEFINE f_prof_id		INTEGER
	DEFINE f_lic_plt_id		LIKE cvlbl.lp_cpn
	DEFINE f_app_desc		CHAR(32) 

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%", "ENTER: print_lp_labels")

	CALL sp_rptop_batch("CRSlabel") RETURNING f_ret_status, f_outfile, f_prof_id

	IF f_ret_status <> 0
	THEN
		LET m_msg = "Print Initialization FAILED!"
		LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%", 
			"EXIT: print_lp_labels")
		RETURN TRUE
	END IF

	UPDATE srdel
		SET queue_id = m_prt_queue
	WHERE rdel_id = f_prof_id

	IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "UPDATE srdel RECORD FAILED! RDEL_ID = ",  f_prof_id 
		LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
	END IF

	LET f_app_desc = m_scr_irctd_rec.po_id USING "<<<<<<<<<<<<<<<<<&", 
		"-", m_scr_irctd_rec.prod_id  USING "<<<<<<<<<<<<<<<<<&"
	LET f_ret_status = cstm_upd_rpt_desc(f_prof_id,f_app_desc CLIPPED, 0) 

	IF f_ret_status THEN 
		--Report Only not critical
		LET m_msg = "Call to cstm_upd_rpt_desc failed. PROF_ID: ", f_prof_id,
			" APP_DESC: ", f_app_desc
		LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
	END IF

	LET f_cmd = " CSFlblmg00.4ge ", --Custom Label Merge
				"'", f_batch_no, "' ",
				"'1' ",
				"'", f_outfile.trim(), "' ",
				"'", f_prof_id, "' ",
				"'", f_prod_id, "' ",
				"'", f_lic_plt_id, "' ",
				" > /dev/null &"

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%", f_cmd)
	CALL run_system_cmd( f_cmd )

	IF sp_rptoh_4gl2(f_outfile, f_prof_id) = TRUE
	THEN
		LET m_msg = "Print Handler FAILED!"
		LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%", 
			"EXIT: print_lp_labels")
		RETURN TRUE
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%", "EXIT: print_lp_labels")

	RETURN FALSE

END FUNCTION --print_labels()
{*******************************************************************************}
FUNCTION strip_upc() 

	DEFINE f_val_upc		CHAR(14)
	DEFINE f_i				SMALLINT
	DEFINE f_length			SMALLINT

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"ENTER: strip_upc")

	LET f_length = LENGTH(m_scr_irctd_rec.upc_id)

	FOR f_i = 1 TO f_length
		IF  m_scr_irctd_rec.upc_id[f_i]  MATCHES '[0-9]' THEN
			LET f_val_upc = f_val_upc CLIPPED,  m_scr_irctd_rec.upc_id[f_i]
		END IF
	END FOR

	IF  m_scr_irctd_rec.upc_id <> f_val_upc THEN
		LET m_msg = "SCAN UPC: ",  m_scr_irctd_rec.upc_id, " * STRIPPED UPC: ", f_val_upc,
			" * PADDED UPC: ", f_val_upc USING "&&&&&&&&&&&&&&"
		LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
	END IF

	IF f_length <> 5 THEN -- Don't break UPC lookup
		LET f_val_upc = f_val_upc USING "&&&&&&&&&&&&&&"
	END IF 

	LET  m_scr_irctd_rec.upc_id = f_val_upc

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: strip_upc")
END FUNCTION
{*******************************************************************************}
FUNCTION lkp_irct_ap(f_dc_id, f_rcpt_id, f_appt_id) {RETURNING status, irct.*} 

	DEFINE f_dc_id			LIKE irct.dc_id
	DEFINE f_rcpt_id		LIKE irct.rcpt_id
	DEFINE f_appt_id		LIKE irct.appt_id
	DEFINE f_irct			RECORD LIKE irct.*
	DEFINE f_abort			SMALLINT
	DEFINE f_module			CHAR(14)

	LET f_module = "IDFzrct_00"

	LET m_ignore =  sh_mlog_4gl(g_std_func_chan, m_module, "%C%", "ENTER: lkp_irct_ap")

	LET f_abort = FALSE
	INITIALIZE f_irct.* TO NULL
	LET f_irct.dc_id = " "
	LET f_irct.rcpt_id = " "
	LET f_irct.appt_id = " "

	SELECT irct.* INTO f_irct.* FROM irct
	WHERE irct.dc_id = f_dc_id
	AND irct.rcpt_id = f_rcpt_id
	AND irct.appt_id = f_appt_id

	IF  SQLCA.SQLCODE < 0
	THEN
		LET m_msg = "SELECT failed, SQLCODE=", SQLCA.SQLCODE,
			" ISAM=", SQLCA.SQLERRD[2]
		LET m_ignore = sh_elog_4gl(m_module, "%C%", m_msg)
		LET m_ignore = sh_mlog_4gl(g_std_func_chan, f_module, 20, "EXIT: lkp_irct")
			RETURN TRUE, f_irct.*
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%", "Exit lkp_irct_ap")

	RETURN FALSE, f_irct.*

END FUNCTION
{****************************************************************************}
FUNCTION check_ver_method(f_caller)

	DEFINE f_caller		CHAR(1) --'C'stm_inp_irctd, 'O'riginal input_irctd
	DEFINE f_return		SMALLINT
	DEFINE f_ret_ipo	RECORD LIKE ipo.*
	DEFINE f_ret_status	SMALLINT

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%", "ENTER check_ver_method")

	LET f_return = FALSE

	CALL lkp_ipo(m_scr_irctd_rec.dc_id, m_scr_irctd_rec.po_id)
		RETURNING f_ret_status, f_ret_ipo.*

	IF (f_caller = 'C'
	AND f_ret_ipo.prnt_notice = "I")
	OR (f_caller = "O"
	AND f_ret_ipo.prnt_notice = "P")
	THEN
		LET f_return = TRUE
	END IF

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module, "%C%", "ENTER check_ver_method")

	RETURN f_return

END FUNCTION


{****************************************************************************}
## New function to validate the UPC captured from EAN.
## The function is called AFTER FIELD lic_plt_id in input_irctd()
FUNCTION capture_UPC(f_lic_plt_id)

	DEFINE  f_sacvv       			RECORD LIKE sacvv.*
	DEFINE  f_cwhse       			RECORD LIKE cwhse.*
	DEFINE  f_aothd       			RECORD LIKE aothd.*
    DEFINE	f_lic_plt_id	     	LIKE iinvd.lic_plt_id
	DEFINE  f_catch_wgt_cntl     	LIKE iprod.catch_wgt_cntl
	DEFINE  f_dc_id              	LIKE iprod.dc_id
	DEFINE  f_upc_id		     	LIKE iupcd.upc_id
	DEFINE  f_upc_id_tmp	     	LIKE iupcd.upc_id
	DEFINE  f_scope              	LIKE sacvv.scope_key
	DEFINE  f_vend_id            	LIKE ipo.vend_id
	DEFINE  f_barcode               CHAR(60)
	DEFINE  f_uidx               	INTEGER
	DEFINE  f_ucount             	INTEGER
	DEFINE  f_ucnt               	INTEGER
	DEFINE  f_upc_validated      	CHAR(1)
    DEFINE  f_ret_status         	INTEGER	
	DEFINE  f_abort              	SMALLINT
	
	INITIALIZE f_sacvv.* TO NULL
	INITIALIZE f_cwhse.* TO NULL
	INITIALIZE f_aothd.* TO NULL
	INITIALIZE f_catch_wgt_cntl TO NULL
	INITIALIZE f_dc_id TO NULL
	INITIALIZE f_upc_id TO NULL
	INITIALIZE f_upc_id_tmp TO NULL
	INITIALIZE f_scope TO NULL
	INITIALIZE f_vend_id TO NULL
	
    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "ENTER: capture_UPC ")

	EXECUTE	sel_aothd_pu	
	INTO f_vend_id, f_aothd.*
	USING	m_scr_irctd_rec.rcv_whse_id, 
			f_lic_plt_id

    IF SQLCA.SQLCODE <> 0
	THEN
		LET m_msg = "SELECT aothd failed. SQLCODE:",
			SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2], "whse_id/lic_plt_id = ", 
			m_scr_irctd_rec.rcv_whse_id, " | ", f_lic_plt_id
		LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
		CALL sh_rf_cmd_msg("I9060")
		SLEEP 2
		LET m_ignore = sh_mlog_4gl(g_std_func_chan,
			m_module,"%C%", "EXIT: capture_UPC")
		RETURN TRUE
	END IF   

	EXECUTE	sel_cvean using f_aothd.whse_id,
							f_aothd.po_id,
							f_aothd.rcpt_id,
							f_vend_id,
							f_aothd.prod_id
							
    IF SQLCA.SQLCODE <> 0
	THEN
		IF SQLCA.SQLCODE <> NOTFOUND
		THEN
			LET m_msg = "SELECT cvean failed. SQLCODE:",
				SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2], "whse_id/po_id/prod_id = ", 
				f_aothd.whse_id, " | ", f_aothd.po_id, " | ", f_aothd.prod_id
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			CALL sh_rf_cmd_msg("I9060")
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,
				m_module,"%C%", "EXIT: capture_UPC")
			RETURN TRUE
		END IF
	END IF 
			  
	IF SQLCA.SQLCODE = 0
	THEN
	    RETURN FALSE
	ELSE
		
		CALL val_iprod(f_aothd.dc_id, f_aothd.prod_id)
		RETURNING f_ret_status, m_ret_iprod.*

		IF f_ret_status = TRUE THEN
			LET m_msg = "BAD RETURN FROM val_iprod(). ",
					"|: DC = ", f_aothd.dc_id,
					"|: PROD = ", f_aothd.prod_id
			LET m_ignore =sh_elog_4gl(m_module, "%C%", m_msg)
			RETURN TRUE
		END IF

		LET f_scope = m_ret_iprod.vend_prod_no
		CALL lkp_sacvv("GLOBAL", "catch_wgt_cntl", "S", f_scope)
		RETURNING f_abort, f_sacvv.*
		IF f_abort
		THEN
			LET f_sacvv.value = NULL
		END IF
		
		SELECT cwhse.*
		  INTO f_cwhse.*
		FROM cwhse  
		WHERE dc_id   = f_aothd.dc_id
		  AND whse_id = f_aothd.whse_id
              
        IF SQLCA.SQLCODE < 0
		THEN
			LET m_msg = "SELECT cwhse failed. SQLCODE:",
				SQLCA.SQLCODE, " ISAM:", SQLCA.SQLERRD[2]
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
			CALL sh_rf_cmd_msg("I9060")
			SLEEP 2
			LET m_ignore = sh_mlog_4gl(g_std_func_chan,
				m_module,"%C%", "EXIT: capture_UPC")
			RETURN TRUE
		END IF  
	END IF
			
    IF  m_ret_iprod.catch_wgt_cntl = "Y" 
	AND f_cwhse.cap_upc_by_ean = "Y"
	AND f_sacvv.value = "Y"
	THEN
	    LET f_upc_validated = 'N'
		LET f_uidx = 0
		INITIALIZE m_upc_capture_array[10].* TO NULL
	    
        CALL open_get_upc_from_EAN_form()
		
	    INPUT m_upc_capture_screen.* 
            FROM  s_upc_capture_screen.* 
			
		BEFORE INPUT
			INITIALIZE m_upc_capture_screen.* TO NULL

		BEFORE FIELD s_upc_capture_screen.ean_scanned
			LET m_upc_capture_screen.ean_scanned = 'Y'
			DISPLAY m_upc_capture_screen.ean_scanned TO s_upc_capture_screen.ean_scanned
				ATTRIBUTE(NORMAL)
		
		ON KEY (UP)
		    NEXT FIELD s_upc_capture_screen.ean_scanned
			
		ON KEY (ESCAPE, INTERRUPT)
			LET m_upc_capture_screen.ean_scanned = 'Y'
			LET	m_upc_capture_screen.barcode = NULL
			LET	m_upc_capture_screen.ean_message = NULL
			DISPLAY m_upc_capture_screen.* TO s_upc_capture_screen.*
		    NEXT FIELD s_upc_capture_screen.ean_scanned
		
		AFTER FIELD s_upc_capture_screen.ean_scanned
		    CASE m_upc_capture_screen.ean_scanned
            WHEN 'N' 
			    LET f_uidx = f_uidx + 1
				LET m_upc_capture_array[f_uidx].ean_scanned   = 'N'
				LET m_upc_capture_array[f_uidx].upc_id        = '00000000000000'
				LET m_upc_capture_array[f_uidx].ean_message   = NULL
				LET f_upc_id                                  = '00000000000000'
				SLEEP 3
                EXIT INPUT				
			WHEN 'Y' 
                NEXT FIELD s_upc_capture_screen.barcode
			OTHERWISE	
			    LET m_upc_capture_screen.ean_message = 'INVALID ENTRY-Y/N'
			    DISPLAY m_upc_capture_screen.ean_message TO s_upc_capture_screen.ean_message
				ATTRIBUTE(BOLD)
				NEXT FIELD s_upc_capture_screen.ean_scanned
            END CASE				
			
		AFTER FIELD s_upc_capture_screen.barcode
			IF m_upc_capture_screen.barcode[1,3] = "]C1"
			OR m_upc_capture_screen.barcode[1,2] = "01"
			THEN
				IF m_upc_capture_screen.barcode[1,2] = "01" THEN
				    LET f_barcode = "]C1", m_upc_capture_screen.barcode
				ELSE   
					LET f_barcode = m_upc_capture_screen.barcode
				END IF
				CALL get_EAN128_upc(f_barcode)
					RETURNING f_ret_status, f_upc_id	
				LET m_upc_capture_screen.barcode = f_upc_id
				LET f_uidx = f_uidx + 1			
				IF f_ret_status = FALSE THEN
					LET f_upc_validated = 'Y'
					LET m_upc_capture_screen.ean_message = 'SUCCESS'
					LET m_upc_capture_array[f_uidx].ean_scanned = 'Y'
					LET m_upc_capture_array[f_uidx].upc_id      = f_upc_id
					LET m_upc_capture_array[f_uidx].ean_message = 'SUCCESS'
					LET m_scr_irctd_rec.upc_id = f_barcode
					DISPLAY m_upc_capture_screen.ean_message TO s_upc_capture_screen.ean_message
					ATTRIBUTE(BOLD) 
					SLEEP 3
					EXIT INPUT
				ELSE
					LET m_upc_capture_screen.ean_message = 'INVALID UPCCODE'
					LET m_upc_capture_array[f_uidx].ean_scanned = 'Y'
					LET m_upc_capture_array[f_uidx].upc_id        = f_upc_id
					LET m_upc_capture_array[f_uidx].ean_message   = 'INVALID UPC CODE'
					DISPLAY m_upc_capture_screen.ean_message TO s_upc_capture_screen.ean_message
					ATTRIBUTE(BOLD)
					NEXT FIELD s_upc_capture_screen.barcode			
				END IF
			ELSE
                LET m_upc_capture_screen.ean_message = 'INVALID EAN128'
				LET f_uidx = f_uidx + 1
				LET m_upc_capture_array[f_uidx].ean_scanned = 'Y'
				LET m_upc_capture_array[f_uidx].upc_id        = m_upc_capture_screen.barcode
				LET f_upc_id                                  = m_upc_capture_screen.barcode
				LET m_upc_capture_array[f_uidx].ean_message   = 'INVALID EAN128'
				DISPLAY m_upc_capture_screen.ean_message TO s_upc_capture_screen.ean_message
				ATTRIBUTE(BOLD)
				NEXT FIELD s_upc_capture_screen.barcode				
            END IF
		END INPUT
		
		CALL close_get_upc_from_EAN_form()

## Look for the last array record that has 'Y' in upc_validated field		
		IF f_uidx > 1 THEN
			FOR f_ucount = f_uidx TO 1 step -1
				IF m_upc_capture_array[f_ucount].ean_scanned = 'Y' 
				THEN
				   EXIT FOR
			    END IF	
			END FOR	
			LET f_ucnt = f_ucount
			LET f_upc_id = 	m_upc_capture_array[f_ucnt].upc_id
		ELSE
            LET f_ucnt = 1	
		END IF	
		
		BEGIN WORK
		
		IF  m_upc_capture_array[f_ucnt].ean_scanned = 'Y'
        AND m_upc_capture_array[f_ucnt].ean_message = 'SUCCESS' 
		THEN
			
		    SELECT upc_id
			INTO f_upc_id_tmp
			FROM iupc
			WHERE upc_id = f_upc_id
			
			CASE SQLCA.SQLCODE
			WHEN 0
				LET m_iupc.lst_rct_dte = CURRENT YEAR TO SECOND
				
				UPDATE iupc
				SET	lst_rct_dte  = m_iupc.lst_rct_dte
				 where upc_id = f_upc_id
			
				IF SQLCA.SQLCODE <> 0                                
				THEN                                                 
					LET m_msg = "UPDATE iupc failed. SQLCODE = ",
						SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2],
						"f_upc_id = ", f_upc_id
					LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)                     
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: capture_UPC")
					ROLLBACK WORK
					RETURN TRUE
				END IF  
			WHEN 100
				LET m_iupc.upc_id      = f_upc_id
				LET m_iupc.create_user = g_user.user_id
				LET m_iupc.create_dtim = CURRENT
				LET m_iupc.upc_type_flg = "I"
				LET m_iupc.lst_rct_dte = CURRENT YEAR TO SECOND
				LET m_iupc.lst_ship_dte = CURRENT YEAR TO SECOND

				INSERT INTO iupc (upc_id, lst_ship_dte, lst_rct_dte, create_dtim, 
									create_user, upc_type_flg) 
						VALUES (m_iupc.upc_id, m_iupc.lst_ship_dte, m_iupc.lst_rct_dte, 
								m_iupc.create_dtim,	m_iupc.create_user, m_iupc.upc_type_flg)
			
				IF SQLCA.SQLCODE <> 0                                	
				THEN                                                 
					LET m_msg = "INSERT into iupc failed. SQLCODE = ",
						SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2],
						"f_upc_id = ", f_upc_id
					LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)                     
					LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
						"EXIT: capture_UPC")
					ROLLBACK WORK
					RETURN TRUE
				END IF  
            OTHERWISE
				LET m_msg = "get iupc failed. SQLCODE = ",
				SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2],
				"f_upc_id = ", f_upc_id
				LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
				LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
				"EXIT: capture_UPC")
				RETURN TRUE
			END CASE
			
			SELECT upc_id
			INTO f_upc_id_tmp
			FROM iupcd
			WHERE upc_id  = f_upc_id
			  AND prod_id = f_aothd.prod_id
			
			IF SQLCA.SQLCODE <> 0 THEN
				IF SQLCA.SQLCODE = 100 THEN
					LET m_iupcd.dc_id   = f_aothd.dc_id
					LET m_iupcd.prod_id = f_aothd.prod_id 
					LET m_iupcd.upc_id  = f_upc_id
					LET m_iupcd.key     = 0
					LET m_iupcd.del_dtim = NULL

					INSERT INTO iupcd VALUES(m_iupcd.*)

					IF SQLCA.SQLCODE <> 0                                	
					THEN                                                 
						LET m_msg = "INSERT into iupcd failed. SQLCODE = ",
							SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2],
							"f_upc_id = ", f_upc_id
						LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)                     
						LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
							"EXIT: capture_UPC")
						ROLLBACK WORK
						RETURN TRUE
					END IF 
				ELSE
					LET m_msg = "get iupcd failed. SQLCODE = ",
					SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2],
					"f_upc_id = ", f_upc_id
					LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)
					LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
					"EXIT: capture_UPC")
					RETURN TRUE
				END IF	
			END IF
		END IF	
		
        LET m_cvean.dc_id           = f_aothd.dc_id
		LET m_cvean.whse_id         = f_aothd.whse_id
		LET m_cvean.po_id           = f_aothd.po_id
		LET m_cvean.rcpt_id         = f_aothd.rcpt_id
		LET m_cvean.vend_id         = f_vend_id
		LET m_cvean.prod_id         = f_aothd.prod_id
		LET m_cvean.loc_id          = f_aothd.to_loc_id
		LET m_cvean.ean_scanned     = m_upc_capture_array[f_ucnt].ean_scanned
		LET m_cvean.upc_validated   = f_upc_validated
		LET m_cvean.lic_plt_id      = f_lic_plt_id
		LET m_cvean.create_user     = g_user.user_id
		LET m_cvean.create_dtim     = CURRENT
		LET m_cvean.change_user     = g_user.user_id
		LET m_cvean.change_dtim     = CURRENT
		
		IF f_upc_id is NULL
		THEN
			LET m_cvean.upc_id = '00000000000000'
		ELSE
			LET m_cvean.upc_id = f_upc_id
		END IF
 		
		INSERT INTO cvean VALUES(m_cvean.*)   
		 
		IF SQLCA.SQLCODE <> 0                                	
		THEN                                                 
			LET m_msg = "INSERT cvean failed. SQLCODE = ",
				SQLCA.SQLCODE, " ISAM = ", SQLCA.SQLERRD[2], 
				" f_lic_plt_id = ", f_lic_plt_id,
				" f_upc_id = ", f_upc_id
			LET m_ignore = sh_elog_4gl(m_module,"%C%",m_msg)                     
			LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
				"EXIT: capture_UPC")
			ROLLBACK WORK
			RETURN TRUE
		END IF   
    END IF
    
	COMMIT WORK
	
	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
			"ENTER: capture_UPC ")
		
	RETURN FALSE		
 
END FUNCTION
{****************************************************************************}
--FBR This form opens the list of receipt ids for a particular PO
{****************************************************************************}
FUNCTION open_rcpt_list_form()

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "ENTER: open_rcpt_list_form")

    OPEN WINDOW w_main_winS AT 1,1 WITH FORM m_rcpt_form
        ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
            MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

    IF status <> 0
    THEN
        LET m_msg = "Bad open on open_rcpt_list_form"
        LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
        CALL sh_rf_cmd_msg("I9060") #-- system failure
        SLEEP 2
        LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
            "EXIT: open_rcpt_list_form")
        EXIT PROGRAM
    END IF

    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "EXIT: open_rcpt_list_form")

END FUNCTION
{****************************************************************************}
--FBR Closes the receipt list form
{*****************************************************************************}
FUNCTION close_rcpt_list_form()

    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "ENTER: close_rcpt_list_form")

    CLOSE WINDOW w_main_winS
    IF status <> 0
    THEN
        LET m_msg = "Bad close on close_rcpt_list_form"
        LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
        CALL sh_rf_cmd_msg("I9060") #-- system failure
        SLEEP 2
        LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
            "EXIT: close_rcpt_list_form")
        EXIT PROGRAM
    END IF

    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "EXIT: close_rcpt_list_form")

END FUNCTION
{*****************************************************************************}
--FBR Displays close receipt and shows unverified pallets on a receipt
{*****************************************************************************}
FUNCTION open_close_rcpt_form()

    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "ENTER: open_close_rcpt_form")

    OPEN WINDOW w_main_winT AT 1,1 WITH FORM m_rcpt_close_form
        ATTRIBUTE (COMMENT LINE LAST, PROMPT LINE FIRST,
            MESSAGE LINE FIRST, FORM LINE FIRST, BOLD)

    IF status <> 0
    THEN
        LET m_msg = "Bad open on open_close_rcpt_form"
        LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
        CALL sh_rf_cmd_msg("I9060") #-- system failure
        SLEEP 2
        LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
            "EXIT: open_close_rcpt_form")
        EXIT PROGRAM
    END IF

    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "EXIT: open_close_rcpt_form")

END FUNCTION
{*****************************************************************************}
--FBR Closes the form --Close Receipt
{*****************************************************************************}
FUNCTION close_close_rcpt_form()

    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "ENTER: close_close_rcpt_form")

    CLOSE WINDOW w_main_winT
    IF status <> 0
    THEN
        LET m_msg = "Bad close on close_close_rcpt_form"
        LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
        CALL sh_rf_cmd_msg("I9060") #-- system failure
        SLEEP 2
        LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
            "EXIT: close_close_rcpt_form")
        EXIT PROGRAM
    END IF

    LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
        "EXIT: close_close_rcpt_form")

END FUNCTION
{*****************************************************************************}
--FBR To fetch all the receipt ids for a particular receipt
{*****************************************************************************}
FUNCTION get_all_rcpt_id(f_whse_id,f_po_id)

    DEFINE f_whse_id       LIKE irct.whse_id
    DEFINE f_po_id         LIKE irct.po_id
    DEFINE f_i             INTEGER
    DEFINE f_rcpt_id       LIKE irct.rcpt_id
    DEFINE f_abort         SMALLINT
    DEFINE f_select	       INTEGER
	DEFINE f_count		   INTEGER
	
    LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
        "ENTER: get_all_rcpt_id")
	
	LET f_abort = FALSE	
	LET f_count = 0	

    OPEN c_find_all_rcpt USING f_whse_id, f_po_id

    IF SQLCA.SQLCODE <> 0
    THEN
        LET m_msg = "OPEN c_find_all_rcpt failed. SQLCODE=", SQLCA.SQLCODE,
                    " ISAM=", SQLCA.SQLERRD[2],
                    " WH=", f_whse_id,
                    " PO=", f_po_id
        LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
        CALL sh_rf_cmd_msg("I9060") #-- system failure
        SLEEP 2
		 LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
            "EXIT: get_all_rcpt_id")
        RETURN TRUE, f_rcpt_id
    END IF

    LET f_i = 1
	LET f_count = m_rcpt_cnt + 1
    LET m_arr_list_rct[f_count]='ALL'

    FOREACH c_find_all_rcpt INTO m_arr_list_rct[f_i]
        IF SQLCA.SQLCODE <> 0
        THEN
            LET m_msg = "FOREACH failed, SQLCODE=", SQLCA.SQLCODE,
                    " ISAM=", SQLCA.SQLERRD[2]
            CALL sh_elog_4gl(m_module,"%C%",m_msg) RETURNING m_ignore
            EXIT FOREACH
        END IF

        LET f_i = f_i + 1
        IF f_i > 100
        THEN
            EXIT FOREACH
        END IF
    END FOREACH

    CALL set_count(m_rcpt_cnt+1)
	
	DISPLAY ARRAY m_arr_list_rct TO
	s_rcpt_array.* ATTRIBUTE(NORMAL)

		ON KEY (ESCAPE, INTERRUPT)
			LET f_abort = TRUE
			EXIT DISPLAY

		ON KEY (RETURN, ACCEPT)
			LET f_select = arr_curr()
			EXIT DISPLAY

	END DISPLAY
	
    IF  f_abort = TRUE
    THEN
        LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
                        "EXIT: get_all_rcpt_id")
        RETURN TRUE, m_arr_list_rct[f_select] 
    END IF

	LET m_rcpt_id = m_arr_list_rct[f_select]

	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: get_all_rcpt_id")

    RETURN FALSE, m_rcpt_id 

END FUNCTION
{****************************************************************************}
--FBR To get the count of unverified pallets for a particular receipt
{****************************************************************************}
FUNCTION get_close_rcpt(f_dc_id,f_whse_id,f_rcpt_id)

    DEFINE f_dc_id         LIKE irct.dc_id
    DEFINE f_whse_id       LIKE irct.whse_id
    DEFINE f_rcpt_id       LIKE irct.rcpt_id
	DEFINE f_ret_status	   SMALLINT	
	DEFINE f_ret_choice    LIKE sysno.ysno_id

	LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
        "ENTER:get_close_rct")

    OPEN c_count_unver_rct USING f_dc_id,
                                 f_whse_id,
                                 f_rcpt_id
	
	IF SQLCA.SQLCODE <> 0
    THEN
        LET m_msg = "OPEN c_count_unver_rct failed. SQLCODE=",
        SQLCA.SQLCODE, " ISAM=", SQLCA.SQLERRD[2]
        LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
        CALL sh_rf_cmd_msg("I9060")    #-- system failure
        SLEEP 2
        LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
                    "EXIT: get_close_rct")
        RETURN 
    END IF

    LET m_array_rcpt.po_id = m_ret_ipod.po_id
    LET m_array_rcpt.whse_id = f_whse_id
    LET m_array_rcpt.rcpt_id = f_rcpt_id
    LET m_array_rcpt.close_flag = 'N'

    FETCH c_count_unver_rct INTO m_array_rcpt.unver_cnt

	IF SQLCA.SQLCODE <> 0
    THEN
        LET m_msg = "FETCH c_count_unver_rct failed. SQLCODE=", SQLCA.SQLCODE,
                    " ISAM=", SQLCA.SQLERRD[2],
                    " WH=", f_whse_id
        LET m_ignore = sh_elog_4gl(m_module,"%C%", m_msg)
        CALL sh_rf_cmd_msg("I9060") #-- system failure
        SLEEP 2
        LET m_ignore = sh_mlog_4gl(g_std_func_chan, m_module,"%C%",
            "EXIT: get_close_rct")
        RETURN
    END IF

    INPUT m_array_rcpt.*
    WITHOUT DEFAULTS
    	FROM s_rcpt_list.*

		BEFORE INPUT
		DISPLAY m_array_rcpt.po_id TO s_rcpt_list.po_id
		DISPLAY m_array_rcpt.rcpt_id TO s_rcpt_list.rcpt_id
		DISPLAY m_array_rcpt.whse_id TO s_rcpt_list.whse_id
		DISPLAY m_array_rcpt.unver_cnt TO s_rcpt_list.num
		DISPLAY m_array_rcpt.close_flag TO s_rcpt_list.close	

        ON KEY (CONTROL-P)
        CALL spprtscr()

		AFTER FIELD close
			IF (m_array_rcpt.close_flag <> "Y"
			AND m_array_rcpt.close_flag <> "N")
			THEN
				CALL sh_rf_err_msg("K1010") # Must Enter Y/N
				NEXT FIELD s_rcpt_list.close
			END IF
    END INPUT

	CALL close_close_rcpt_form()

	IF m_array_rcpt.close_flag = 'Y'
	THEN
		UPDATE ipod
		SET plst_id = 'C'
		WHERE po_id = m_ret_ipod.po_id
		AND pod_id IN (SELECT pod_id
						FROM irctd WHERE
						rcpt_id = m_rcpt_id);

		IF m_array_rcpt.unver_cnt > 0
		THEN
			CALL sh_rf_cmd_msg("I1165")
    		CALL sh_rf_err_msg("I1581")
			
			CALL display_non_ver_lic()
	
			CALL sh_rf_ysno_msg("I1171","N") #zero out rct qty?
        		RETURNING f_ret_status, f_ret_choice

			IF f_ret_choice = "Y"
			THEN
		    	CALL sh_rf_cmd_msg("I0040")	#-- Receipt Closed
				SLEEP 2
				
				UPDATE irctd
   			     	SET rct_qty = 0, catch_wgt = 0
        			WHERE rcpt_id   = m_rcpt_id
					AND rdst_id <> 'V' 
			ELSE
				CALL sh_rf_cmd_msg("I1172")	#-- close aborted
				SLEEP 1
			END IF
		ELSE
			CALL sh_rf_cmd_msg("I0040") #-- Receipt Closed
			SLEEP 2
		END IF
	ELSE
		RETURN	
	END IF
	
	LET m_ignore = sh_mlog_4gl(g_std_func_chan,m_module,"%C%",
		"EXIT: get_close_rct")
	
END FUNCTION	
{****************************************************************************}
{****************************************************************************}
