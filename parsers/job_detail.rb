html = Nokogiri.HTML(content)

#initialize empty hash
record = {}

# extract title
record['title'] = html.css("div.jobTitleDesc h1").text.strip

# extract description
record['description'] = html.at_css("div.job-description p").text.strip

# extract industry
record['industry'] = 1

# industries_map = {
#     'QA' => [1, 'ALL', 'All'],
#     'Project Manager' => [1, 'ALL', 'All'],
#     'Help Desk' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Telecom Analyst' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Telecom / PBX / Cable Technician' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Case/Care Manager (Healthcare)' =>  [9, 'HEALTHCARE', 'Healthcare'],
#     'Architect' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
#     'Network Engineer' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Customer Service' => [15, 'TELECOMMUNICATIONS', 'Telecommunications'],
#     'Training' => [1, 'ALL', 'All'],
#     'Light Industrial' => [1, 'ALL', 'All'],
#     'Electrical Assembler' => [11, 'MANUFACTURING', 'Manufacturing'],
#     'PC Technician' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'System Administrator' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Engineering (Non IT)' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Architect (Engineering)' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Designer' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
#     'Accounting / Finance' => [7, 'FINANCIAL', 'Financial'],
#     'Materials Science & Engineering' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Business Analysis' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
#     'Business Analyst (BA)' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
#     'Software Engineering' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Data Warehousing' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Financial Reporting' => [7, 'FINANCIAL', 'Financial'],
#     'Biomedical Engineering' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Database Administrator (DBA)' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Security Engineering' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Desktop Support' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Computer Engineering' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Insurance' => [10, 'INSURANCE', 'Insurance'],
#     'Administrative Assistant' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
#     'Sales' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
#     'Recruiting / Staffing' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
#     'Nurse' => [9, 'HEALTHCARE', 'Healthcare'],
#     'Corporate Operations' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
#     'Civil Engineering' => [1, 'ALL', 'All'],
#     'Electrical Engineering' => [11, 'MANUFACTURING', 'Manufacturing'],
#     'Payroll' => [7, 'FINANCIAL', 'Financial'],
#     'Managerial / Professional' =>  [1, 'ALL', 'All'],
#     'Financial Planning & Analysis' => [7, 'FINANCIAL', 'Financial'],
#     'EMR' =>  [1, 'ALL', 'All'],
#     'Accounts Payable' => [7, 'FINANCIAL', 'Financial'],
#     'Chemical Engineering' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
#     'Accounts Receivable' => [7, 'FINANCIAL', 'Financial'],
#     'Warehouse' => [1, 'ALL', 'All'],
#     'Programmer / Developer' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Audit' => [7, 'FINANCIAL', 'Financial'],
#     'Mechanical Engineering' => [1, 'ALL', 'All'],
#     'Laboratory Technician' => [9, 'HEALTHCARE', 'Healthcare'],
#     'Automotive' =>  [11, 'MANUFACTURING', 'Manufacturing'],
#     'Medical Assistant' => [9, 'HEALTHCARE', 'Healthcare'],
#     'Surgical Technician' => [1, 'ALL', 'All'],
#     'Purchasing' => [1, 'ALL', 'All'],
#     'Mechanical Assembler' => [9, 'HEALTHCARE', 'Healthcare'],
#     'NOC Technician' => [1, 'ALL', 'All'],
#     'Nurse Assistant' => [9, 'HEALTHCARE', 'Healthcare'],
#     'Computer Operator' => [5, 'COMPUTERS', 'Computers and Technology'],
#     'Environmental Engineering' => [1, 'ALL', 'All'],
#     'Accountancy' => [7, 'FINANCIAL', 'Financial'],
#     'Patient Services (i.e. Scheduler)' => [1, 'ALL', 'All'],
#     'Technical Writer' => [1, 'ALL', 'All'],
#     'Phlebotomist' => [1, 'ALL', 'All'],
#     'Financial Services' => [7, 'FINANCIAL', 'Financial'],
#     'Sterile Processing Technician' => [1, 'ALL', 'All'],
#     'Pharmacy Technician' => [9, 'HEALTHCARE', 'Healthcare'],
#     'Claims/Denials' => [1, 'ALL', 'All'],
#     'Collections' => [1, 'ALL', 'All'],
#     'Drafter' => [1, 'ALL', 'All'],
#     'Pharmacist' => [9, 'HEALTHCARE', 'Healthcare'],
#     'Tax' => [7, 'FINANCIAL', 'Financial'],
#     'Imaging Technician (Healthcare)' => [9, 'HEALTHCARE', 'Healthcare'],
#     'Environmental Services EVS (Healthcare)' => [9, 'HEALTHCARE', 'Healthcare'],
#     'Technical Advisor' => [1, 'ALL', 'All'],
#     'Psychologist/Psychiatrist' => [9, 'HEALTHCARE', 'Healthcare'],
#     'Social Worker' => [1, 'ALL', 'All'],
#     'Physical Therapist' => [9, 'HEALTHCARE', 'Healthcare'],
#     'Respiratory Therapist' => [1, 'ALL', 'All'],
#     'Manufacturing and Production' =>  [11, 'MANUFACTURING', 'Manufacturing'],
# }
# raw_industry =  html.at_css('div.industry-type p.sub-heading-desc span').text.gsub("\r\n", '').scan(/Category\s+(.*?)\s{2}/).flatten.first
# industry = industries_map[raw_industry].first

# rate_value = 

# rate_type =

record['currency'] = "USD"

record['city'] = html.css("div.sub-heading p.sub-heading-desc span")[1].text.strip

# state = 

record['country'] = "United States"

record['job_url'] = page["url"]

record['date_posted'] = html.css("p.posted-date-text span")[1].text.strip

record['raw_rate'] = html.css("p#salaryDivi").text.strip

# extract description with html tags
record['raw_description'] = html.at_css("div.job-description p").inner_html

# extract for provided if the industry can't be parsed as one in the Industry Enum
record['raw_industry'] = html.at_css("div.industry-type p.sub-heading-desc span").text.strip

# not require translation because in English
# translated_title, translated_description, translated_raw_industry, translated_raw_rate

# specify the collection where thisrecord will be stored
record['_collection'] = "job_listing"

# # # This an old script to save the product to the job's outputs
#record = {
# 	_collection: "sample_output",
# 	title: title,
# 	raw_description: raw_description,
# 	description: description,
# 	raw_industry: raw_industry,
# 	currency: currency,
# 	city: city,
# 	state: state,
# 	country: country,
# 	job_url: job_url,
# 	date_posted: date_posted,
# 	raw_rate: raw_rate,
# }

outputs << record


#record = {
# 	_collection: "final_output",
# 	title: title,
# 	raw_description: raw_description,
# 	description: description,
# 	raw_industry: raw_industry,
# 	industry: industry,
# 	currency: currency,
# 	city: city,
# 	state: state,
# 	country: country,
# 	job_url: job_url,
# 	date_posted: date_posted,
# 	raw_rate: raw_rate,
# 	rate_type: rate_type
# }

