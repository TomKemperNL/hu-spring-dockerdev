# Dev in een container

Klein demo'tje om spring-development in docker te laten zien.

Grove werking: 
* `docker compose up` creeert een container met maven. 
* De compose file mount de source dir.
* De container start op met de remote-debugger op poort 5005.
* De Spring-boot-dev-tools herstarten de webapp als er .class-files veranderen.

Gotchas:
* Je moet expliciet builden/rebuilden in IntelliJ (anders veranderen de .class-files niet)
* Ik vermoed dat nieuwe dependencies in de POM niet opgepikt worden (ongetest)
* Het opstarten is nog een beetje langzaam omdat de maven-deps niet gecached worden. Is een todotje