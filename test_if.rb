require 'net/http'
5000.times do
	url = URI.parse("http://127.0.0.1:3000/pages/second/#{Random.rand(20)}")
	req = Net::HTTP::Get.new(url.path)
	res = Net::HTTP.start(url.host, url.port) {|http|
  		http.request(req)
	}
end
