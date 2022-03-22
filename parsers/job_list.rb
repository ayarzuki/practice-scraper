html = Nokogiri.HTML(content)

positions = html.css('div.row-container')

positions.each do |position|
    title = position.css('.col-two > a').text
    url_text = position.css('.col-two > a').attr('href').text
    url = "https://www.manpower.ca" + url_text

    pages << { 
        url: url,
        page_type: 'job_detail',
        vars: { 
            'title' => title
        }
     }
end