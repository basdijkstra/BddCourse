Feature: RequestLoanAlternative
    As a ParaBank client
    I want to be able to apply for a loan
    So I can temporarily increase my balance

    Background: Set up the customer state
         Given John has a total balance of 1000

    Scenario Outline: Approval or denial depends on the loan amount only
        When he applies for a loan of <amount>
        Then his loan application is <result>
        Examples:
        | amount | result   |
        | 450    | approved |
        | 500    | approved |
        | 751    | denied   |
        | 800    | denied   |

    Scenario Outline: Approval or denial depends on the loan amount and the income
        Given he has a monthly income of <income>
        When he applies for a loan of <amount>
        Then his loan application is <result>
        Examples:
        | income | amount | result   |
        | 5001   | 501    | approved |
        | 5000   | 501    | denied   |
        | 5001   | 600    | approved |
        | 5000   | 600    | denied   |
        | 5001   | 750    | approved |
        | 5000   | 750    | denied   |
