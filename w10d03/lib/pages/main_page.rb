class MainPage

	@@budget_and_transaction = 'protect.budgetwatch:id/action_settings'
	@@budgets_button = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.TextView[1]'

	def main_page_displayed?
		$driver.find_element(:id, @@budget_and_transaction)
	end

	def budget_button_click
		$driver.find_elements(:xpath, @@budgets_button)[0].click
	end

end