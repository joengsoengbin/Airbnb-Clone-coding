'use strict';

//<div class="same1 wrap">
//	<div class="w1">
//		<div class="same2">
//			<div class="img">
//				<img src="img/장원영.jpeg">	나중에 개인 이미지로
//			</div>
//			<div class="info">
//				<h3>장원영</h3>
//				<div>2022년 8월</div>
//			</div>
//		</div>
//	</div>
//	
//	<div class="w2">
//		<div class="hugi">초등학교 저학년인 아이들이 자연에서 노는 것을 좋아해서 선택한
//			숙소였습니다. 여러가지로 좋은점이 많았지만 어린 아이들을 돌보는 입장에서...</div>
//	</div>
//</div>

async function loadHandler2(event) {
	const root2 = document.getElementById('root2')
	const offset = root2.getAttribute('offset')
	
	const url = `${cpath}/product/view/coment/${product_idx}/${offset}`
	console.log(url)
	await fetch(url)
		.then(resp => resp.json())
		.then(json => {
			json.forEach(dto => root2.appendChild(convert(dto)))
			console.log(json)
		})
		
		
//	root2.setAttribute('offset', +offset + 6)
		
}

async function rightpHandler(event) {
	const root2 = document.getElementById('root2')
	root2.innerHTML = ''
	const offset1 = root2.getAttribute('offset')
	root2.setAttribute('offset', +offset1 + 6)
	const offset = root2.getAttribute('offset')
	
	console.log(offset)
	
	const url = `${cpath}/product/view/coment/${product_idx}/${offset}`
	console.log(url)
	await fetch(url)
		.then(resp => resp.json())
		.then(json => {
			json.forEach(dto => root2.appendChild(convert(dto)))
			console.log(json)
		})
		
	leftp.classList.remove('hidden')
	
	const resultElement = document.getElementById('pagef')
	const resultElement2 = document.getElementById('page')
	
	let number = resultElement.innerText
	number = parseInt(number) + 1

	let num2 = resultElement2.innerText
	num2 = parseInt(num2)
	console.log(num2)

	
	
	
	resultElement.innerText = number
	if(number == (num2)) {
		rightp.className = 'hidden'
	}
}


async function leftpHandler(event) {
	const root2 = document.getElementById('root2')
	root2.innerHTML = ''
	const offset1 = root2.getAttribute('offset')
	root2.setAttribute('offset', +offset1 - 6)
	const offset = root2.getAttribute('offset')
	
	const url = `${cpath}/product/view/coment/${product_idx}/${offset}`
	console.log(url)
	await fetch(url)
		.then(resp => resp.json())
		.then(json => {
			json.forEach(dto => root2.appendChild(convert(dto)))
			console.log(json)
		})
		
	rightp.classList.remove('hidden')
		
	if(offset == 0) {
		leftp.className = 'hidden'
	}
	
	
	const resultElement = document.getElementById('pagef')
	
	let number = resultElement.innerText
	number = parseInt(number) - 1
	
	resultElement.innerText = number
	
}

async function pageHandler(event) {
	const page = document.getElementById('page')
	
	const url = `${cpath}/product/view/coment/page/${product_idx}`
	console.log(url)
	await fetch(url)
		.then(resp => resp.text())
		.then(text => {
			page.innerHTML += `${text}`
		})
}




//async function rightpHandler(event) {
//	const root2 = document.getElementById('root2')
//	root2.innerHTML = ''
//	let offset = +root2.getAttribute('offset')
//	offset += 6
//	root2.setAttribute('offset', offset)
//	
//	const url = `${cpath}/product/view/coment/${product_idx}/${offset}`
//	console.log(url)
//	await fetch(url)
//		.then(resp => resp.json())
//		.then(json => {
//			json.forEach(dto => root2.appendChild(convert(dto)))
//			console.log(json)
//		})
//		
//}



function convert(dto) {
	
	const wrap = document.createElement('div')
	wrap.className = 'wrap'
		
		
	const w1 = document.createElement('div')
	w1.className = 'w1'
		const same2 = document.createElement('div')
		same2.className = 'same2'
		
			const img = document.createElement('div')
			img.className = 'img'
			img.innerHTML += `<img src="img/장원영.jpeg">`
	
			const info = document.createElement('div')
			info.className = 'info'
			info.innerHTML += `<h3>${dto.review_writer}</h3>`
			info.innerHTML += `<div>${dto.review_writedate}</div>`
			
			same2.appendChild(img)
			same2.appendChild(info)
			
			w1.appendChild(same2)
	
				
	const w2 = document.createElement('div')
	w2.className = 'w2'
		const hugi = document.createElement('div')
		hugi.className = 'hugi'
		hugi.innerHTML += `${dto.review_coment}`
			
			w2.appendChild(hugi)
			
	
	wrap.appendChild(w1)
	wrap.appendChild(w2)
			
	return wrap
}












