get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/tweets' do

	@tweets = TWITTER_CLIENT.user_timeline("yyongsheng")

	erb :show
end  

post '/tweets' do 
 	post_tweet = params[:tweet_msg]
 	TWITTER_CLIENT.update(post_tweet)

 	@tweets = TWITTER_CLIENT.user_timeline("yyongsheng")
 	erb :show, layout: false
end 