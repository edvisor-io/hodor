# Cashcatme. Just like pug bombing, but with flava
#
# cashcat me - Receive a cashcat
# cashcat bomb N - get N cashcats

module.exports = (robot) ->
  robot.respond /cashcat me/i, (msg) ->
    msg.http('https://api.instagram.com/v1/users/52333855/media/recent/?access_token=1703351146.1677ed0.3f7033c15ff24daf86304fc5badeb903')
      .get() (err, res, body) ->
        jsonBody = JSON.parse(body).data
        msg.send _.sample(data.images.standard_resolution.url)
