Feature: RequestLoan
    As a ParaBank client
    I want to be able to apply for a loan
    So I can temporarily increase my balance

    Scenario Outline: A loan amount under 50% of the customer balance is approved
        Given John has a total balance of 1000
        When he applies for a loan of <amount>
        Then his loan application is approved
        Examples:
        | amount |
        | 450    |
        | 500    |

    Scenario Outline: A loan amount between 50% and 75% is depending on the income
        Given John has a total balance of 1000
        And he has a monthly income of <income>
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

    Scenario Outline: A loan amount over 75% of the customer balance is denied
        Given John has a total balance of 1000
        When he applies for a loan of <amount>
        Then his loan application is denied
        Examples:
        | amount |
        | 751    |
        | 800    |