using System;
using TechTalk.SpecFlow;

namespace ParaBankSpecFlowExamples.StepDefinitions
{
    [Binding]
    public class SpecFlowExamplesSteps
    {
        [Given(@"user John is ready to open a new account")]
        public void GivenUserJohnIsReadyToOpenANewAccount()
        {
        }
        
        [When(@"they open a new checking account")]
        public void WhenTheyOpenANewCheckingAccount()
        {
        }
        
        [Then(@"the new account is included in their list of accounts")]
        public void ThenTheNewAccountIsIncludedInTheirListOfAccounts()
        {
        }

        [Given(@"user (.*) has the following accounts?")]
        [Then(@"user (.*) has the following accounts?")]
        public void UserHasTheFollowingAccounts(string userName, Table table)
        {
        }

        [When(@"he closes all of his (checking|savings) accounts")]
        public void HeClosesAllOfHisAccounts(string accountType)
        {
        }

        [Then(@"an amount of (\d+) will be retransfered to an existing account")]
        public void AnAmountOfWillBeRetransferedToAnExistingAccount(int amount)
        {
        }
    }
}
