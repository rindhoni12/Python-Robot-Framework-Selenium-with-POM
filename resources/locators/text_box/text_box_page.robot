*** Variables ***

${textbox_main_header}                xpath://h1[@class="text-center"]
${textbox_fullname_label}             xpath://*[text()="Full Name"]
${textbox_email_label}                xpath://*[text()="Email"]
${textbox_currentaddress_label}       xpath://*[text()="Current Address"]
${textbox_permanentaddress_label}     xpath://*[text()="Permanent Address"]


${textbox_fullname_textbox}             id:userName
${textbox_email_textbox}                id:userEmail
${textbox_currentaddress_textbox}       id:currentAddress
${textbox_permanentaddress_textbox}     id:permanentAddress

${textbox_submit_button}              id:submit

${output_fullname_label}             xpath://p[@id="name"]
${output_email_label}                xpath://p[@id="email"]
${output_currentaddress_label}       xpath://p[@id="currentAddress"]
${output_permanentaddress_label}     xpath://p[@id="permanentAddress"]
