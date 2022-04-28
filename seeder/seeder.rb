body = {
    "txtJobType:" => "",
    "txtLocation:" => "",
    "txtLatitude:" => "",
    "txtLongitude:" => "",
    "source:" => "",
}

pages << {
    page_type: 'job_list',
    method: "GET",
    force_fetch: true,
    fetch_type: "browser",
    headers: {
        ":authority" => "www.manpower.ca",
        ":method" => "GET",
        ":path" => "/ManpowerCanada/search-jobs?txtJobType=&txtLocation=&txtLatitude=&txtLongitude=&source=",
        "accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
        "accept-encoding" => "gzip, deflate, br",
        "cookie" => "G_ENABLED_IDPS=google; hubspotutk=cfb4162b3aeaf6be0439ff8164d9474b; _ga=GA1.2.484422288.1648474523; UqZBpD3n3iPIDwJU=v1bFlJg8achqM; s_cc=true; s_nr=1651160038894; s_vnum=1653752038895&vn=1; s_invisit=true; s_sq=[[B]]; __hstc=32730849.cfb4162b3aeaf6be0439ff8164d9474b.1647879910303.1649771875857.1651160042618.42; __hssrc=1; __hssc=32730849.1.1651160042618",
        "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36",
        "sec-ch-ua" => '" Not A;Brand";v="99", "Chromium";v="100", "Google Chrome";v="100"',
        "sec-ch-ua-mobile" => "?0",
        "sec-ch-ua-platform" => '"Windows"',
        "sec-fetch-dest" => "document",
        "sec-fetch-mode" => "navigate",
        "sec-fetch-site" => "cross-site",
    },
    url: "https://www.manpower.ca/ManpowerCanada/search-jobs?txtJobType=&txtLocation=&txtLatitude=&txtLongitude=&source=",
    cookie: "G_ENABLED_IDPS=google; hubspotutk=cfb4162b3aeaf6be0439ff8164d9474b; _ga=GA1.2.484422288.1648474523; UqZBpD3n3iPIDwJU=v1bFlJg8achqM; s_cc=true; s_nr=1651160038894; s_vnum=1653752038895&vn=1; s_invisit=true; s_sq=[[B]]; __hstc=32730849.cfb4162b3aeaf6be0439ff8164d9474b.1647879910303.1649771875857.1651160042618.42; __hssrc=1; __hssc=32730849.1.1651160042618",
    vars: { 
        page_num: 1
    },
    body: URI.encode_www_form(body),
    driver: { 
        "name": "scraping manpower_can",
        "stealth": true,  
    }
}