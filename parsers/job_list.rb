html = Nokogiri.HTML(content)
vars = page['vars']

positions = html.css('div.row-container')

positions.each do |position|
    title = position.css('.col-two > a').text
    url_text = position.css('.col-two > a').attr('href').text
    url = "https://www.manpower.ca" + url_text

    pages << { 
        url: url,
        method: "GET",
        force_fetch: true,
        fetch_type: "browser",
        page_type: "job_detail",
        vars: { 
            title: title
        },
        driver: { 
          "name": "scraping manpower_can",
          "stealth": true,  
        }
    }
end

# you can try to fetch the pagination page one by one
page_number = vars['page_number'] || 1
# p page_number
# base_url = html.at("base").attr("href")
# p base_url
# resource_pagination_url = content.split('var resourcepaginationURL = "', 2).last.split('";').first
# p resource_pagination_url

# p (base_url + resource_pagination_url)

pages << {
  # url: "#{base_url}#{resource_pagination_url}",
  url: 'https://www.manpower.ca/ManpowerCanada/search-jobs?txtJobType=&txtLocation=&txtLatitude=&txtLongitude=&source=',
  page_type: 'job_list',
  fetch_type: "browser",
  method: 'POST',
  headers: {
    # 'Accept' => '*/*',
    # 'Accept-Encoding' => 'gzip, deflate, br',
    'Accept-Language' => 'en-US,en;q=0.5',
    'Connection' => 'keep-alive',
    'Content-Type' => 'application/x-www-form-urlencoded; charset=UTF-8',
    'Cookie' => 'UqZBpD3n3iPIDwJU=v1b1lJg8acb60; s_cc=true; s_nr=1648042288600; s_vnum=1650634222400%26vn%3D1; s_invisit=true; s_sq=mpdtprodcandidate%3D%2526pid%253DJob%252520Search%2526pidt%253D1%2526oid%253Dfunctionanonymous%252528e%252529%25257Bvars%25253Ds_c_il%25255B0%25255D%25252Cb%25253Ds.eh%252528this%25252C%252522onclick%252522%252529%25253Bs.lnk%25253Ds.co%252528this%252529%25253Bs.t%252528%252529%25253Bs.lnk%25253D0%25253Bif%252528b%252529retur%2526oidt%253D2%2526ot%253DA; G_ENABLED_IDPS=google; JSESSIONID=0000aVR6SEnoW8Zd8CoGA15Madg:1dotsh9v6; __hstc=32730849.50e2cc91b18a3177d3c6de59dd9b8866.1648042235600.1648042235600.1648042235600.1; hubspotutk=50e2cc91b18a3177d3c6de59dd9b8866; __hssrc=1; __hssc=32730849.2.1648042235600',
    'User-Agent' => 'Mozilla/5.0 (X11; Linux x86_64; rv:98.0) Gecko/20100101 Firefox/98.0',
    'X-Requested-With' => 'XMLHttpRequest',
    'sec-fetch-dest' => 'empty',
    'sec-fetch-mode' => 'cors',
    'sec-fetch-site' => 'same-origin',
  },
  body: URI.encode_www_form({'x' => (page_number + 1)}),
  vars: {
    page_number: (page_number + 1)
  },
  driver: { 
    "name": "scraping manpower_can",
    "stealth": true,
    # "code": "await page.goto('https://www.manpower.ca/ManpowerCanada/search-jobs?txtJobType=&txtLocation=&txtLatitude=&txtLongitude=&source='); await refreshQueuePage(); await page.click('ul.pager > li.next > a[href='javascript:void(0)']'); await sleep (3000);",
    # "goto_options": {
    #   "timeout": 3000
    # }
  }
}

# or all at once
# if page_number == 1
#   total_count = html.at(".row.search-result-head").text.scan(/\d+/)
#   max_page = (Float(total_count) / Float(20)).floor

#   (2..max_page).each do |next_page_number|
#     pages << {
#       url: "#{base_url}#{resource_pagination_url}",
#       page_type: 'job_list',
#       method: 'POST',
#       headers: {
#         'Accept' => '*/*',
#         'Accept-Encoding' => 'gzip, deflate, br',
#         'Accept-Language' => 'en-US,en;q=0.5',
#         'Connection' => 'keep-alive',
#         'Content-Type' => 'application/x-www-form-urlencoded; charset=UTF-8',
#         'Cookie' => 'UqZBpD3n3iPIDwJU=v1b1lJg8acb60; s_cc=true; s_nr=1648042288600; s_vnum=1650634222400%26vn%3D1; s_invisit=true; s_sq=mpdtprodcandidate%3D%2526pid%253DJob%252520Search%2526pidt%253D1%2526oid%253Dfunctionanonymous%252528e%252529%25257Bvars%25253Ds_c_il%25255B0%25255D%25252Cb%25253Ds.eh%252528this%25252C%252522onclick%252522%252529%25253Bs.lnk%25253Ds.co%252528this%252529%25253Bs.t%252528%252529%25253Bs.lnk%25253D0%25253Bif%252528b%252529retur%2526oidt%253D2%2526ot%253DA; G_ENABLED_IDPS=google; JSESSIONID=0000aVR6SEnoW8Zd8CoGA15Madg:1dotsh9v6; __hstc=32730849.50e2cc91b18a3177d3c6de59dd9b8866.1648042235600.1648042235600.1648042235600.1; hubspotutk=50e2cc91b18a3177d3c6de59dd9b8866; __hssrc=1; __hssc=32730849.2.1648042235600',
#         'User-Agent' => 'Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101 Firefox/78.0',
#         'X-Requested-With' => 'XMLHttpRequest'
#       },
#       body: URI.encode_www_form({'x' => next_page_number}),
#       vars: {
#         page_number: next_page_number
#       }
#     }
#   end
# end


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