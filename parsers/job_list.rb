# require 'json'

# p content

# p page

# json = JSON.parse(page["url"])

# p json

# # This time we parse the JSON response
# # json = JSON.parse(content)
# rank = 1
# page_num = page["vars"]["page_num"]

# # p json

# p page_num

# p page
# p page_num
# p content

# input = (1..54).step(1)

# input.each do |scroll_page_number|
#     pages<<{
#         url: "https://www.manpower.ca/ManpowerCanada/search-jobs/!ut/p/z1/04_Sj9CPykssy0xPLMnMz0vMAfIjo8ziTfw9zDw9nA18LFyDjAwczTwDjYw9jIydLY30w8EKDHAARwP9KEL6o8BK8JhQkBthkO6oqAgAqa_nhQ!!/p0/IZ7_4OH6IHC0L8E4D0AM5UO1B130G5=CZ6_4OH6IHC0L8ER20A6IQ23H23C92=NJresourcepaginationAction=/",
#         page_type: 'job_next',
#         method: "POST",
#         vars:{
#             page_num: 1
#         },
#         cookie: "G_ENABLED_IDPS=google; hubspotutk=cfb4162b3aeaf6be0439ff8164d9474b; _ga=GA1.2.484422288.1648474523; UqZBpD3n3iPIDwJU=v1bFlJg8achqM; s_cc=true; s_vnum=1653752038895&vn=1; s_invisit=true; __hstc=32730849.cfb4162b3aeaf6be0439ff8164d9474b.1647879910303.1649771875857.1651160042618.42; __hssrc=1; JSESSIONID=0000x1yN_5EXPkvJ1eD0TRjVd-d:1dovhd2gq; __hssc=32730849.9.1651160042618; s_nr=1651162896146; s_sq=mpdtprodcandidate=%26pid%3DJob%2520Search%26pidt%3D1%26oid%3Dfunctionanonymous%2528e%2529%257Bvars%253Ds_c_il%255B0%255D%252Cb%253Ds.eh%2528this%252C%2522onclick%2522%2529%253Bs.lnk%253Ds.co%2528this%2529%253Bs.t%2528%2529%253Bs.lnk%253D0%253Bif%2528b%2529retur%26oidt%3D2%26ot%3DA",
#         # headers: headers,
#         body: URI.encode_www_form({
#             "x" => "#{scroll_page_number}"
#         })
#     }
# end

# html = Nokogiri.HTML(content)
# p html
# vars = page['vars']

# positions = html.css('div.row-container')

# positions.each do |position|
#     title = position.css('.col-two > a').text
#     url_text = position.css('.col-two > a').attr('href').text
#     url = "https://www.manpower.ca" + url_text

#     pages << { 
#         url: url,
#         method: "GET",
#         force_fetch: true,
#         # fetch_type: "browser",
#         page_type: "job_detail",
#         vars: { 
#             title: title
#         },
#         driver: { 
#           "name": "scraping manpower_can",
#           "stealth": true,  
#         },
#         # no_url_encode: true,
#         # http2: true,
#     }
# end

# # you can try to fetch the pagination page one by one
# page_number = vars['page_number'] || 1

# pages << {
#   # url: "#{base_url}#{resource_pagination_url}",
#   url: 'https://www.manpower.ca/ManpowerCanada/search-jobs?txtJobType=&txtLocation=&txtLatitude=&txtLongitude=&source=',
#   page_type: 'job_list',
#   # fetch_type: "browser",
#   method: 'POST',
#   headers: {
#     # 'Accept' => '*/*',
#     # 'Accept-Encoding' => 'gzip, deflate, br',
#     'Accept-Language' => 'en-US,en;q=0.5',
#     'Connection' => 'keep-alive',
#     'Content-Type' => 'application/x-www-form-urlencoded; charset=UTF-8',
#     'Cookie' => 'UqZBpD3n3iPIDwJU=v1b1lJg8acb60; s_cc=true; s_nr=1648042288600; s_vnum=1650634222400%26vn%3D1; s_invisit=true; s_sq=mpdtprodcandidate%3D%2526pid%253DJob%252520Search%2526pidt%253D1%2526oid%253Dfunctionanonymous%252528e%252529%25257Bvars%25253Ds_c_il%25255B0%25255D%25252Cb%25253Ds.eh%252528this%25252C%252522onclick%252522%252529%25253Bs.lnk%25253Ds.co%252528this%252529%25253Bs.t%252528%252529%25253Bs.lnk%25253D0%25253Bif%252528b%252529retur%2526oidt%253D2%2526ot%253DA; G_ENABLED_IDPS=google; JSESSIONID=0000aVR6SEnoW8Zd8CoGA15Madg:1dotsh9v6; __hstc=32730849.50e2cc91b18a3177d3c6de59dd9b8866.1648042235600.1648042235600.1648042235600.1; hubspotutk=50e2cc91b18a3177d3c6de59dd9b8866; __hssrc=1; __hssc=32730849.2.1648042235600',
#     'User-Agent' => 'Mozilla/5.0 (X11; Linux x86_64; rv:98.0) Gecko/20100101 Firefox/98.0',
#     'X-Requested-With' => 'XMLHttpRequest',
#     'sec-fetch-dest' => 'empty',
#     'sec-fetch-mode' => 'cors',
#     'sec-fetch-site' => 'same-origin',
#   },
#   body: URI.encode_www_form({'x' => (page_number + 1)}),
#   vars: {
#     page_number: (page_number + 1)
#   },
#   driver: { 
#     "name": "scraping manpower_can",
#     "stealth": true,
#     # "code": "await page.goto('https://www.manpower.ca/ManpowerCanada/search-jobs?txtJobType=&txtLocation=&txtLatitude=&txtLongitude=&source='); await refreshQueuePage(); await page.click('ul.pager > li.next > a[href='javascript:void(0)']'); await sleep (3000);",
#     # "goto_options": {
#     #   "timeout": 3000
#     # }
#   },
#   # no_url_encode: true,
#   # http2: true,
# }