
<div class="contentinner" style="width:97%;">    	
 <div id="result">
    <div class="row-fluid">  
			<div class="span12">
        <table class="table table-bordered table-invoice">
          <tr>
            <td width="91" class="width30">Received ID:</td>
            <?php
             $invid=$this->sql("SELECT IFNULL(MAX(`recipt_code`),'0') AS 'invid' FROM `cash_received`");
             $inID=$invid[0]['invid']+1;
            ?>
            <td width="305" class="width70" style="background:#f7f7f7">
              <strong>
                <input id="reciptCode" type="hidden" name="" value="<?php echo $inID?>">
              <label><?php echo 'R-'.$inID;?></label>
              </strong>
            </td>
          </tr>
          <tr>
          <td width="91" class="width30">Received Date:</td>
          <td width="305" class="width70">
            <strong>
            <input id="ReceivedDatepicker" type="text" name="date" value="09/27/2020" class="input-small hasDatepicker">
            </strong>
          </td>
          </tr>
          <tr>
            <td class="width30">Customer Name</td>
            <td width="305" class="width70">
              <select class="form-control required customer " 
              id="CustomerID" name="SupplierNmae" 
              style="width:100%;" aria-required="true">
                <option value="Default">Default Custome</option>
                <?php
                  $res=$this->sql("SELECT `customer_id`,CONCAT('[ ',`customer_code`,' ] ',`name`) AS 'name' FROM `customer`");
        		
            		  foreach($res as $value){
                			?>
                      <option value="<?php  echo ($value['customer_id']);?>">
                        <?php  echo ($value['name']);?>
                      </option>
                      <?php
                		}
            		  ?>
              </select>
            </td>
          </tr>
          <tr>
            <td class="width30">A/C Head Name (Cr.)</td>
            <td class="width70"><input name="ac_head" type="text" value="Default" id="ac_head" placeholder="Default"/></td>
          </tr>
          <tr> 
            <td>Received Amounts<span style="color:#ff0000">*</span></td>
            <td><input name="ReceivedAmount" type="number" id="ReceivedAmount" required /></td>
          </tr>
          <tr>
            <td>Received Methord <span style="color:#ff0000">*</span></td>
            <td> <select class="form-control required Paying " id="Paying" name="Paying" aria-required="true">
				      <?php
                $res=$this->sql("SELECT `acc_id`,accounts_name FROM `accounts_name`");
            		  foreach($res as $value){
            			  ?>
        				      <option value="<?php  echo ($value['acc_id']);?>">
        				        <?php  echo ($value['accounts_name']);?>
        		          </option>
        				      <?php
            		  }
              		  ?>
		        </select>
                    
          <p id="checqShow" style="display:none;">
          <select class="form-control required Paying" id="bank_name" name="bank_name" aria-required="true">
            <?php
              $res=$this->sql("SELECT `bank_id`,bank_name FROM `bank_name`");
                foreach($res as $value){
                  ?>
                    <option value="<?php  echo ($value['bank_id']);?>">
                      <?php  echo ($value['bank_name']);?>
                    </option>
                    <?php
                }
                  ?>
          </select>			 
				  <input name="cheque_number" type="text" id="cheque_number" placeholder="Cheque Number" />
				  </p>
          
          <p id="bkashShow" style="display:none;">		 
				    <input name="bkash_number" type="text" id="bkash_number" placeholder="bKash Transaction ID" />
				  </p>  
          </td>
          </tr>
          <tr>
            <td>Remark</td>
            <td><textarea name="Message" id="Message" cols="10" rows="6"></textarea></td>
          </tr>
          
          <tr>
            <td></td>
            <td> 
              <input type="submit" 
              name="purchasePaymentbtn" 
              class="btn btn-primary btn-large" 
              id="SaveBtn"
              value="Save">          
            </td>
          </tr>
          </table>
          </div>  
				</div>
    </div>
 </div>
      
<script type="text/javascript">
jQuery.noConflict();
jQuery(function($){
$('body').on("change", "#Paying", function() {
		
		var cheque=parseInt($("#Paying").val());
    $("#checqShow").hide();
    $("#bkashShow").hide();
    
		if(cheque==3){
			$("#checqShow").show();
    }else if (cheque==2){
      $("#bkashShow").show();
      $("#checqShow").hide();
    }
    else{
			$("#checqShow").hide();
      $("#bkashShow").hide();
		}
		
});
	
	
	
$('body').on('click', '#SaveBtn', function() {

  if($('#CustomerID').val() == '0'){
    jAlert('Please Type Your Message for your Custome Field Manage!', 'Alert');
    }else{
           
         $.post("<?php echo BASE_URL?>?Posation_CashReceived",{
           RecDate: $('#ReceivedDatepicker').val(),
           Message: $('#Message').val(),
           ac_head: $('#ac_head').val(),
           Paying: $('#Paying').val(),
           CustomerID: $('#CustomerID').val(),
           ReceivedAmount: $('#ReceivedAmount').val(),
           bank_name: $('#bank_name').val(),
           cheque_number: $('#cheque_number').val(),
           recipt_code:$('#reciptCode').val()
          },
           function(data){
             console.log(data);

             }
          );
      }
    

		
	});
	
	
	
	
	
});
			

</script>