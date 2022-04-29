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
    "Human Resources and Personnel" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Human%20Resources%20and%20Personnel", "Human Resources and Personnel"],
    "Automotive" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Automotive", "Automotive"],
    "Mining" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Mining", "Mining"],
    "New Media and Internet" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=New%20Media%20and%20Internet", "New Media and Internet"],
    "Aerospace" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Aerospace", "Aerospace"],
    "Property and Housing" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Property%20and%20Housing", "Property and Housing"],
    "Science and Research" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Science%20and%20Research", "Science and Research"],
    "Banking" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Banking", "Banking"],
    "IT" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=IT", "IT"],
    "Community Services" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Community%20Services", "Community Services"],
    "Agriculture Fishing and Forestry" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Agriculture%20Fishing%20and%20Forestry", "Agriculture Fishing and Forestry"],
    "Medical and Nursing" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Medical%20and%20Nursing", "Medical and Nursing"],
    "Trade and Services" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Trade%20and%20Services", "Trade and Services"],
    "Public Sector and Government" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Public%20Sector%20and%20Government", "Public Sector and Government"],
    "Logistics Distribution and Supply Chain" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Logistics%20Distribution%20and%20Supply%20Chain", "Logistics Distribution and Supply Chain"],
    "Hospitality and Catering" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Hospitality%20and%20Catering", "Hospitality and Catering"],
    "Engineering" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Engineering", "Engineering"],
    "Admin and Secretarial" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Admin%20and%20Secretarial", "Admin and Secretarial"],
    "Accountancy" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Accountancy", "Accountancy"],
    "Fashion" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Fashion", "Fashion"],
    "Defense and Military" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Defense%20and%20Military", "Defense and Military"],
    "Leisure and Sport" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Leisure%20and%20Sport", "Leisure and Sport"],
    "Insurance" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Insurance", "Insurance"],
    "Education and Training" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Education%20and%20Training", "Education and Training"],
    "Electronics" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Electronics", "Electronics"],
    "Real Estate and Property" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Real%20Estate%20and%20Property", " Real Estate and Property"],
    "Advertising and PR" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Advertising%20and%20PR", "Advertising and PR"],
    "Retail" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Retail", "Retail"],
    "Utilities" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Utilities", "Utilities"],
    "Transport and Rail" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Transport%20and%20Rail", "Transport and Rail"],
    "Call Center and Customer Service" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Call%20Center%20and%20Customer%20Service", "Call Center and Customer Service"],
    "Financial Services" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Financial%20Services", "Financial Services"],
    "Media" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Media", "Media"],
    "Telecommunications" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Telecommunications", "Telecommunications"],
    "Not for Profit and Charities" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Not%20for%20Profit%20and%20Charities", "Not for Profit and Charities"],
    "Health and Safety" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Health%20and%20Safety", "Health and Safety"],
    "Oil and Gas" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Oil%20and%20Gas", "Oil and Gas"],
    "Travel and Tourism" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Travel%20and%20Tourism", "Travel and Tourism"],
    "Legal" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Legal", "Legal"],
    "FMCG" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=FMCG", "FMCG"],
    "Marketing" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Marketing", "Marketing"],
    "Sales" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Sales", "Sales"],
    "Social Care" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Social%20Care", "Social Care"],
    "Recruitment Consultancy" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Recruitment%20Consultancy", "Recruitment Consultancy"],
    "Manufacturing and Production" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Manufacturing%20and%20Production", "Manufacturing and Production"],
    "Design and Creative" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Design%20and%20Creative", "Design and Creative"],
    "Building and Construction" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Building%20and%20Construction", "Building and Construction"],
    "Consultancy" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Consultancy", "Consultancy"],
    "Pharmaceuticals" => ["https://www.manpower.ca/ManpowerCanada/jobs?categoryID=Pharmaceuticals", "Pharmaceuticals"],
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
        cookie: 'G_ENABLED_IDPS=google; hubspotutk=cfb4162b3aeaf6be0439ff8164d9474b; _ga=GA1.2.484422288.1648474523; UqZBpD3n3iPIDwJU=v1bFlJg8achqM; s_cc=true; __hssrc=1; s_nr=1651162896146; G_ENABLED_IDPS=google; com.ibm.wps.state.preprocessors.locale.LanguageCookie=en_CA; _gid=GA1.2.679138354.1651167502; USERPREFS={"location":"","industrySector":"","latitude":"","longitude":""}; s_sq=[[B]]; s_vnum=1653752038895&vn=3; s_invisit=true; __hstc=32730849.cfb4162b3aeaf6be0439ff8164d9474b.1647879910303.1651175679083.1651198806295.45; JSESSIONID=0000WWmbhPw_ujsA96nt65NE43m:1dovhd2gq; __hssc=32730849.4.1651198806295',
    }
end