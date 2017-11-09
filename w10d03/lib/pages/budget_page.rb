class BudgetPage

	@@add_budgets = 'protect.budgetwatch:id/action_add'

	def budget_page_displayed?
		$driver.find_element(:id, @@add_budgets)
	end

end