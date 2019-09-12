library(rtweet)


create_token(app = "DIC_ME" ,consumer_key <- "XXXXXXXX",
             consumer_secret = "XXXXXXXX",
             access_token = "XXXXXXXX",
             access_secret ="XXXXXXXX")
tweets <- search_tweets(q = "#flu OR influenza",n = 10000,include_rts = FALSE,geocode = lookup_coords("usa"))
#df <- twListToDF(tweets)
write_as_csv(tweets,file_name ="tweets_1.csv")
