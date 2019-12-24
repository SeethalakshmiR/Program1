module My_module
$item=[]
class Store
	 item1={name:"tomato",quantity:"30kg",price:"300"}
	 item1.each {|key,value| puts "#{key} : #{value}"}
	 
	 item2={name:"onion",quantity:"20kg",price:"1000"}
	 item2.each {|key,value| puts "#{key} :#{value}"}
	  $item.push(item1,item2)
	  puts "#{$item}"
	 	 def add 
		  	   puts "Which item you want to add"
		       itemname=gets.chomp
			   puts "Quantity of an item"
			   quantity=gets.chomp
			   puts "Price of an Item"
			   price=gets.chomp
		       $item.push(name:"#{itemname}",quantity:"#{quantity}",price:"#{price}")
		       puts "#{$item}"
		    end
		  def list
		       $item.each {|value| p value}
		     #  puts "#{value}"
		     #  end
		    end
		  def delete
		    	puts "which item you want to delete"
		    	delete_item=gets.chomp
		    	$item.delete_if{|h| h[:name]=="#{delete_item}"}
		    	puts "#{$item}"
		    end
		  def purchase
		        puts "Which item you want to purchase"
		    	purchase_item=gets.chomp
		    	puts "Quantity of an item u want to buy "
		    	quantity_item=gets.to_i
		    	b=$item.find {|x| x[:name]=="#{purchase_item}"}
		    	puts "#{b}"
		    	 t_quantity=b[:quantity].to_i
		    	 t_price=b[:price].to_i
		    	 p=t_price/t_quantity
		    	puts "The price of on #{purchase_item} for 1 kg #{p}"
		    	purchased_itemprice="#{quantity_item*p}".to_i
		    	puts "The price of purchased  #{purchase_item} is #{purchased_itemprice} "
		    	 remaining_item= "#{t_quantity- quantity_item}"
		    	puts"The remaining #{purchase_item} in a shop is  #{remaining_item} kg"
		    	 remaining_price="#{t_price-purchased_itemprice}"
		    	puts "The price of an remaining #{purchase_item} in a shop is #{remaining_price}"
		    end
		  def show
		    	puts"Enter your choice 1.Add 2.List of items 3.delete 4.purchase an item"
		        choice=gets.to_i
		        case choice
		        when 1
		        	add
		    		show
		    	when 2
		    		list
		    		show
		    	when 3
		    		delete
		    		show
		    	when 4
		    		
		    		show
		    	else 
		    		puts" wrong choice"
		    	end
		    end
	end
store=My_module::Store.new
store.show
end


	
	    





 