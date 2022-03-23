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

# next_page = html.at_css('ul.pager li.hidden-xs a')
# next_page.each do |link|
#     pagination = link['onclick="listPagination(#{i})"']
#     if pagination =~ /[0-9]/
#         page_next = "https://www.manpower.ca/ManpowerCanada/search-jobs?txtJobType=&txtLocation=&txtLatitude=&txtLongitude=&source="
#         pages << 	{
#             page_type: "job_list",
#             # url: url_next,
#             # vars: {
#             # },
#         }
# end

# next_page = html.at_css('ul.pager li.hidden-xs a')
# 100.times do |i|
#     url = "https://www.manpower.ca/ManpowerCanada/search-jobs?txtJobType=&txtLocation=&txtLatitude=&txtLongitude=&source="
#     pagination = next_page['listPagination("#{i}")']
#     pages << {
#         page_type: "job_list",
#         url: url,
#         pagination: pagination,
#         # vars: {
#         #     page_number: vars["page_number"] + 1
#         # },
#     }
# end