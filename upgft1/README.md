# Uppgift 1 - CI/CD

## Vad har jag gjort

Jag klonade repot från github och sen skapade jag min privata venv miljö där.
Jag installerade alla paket med pip install.
Körde automatiska tester med pytest först och alla tester blev godkända.
Sen startade jag api och körde testerna manuellt i swagger.

## Vad visade mina tester i swagger

Health fick status 200.
API fick 105 när jag skrev 100 + 5.
API fick 20 när jag skrev 100 / 5.
Testade också delat på 0 och fick error meddelande. HTTP 500.
