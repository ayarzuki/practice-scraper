require 'date'
html = Nokogiri.HTML(content)

#initialize empty hash
#record = {}

# p html

### extract title
title = html.css("div.jobTitleDesc h1").text.strip

### extract description
description = html.at_css("div.job-description p").text.strip.gsub(/[\n\r]/, "")

### Generate Regex for Industry
industries_map = {
    'Admin and Secretarial' => [1, 'ALL', 'All'],
    'Call Center and Customer Service' => [1, 'ALL', 'All'],
    'Retail' => [6, 'CONSUMER', 'CONSUMER'],
    'FMCG' => [6, 'CONSUMER', 'CONSUMER'],
    'Help Desk' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Telecom Analyst' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Aerospace' => [3, 'AEROSPACE', 'Aerospace and Defense'],
    'Architect' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
    'Marketing' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
    'Network Engineer' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Customer Service' => [15, 'TELECOMMUNICATIONS', 'Telecommunications'],
    'Trade and Services' => [1, 'ALL', 'All'],
    'Light Industrial' => [1, 'ALL', 'All'],
    'Mining' => [11, 'MANUFACTURING', 'Manufacturing'],
    'PC Technician' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Engineering (Non IT)' => [11, 'MANUFACTURING', 'Manufacturing'],
    'Architect (Engineering)' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Design and Creative' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
    'Accounting / Finance' => [7, 'FINANCIAL', 'Financial'],
    'IT' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Business Analysis' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
    'Agriculture Fishing and Forestry' => [4, 'AGRICULTURAL', 'Agricultural'],
    'Software Engineering' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Data Warehousing' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Banking' => [7, 'FINANCIAL', 'Financial'],
    'Hospitality and Catering' => [1, 'ALL', 'All'],
    'Biomedical Engineering' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Database Administrator (DBA)' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Security Engineering' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Public Sector and Government' => [8, 'GOVERNMNT', 'Government'],
    'Computer Engineering' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Insurance' => [10, 'INSURANCE', 'Insurance'],
    'Oil and Gas' => [11, 'MANUFACTURING', 'Manufacturing'],
    'Legal' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
    'Sales' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
    'Recruiting / Staffing' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
    'Nurse' => [9, 'HEALTHCARE', 'Healthcare'],
    'Corporate Operations' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
    'Civil Engineering' => [1, 'ALL', 'All'],
    'Health and Safety' => [9, 'HEALTHCARE', 'Healthcare'],
    'Transport and Rail' => [1, 'ALL', 'All'],
    'Building and Construction' => [1, 'ALL', 'All'],
    'Engineering' => [11, 'MANUFACTURING', 'Manufacturing'],
    'Electronics' => [11, 'MANUFACTURING', 'Manufacturing'],
    'Education and Training' => [2, 'ACADEMIA', 'Academia'],
    'Science and Research' => [2, 'ACADEMIA', 'Academia'],
    'Managerial / Professional' =>  [1, 'ALL', 'All'],
    'Financial Planning & Analysis' => [7, 'FINANCIAL', 'Financial'],
    'Community Services' => [16, 'PROFESSIONAL', 'Professional Services/Consulting'],
    'Accounts Receivable' => [7, 'FINANCIAL', 'Financial'],
    'Human Resources and Personnel' => [1, 'ALL', 'All'],
    'Utilities' => [1, 'ALL', 'All'],
    'Programmer / Developer' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Audit' => [7, 'FINANCIAL', 'Financial'],
    'Not for Profit and Charities' => [1, 'ALL', 'All'],
    'Laboratory Technician' => [9, 'HEALTHCARE', 'Healthcare'],
    'Automotive' =>  [11, 'MANUFACTURING', 'Manufacturing'],
    'Medical and Nursing' => [9, 'HEALTHCARE', 'Healthcare'],
    'Surgical Technician' => [1, 'ALL', 'All'],
    'Purchasing' => [1, 'ALL', 'All'],
    'Purchasing and Procurement' => [1, 'ALL', 'All'],
    'Mechanical Assembler' => [9, 'HEALTHCARE', 'Healthcare'],
    'Real Estate and Property' => [1, 'ALL', 'All'],
    'Property and Housing' => [1, 'ALL', 'All'],
    'Nurse Assistant' => [9, 'HEALTHCARE', 'Healthcare'],
    'Computer Operator' => [5, 'COMPUTERS', 'Computers and Technology'],
    'Environmental Engineering' => [1, 'ALL', 'All'],
    'Accountancy' => [7, 'FINANCIAL', 'Financial'],
    'Leisure and Sport' => [1, 'ALL', 'All'],
    'Technical Writer' => [1, 'ALL', 'All'],
    'Logistics Distribution and Supply Chain' => [1, 'ALL', 'All'],
    'Financial Services' => [7, 'FINANCIAL', 'Financial'],
    'Sterile Processing Technician' => [1, 'ALL', 'All'],
    'Pharmaceuticals' => [9, 'HEALTHCARE', 'Healthcare'],
    'Claims/Denials' => [1, 'ALL', 'All'],
    'Collections' => [1, 'ALL', 'All'],
    'Drafter' => [1, 'ALL', 'All'],
    'Pharmacist' => [9, 'HEALTHCARE', 'Healthcare'],
    'Tax' => [7, 'FINANCIAL', 'Financial'],
    'Environmental Services EVS (Healthcare)' => [9, 'HEALTHCARE', 'Healthcare'],
    'Technical Advisor' => [1, 'ALL', 'All'],
    'Psychologist/Psychiatrist' => [9, 'HEALTHCARE', 'Healthcare'],
    'Social Worker' => [1, 'ALL', 'All'],
    'Physical Therapist' => [9, 'HEALTHCARE', 'Healthcare'],
    'Defense and Military' => [1, 'ALL', 'All'],
    'Manufacturing and Production' =>  [11, 'MANUFACTURING', 'Manufacturing'],
    'Travel and Tourism' => [1, 'ALL', 'All'],
    'Media' => [1, 'ALL', 'All']
}

