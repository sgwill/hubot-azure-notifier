# Description:
#   Announce kudu (azure) deployment using Kudu's POST service
#   to a room sepecified by the URL.
#
# Dependencies:
#   None
#
# Configuration:
#   None
# Author:
#   sgwill

module.exports = (robot) ->
  robot.router.post '/hubot/kudu/:room', (req, res) ->
    room = req.params.room

    data = req.body

    user = {}
    user.room = room
    msg = ""

    if data.status == 'success'
      msg = "#{data.author} triggered a successful deployment to #{data.siteName}"
    else
      msg = "#{data.author} triggered an unsuccessful deployment to #{data.siteName}"

    robot.send user, msg

    res.writeHead 200, { 'Content-Length': 0 }
    res.end()
