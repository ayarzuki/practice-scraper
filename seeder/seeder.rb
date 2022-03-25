pages << {
    page_type: 'job_list',
    method: "GET",
    force_fetch: true,
    headers: {
        "accept" => "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
        "accept-encoding" => "gzip, deflate, br",
        "User-Agent" => "Mozilla/5.0 (X11; Linux x86_64; rv:98.0) Gecko/20100101 Firefox/98.0",
        "sec-ch-ua" => '"Not A;Brand";v="99", "Chromium";v="99", "Google Chrome";v="99"',
        "sec-ch-ua-mobile" => "?0",
        "sec-ch-ua-full-version-list" => 'Not A;Brand";v="99.0.0.0", "Chromium";v="99.0.4844.51", "Google Chrome";v="99.0.4844.51"',
        "sec-ch-ua-platform" => '"Linux"',
        "sec-fetch-dest" => "document",
        "sec-fetch-mode" => "navigate",
        "sec-fetch-site" => "cross-site",
        "upgrade-insecure-requests" => "1",
        "content-type" => "text/html; charset=UTF-8",
    },
    url: "https://www.manpower.ca/ManpowerCanada/search-jobs?txtJobType=&txtLocation=&txtLatitude=&txtLongitude=&source=",
    display: {
        "width": 1280,
        "height": 695
    },
    vars: { 
        page_number: 4
    },
    driver: { 
        "name": "scraping manpower_can",
        "stealth": true,  
    }
}