### extract raw_industry
raw_industry =  html.at_css("div.industry-type p.sub-heading-desc span").text.strip
# record['raw_industry'] = raw_industry
# p raw_industry
industry = industries_map[raw_industry].first
#record['industry'] = industry
# p industry


### Generate Regex for Rate Type
# rate_type =
rate_type_map = {
    "per hour" => [1, 'HOURLY', 'Hourly'],
    "/hr" => [1, 'HOURLY', 'Hourly'],
    "per year" => [2, 'ANNUAL', 'Annual'],
    "annum" => [2, 'ANNUAL', 'Annual'],
    "Based on Experience" => [3, 'UNKNOWN', 'Unknown'],
    "per day" => [4, 'DAILY', 'Daily'],
    "per week" => [5, 'WEEKLY', 'Weekly'],
    "/week" => [5, 'WEEKLY', 'Weekly'],
    "weekly" => [5, 'WEEKLY', 'Weekly'],
    "/wk" => [5, 'WEEKLY', 'Weekly'],
    "per month" => [6, 'MONTHLY', 'Monthly'],
    "/month" => [6, 'MONTHLY', 'Monthly'],
    "/year" => [2, 'ANNUAL', 'Annual']
}

rate_type_regex = [
    /(per hour)/,
    /(\/hr)/,
    /(per year)/,
    /(annum)/,
    /(Based on Experience)/,
    /(per day)/,
    /(per week)/,
    /(\/week)/,
    /(weekly)/,
    /(\/wk)/,
    /(per month)/,
    /(\/month)/,
    /(\/year)/,
]

# raw_rate = rate.scan(/\/.*/).flatten.first
#     if raw_rate
#         rate_type_regex.find { |regex| raw_rate =~ regex }
#         rate_type = $1 ? rate_type_map[$1].first : 3
#     else
#         raw_rate= ""
#         rate_type = 3
#         rate_value = ""
# end

# p raw_rate
# p rate_type

# record['rate_type'] = rate_type

# p rate

# extract currency
# record['currency'] = "USD"
# # # extract rate from HTML
rate = html.css("p#salaryDivi").text.strip

## # extract rate type
raw_rate = rate
    if raw_rate
        rate_type_regex.find { |regex| raw_rate =~ regex }
        rate_type = $1 ? rate_type_map[$1].first : 3
    else
        raw_rate= ""
        rate_type = 3
        rate_value = ""
end

# record['rate_type'] = rate_type

### Generate Currency
def generate_currency(rate)
  rate1 = rate.match(/[A-Z]{3}(?<![A-Z]{4})(?![A-Z])/)
  rate2 = rate1.to_s
  
  if rate2.match(/[A-Z]/)
    return rate2
  else
    return nil
  end
end
### Extract Currency
currency = generate_currency(rate)

###extract city
city = html.css("div.sub-heading p.sub-heading-desc span")[1].text.strip

### Generate State
# record['state'] = nil
state_parse = html.at_css("div.branchInfo p.sub-heading-desc span.jdCityDetails").text

def generate_state(str)
    input1 = str.match(/.[A-Z]{2}(?<![A-Z]{3})(?![A-Z])./)
    input2 = input1.to_s.strip
    
    if input2.match(/[A-Z]/)
      return input2
    else
      return nil
    end
end

