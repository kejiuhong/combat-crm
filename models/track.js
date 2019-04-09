const Base = require('./base.js');

class Track extends Base {
  constructor(props = 'note'){
    super(props);
  }
}

module.exports = new Track();