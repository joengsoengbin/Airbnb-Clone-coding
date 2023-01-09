'use strict';


function loadHandler(event) {
	const root = document.getElementById('root')
//	console.log(host_idx)
	const url = `${cpath}/member/host_profil/have/${host_idx}`
//	console.log(url)
	fetch(url)
	.then(resp => resp.json())
	.then(json => {
//		console.log(json)
		json.forEach(dto => root.appendChild(convert(dto)))
	})
}


function convert(dto) {
	
	const product = document.createElement('div')
	product.className = 'product'
	product.innerHTML += `<a href="${cpath}/product/view/${dto.product_idx}" target="_blank">
						 ${dto.product_title}
						 </a>`
	
	return product
}