### Extract State
### Generate State Map
states_map = {
	"AL" => "Alabama",
	"AK" => "Alaska",
	"AZ" => "Arizona",
	"AR" => "Arkansas",
	"CA" => "California",
	"CO" => "Colorado",
	"CT" => "Connecticut",
	"DE" => "Delaware",
	"DC" => "District of Columbia",
	"FL" => "Florida",
	"GA" => "Georgia",
	"HI" => "Hawaii",
	"ID" => "Idaho",
	"IL" => "Illinois",
	"IN" => "Indiana",
	"IA" => "Iowa",
	"KS" => "Kansas",
	"KY" => "Kentucky",
	"LA" => "Louisiana",
	"ME" => "Maine",
	"MD" => "Maryland",
	"MA" => "Massachusetts",
	"MI" => "Michigan",
	"MN" => "Minnesota",
	"MS" => "Mississippi",
	"MO" => "Missouri",
	"MT" => "Montana",
	"NE" => "Nebraska",
	"NV" => "Nevada",
	"NH" => "New Hampshire",
	"NJ" => "New Jersey",
	"NM" => "New Mexico",
	"NY" => "New York",
	"NC" => "North Carolina",
	"ND" => "North Dakota",
	"OH" => "Ohio",
	"OK" => "Oklahoma",
	"OR" => "Oregon",
  "ON" => "Ontario",
	"PA" => "Pennsylvania",
  "QC" => "Quebec",
	"RI" => "Rhode Island",
	"SC" => "South Carolina",
	"SD" => "South Dakota",
	"TN" => "Tennessee",
	"TX" => "Texas",
	"UT" => "Utah",
	"VT" => "Vermont",
	"VA" => "Virginia",
	"WA" => "Washington",
	"WV" => "West Virginia",
	"WI" => "Wisconsin",
	"WY" => "Wyoming"
}


state_parse = generate_state(state_parse) 
state = states_map[state_parse]

### Generate Country
# record['country'] = "United States"
country_parse = html.at_css(".advertID p.sub-heading-desc").text.strip

def generate_country(country_parse)
  country1 = country_parse.match(/[A-Z]{3}(?<![A-Z]{4})(?![A-Z])/)
  country2 = country1.to_s

  if country2.match(/(USA)/)
    return "United States of America"
  elsif country2.match(/(CAN)/)
    return "Canada"
  else
    return country2
  end
end
### Extract Country
country = generate_country(country_parse)

### Job url
job_url = page["url"]

### Extract Date Posted
date_posted = html.css("p.posted-date-text span")[1].text.strip
date_posted = Date.parse(date_posted)

### Extract Raw_Rate
# rate = html.css("p#salaryDivi").text.strip
raw_rate = rate

### Extract description with html tags
raw_description = html.at_css("div.job-description p").inner_html

# extract for provided if the industry can't be parsed as one in the Industry Enum
# record['raw_industry'] = html.at_css("div.industry-type p.sub-heading-desc span").text.strip

# not require translation because in English
# translated_title, translated_description, translated_raw_industry, translated_raw_rate
translated_title = ""
translated_description = ""
translated_raw_industry = ""
translated_raw_rate = ""

# specify the collection where thisrecord will be stored
# record['_collection'] = "job_listing"

# # # This an old script to save the product to the job's outputs
#outputs << record


record = {
 	_collection: "job_listing",
 	title: title,
 	raw_description: raw_description,
 	description: description,
 	raw_industry: raw_industry,
 	industry: industry,
 	currency: currency,
 	city: city,
 	state: state,
 	country: country,
 	job_url: job_url,
 	date_posted: date_posted,
 	raw_rate: raw_rate,
 	rate_type: rate_type
}

### extract rate_value
rawrate_rate_value = rate.scan(/([A-Z]{3}(?<![A-Z]{4})(?![A-Z]))([0-9]{1}.*[0-9]{1})/).flatten[1]
# if rawrate_rate_value
#   rawrate_rate_value = rawrate_rate_value
  # rate_type_regex.find { |regex| rawrate_rate_value =~ regex }
  # rate_type = $1 ? rate_type_map[$1].first : 3
# else
#   rawrate_rate_value = ""
  # rate_type = 3
  # rate_value = ""
# end
# p rawrate_rate_value
## GENERATE RATE VALUE
if rawrate_rate_value == nil
    outputs << record.merge('rate_value' => nil)
elsif rawrate_rate_value.include? "-"
	arr_raw_rate = rawrate_rate_value.split("-")
	arr_raw_rate.each do |rate_value|
		clean_raw_rate = rate_value.gsub("$", "")
		if clean_raw_rate.scan(/[^0-9]/).flatten.first.nil?
			clean_raw_rate = clean_raw_rate.to_f
		else
			if clean_raw_rate.include?(".")
				clean_raw_rate = clean_raw_rate.to_f
			end
		end
        outputs << record.merge('rate_value' => clean_raw_rate)
    # res_rate_value = record.merge('rate_value' => clean_raw_rate)
    # record['rate_value'] = res_rate_value['rate_value']
    # p res_rate_value
	end
else
	clean_raw_rate = rawrate_rate_value != "" ? rawrate_rate_value.gsub("$", "") : ""
	if clean_raw_rate.scan(/[^0-9]/).flatten.first.nil?
    # extract rate_value to nil if it is not a number
		clean_raw_rate = clean_raw_rate
	else
		if clean_raw_rate.include?(".")
			clean_raw_rate = clean_raw_rate.to_f
		end
			# if clean_raw_rate.include?(",")
			# 	clean_raw_rate = clean_raw_rate.gsub(",", "").to_i
			# end
			# if clean_raw_rate.include?("k")
			# 	clean_raw_rate = clean_raw_rate.gsub("k", "000").to_i
			# end
	end
    outputs << record.merge('rate_value' => clean_raw_rate)
    # res_rate_value = record.merge('rate_value' => clean_raw_rate)
    # record['rate_value'] = res_rate_value['rate_value']
    # p res_rate_value
end