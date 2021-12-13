Feature: WorkingWithTables
	Demonstrating the use of SpecFlow.Assist

Scenario: A single instance
	Given the following user is present in the system
	| FirstName | LastName | CustomerId | Balance |
	| John      | Smith    | 12212      | 1000    |
	When I apply SpecFlow.Assist
	Then the following user can be retrieved from the system
	| FirstName | LastName | CustomerId | Balance |
	| John      | Smith    | 12212      | 1000    |

Scenario: Multiple instances
    Given the following users are present in the system
	| FirstName | LastName | CustomerId | Balance |
	| John      | Smith    | 12212      | 1000    |
	| Bob       | Jones    | 12323      | 750     |
	When I apply SpecFlow.Assist
	Then the following users can be retrieved from the system
	| FirstName | LastName | CustomerId | Balance |
	| Bob       | Jones    | 12323      | 750     |
	| John      | Smith    | 12212      | 1000    |