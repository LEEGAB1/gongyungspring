<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>test</title>
    <link rel="stylesheet" href="./mapstyle.css"/>

    <script src="./selectlocation.js"></script>
    <script src="./gps.js"></script>
    <script src="./chart.js"></script>
    <script src="./sky.js"></script>
    <script src="./sidebar.js"></script>
    <script src="./oiltypebutton.js"></script>
    <script src="./zoomcontrol.js"></script>
    <script src="./selectgudong.js"></script>
    <script src="./marker.js"></script>
    <script src="./sidebarmarker.js"></script>
</head>

<body>
    <div class="map_wrap, mapwrap">
        <div id="mapwrap">
            <!-- ì§ëê° íìë  div -->

            <div id="map" style="width:100%;height: 969px;"></div>

            <!-- ì§ë ìì íìë  ë§ì»¤ ì¹´íê³ ë¦¬ -->
            <div class="category">

                <ul>
                    <li id="coffeeMenu" onclick="changeMarker('coffee')">
                        <span class="ico_comm ico_coffee"></span>
                    </li>
                    <a class="storeMenus" onclick="asd()">
                        <li id="storeMenu" onclick="changeMarker('store')">
                            <span class="ico_comm ico_store"></span>
                            ì£¼ì ì
                        </li>
                    </a>
                    <li id="carparkMenu" onclick="changeMarker('carpark')">
                        <span class="ico_comm ico_carpark"></span>
                        ì£¼ì°¨ì¥
                    </li>

                </ul>


            </div>


            <!-- ì§ëíì ì»¨í¸ë¡¤ div ìëë¤ -->
            <div class="custom_typecontrol radius_border">
                <span id="btnRoadmap" class="selected_btn" onclick="setMapType('roadmap')">ì§ë</span>
                <span id="btnSkyview" class="btn" onclick="setMapType('skyview')">ì¤ì¹´ì´ë·°</span>
            </div>

            <!-- ì§ë íë, ì¶ì ì»¨í¸ë¡¤ div ìëë¤ -->
            <div class="custom_zoomcontrol radius_border">
                <span onclick="zoomIn()"><img
                        src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png" alt="íë"></span>
                <span onclick="zoomOut()"><img
                        src="https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png" alt="ì¶ì"></span>
            </div>

        </div>

    <!-- --------------------------------------ì¬ì´ëë°---------------- -->

    <div id="menu_wrap" class="bg_white">
        <div class="option">
            <div>

                <form onsubmit="clearSearchBox(searchPlaces()); return false;">
                    <!-- <button class="logoImage"></button> -->
                    <img src="logo.png" class="logo">
                    <!-- <h1 class="logoText">ê³µìì´</h1> -->
                    <button type="button" id="loginbtn" class="loginbtn">ë¡ê·¸ì¸</button>
                    <!-- <h2 class="logoText2" id="nick">(002)</h2> -->
                    <button onclick="" id="parkingbtn" class="parkingIcon"></button>
                    <button class="gasIcon"></button>
                </form>

                <!-- =============ê° êµ¬ ë³ë¡ ì°ê²°ìì==================================== -->
                <h3 class="busan">ë¶ì°ê´ì­ì</h3>
                <form id="region">
                    <select class="sigungu" id="guSelect" onchange="gudong()">
                        <option value="">ì/êµ°/êµ¬</option>
                        <option value="ê°ìêµ¬">ê°ìêµ¬</option>
                        <option value="ê¸ì êµ¬">ê¸ì êµ¬</option>
                        <option value="ê¸°ì¥êµ°">ê¸°ì¥êµ°</option>
                        <option value="ë¨êµ¬">ë¨êµ¬</option>
                        <option value="ëêµ¬">ëêµ¬</option>
                        <option value="ëëêµ¬">ëëêµ¬</option>
                        <option value="ë¶ì°ì§êµ¬">ë¶ì°ì§êµ¬</option>
                        <option value="ë¶êµ¬">ë¶êµ¬</option>
                        <option value="ì¬ìêµ¬">ì¬ìêµ¬</option>
                        <option value="ì¬íêµ¬">ì¬íêµ¬</option>
                        <option value="ìêµ¬">ìêµ¬</option>
                        <option value="ììêµ¬">ììêµ¬</option>
                        <option value="ì°ì êµ¬">ì°ì êµ¬</option>
                        <option value="ìëêµ¬">ìëêµ¬</option>
                        <option value="ì¤êµ¬">ì¤êµ¬</option>
                        <option value="í´ì´ëêµ¬">í´ì´ëêµ¬</option>
                    </select>
                    
                </form>
                <fom id = "zone">
                    <select id="dongSelect" class="dongs">
                        <option value="">ì/ë©´/ë</option>
                    </select>
                </fom>
                <button type="button" id="selectlocation" class="checkbtn">ì¡°í</button>
                
                

                <!-- <div>
                    <button class="makeMarker" onclick="selectOverlay('MARKER')"></button>
                </div> -->

                <input type="text" id="keyword" size="20" class="searchIcon">
                </form>



                <div>
                    <!-- í¼ìì± -->
                    <form id="mainform">
                        <div class="sidebar">
                            <button class="closeSidebar" onclick="closeSidebar()"></button>
                            <div class="sidebarHead" style="height: 12%;">
                                <p class="parkingname"> ì£¼ì°¨ì¥ì´ë¦ </p>
                                <p class="parkingaddr" type="text" id="namebtn" name="storename"></p>
                                <p class="mainstar"> íì  : âââââ </p>

                            </div>

                            <hr>
                            <div class="oil" >
                                <div class="oilType radius_border">
                                    <span id="btnDiesel" class="selected_btn" onclick="setOilType('diesel')">ê²½ì </span>
                                    <span id="btnGasoline" class="btn" onclick="setOilType('gasoline')">íë°ì </span>
                                </div>
                                    <p style="font-size: large;text-align : center; "> <span id="gasRegion">ëêµ¬</span>ìì <span id="priceNum">3</span>ë²ì§¸ë¡ ì¼ì§!</p>
                                    <p style="color: #160d69; font-weight: bold; text-align: center; font-size: 20px;"> ì¤ëì ì ê° ì ë³´ </p>
                                <p>
                                <div class="ulstyle">
                                    <div>
                                        <div class="gyeong"> 
                                            <p>ê²½ì </p> 
                                            <p class="lefttext" id="diesel">2000</p>
                                        </div>
                                        <div class="hwi">
                                            <p>íë°ì </p>
                                            <p class="righttext" id="gasoline">3500</p>
                                        </div>
                                        <div class="smalltext" style="color: #ff7200;text-align: left;">+102ì</div>
                                        <div class="smalltext2" style="color: #ff7200; text-align: right; ">+12ì</div>
                                    </div>
    

                                </div>
                                </dib>
                                <hr>
                                <div>
                                    <!-- <p class="upup">êµ¬ìì ëªë²ì§¸ë¡ ì¼ì§ ë¹êµ</p>
                            <p class="downdown"> 7ì¼ì¹ íê· ê°ê²©ê³¼ ì¤ëì ê°ê²© ë¹êµ</p> -->
                                    <canvas id="myChart" style="width: 200px;"></canvas>



                                </div>
                    </form>
                    <!-- ---------------------review--------------------------------------------- -->


                    <hr style="margin-top: 20px;">
                    <form id="reviewform">
                        <div class="review1">
                            <span style="margin-left: 20px; color: #160d69;">ë°©ë¬¸ì ë¦¬ë·°</span>
                            <button class="openBtn" onclick="joinCheck()" >âð»</button>
                            <div class="modal hidden">
                                <div class="bg"></div>
                                <div class="modalBox"
                                    style="display: flex;align-items:center;flex-direction: column;justify-content:space-around">
                                    <p id="reviewfont">ë¦¬ë·° ìì±íê¸°</p>
                                    <p>âºï¸ðð¥</p>
                                    <div class="star-rating">
                                        <input type="radio" id="5-stars" name="rating" value="5" />
                                        <label for="5-stars" class="star">&#9733;</label>
                                        <input type="radio" id="4-stars" name="rating" value="4" />
                                        <label for="4-stars" class="star">&#9733;</label>
                                        <input type="radio" id="3-stars" name="rating" value="3" />
                                        <label for="3-stars" class="star">&#9733;</label>
                                        <input type="radio" id="2-stars" name="rating" value="2" />
                                        <label for="2-stars" class="star">&#9733;</label>
                                        <input type="radio" id="1-star" name="rating" value="1" />
                                        <label for="1-star" class="star">&#9733;</label>
                                    </div>
                                    <textarea class="reviewInput" name="reviewInput"
                                        placeholder="ë°©ë¬¸í ê°ê²ë ì´ë ëì? ë¦¬ë·°ë¥¼ ë¨ê²¨ì£¼ì¸ì."></textarea>
                                    <div style="display: flex;">
                                        <button class="reviewBtn" id="reviewBtn" type="submit">ë±ë¡</button>
                                        <button class="closeBtn">ë«ê¸°</button>
                                    </div>
                                </div>
                            </div>
                    </form>
                    <hr style="border-top: 1px dotted #8c8b8b;">
                </div>
                <div class="review2">
                    <form id="reviewList">
                        <div>
                           <span class="userReview" id="userReview"></span>
                        </div>
                    </form>
                </div>


                <script>
                    let loginbtn= document.getElementById("loginbtn");
                    let nick = document.getElementById("nick");
                    let reviewBtn = document.getElementById("reviewBtn");
                    let grade = document.getElementsByName("rating");
                    let reviewInput = document.getElementsByName("reviewInput");
                    let storename = document.getElementById("namebtn");
                    let reviewusername = document.getElementById("reviewusername");
                    let openBtn = document.getElementsByClassName("openBtn");
                    // let userReview = document.getElementsByName("userReview");
                    let userReview = document.getElementById("userReview");

                    var nickname = sessionStorage.getItem("userName")

                    let reviewList = document.getElementById("reviewList");
                    let reviewform = document.getElementById("reviewform");
                    let mainform = document.getElementById("mainform");

                    const open = (e) => {
                        document.querySelector(".modal").classList.remove("hidden");
                    }

                    const close = () => {
                        document.querySelector(".modal").classList.add("hidden");
                    }

                    document.querySelector(".openBtn").addEventListener("click", open);
                    document.querySelector(".closeBtn").addEventListener("click", close);
                    document.querySelector(".bg").addEventListener("click", close);


                    window.addEventListener("load", function (e) {
                        console.log(nickname);
                        nick.innerHTML = nickname + "ë^^";

                    })

                    function win_open(page, name) {
                        // window.open("íìë  ë¬¸ì ê²½ë¡","íìë  ë¬¸ì ì´ë¦","ìµì(ìì¹, baríì, í¬ê¸° ë±)");
                        window.open(page, name, "width=300, height=400, left=0, top=0");
                    };

                    function joinCheck() {
                        const nickname = localStorage.getItem('nickname'); // ë¡ì»¬ ì¤í ë¦¬ì§ìì nickname ê°ì ê°ì ¸ì´
                        
                        if (nickname == "null") { // nicknameì´ undefined, null, ë¹ ë¬¸ìì´("")ì¸ ê²½ì° ëª¨ë ì²ë¦¬
                            console.log('nickname ê°ì´ ììµëë¤.');
                            window.location.href = './join.html'; // ë¡ê·¸ì¸ íì´ì§ë¡ ì´ë
                        }
                    }
                      
                    
                    function reviewlist() {
                        const reviewList = document.getElementById('reviewList');
                        
                        const listform = new FormData(reviewList);
                        listform.append("storename", storename.innerText);

                        fetch("http://localhost:8080/gonggongyung/gogo/review", {
                            method: "POST",
                            body: new URLSearchParams([...listform.entries()]), // post bodyíì
                            headers: {
                                "Content-Type": "application/x-www-form-urlencoded",
                            }
                        })

                        .then((resp) => {
                            console.log(resp.status);

                            return resp.json();
                            })
                            .then((obj) => {
                                console.log(obj);
                                userReview.innerText ="";
                                if (obj.length > 1) {
                                for (let i = 0; i < obj.length; i++) {
                                        // console.log(obj[i].nickname);
                                        // console.log(obj[i].userreview);
                                        userReview.innerHTML += obj[i].nickname + ":" + obj[i].userreview + "\n";
                                    }
                                } else {
                                    userReview.innerText ="ìì± ë ë¦¬ë·°ê° ììµëë¤.";
                                }
                            
   
   
                            }).catch((e) => { console.log(e) })
                        };
        





                    

                    reviewform.addEventListener("submit", function (e) {
                        e.preventDefault();

                    })

                    reviewBtn.addEventListener("click", (e) => {
                        console.log("ëë¦¼");

                        const rform = new FormData(reviewform);
                        rform.append("username", nickname);
                        rform.append("storename", storename.innerText);

                        fetch("http://localhost:8080/gonggongyung/gogo/review", {
                            method: "POST",
                            body: new URLSearchParams([...rform.entries()]), // post bodyíì
                            headers: {
                                "Content-Type": "application/x-www-form-urlencoded",
                            }
                        })

                        .then((resp) => {
                            console.log(resp.status);
                            return resp.json();
                            })
                            .then((obj) => {

                                
                                
                            }).catch((e) => { console.log(e) })
                        });
        
                        loginbtn.addEventListener("click", (e)=> {
                            window.location.href = "./join.html";
                        })


                </script>


            </div>

        </div>
        <div>
            <button onclick="getCurrentPos()" class="locatedStyle"></button>
        </div>

    </div>
    <hr>
    <ul id="placesList"></ul>
    <div id="pagination"></div>




    <!-- ì§ëë¥¼ íìí  div ìëë¤ -->
    <!-- <div id="map" style="width:100%; height:0;"></div> -->




    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d5dac7b6e7ff06b208b6b3a693668ba9&libraries=services,clusterer,drawing"></script>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>

        // íë ë¹ë© ì¤ì¬ ì§ë ì¤ì 

        var mapContainer = document.getElementById('map'), // ì§ëë¥¼ íìí  div 
            mapOption = {
                center: new kakao.maps.LatLng(35.15959895331954, 129.0601078522617), // ì§ëì ì¤ì¬ì¢í
                level: 2 // ì§ëì íë ë ë²¨
            };







        // ì¼ë° ì§ëì ì¤ì¹´ì´ë·°ë¡ ì§ë íìì ì íí  ì ìë ì§ëíì ì»¨í¸ë¡¤ì ìì±í©ëë¤
        var mapTypeControl = new kakao.maps.MapTypeControl();



        // íëë¹ë© ë° ì£¼ì°¨ì¥, ì£¼ì ì

        var imageSrc = 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FG3Iqf%2FbtrY7MDoFpt%2FYI9Vj8cKsPftBBdKOKvOQK%2Fimg.png', // ë§ì»¤ì´ë¯¸ì§ì ì£¼ììëë¤    
            imageSize = new kakao.maps.Size(64, 69), // ë§ì»¤ì´ë¯¸ì§ì í¬ê¸°ìëë¤
            imageOption = { offset: new kakao.maps.Point(27, 69) }; // ë§ì»¤ì´ë¯¸ì§ì ìµììëë¤. ë§ì»¤ì ì¢íì ì¼ì¹ìí¬ ì´ë¯¸ì§ ìììì ì¢íë¥¼ ì¤ì í©ëë¤
        // ë§ì»¤ì ì´ë¯¸ì§ì ë³´ë¥¼ ê°ì§ê³  ìë ë§ì»¤ì´ë¯¸ì§ë¥¼ ìì±í©ëë¤
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
            markerPosition = new kakao.maps.LatLng(35.15959895331954, 129.0601078522617); // ë§ì»¤ê° íìë  ìì¹ìëë¤



        // ë§ì»¤ë¥¼ ìì±í©ëë¤
        var marker = new kakao.maps.Marker({
            position: markerPosition,
            image: markerImage // ë§ì»¤ì´ë¯¸ì§ ì¤ì  setOilType
        });


        // ë§ì»¤ë¥¼ ìì±í©ëë¤
        var marker = new kakao.maps.Marker({
        });
        var map = new kakao.maps.Map(mapContainer, mapOption); // ì§ëë¥¼ ìì±í©ëë¤

        //-------------------------------make marker---------------------------------------------------------

        var options = { // Drawing Managerë¥¼ ìì±í  ë ì¬ì©í  ìµììëë¤
            map: map, // Drawing Managerë¡ ê·¸ë¦¬ê¸° ììë¥¼ ê·¸ë¦´ map ê°ì²´ìëë¤
            drawingMode: [ // drawing managerë¡ ì ê³µí  ê·¸ë¦¬ê¸° ìì ëª¨ëìëë¤
                kakao.maps.drawing.OverlayType.MARKER,
            ],
            // ì¬ì©ììê² ì ê³µí  ê·¸ë¦¬ê¸° ê°ì´ë í´íìëë¤
            // ì¬ì©ììê² ëíì ê·¸ë¦´ë, ëëê·¸í ë, ìì í ë ê°ì´ë í´íì íìíëë¡ ì¤ì í©ëë¤
            markerOptions: { // ë§ì»¤ ìµììëë¤ 
                draggable: true, // ë§ì»¤ë¥¼ ê·¸ë¦¬ê³  ëì ëëê·¸ ê°ë¥íê² í©ëë¤ 
                removable: true // ë§ì»¤ë¥¼ ì­ì  í  ì ìëë¡ x ë²í¼ì´ íìë©ëë¤  
            },
        };

        // ìì ìì±í ìµìì¼ë¡ Drawing Managerë¥¼ ìì±í©ëë¤
       // var manager = new kakao.maps.drawing.DrawingManager(options);







        //----------------------------------------------------------------------------------------------------------------------ê²ìí ë postë¡ ë´ê¸°




       





     
        //----------------------------------------------------------------------------------------------------------------------ê²ìí ë postë¡ ë´ê¸°


       
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        // let gasstation = [];
        // let parkinglot = [];
        // window.addEventListener("load", function (e) {


        //     fetch("http://localhost:8080/gonggongyung/gogo/gasstation/", {
        //         method: "GET",
        //         headers: {
        //             "Content-Type": "application/json"
        //         }
        //     })
        //         .then(response => response.json())
        //         .then(data => {
        //             for (let i = 0; i < data.length; i++) {
        //                 gasstation.push(data[i]);
        //             }

        //             console.log(data); // ë°ì´í° ì¶ë ¥
        //         });

        //     fetch("http://localhost:8080/gonggongyung/gogo/parkinglot/", {
        //         method: "GET",
        //         headers: {
        //             "Content-Type": "application/json"
        //         }
        //     })
        //         .then(response => response.json())
        //         .then(data => {

        //             for (let i = 0; i < data.length; i++) {
        //                 parkinglot.push(data[i]);
        //             }

        //             console.log(data); // ë°ì´í° ì¶ë ¥
        //         });
        // }); //ì¤í¬ë¦½í¸---------------------

        // í¸ìì  ë§ì»¤ê° íìë  ì¢í ë°°ì´ìëë¤



        

        // function asd() {
        //     let storeMenu = document.getElementsByClassName("storeMenus");

        //     fetch("http://localhost:8080/gonggongyung/gogo/gasstation/", { // ëë¥´ë©´ ê°ë¼
        //     }).then((response) => response.json())
        //         .then((data) => {
        //             for (let i = 0; i < data.length; i += 2) {
        //                 storePositions.push(new kakao.maps.LatLng(data[i], data[i + 1]));
        //                 console.log(storePositions);
        //             }
        //         })
        //     createStoreMarkers();
        // }

        // ì»¤í¼ì ë§ì»¤ê° íìë  ì¢í ë°°ì´ìëë¤
        var coffeePositions = [];

        var storePositions = [];


        // ì£¼ì°¨ì¥ ë§ì»¤ê° íìë  ì¢í ë°°ì´ìëë¤
        var carparkPositions = [
            new kakao.maps.LatLng(35.213725, 129.080538),
            new kakao.maps.LatLng(35.162218, 128.986650),
            new kakao.maps.LatLng(35.207310, 129.078527),
            new kakao.maps.LatLng(35.218925, 129.085617),
            new kakao.maps.LatLng(35.228187, 129.089228),
            new kakao.maps.LatLng(35.231583, 129.089107),
            new kakao.maps.LatLng(35.239165, 129.088416),
            new kakao.maps.LatLng(35.245568, 129.091272),
            new kakao.maps.LatLng(35.271787, 129.086944),
            new kakao.maps.LatLng(35.283211, 129.095100),
            new kakao.maps.LatLng(35.104432, 128.964301),
            new kakao.maps.LatLng(35.148665, 129.001262),
            new kakao.maps.LatLng(35.169164, 129.177395),
            new kakao.maps.LatLng(35.158553, 129.157447),
            new kakao.maps.LatLng(35.154860, 129.131361),
            new kakao.maps.LatLng(35.156248, 129.133637),
            new kakao.maps.LatLng(35.167034, 129.170428),
            new kakao.maps.LatLng(35.157361, 129.151082),
            new kakao.maps.LatLng(35.202879, 129.131858),
            new kakao.maps.LatLng(35.176877, 129.126678),
            new kakao.maps.LatLng(35.236981, 129.016439),
            new kakao.maps.LatLng(35.173494, 129.173747),
            new kakao.maps.LatLng(35.167026, 129.170446),
            new kakao.maps.LatLng(35.167749, 129.175966),
            new kakao.maps.LatLng(35.080702, 129.046095),
            new kakao.maps.LatLng(35.112920, 129.027845),
            new kakao.maps.LatLng(35.167635, 129.178492),
            new kakao.maps.LatLng(35.116586, 129.020095),
            new kakao.maps.LatLng(35.161695, 129.170300),
            new kakao.maps.LatLng(35.220937, 129.146448),
        ];

        var markerImageSrc = 'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FczwJDf%2Fbtr0aQQF3K0%2FAsphV4K9VzNi3sKyOLJXRK%2Fimg.png';  // ë§ì»¤ì´ë¯¸ì§ì ì£¼ììëë¤. ì¤íë¼ì´í¸ ì´ë¯¸ì§ ìëë¤
        coffeeMarkers = [], // ì»¤í¼ì ë§ì»¤ ê°ì²´ë¥¼ ê°ì§ê³  ìì ë°°ì´ìëë¤
            storeMarkers = [], // í¸ìì  ë§ì»¤ ê°ì²´ë¥¼ ê°ì§ê³  ìì ë°°ì´ìëë¤
            carparkMarkers = []; // ì£¼ì°¨ì¥ ë§ì»¤ ê°ì²´ë¥¼ ê°ì§ê³  ìì ë°°ì´ìëë¤


        createCoffeeMarkers(); // ì»¤í¼ì ë§ì»¤ë¥¼ ìì±íê³  ì»¤í¼ì ë§ì»¤ ë°°ì´ì ì¶ê°í©ëë¤
        createStoreMarkers(); // í¸ìì  ë§ì»¤ë¥¼ ìì±íê³  í¸ìì  ë§ì»¤ ë°°ì´ì ì¶ê°í©ëë¤
        createCarparkMarkers(); // ì£¼ì°¨ì¥ ë§ì»¤ë¥¼ ìì±íê³  ì£¼ì°¨ì¥ ë§ì»¤ ë°°ì´ì ì¶ê°í©ëë¤

        changeMarker(''); // ì§ëì ì»¤í¼ì ë§ì»¤ê° ë³´ì´ëë¡ ì¤ì í©ëë¤    


        // ë§ì»¤ì´ë¯¸ì§ì ì£¼ìì, í¬ê¸°, ìµìì¼ë¡ ë§ì»¤ ì´ë¯¸ì§ë¥¼ ìì±íì¬ ë¦¬í´íë í¨ììëë¤
     









        // -------------------------------------------------------------------------------------------------------------------------------------------------



        
        // -------------------------------------------------------------------------------------------------------------------------------------------------




        // function relayout() {

        //     // ì§ëë¥¼ íìíë div í¬ê¸°ë¥¼ ë³ê²½í ì´í ì§ëê° ì ìì ì¼ë¡ íì¶ëì§ ìì ìë ììµëë¤
        //     // í¬ê¸°ë¥¼ ë³ê²½í ì´íìë ë°ëì  map.relayout í¨ìë¥¼ í¸ì¶í´ì¼ í©ëë¤ 
        //     // windowì resize ì´ë²¤í¸ì ìí í¬ê¸°ë³ê²½ì map.relayout í¨ìê° ìëì¼ë¡ í¸ì¶ë©ëë¤
        //     map.relayout();
        // }





        // ë§ì»¤ë¥¼ í´ë¦­íì ë í´ë¹ ì¥ìì ìì¸ì ë³´ë¥¼ ë³´ì¬ì¤ ì»¤ì¤íì¤ë²ë ì´ìëë¤
        var placeOverlay = new kakao.maps.CustomOverlay({ zIndex: 1 }),
            contentNode = document.createElement('div'), // ì»¤ì¤í ì¤ë²ë ì´ì ì»¨íì¸  ìë¦¬ë¨¼í¸ ìëë¤ 
            markers = [], // ë§ì»¤ë¥¼ ë´ì ë°°ì´ìëë¤
            currCategory = ''; // íì¬ ì íë ì¹´íê³ ë¦¬ë¥¼ ê°ì§ê³  ìì ë³ììëë¤
        var ps = new kakao.maps.services.Places(map);

        // ì§ëì idle ì´ë²¤í¸ë¥¼ ë±ë¡í©ëë¤
        kakao.maps.event.addListener(map, 'idle', searchPlaces);

        // ì»¤ì¤í ì¤ë²ë ì´ì ì»¨íì¸  ë¸ëì css classë¥¼ ì¶ê°í©ëë¤ 
        contentNode.className = 'placeinfo_wrap';

        // ì»¤ì¤í ì¤ë²ë ì´ì ì»¨íì¸  ë¸ëì mousedown, touchstart ì´ë²¤í¸ê° ë°ìíìë
        // ì§ë ê°ì²´ì ì´ë²¤í¸ê° ì ë¬ëì§ ìëë¡ ì´ë²¤í¸ í¸ë¤ë¬ë¡ kakao.maps.event.preventMap ë©ìëë¥¼ ë±ë¡í©ëë¤ 
        addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
        addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);

        // ì»¤ì¤í ì¤ë²ë ì´ ì»¨íì¸ ë¥¼ ì¤ì í©ëë¤
        placeOverlay.setContent(contentNode);

        // ê° ì¹´íê³ ë¦¬ì í´ë¦­ ì´ë²¤í¸ë¥¼ ë±ë¡í©ëë¤
        addCategoryClickEvent();

        // ìë¦¬ë¨¼í¸ì ì´ë²¤í¸ í¸ë¤ë¬ë¥¼ ë±ë¡íë í¨ììëë¤
        function addEventHandle(target, type, callback) {
            if (target.addEventListener) {
                target.addEventListener(type, callback);
            } else {
                target.attachEvent('on' + type, callback);
            }
        }

        // ì¹´íê³ ë¦¬ ê²ìì ìì²­íë í¨ììëë¤
        // function searchPlaces() {
        //     if (!currCategory) {
        //         return;
        //     }

        //     // ì»¤ì¤í ì¤ë²ë ì´ë¥¼ ì¨ê¹ëë¤ 
        //     placeOverlay.setMap(null);

        //     // ì§ëì íìëê³  ìë ë§ì»¤ë¥¼ ì ê±°í©ëë¤
        //     removeMarker();

        //     ps.categorySearch(currCategory, placesSearchCB, { useMapBounds: true });
        // }

        // ì¥ìê²ìì´ ìë£ëì ë í¸ì¶ëë ì½ë°±í¨ì ìëë¤
        // function placesSearchCB(data, status, pagination) {
        //     if (status === kakao.maps.services.Status.OK) {

        //         // ì ìì ì¼ë¡ ê²ìì´ ìë£ëì¼ë©´ ì§ëì ë§ì»¤ë¥¼ íì¶í©ëë¤
        //         displayPlaces(data);
        //     } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
        //         // ê²ìê²°ê³¼ê° ìëê²½ì° í´ì¼í  ì²ë¦¬ê° ìë¤ë©´ ì´ê³³ì ìì±í´ ì£¼ì¸ì

        //     } else if (status === kakao.maps.services.Status.ERROR) {
        //         // ìë¬ë¡ ì¸í´ ê²ìê²°ê³¼ê° ëì¤ì§ ìì ê²½ì° í´ì¼í  ì²ë¦¬ê° ìë¤ë©´ ì´ê³³ì ìì±í´ ì£¼ì¸ì

        //     }
        // }

        // ì§ëì ë§ì»¤ë¥¼ íì¶íë í¨ììëë¤
        // function displayPlaces(places) {

        //     // ëªë²ì§¸ ì¹´íê³ ë¦¬ê° ì íëì´ ìëì§ ì»ì´ìµëë¤
        //     // ì´ ììë ì¤íë¼ì´í¸ ì´ë¯¸ì§ììì ìì¹ë¥¼ ê³ì°íëë° ì¬ì©ë©ëë¤
        //     var order = document.getElementById(currCategory).getAttribute('data-order');



        //     for (var i = 0; i < places.length; i++) {

        //         // ë§ì»¤ë¥¼ ìì±íê³  ì§ëì íìí©ëë¤
        //         var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);

        //         // ë§ì»¤ì ê²ìê²°ê³¼ í­ëª©ì í´ë¦­ íì ë
        //         // ì¥ìì ë³´ë¥¼ íì¶íëë¡ í´ë¦­ ì´ë²¤í¸ë¥¼ ë±ë¡í©ëë¤
        //         (function (marker, place) {
        //             kakao.maps.event.addListener(marker, 'click', function () {
        //                 displayPlaceInfo(place);
        //             });
        //         })(marker, places[i]);
        //     }
        // }

        // // ë§ì»¤ë¥¼ ìì±íê³  ì§ë ìì ë§ì»¤ë¥¼ íìíë í¨ììëë¤
        // function addMarker(position, order) {
        //     var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // ë§ì»¤ ì´ë¯¸ì§ url, ì¤íë¼ì´í¸ ì´ë¯¸ì§ë¥¼ ìëë¤
        //         imageSize = new kakao.maps.Size(27, 28),  // ë§ì»¤ ì´ë¯¸ì§ì í¬ê¸°
        //         imgOptions = {
        //             spriteSize: new kakao.maps.Size(72, 208), // ì¤íë¼ì´í¸ ì´ë¯¸ì§ì í¬ê¸°
        //             spriteOrigin: new kakao.maps.Point(46, (order * 36)), // ì¤íë¼ì´í¸ ì´ë¯¸ì§ ì¤ ì¬ì©í  ìì­ì ì¢ìë¨ ì¢í
        //             offset: new kakao.maps.Point(11, 28) // ë§ì»¤ ì¢íì ì¼ì¹ìí¬ ì´ë¯¸ì§ ë´ììì ì¢í
        //         },
        //         markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
        //         marker = new kakao.maps.Marker({
        //             position: position, // ë§ì»¤ì ìì¹
        //             image: markerImage
        //         });

        //     marker.setMap(map); // ì§ë ìì ë§ì»¤ë¥¼ íì¶í©ëë¤
        //     markers.push(marker);  // ë°°ì´ì ìì±ë ë§ì»¤ë¥¼ ì¶ê°í©ëë¤

        //     return marker;
        // }

        // ì§ë ìì íìëê³  ìë ë§ì»¤ë¥¼ ëª¨ë ì ê±°í©ëë¤





        //----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



 //ì­ì  ìì 
        // í´ë¦­í ë§ì»¤ì ëí ì¥ì ìì¸ì ë³´ë¥¼ ì»¤ì¤í ì¤ë²ë ì´ë¡ íìíë í¨ììëë¤
        // function displayPlaceInfo(place) {
        //     var content = '<div class="placeinfo">' +
        //         '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';

        //     if (place.road_address_name) {
        //         content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
        //             '  <span class="jibun" title="' + place.address_name + '">(ì§ë² : ' + place.address_name + ')</span>';
        //     } else {
        //         content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
        //     }

        //     content += '    <span class="tel">' + place.phone + '</span>' +
        //         '</div>' +
        //         '<div class="after"></div>';

        //     contentNode.innerHTML = content;
        //     placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
        //     placeOverlay.setMap(map);
        // }


        // ê° ì¹´íê³ ë¦¬ì í´ë¦­ ì´ë²¤í¸ë¥¼ ë±ë¡í©ëë¤
        // function addCategoryClickEvent() {
        //     var category = document.getElementById('category'),
        //         children = category.children;

        //     for (var i = 0; i < children.length; i++) {
        //         children[i].onclick = onClickCategory;
        //     }
        // }

        // // ì¹´íê³ ë¦¬ë¥¼ í´ë¦­íì ë í¸ì¶ëë í¨ììëë¤
        // function onClickCategory() {
        //     var id = this.id,
        //         className = this.className;

        //     placeOverlay.setMap(null);

        //     if (className === 'on') {
        //         currCategory = '';
        //         changeCategoryClass();
        //         removeMarker();
        //     } else {
        //         currCategory = id;
        //         changeCategoryClass(this);
        //         searchPlaces();
        //     }
        // }

        // í´ë¦­ë ì¹´íê³ ë¦¬ìë§ í´ë¦­ë ì¤íì¼ì ì ì©íë í¨ììëë¤
        // function changeCategoryClass(el) {
        //     var category = document.getElementById('category'),
        //         children = category.children,
        //         i;

        //     for (i = 0; i < children.length; i++) {
        //         children[i].className = '';
        //     }

        //     if (el) {
        //         el.className = 'on';
        //     }
        // }





        // -------------------í¤ìë ê²ì-----------------------------------------------------------



        // // ë§ì»¤ë¥¼ ë´ì ë°°ì´ìëë¤
        // var markers = [];

        // var mapContainer = document.getElementById('map'), // ì§ëë¥¼ íìí  div 
        //     mapOption = {
        //         level: 2 // ì§ëì íë ë ë²¨
        //     };


        // // ì¥ì ê²ì ê°ì²´ë¥¼ ìì±í©ëë¤
        // var ps = new kakao.maps.services.Places();
        // // ê²ì ê²°ê³¼ ëª©ë¡ì´ë ë§ì»¤ë¥¼ í´ë¦­íì ë ì¥ìëªì íì¶í  ì¸í¬ìëì°ë¥¼ ìì±í©ëë¤
        // var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

        // // í¤ìëë¡ ì¥ìë¥¼ ê²ìí©ëë¤
        // searchPlaces();

        // // í¤ìë ê²ìì ìì²­íë í¨ììëë¤
        // function searchPlaces() {

        //     var keyword = document.getElementById('keyword').value;

        //     if (!keyword.replace(/^\s+|\s+$/g, '')) {
        //         // alert('í¤ìëë¥¼ ìë ¥í´ì£¼ì¸ì!');
        //         return false;
        //     } else {

        //     }

        //     // ì¥ìê²ì ê°ì²´ë¥¼ íµí´ í¤ìëë¡ ì¥ìê²ìì ìì²­í©ëë¤
        //     ps.keywordSearch(keyword, placesSearchCB);

        // }

        // // ì¥ìê²ìì´ ìë£ëì ë í¸ì¶ëë ì½ë°±í¨ì ìëë¤
        // function placesSearchCB(data, status, pagination) {
        //     if (status === kakao.maps.services.Status.OK) {

        //         // ì ìì ì¼ë¡ ê²ìì´ ìë£ëì¼ë©´
        //         // ê²ì ëª©ë¡ê³¼ ë§ì»¤ë¥¼ íì¶í©ëë¤
        //         displayPlaces(data);

        //         // íì´ì§ ë²í¸ë¥¼ íì¶í©ëë¤
        //         displayPagination(pagination);

        //     } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        //         // alert('ê²ì ê²°ê³¼ê° ì¡´ì¬íì§ ììµëë¤.');
        //         return;

        //     } else if (status === kakao.maps.services.Status.ERROR) {

        //         //alert('ê²ì ê²°ê³¼ ì¤ ì¤ë¥ê° ë°ìíìµëë¤.');
        //         return;

        //     }
        // }






        //----------------------------------------------------------- --------------------


        // ê²ì ê²°ê³¼ ëª©ë¡ê³¼ ë§ì»¤ë¥¼ íì¶íë í¨ììëë¤
        // function displayPlaces(places) {



        //     // ê²ì ê²°ê³¼ - =======================
        //     var listEl = document.getElementById('placesList'),
        //         menuEl = document.getElementById('menu_wrap'),
        //         fragment = document.createDocumentFragment(),
        //         bounds = new kakao.maps.LatLngBounds(),
        //         listStr = '';

        //     // ê²ì ê²°ê³¼ ëª©ë¡ì ì¶ê°ë í­ëª©ë¤ì ì ê±°í©ëë¤
        //     removeAllChildNods(listEl);

        //     // ì§ëì íìëê³  ìë ë§ì»¤ë¥¼ ì ê±°í©ëë¤
        //     removeMarker();

        //     for (var i = 0; i < places.length; i++) {

        //         // ë§ì»¤ë¥¼ ìì±íê³  ì§ëì íìí©ëë¤
        //         var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
        //             marker = addMarker(placePosition, i),
        //             itemEl = getListItem(i, places[i]); // ê²ì ê²°ê³¼ í­ëª© Elementë¥¼ ìì±í©ëë¤

        //         // ê²ìë ì¥ì ìì¹ë¥¼ ê¸°ì¤ì¼ë¡ ì§ë ë²ìë¥¼ ì¬ì¤ì íê¸°ìí´
        //         // LatLngBounds ê°ì²´ì ì¢íë¥¼ ì¶ê°í©ëë¤
        //         bounds.extend(placePosition);


        //         fragment.appendChild(itemEl);
        //     }

        //     // ê²ìê²°ê³¼ í­ëª©ë¤ì ê²ìê²°ê³¼ ëª©ë¡ Elementì ì¶ê°í©ëë¤
        //     listEl.appendChild(fragment);
        //     menuEl.scrollTop = 0;

        //     // ê²ìë ì¥ì ìì¹ë¥¼ ê¸°ì¤ì¼ë¡ ì§ë ë²ìë¥¼ ì¬ì¤ì í©ëë¤
        //     map.setBounds(bounds);

        // }





            //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        // ë§ì»¤ë¥¼ ìì±íê³  ì§ë ìì ë§ì»¤ë¥¼ íìíë í¨ììëë¤
        // function addMarker(position, idx, title) {
        //     var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // ë§ì»¤ ì´ë¯¸ì§ url, ì¤íë¼ì´í¸ ì´ë¯¸ì§ë¥¼ ìëë¤
        //         imageSize = new kakao.maps.Size(36, 37),  // ë§ì»¤ ì´ë¯¸ì§ì í¬ê¸°
        //         imgOptions = {
        //             spriteSize: new kakao.maps.Size(36, 691), // ì¤íë¼ì´í¸ ì´ë¯¸ì§ì í¬ê¸°
        //             spriteOrigin: new kakao.maps.Point(0, (idx * 46) + 10), // ì¤íë¼ì´í¸ ì´ë¯¸ì§ ì¤ ì¬ì©í  ìì­ì ì¢ìë¨ ì¢í
        //             offset: new kakao.maps.Point(13, 37) // ë§ì»¤ ì¢íì ì¼ì¹ìí¬ ì´ë¯¸ì§ ë´ììì ì¢í
        //         },
        //         markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
        //         marker = new kakao.maps.Marker({
        //             position: position, // ë§ì»¤ì ìì¹
        //             image: markerImage
        //         });

        //     marker.setMap(map); // ì§ë ìì ë§ì»¤ë¥¼ íì¶í©ëë¤
        //     markers.push(marker);  // ë°°ì´ì ìì±ë ë§ì»¤ë¥¼ ì¶ê°í©ëë¤

        //     return marker;
        // }

        // ì§ë ìì íìëê³  ìë ë§ì»¤ë¥¼ ëª¨ë ì ê±°í©ëë¤
        // function removeMarker() {
        //     for (var i = 0; i < markers.length; i++) {
        //         markers[i].setMap(null);
        //     }
        //     markers = [];
        // }

        // // ê²ìê²°ê³¼ ëª©ë¡ íë¨ì íì´ì§ë²í¸ë¥¼ íìë í¨ììëë¤
        // function displayPagination(pagination) {
        //     var paginationEl = document.getElementById('pagination'),
        //         fragment = document.createDocumentFragment(),
        //         i;

        //     // ê¸°ì¡´ì ì¶ê°ë íì´ì§ë²í¸ë¥¼ ì­ì í©ëë¤
        //     while (paginationEl.hasChildNodes()) {
        //         paginationEl.removeChild(paginationEl.lastChild);
        //     }

        //     for (i = 1; i <= pagination.last; i++) {
        //         var el = document.createElement('a');
        //         el.href = "#";
        //         el.innerHTML = i;

        //         if (i === pagination.current) {
        //             el.className = 'on';
        //         } else {
        //             el.onclick = (function (i) {
        //                 return function () {
        //                     pagination.gotoPage(i);
        //                 }
        //             })(i);
        //         }

        //         fragment.appendChild(el);
        //     }
        //     paginationEl.appendChild(fragment);
        // }
        

        //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        // ê²ìê²°ê³¼ ëª©ë¡ ëë ë§ì»¤ë¥¼ í´ë¦­íì ë í¸ì¶ëë í¨ììëë¤
        // ì¸í¬ìëì°ì ì¥ìëªì íìí©ëë¤
        // function displayInfowindow(marker, title) {
        //     var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

        //     infowindow.setContent(content);
        //     infowindow.open(map, marker);
        // }




        // ê²ìê²°ê³¼ ëª©ë¡ì ìì Elementë¥¼ ì ê±°íë í¨ììëë¤
        function removeAllChildNods(el) {
            while (el.hasChildNodes()) {
                el.removeChild(el.lastChild);
            }
        }





        // ì§ëíì ì»¨í¸ë¡¤ì ì§ë ëë ì¤ì¹´ì´ë·° ë²í¼ì í´ë¦­íë©´ í¸ì¶ëì´ ì§ëíìì ë°ê¾¸ë í¨ììëë¤
        // function setMapType(maptype) {
        //     var roadmapControl = document.getElementById('btnRoadmap');
        //     var skyviewControl = document.getElementById('btnSkyview');
        //     if (maptype === 'roadmap') {
        //         map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);
        //         roadmapControl.className = 'selected_btn';
        //         skyviewControl.className = 'btn';
        //     } else {
        //         map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);
        //         skyviewControl.className = 'selected_btn';
        //         roadmapControl.className = 'btn';
        //     }
        // }

        // // ì§ë íë, ì¶ì ì»¨í¸ë¡¤ìì íë ë²í¼ì ëë¥´ë©´ í¸ì¶ëì´ ì§ëë¥¼ íëíë í¨ììëë¤
        // function zoomIn() {
        //     map.setLevel(map.getLevel() - 1);
        // }

        // // ì§ë íë, ì¶ì ì»¨í¸ë¡¤ìì ì¶ì ë²í¼ì ëë¥´ë©´ í¸ì¶ëì´ ì§ëë¥¼ íëíë í¨ììëë¤
        // function zoomOut() {
        //     map.setLevel(map.getLevel() + 1);
        // }




    
        




      
        




    </script>
</body>

</html>