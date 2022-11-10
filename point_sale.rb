class Sell
    attr_accessor :quantity, :type, :import, :name, :price

    def initialize(hash)
        self.quantity = hash[:quantity]
        self.type = hash[:type]
        self.import = hash[:import]
        self.name = hash[:name]
        self.price = hash[:price]
    end

    def self.basic_tax(price)
        price = price * 1.1
    end

    def self.import_tax(price)
        price = price * 1.15
    end

    def self.total_sale(prices)
        price = prices.sum.floor(2)
    end

    def self.sales_taxes(total,total_sales)
        total = total - total_sales
    end

    def self.quantity(price, quantity)
        price = price * quantity
    end   
end


# items = [
#     {:quantity => 2, :type => '', :name=> 'book', :price => 12.49},
#     {:quantity => 1, :type => 'basic', :name=> 'music cd', :price => 14.99},
#     {:quantity => 1, :type => 'basic', :name=> 'chocolate', :price => 0.85},
#    ]


items = [
    {:quantity => 1, :type => 'imported', :name=> 'imported bottle of perfume', :price => 27.99},
    {:quantity => 1, :type => 'basic', :name=> 'bottle of perfume', :price => 18.99},
    {:quantity => 1, :type => '', :name=> 'packet of headache pills', :price => 9.75},
    {:quantity => 3, :type => 'imported', :name=> 'imported boxes of chocolates', :price => 11.25},
]


list = []
prices = []
prices_with_tax = []

items.each do |item|
    buyed = Sell.new(item)
    list << buyed
end

puts 'input:'
list.each do |item|
    puts "#{item.quantity} #{item.name} at #{item.price}"
end


list.each do |item|
    price = item.price

    if item.quantity > 1 
        price = Sell.quantity(price,item.quantity)
    end
    prices << price.floor(2)

    if item.type == 'basic'
        price = Sell.basic_tax(price)
    end
    if item.type == 'imported'
        price = Sell.import_tax(price)
    end

    item.price = price
    prices_with_tax << price.floor(2)

end

total_sales =Sell.total_sale(prices)
total = Sell.total_sale(prices_with_tax)
sales_taxes = Sell.sales_taxes(total, total_sales)

puts "\noutput:"
list.each do |item|
    puts "#{item.quantity} #{item.name}: #{item.price.floor(2)} "
end

puts "Sales Taxes: #{sales_taxes.floor(2)}"
puts "Total: #{total.floor(2)}"
