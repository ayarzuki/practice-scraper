html = Nokogiri.HTML(content)

#initialize empty hash
record = {}

# extract title
record['title'] = html.css("div.jobTitleDesc h1").text.strip

# extract description
record['description'] = html.at_css("div.job-description p").text.strip

# extract industry
record['industry'] = 1

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

