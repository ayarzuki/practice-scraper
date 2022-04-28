# body = {
#     "txtJobType" => "",
#     "txtLocation" => "",
#     "txtLatitude" => "",
#     "txtLongitude" => "",
#     "source" => "",
# }

# pages << {
#     page_type: 'job_list',
#     method: "GET",
#     force_fetch: true,
#     fetch_type: "browser",
#     headers: {
        # ":authority" => "www.manpower.ca",
        # ":method" => "GET",
        # ":path" => "/ManpowerCanada/search-jobs?txtJobType=&txtLocation=&txtLatitude=&txtLongitude=&source=",
        # "accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
        # "accept-encoding" => "gzip, deflate, br",
        # "cookie" => "G_ENABLED_IDPS=google; hubspotutk=cfb4162b3aeaf6be0439ff8164d9474b; _ga=GA1.2.484422288.1648474523; UqZBpD3n3iPIDwJU=v1bFlJg8achqM; s_cc=true; s_nr=1651160038894; s_vnum=1653752038895&vn=1; s_invisit=true; s_sq=[[B]]; __hstc=32730849.cfb4162b3aeaf6be0439ff8164d9474b.1647879910303.1649771875857.1651160042618.42; __hssrc=1; __hssc=32730849.1.1651160042618",
        # "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
        # "sec-ch-ua" => '" Not A;Brand";v="99", "Chromium";v="100", "Google Chrome";v="100"',
        # "sec-ch-ua-mobile" => "?0",
        # "sec-ch-ua-platform" => '"Windows"',
        # "sec-fetch-dest" => "document",
        # "sec-fetch-mode" => "navigate",
        # "sec-fetch-site" => "cross-site",
#     },
#     url: "https://www.manpower.ca/ManpowerCanada/search-jobs?txtJobType=&txtLocation=&txtLatitude=&txtLongitude=&source=",
#     cookie: "G_ENABLED_IDPS=google; hubspotutk=cfb4162b3aeaf6be0439ff8164d9474b; _ga=GA1.2.484422288.1648474523; UqZBpD3n3iPIDwJU=v1bFlJg8achqM; s_cc=true; s_nr=1651160038894; s_vnum=1653752038895&vn=1; s_invisit=true; s_sq=[[B]]; __hstc=32730849.cfb4162b3aeaf6be0439ff8164d9474b.1647879910303.1649771875857.1651160042618.42; __hssrc=1; __hssc=32730849.1.1651160042618",
#     vars: { 
#         page_num: 1
#     },
#     body: URI.encode_www_form(body),
#     driver: { 
#         "name": "scraping manpower_can",
#         "stealth": true,  
#     }
# }

# headers = {
#     ":authority" => "www.manpower.ca",
#     ":method" => "POST",
#     ":path" => "/ManpowerCanada/search-jobs/!ut/p/z1/04_Sj9CPykssy0xPLMnMz0vMAfIjo8ziTfw9zDw9nA18LFyDjAwczTwDjYw9jIydLY30w8EKDHAARwP9KEL6o8BK8JhQkBthkO6oqAgAqa_nhQ!!/p0/IZ7_4OH6IHC0L8E4D0AM5UO1B130G5=CZ6_4OH6IHC0L8ER20A6IQ23H23C92=NJresourcepaginationAction=/",
#     "accept" => "*/*",
#     "accept-encoding" => "gzip, deflate, br",
#     "cookie" => "G_ENABLED_IDPS=google; hubspotutk=cfb4162b3aeaf6be0439ff8164d9474b; _ga=GA1.2.484422288.1648474523; __hssrc=1; JSESSIONID=0000x1yN_5EXPkvJ1eD0TRjVd-d:1dovhd2gq; __hssc=32730849.9.1651160042618;",
#     "content-type" => "application/x-www-form-urlencoded; charset=UTF-8",
#     "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
#     "sec-ch-ua" => ' Not A;Brand";v="99", "Chromium";v="100", "Google Chrome";v="100',
#     "sec-ch-ua-mobile" => "?0",
#     "sec-ch-ua-platform" => '"Windows"',
#     "sec-fetch-dest" => "empty",
#     "sec-fetch-mode" => "cors",
#     "sec-fetch-site" => "same-origin",
#     "x-requested-with" => "XMLHttpRequest"
# }

# Request Body
# input = (1..54).step(1)

