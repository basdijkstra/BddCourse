using ParaBankSpecFlowExamples.Models;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;
using System.Collections.Generic;

namespace ParaBankSpecFlowExamples.StepDefinitions
{
    [Binding]
    public class WorkingWithTablesSteps
    {
        private User user;

        private List<User> users;

        [Given(@"the following user is present in the system")]
        public void GivenTheFollowingUserIsPresentInTheSystem(Table table)
        {
            user = table.CreateInstance<User>();
        }

        [Given(@"the following users are present in the system")]
        public void GivenTheFollowingUsersArePresentInTheSystem(Table table)
        {
            users = (List<User>)table.CreateSet<User>();
        }

        [When(@"I apply SpecFlow\.Assist")]
        public void WhenIApplySpecFlow_Assist()
        {            
        }
        
        [Then(@"the following user can be retrieved from the system")]
        public void ThenTheFollowingUserCanBeRetrievedFromTheSystem(Table table)
        {
            table.CompareToInstance(user);
        }

        [Then(@"the following users can be retrieved from the system")]
        public void ThenTheFollowingUsersCanBeRetrievedFromTheSystem(Table table)
        {
            table.CompareToSet(users);
        }
    }
}
