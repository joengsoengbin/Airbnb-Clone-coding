'use strict';


async function cateHandler(event) {
	console.log('click')
   
   
	const cateList = document.querySelectorAll('div.category > img')
	if(event.type == 'click') {
		cateList.forEach(cate => cate.classList.remove('selected'))
		event.target.classList.add('selected')
	}
   
	const root = document.getElementById('root')
   
	root.innerHTML = ''
	root.setAttribute('offset', 0)
   
   
	
	const selected = document.querySelector('.selected')
   
	const product_category = event.type == 'click' ? event.target.getAttribute('id') : '멋진 수영장'
																// selected	실패	//'멋진 수영장'
																// 셀렉티드 된 class를 불러오기 (기본 멋진 수영장) 반드시 수정
																// 임시 해결 이미지 링크에 blank 추가
	if(event.type == 'click') {
		root.innerHTML = ''
		root.setAttribute('offset', 0)
	}
	console.log(product_category)
	const offset = root.getAttribute('offset')
	const url = `${cpath}/product/${product_category}/${offset}`
    console.log(url)
	await fetch(url)
	.then(resp => resp.json())
	.then(json => {
		json.forEach(dto => root.appendChild(convert(dto)))
	})
	
	
	root.setAttribute('offset' , +offset + 20)
}

function loadHandler(event) {
	const root = document.getElementById('root')
	root.setAttribute('offset', 0)
	root.innerHTML = ''
	cateHandler(event)
}




async function scrollHandler(event) {
	console.log('scroll')
	let target = document.documentElement
	const flag = target.scrollTop + target.clientHeight >= target.scrollHeight - 140
   
	if(flag){
		const root = document.getElementById('root')
		const product_category = document.querySelector('.ca.selected').id
		const offset = root.getAttribute('offset')
		const url = `${cpath}/product/${product_category}/${offset}`
       
		console.log(url)
         
		const result = await fetch(url)
		.then(resp => resp.json())
		.then(json => {
			json.forEach(dto => root.appendChild(convert(dto)))
			return json.length
		})
		console.log('result : ', result)
		if(result != 0) {
			root.setAttribute('offset', +offset + 20)
		}
		console.log('offset : ', root.getAttribute('offset'))
		
	}
//	if(!flag) {
//		root.setAttribute('offset', +offset)
//	}
}


function convert(dto) {
   
	const result1 = document.createElement('div')
	result1.className = 'menu'
   
	const result2 = document.createElement('div')
	result2.className = 'menu'
   
	const product_idx = dto.product_idx
	result1.setAttribute('product_idx' , dto.product_idx)
   
   console.log(`${dto.product_idx}`)
	
	result2.innerHTML += `<a id="a" href="${cpath}/product/view/${product_idx}"  target="_blank">
						<img class="menu" src="${cpath}/resources/img/${dto.product_img}/1.jpg" 
                  		alt width="300.8" height="285.75"></a>`
   
	const d1 = document.createElement('div')
	d1.className = 'hart'
	d1.innerHTML += `♥`
      
	const d2 = document.createElement('div')
	d2.className = 'itemName'
		const d21 = document.createElement('div')
		d21.innerHTML = `${dto.product_title}, ${dto.product_addrs}`
		const d22 = document.createElement('div')
		d22.innerHTML = `${dto.product_score / dto.product_reviewcnt}`.substr(0, 3) + '  ★'    // .toFiexd(1) 왜 안될까 *해결(스트링이다)
																			// .substr(0, 3) 이것도 안되노!!!
                                                         					//  안에서 함수 못쓰는 이유 ??? // 백틱이 최종으로 문자열 반환.substr() + '별' 
//      console.log(typeof(`${dto.product_score}`))   
	
	const heartButton = document.querySelector(".hart")			// 나중에 login이 엠프티면 실행하도록
	console.log(heartButton)
            
	d2.appendChild(d21)
	d2.appendChild(d22)
   
	const d3 = document.createElement('div')
	d3.className = 'sub'
	d3.innerHTML = `150km 거리`
   
	const d4 = document.createElement('div')
	d4.className = 'sub'
	d4.innerHTML = `8월 15일 ~ 21일`          // 나중에 시스템 데이트로 현재 날짜 기준 3달치를 넣을거임

	const d5 = document.createElement('div')
	d5.className = 'p1'
	d5.innerHTML = `\\${dto.product_price}원 / 박`
   
	const ul = document.createElement('ul')
	ul.innerHTML = `<br><br>`
      
      
	result2.appendChild(d1)
	result2.appendChild(d2)
	result2.appendChild(d3)
	result2.appendChild(d4)
	result2.appendChild(d5)
	result2.appendChild(ul)
   
	result1.appendChild(result2)
      
	return result1
}

const heartButton = document.querySelector(".hart")







