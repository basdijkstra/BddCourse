Feature: SpecFlowExamples
	As a SpecFlow student
	I want to learn more about the various SpecFlow features
	So I can use the tool more effectively

Scenario: A basic scenario
    Given user John is ready to open a new account
	When they open a new checking account
	Then the new account is included in their list of accounts

Scenario: Using regular expressions
    Given user John has the following accounts
	| accountNumber | balance | type     |
	| 12345         | 1000    | checking |
	| 54321         | 750     | savings  |
	When he closes all of his savings accounts
	Then user John has the following account
	| accountNumber | balance | type     |
	| 12345         | 1000    | checking |
	And an amount of 750 will be retransfered to an existing account
