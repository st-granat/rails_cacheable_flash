rails_cacheable_flash
===============

Кэшируемый флеш. Позволяет отрабатывать флеш-нотисы на кэшируемых страницах.

Может использоваться совместно со Spree.

Подключение:

1. В нужном контроллере подключаете джем (фактически там, где потенциально могут появляться флеш-нотисы)

include RailsCacheableFlash

2. В йаваскрипте подключаете js-библиотеку джема и даете указания выводить флеш нотисы перед определенным контейнером

//= require cacheable_flah

...

$(document).ready(function() {

  ...

  Flash.transferFromCookies();

  Flash.writeDataFrom('notice', '#container980');

  Flash.writeDataFrom('error', '#container980');

});
