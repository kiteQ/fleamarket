package de.nextcommerce.web

import de.nextcommerce.core.Product
import de.nextcommerce.core.Category

/**
 * ProductController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
class ProductShopController {

	static scaffold = true
	//	def index = { }

	def categories(Long id){
		println params
		def productInstance
		def category = Category.get(id)
		def example = new Product(categories: category)
		
		
		productInstance = Product.findAll(example)

		println "Produkte ${productInstance.name}"

		if (!productInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'product.label', default: 'Product'),
				id
			])
			redirect(action: "list")
			return
		}

			render(view: "list", model: [productInstanceList: productInstance, productInstanceTotal: Product.count()])
	}
	
	
}