# input.each do |scroll_page_number|
#     pages<<{
#         url: "https://www.manpower.ca/ManpowerCanada/search-jobs/!ut/p/z1/04_Sj9CPykssy0xPLMnMz0vMAfIjo8ziTfw9zDw9nA18LFyDjAwczTwDjYw9jIydLY30w8EKDHAARwP9KEL6o8BK8JhQkBthkO6oqAgAqa_nhQ!!/p0/IZ7_4OH6IHC0L8E4D0AM5UO1B130G5=CZ6_4OH6IHC0L8ER20A6IQ23H23C92=NJresourcepaginationAction=/",
#         page_type: 'job_list',
#         method: "POST",
#         vars:{
#             page_num: 1
#         },
#         cookie: "G_ENABLED_IDPS=google; hubspotutk=cfb4162b3aeaf6be0439ff8164d9474b; _ga=GA1.2.484422288.1648474523; UqZBpD3n3iPIDwJU=v1bFlJg8achqM; s_cc=true; s_vnum=1653752038895&vn=1; s_invisit=true; __hstc=32730849.cfb4162b3aeaf6be0439ff8164d9474b.1647879910303.1649771875857.1651160042618.42; __hssrc=1; JSESSIONID=0000x1yN_5EXPkvJ1eD0TRjVd-d:1dovhd2gq; __hssc=32730849.9.1651160042618; s_nr=1651162896146; s_sq=mpdtprodcandidate=%26pid%3DJob%2520Search%26pidt%3D1%26oid%3Dfunctionanonymous%2528e%2529%257Bvars%253Ds_c_il%255B0%255D%252Cb%253Ds.eh%2528this%252C%2522onclick%2522%2529%253Bs.lnk%253Ds.co%2528this%2529%253Bs.t%2528%2529%253Bs.lnk%253D0%253Bif%2528b%2529retur%26oidt%3D2%26ot%3DA",
#         headers: headers,
#         body: URI.encode_www_form({
#             "x" => "#{scroll_page_number}"
#         })
#     }
# end

# pages << {
#     page_type: 'job_list',
#     method: "GET",
#     force_fetch: true,
#     # fetch_type: "browser",
#     headers: {
#         "accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
#         "accept-encoding" => "gzip, deflate, br",
#         "User-Agent" => "Mozilla/5.0 (X11; Linux x86_64; rv:98.0) Gecko/20100101 Firefox/98.0",
#         "sec-ch-ua" => '"Not A;Brand";v="99", "Chromium";v="99", "Google Chrome";v="99"',
#         "sec-ch-ua-mobile" => "?0",
#         "sec-ch-ua-full-version-list" => 'Not A;Brand";v="99.0.0.0", "Chromium";v="99.0.4844.51", "Google Chrome";v="99.0.4844.51"',
#         "sec-ch-ua-platform" => '"Linux"',
#         "sec-fetch-dest" => "document",
#         "sec-fetch-mode" => "navigate",
#         "sec-fetch-site" => "cross-site",
#         "upgrade-insecure-requests" => "1",
#         "content-type" => "text/html; charset=UTF-8",
#     },
#     url: "https://www.manpower.ca/ManpowerCanada/search-jobs?txtJobType=&txtLocation=&txtLatitude=&txtLongitude=&source=",
#     # display: {
#     #     "width": 1280,
#     #     "height": 695
#     # },
#     # no_url_encode: true,
#     # http2: true,
#     vars: { 
#         page_number: 1
#     },
# }

url_category = {
    "Purchasing and Procurement" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Purchasing%20and%20Procurement", "Purchasing and Procurement"],
    "Human Resources and Personnel" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Human%20Resources%20and%20Personnel", "Human Resources and Personnel"]
}

url_category.each do |key, value|
    pages << {
        page_type: 'job_list',
        method: "GET",
        force_fetch: true,
        fetch_type: "browser",
        headers: {
            # ":authority" => "www.manpower.ca",
            # ":method" => "GET",
            "accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
            "accept-encoding" => "gzip, deflate, br",
            # "cookie" => "G_ENABLED_IDPS=google; hubspotutk=cfb4162b3aeaf6be0439ff8164d9474b; _ga=GA1.2.484422288.1648474523; UqZBpD3n3iPIDwJU=v1bFlJg8achqM; s_cc=true; s_nr=1651160038894; s_vnum=1653752038895&vn=1; s_invisit=true; s_sq=[[B]]; __hstc=32730849.cfb4162b3aeaf6be0439ff8164d9474b.1647879910303.1649771875857.1651160042618.42; __hssrc=1; __hssc=32730849.1.1651160042618",
            "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
            "sec-ch-ua" => '" Not A;Brand";v="99", "Chromium";v="100", "Google Chrome";v="100"',
            "sec-ch-ua-mobile" => "?0",
            "sec-ch-ua-platform" => '"Windows"',
            "sec-fetch-dest" => "document",
            "sec-fetch-mode" => "navigate",
            "sec-fetch-site" => "same-origin",
        },
        url: value[0],
        vars: {
            industry: key,
            url: value[0]
        },
        body: URI.encode_www_form({
            "categoryID" => "#{value[1]}"
        }),
        cookie: 'G_ENABLED_IDPS=google; hubspotutk=cfb4162b3aeaf6be0439ff8164d9474b; _ga=GA1.2.484422288.1648474523; UqZBpD3n3iPIDwJU=v1bFlJg8achqM; s_cc=true; __hssrc=1; JSESSIONID=0000x1yN_5EXPkvJ1eD0TRjVd-d:1dovhd2gq; s_nr=1651162896146; s_vnum=1653752038895&vn=2; s_invisit=true; __hstc=32730849.cfb4162b3aeaf6be0439ff8164d9474b.1647879910303.1651160042618.1651165828256.43; s_sq=[[B]]; G_ENABLED_IDPS=google; com.ibm.wps.state.preprocessors.locale.LanguageCookie=en_CA; _gid=GA1.2.679138354.1651167502; USERPREFS={"location":"","industrySector":"","latitude":"","longitude":""}; __hssc=32730849.17.1651165828256',
    }
end