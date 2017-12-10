if (!String.prototype.endsWith) {
  Object.defineProperty(String.prototype, 'endsWith', {
    value: function (searchString, position) {
      var subjectString = this.toString();
      if (position === undefined || position > subjectString.length) {
        position = subjectString.length;
      }
      position -= searchString.length;
      var lastIndex = subjectString.indexOf(searchString, position);
      return lastIndex !== -1 && lastIndex === position;
    }
  });
}

var Bob = function() {};

Bob.prototype.hey = function(input) {
  if ( input === input.toUpperCase() && (/[a-zA-Z]/.test(input))) {
    return 'Woah, chill out!';
  } else if ( input.endsWith('?') ) {
    return 'Sure.';
  } else if (input.trim() === '') {
    return 'Fine. Be that way!';
  } else {
    return 'Whatever.';
  }
};

module.exports = Bob;
