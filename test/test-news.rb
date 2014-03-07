require 'adefy'
agent = Adefy::Agent.new host: "http://www.adefy.dev/",
                         apikey: "ytIicfVCHOSn9bp5kKvbEb6m"
#con = agent.send(:connection)
#STDERR.puts con.data
STDERR.puts agent.users.login username: "Dragme", password: "adefydev"
p agent.serve.serve(id: "53017121eaede1dc07c822ac", width: 400, height: 400, json: true)
me = agent.users.me
apikey = me["apikey"]
STDERR.puts
#STDERR.puts agent.users.all
#STDERR.puts agent.ads.all
#STDERR.puts agent.users.transactions
#STDERR.puts agent.news.all
#STDERR.puts agent.news.create title: "Its News!", text: "Test news is Test news, also news"