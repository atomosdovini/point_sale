requirements: ruby 2.7.6

# Clonethis repo
$ git clone git@github.com:atomosdovini/point_sale.git

#if need install minitest 
gem install minitest

# On terminal, run:
$ ruby point_sale.rb

-Tests are made using the minitest gem with auto run
-Minitest is choice to do simple tests validating the output results.

---*Challenge*---
*General Requirements*
Use either Ruby or Javascript. If you feel more comfortable with another language, please let us know and we can discuss.
Do not use any external libraries to solve this problem. You may only use external libraries or tools for building or testing purposes (e.g.,MiniTest, Rspec, Jest, Mocha, etc.).
Include detailed instructions on how to run the application and an explanation of assumptions you make (if any)

*IMPORTANT:*

Please limit the amount of time you spend on the problem to 4 hours. If you haven't completed the challenge within the allotted time, please submit the work you have completed. Focus on implementing the requirements with the best code you can produce within the given timeframe.

*Problem Statement*

This problem requires some kind of input. You are free to implement any mechanism for feeding the input into your solution. You should provide sufficient evidence that your solution is complete by, as a minimum, indicating that it works correctly against the supplied test data.

Basic sales tax is applicable at a rate of 10% on all goods, except books, food, and medical products that are exempt. Import duty is an additional sales tax applicable on all imported goods at a rate of 5%, with no exemptions.

When I purchase items I receive a receipt which lists the name of all the items and their price (including tax), finishing with the total cost of the items, and the total amounts of sales taxes paid. The rounding rules for sales tax are that for a tax rate of n%, a shelf price of p contains (np/100 rounded up to the nearest 0.05) amount of sales tax.

Write an application that prints out the receipt details for these shopping baskets: