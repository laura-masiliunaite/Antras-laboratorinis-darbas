# 2 užduotis (Simplekso metodas)
1. Sumodeliuokite MS Excel‘yje arba suprogramuokite Matlab‘e paprasto (ne deformuoto) simplekso metodą.
	1. Pasirinkus metodo modeliavimą MS Excel‘yje, pradžioje reikia pasirinkti bazinį tašką X0 = (X01, X02) = ((Stud_nr mod 10)/2 + 1, (Stud_nr mod 10)/2 + 1) ir simplekso dydį reguliuojančio parametro reikšmę ![alfa](https://user-images.githubusercontent.com/47638904/56870571-386ef300-6a1a-11e9-858c-1c36bd690265.png) = 0,5. Sumodeliuoti simplekso metodo 5–7 žingsnių skaičiavimą. Rezultatas: gauta mažiausia funkcijos reikšmė bei taškas. 
	2. Pasirinkus programavimo darbą, reikia Matlab‘e sukurti funkciją, kuri rastų funkcijos minimumo tašką bei minimumą paprastu simplekso metodu norimu tikslumu. Norimas tikslumas, bazinis taškas, bei simplekso dydį reguliuojančio parametro reikšmė turi būti perduodama funkcijos argumentu.
		1. Atlikti kelis bandymus parinkus kitą bazinį tašką. Ar gaunami rezultatai skiriasi? Užfiksuokite gautus rezultatus.
		2. Atlikti eksperimentus keičiant norimą tikslumą (arba iteracijų skaičių) naudojant tą patį bazinį tašką. Ar gaunami rezultatai skiriasi? Užfiksuokite gautus rezultatus.
2. Raskite funkcijos minimumą bei minimumo tašką naudojant Matlab funkciją fminsearch, kurioje įgyvendintas deformuotojo simplekso metodas:
	1. Atlikite 1.2.1 ir 1.2.2 punktuose nurodytas užduotis naudojant funkciją fminsearch. Palyginkite juos su rezultatais, gautais paprasto simplekso metodu.
3. Matlab aplinkoje nubraižykite funkcijos grafiką, užrašykite ašių pavadinimus. 

## Atlikimas
- **Sudaromas pradinis simpleksas:(priklausomai nuo stud_nr)**
	
	stud_nr = 20170184;

	![formule](https://user-images.githubusercontent.com/47638904/56870668-6c96e380-6a1b-11e9-8c70-f7bac9d4a690.png)

	n = 2;

	![formule2](https://user-images.githubusercontent.com/47638904/56879548-e2be3900-6a61-11e9-8ba2-1210757171a5.png)

	![alfa](https://user-images.githubusercontent.com/47638904/56870571-386ef300-6a1a-11e9-858c-1c36bd690265.png) = 0,5

- **Visose simplekso viršųnėse apskaičiuojamos tikslo funkcijos reikšmės**

Naudojamas tikslo funkcija:
	![formule3](https://user-images.githubusercontent.com/47638904/56887955-908a1180-6a7b-11e9-82e3-f5f50d72174a.png)

- **Nauja simplekso viršūnė skaičiuojama taip**

    ![formule4](https://user-images.githubusercontent.com/47638904/56888731-646f9000-6a7d-11e9-857f-a36baf87b9e0.png)

- **2-3 žingsniai kartojami kol: arba simpleksas neuždengs minimumo taško, arba neprasidės ciklinis šokinėjimas tarp dviejų ar daugiau simpleksų**