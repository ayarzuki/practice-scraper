html = Nokogiri.HTML(content)
vars = page['vars']

positions = html.css('div.row-container')

positions.each do |position|
    title = position.css('.col-two > a').text
    url_text = position.css('.col-two > a').attr('href').text
    url = "https://www.manpower.ca" + url_text

    pages << { 
        url: url,
        page_type: "job_detail",
        vars: { 
            title: title
        }
    }
end

# next_page = html.at_css('ul.pager li.next a')
# if next_page
# 	url_next = "https://www.manpower.ca#{URI.encode(next_page["href"])}"
# 	pages << 	{
# 		page_type: "job_list",
# 		url: url_next,
# 		vars: {
# 		},
# 	}
# end
