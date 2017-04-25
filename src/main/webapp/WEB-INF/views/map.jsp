<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Subway Map</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.0.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/subway-map.js"></script>
<style type="text/css">
body {
	font-family: Verdana;
	font-size: 8pt;
}
/* The main DIV for the map */
.subway-map {
	margin: 0;
	width: 500px;
	height: 410px;
	background-color: white;
}
/* Text labels */
.text {
	text-decoration: none;
	color: black;
}

#legend {
	/*float: left;*/
	float: right;
	width: 250px;
	height: 400px;
}

#legend div {
	height: 25px;
}

#legend span {
	margin: 5px 5px 5px 0;
}

.subway-map span {
	margin: 5px 5px 5px 0;
}

</style>
</head>
<body>

	<div class="subway-map" data-columns="28" data-rows="20"
		data-cellSize="${cellsize}" data-legendId="legend" data-textClass="text"
		data-gridNumbers="true" data-grid="false" data-lineWidth="4">

		<ul data-color="#4ca6ff" data-label="Line 2">
			<li data-coords="17,1" data-labelpos="W"><div id="heroiv_dnipra">Heroiv
					Dnipra</div></li>
			<li data-coords="17,2" data-labelpos="E"><div id="minska">Minska</div></li>
			<li data-coords="17,3" data-labelpos="W"><div id="obolon">Obolon</div></li>
			<li data-coords="17,4" data-labelpos="E"><div id="petrivka">Petrivka</div></li>

			<li data-coords="17,5" data-labelpos="W"><div
					id="tarasa_shevchenka">Tarasa Shevchenka</div></li>
			<li data-coords="17,6" data-labelpos="E"><div
					id="kontraktova_ploshcha">Kontraktova Ploshcha</div></li>
			<li data-coords="17,7" data-labelpos="W"><div
					id="poshtova_ploshcha">Poshtova Ploshcha</div></li>

			<li data-coords="17,8" data-marker="@interchange"><div
					id="maidan_nezalezhnosti">Maidan Nezalezhnosti</div></li>

			<li data-coords="17,11" data-marker="@interchange"
				data-markerinfo="h5"><div id="ploshcha_lva_tolstoho">Ploshcha
					Lva Tolstoho</div></li>

			<li data-coords="17,13" data-labelpos="W"><div id="olimpiiska">Olimpiiska</div></li>
			<li data-coords="17,14.5" data-labelpos="W"><div
					id="palats_ukrayina">Palats "Ukrayina"</div></li>

			<li data-coords="17,16.5" data-labelpos="W"><div id="lybidska">Lybidska</div></li>
			<li data-coords="17,18" data-labelpos="E"><div id="demiivska">Demiivska</div></li>

			<li data-coords="16,19" data-dir="S"><div id="holosiivska">Holosiivska</div></li>

			<li data-coords="13,19" data-labelpos="N"><div id="vasylkivska">Vasylkivska</div></li>

			<li data-coords="10,19"><div id="vystavkovyi_tsentr">Vystavkovyi
					Tsentr</div></li>

			<li data-coords="7.5,19" data-labelpos="N"><div id="ipodrom">Ipodrom</div></li>

			<li data-coords="5,19"><div id="teremky">Teremky</div></li>
		</ul>

		<ul data-color="#f36d6d" data-label="Line 1">
			<li data-coords="2,10"><div id="akademmistechko">Akademmistechko</div></li>
			<li data-coords="3.5,10" data-labelpos="N"><div id="zhytomyrska">Zhytomyrska</div></li>
			<li data-coords="5,10"><div id="sviatoshyn">Sviatoshyn</div></li>
			<li data-coords="6.5,10" data-labelpos="N"><div id="nyvky">Nyvky</div></li>
			<li data-coords="8,10"><div id="beresteiska">Beresteiska</div></li>
			<li data-coords="9.5,10" data-labelpos="N"><div id="shuliavska">Shuliavska</div></li>
			<li data-coords="11,10"><div id="politekhnichnyi_instytut">Politekhnichnyi
					Instytut</div></li>

			<li data-coords="13.5,10"><div id="universytet">Universytet</div></li>

			<li data-coords="14.55,9" data-dir="E" data-marker="@interchange"><div
					id="teatralna">Teatralna</div></li>

			<li data-coords="15.5,8"></li>
			<li data-coords="15.85,8" data-dir="N" data-marker="@interchange"
				data-labelpos="N" data-markerinfo="h5"><div id="khreshchatyk">Khreshchatyk</div></li>

			<li data-coords="18.5,8" data-labelpos="N"><div id="arsenalna">Arsenalna</div></li>

			<li data-coords="20,8"><div id="dnipro">Dnipro</div></li>

			<!-- Diagonal after Dnipro -->
			<li data-coords="21,7.5" data-marker="@station" data-labelpos="E"><div
					id="hidropark">Hidropark</div></li>
			<li data-coords="22,6.5" data-marker="@station" data-labelpos="E"><div
					id="livoberezhna">Livoberezhna</div></li>
			<li data-coords="22.9,5.5" data-marker="@station" data-labelpos="W"><div
					id="chernihivska">Chernihivska</div></li>
			<li data-coords="23.8,4.4" data-marker="@station" data-labelpos="E"><div
					id="darnytsia">Darnytsia</div></li>
			<li data-coords="25,3.5" data-labelpos="W"><div id="lisova">Lisova</div></li>
		</ul>

		<ul data-color="#65d765" data-label="Line 3">
			<li data-coords="9.6,5" data-labelpos="W"><div id="syrets">Syrets</div></li>
			<li data-coords="10.9,6" data-labelpos="W" data-marker="@station"><div
					id="dorohozhychi">Dorohozhychi</div></li>
			<li data-coords="11.8,7" data-labelpos="W" data-marker="@station"><div
					id="lukianivska">Lukianivska</div></li>
			<li data-coords="12.6,8" data-labelpos="W" data-marker="@station"><div
					id="lvivska_brama">Lvivska Brama</div></li>

			<li data-coords="13.4,9" data-labelpos="W" data-marker="@interchange"
				data-markerinfo="h5"><div id="zoloti_vorota">Zoloti
					Vorota</div></li>

			<li data-coords="15.6,11"></li>

			<li data-coords="18.1,11"></li>
			<li data-coords="18.15,11" data-labelpos="E"
				data-marker="@interchange"><div id="palats_sportu">Palats
					Sportu</div></li>

			<li data-coords="19.2,11.7" data-labelpos="E" data-marker="@station"><div
					id="klovska">Klovska</div></li>
			<li data-coords="19.8,12.4" data-labelpos="W" data-marker="@station"><div
					id="pecherska">Pecherska</div></li>
			<li data-coords="20.4,13" data-labelpos="E" data-marker="@station"><div
					id="druzhby narodiv">Druzhby Narodiv</div></li>
			<li data-coords="20.9,13.6" data-labelpos="W" data-marker="@station"><div
					id="vydubychi">Vydubychi</div></li>
			<li data-coords="21.4,14.2" data-labelpos="E" data-marker="@station"><div
					id="telychka">Telychka</div></li>
			<li data-coords="22,14.9" data-labelpos="W" data-marker="@station"><div
					id="slavutych">Slavutych</div></li>
			<li data-coords="22.6,15.5" data-labelpos="E" data-marker="@station"><div
					id="osokorky">Osokorky</div></li>
			<li data-coords="23.3,16.3" data-labelpos="W" data-marker="@station"><div
					id="pozniaky">Pozniaky</div></li>
			<li data-coords="24,17.1" data-labelpos="E" data-marker="@station"><div
					id="kharkivska">Kharkivska</div></li>
			<li data-coords="24.8,18" data-labelpos="W" data-marker="@station"><div
					id="vyrlytsia">Vyrlytsia</div></li>
			<li data-coords="25.5,18.8" data-labelpos="E" data-marker="@station"><div
					id="boryspilska">Boryspilska</div></li>
			<li data-coords="26.6,19.5" data-labelpos="W"><div
					id="chervony_khutir">Chervony Khutir</div></li>
		</ul>
	</div>

	<!-- <div id="legend"></div>
 -->

	<script type="text/javascript">
        $(".subway-map").subwayMap({ debug: true });
    </script>
</body>
</html>