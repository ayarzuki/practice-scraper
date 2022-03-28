html = Nokogiri.HTML(content)

#initialize empty hash
record = {}

# extract title
record['title'] = html.css("div.jobTitleDesc h1").text.strip

# extract description
record['description'] = html.at_css("div.job-description p").text.strip

# extract industry
# record['industry'] = 1

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
}

raw_industry =  html.at_css("div.industry-type p.sub-heading-desc span").text.strip
record['raw_industry'] = raw_industry
# p raw_industry
industry = industries_map[raw_industry].first
record['industry'] = industry
# p industry


# extract rate Type
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
raw_rate = rate.scan(/\/.*/).flatten.first
    if raw_rate
        rate_type_regex.find { |regex| raw_rate =~ regex }
        rate_type = $1 ? rate_type_map[$1].first : 3
    else
        raw_rate= ""
        rate_type = 3
        rate_value = ""
end

record['rate_type'] = rate_type

def currency(rate)
  rate1 = rate.match(/[A-Z]{3}(?<![A-Z]{4})(?![A-Z])/)
  rate2 = rate1.to_s
  
  if rate2.match(/[A-Z]/)
    return rate2
  else
    return nil
  end
end

record['currency'] = currency(rate)

# extract rate_value
rawrate_rate_value = rate.scan(/([A-Z]{3}(?<![A-Z]{4})(?![A-Z]))(.*)(\/.*)/).flatten[1]
if rawrate_rate_value
  rawrate_rate_value = rawrate_rate_value
  # rate_type_regex.find { |regex| rawrate_rate_value =~ regex }
  # rate_type = $1 ? rate_type_map[$1].first : 3
else
  rawrate_rate_value = ""
  # rate_type = 3
  # rate_value = ""
end
# p rawrate_rate_value
## GENERATE RATE VALUE
if rawrate_rate_value.include? "-"
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
    res_rate_value = record.merge('rate_value' => clean_raw_rate)
    record['rate_value'] = res_rate_value['rate_value']
    # p res_rate_value
	end
else
	clean_raw_rate = rawrate_rate_value != "" ? rawrate_rate_value.gsub("$", "") : ""
	if clean_raw_rate.scan(/[^0-9]/).flatten.first.nil?
		clean_raw_rate = clean_raw_rate.to_f
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
    res_rate_value = record.merge('rate_value' => clean_raw_rate)
    record['rate_value'] = res_rate_value['rate_value']
    # p res_rate_value
end

#extract city
record['city'] = html.css("div.sub-heading p.sub-heading-desc span")[1].text.strip

# extract state
# record['state'] = nil
state_parse = html.at_css("div.branchInfo p.sub-heading-desc span.jdCityDetails").text

def state(str)
    input1 = str.match(/.[A-Z]{2}(?<![A-Z]{3})(?![A-Z])./)
    input2 = input1.to_s.strip
    
    if input2.match(/[A-Z]/)
      return input2
    else
      return nil
    end
  end
  
record['state'] = state(state_parse) 

# extract country
# record['country'] = "United States"
country_parse = html.at_css(".advertID p.sub-heading-desc").text.strip

def country(country_parse)
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

record['country'] = country(country_parse)

# extract job url
record['job_url'] = page["url"]

record['date_posted'] = html.css("p.posted-date-text span")[1].text.strip

#extract raw_rate
# rate = html.css("p#salaryDivi").text.strip
record['raw_rate'] = rate

# extract description with html tags
record['raw_description'] = html.at_css("div.job-description p").inner_html

# extract for provided if the industry can't be parsed as one in the Industry Enum
# record['raw_industry'] = html.at_css("div.industry-type p.sub-heading-desc span").text.strip

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

