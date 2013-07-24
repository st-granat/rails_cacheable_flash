var Flash = new Object();

Flash.data = {};

function encode_utf8(s) {
  return unescape( encodeURIComponent( s ) );
}

function decode_utf8(s) {
  return decodeURIComponent(escape(s));
}

Flash.transferFromCookies = function() {
  var data = JSON.parse(unescape(Cookie.get("flash")));
  if(!data) data = {};
  Flash.data = data;
  Cookie.erase("flash");
};

Flash.writeDataTo = function(name, element) {
  element = $(element);
  var content = "";
  if(Flash.data[name]) {
    content = Flash.data[name].toString().replace(/\+/g, ' ');
  }
  element.html(unescape(content));
};

Flash.writeDataFrom = function(name, before_selector) {
  var content = "";
  if(Flash.data[name]) {
    content = Flash.data[name].toString().replace(/\+/g, ' ');
  }
  if (content != ""){
    $('<div id="flash" class="flash flash-'+name+'"><div class="closer" id="closer">x</div><div class="message">'+decode_utf8(unescape(content))+'</div></div>').insertBefore(before_selector);
  }
};
