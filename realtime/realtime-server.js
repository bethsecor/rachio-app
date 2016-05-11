var io = require('socket.io').listen(process.env.PORT || 5001),
    redis = require('redis').createClient();

redis.subscribe('device-change');

io.on('connection', function(socket){
  redis.on('message', function(channel, message){
    socket.emit('device-change', JSON.parse(message));
  });
});
