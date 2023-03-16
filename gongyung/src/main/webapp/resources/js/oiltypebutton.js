function setOilType(oiltype) {
    let todayDiesel = document.getElementById("diesel");
    let todayGasoline = document.getElementById("gasoline");
    let gasRegion = document.getElementById("gasRegion");
    let priceNum = document.getElementById("priceNum");
    let storename = namebtn.innerText;

    var dieselControl = document.getElementById('btnDiesel');
    var gasolineControl = document.getElementById('btnGasoline');
    
    if (oiltype.equals("diesel")) {
        // map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);
        dieselControl.className = 'selected_btn';
        gasolineControl.className = 'btn';

        fetch("gonggongyung/gasstation/price?type=diesel&name=" + storename)
            .then((resp) => resp.json())
            .then((obj) => {
                gasRegion.innerText = obj.region;
                priceNum.innerText = obj.pricenum;
                todayDiesel.innerText = obj.dieselprice + "원";
                todayGasoline.innerText = obj.gasolineprice + "원";
            })
            .catch((e) => console.log(e))
        
        gasRegion.innerText = "~";
        priceNum.innerText = "~";
        todayDiesel.innerText = "~";
        todayGasoline.innerText = "~";

    } else {
        // map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);
        gasolineControl.className = 'selected_btn';
        dieselControl.className = 'btn';

        fetch("gonggongyung/gasstation/price?type=gasoline&name=" + storename)
            .then((resp) => resp.json())
            .then((obj) => {
                gasRegion.innerText = obj.region;
                priceNum.innerText = obj.pricenum;
                todayDiesel.innerText = obj.dieselprice + "원";
                todayGasoline.innerText = obj.gasolineprice + "원";
            })
            .catch((e) => console.log(e))
        
        gasRegion.innerText = "~";
        priceNum.innerText = "~";
        todayDiesel.innerText = "~";
        todayGasoline.innerText = "~";
        }
    }
<<<<<<< HEAD
   
=======
    
>>>>>>> branch 'master' of https://github.com/LEEGAB1/gongyungspring.git
    
    