*** Settings ***
# Here you can import all the libraries or resources that you need, add documentation
# and set test suite setup and teardown and test case setup and teardown
Documentation  You can use put some information about your test suite here
# Adding other robot framework libraries
Library  Dialogs
Library  String
Library  SeleniumLibrary
# Adding resources from your project using a relative path to the resource
Resource  ../Resources/MyResources.robot

# Test suite setup and teardown
Suite Setup  Log  Starting Test Suite
Suite Teardown  Log  Finished executing Test Suite

# Test case setup and teardown
Test Setup  Log  Starting execution of test case ${TEST_NAME}
Test Teardown  Log  Finished execution of test case ${TEST_NAME}

*** Variables ***
@{FRUIT} =  apples  oranges  grapes  bananas  strawberries

*** Test Cases ***

Enter credentials successfully
    # Tags can be added to scripts so it is easier to execute certain scripts if needed
    # Try to have your scripts properly tagged. This can help you with statistics in the report
    [Tags]  Demo  Positive  NoExecute
    Enter Credentials  Bob McTest  AutomationIsAwesome
    wait until page contains  Welcome

Enter Credentials unsuccessfully
    [Tags]  Demo  Negative  NoExecute
    Enter Credentials  Bob McTest  AutomationSucks!
    page should contain  Invalid credentials

Example of the structure of a test case
    [Tags]  Demo  Intro  NoExecute
    ${user_name} =  get value from user  Please enter your name
    MyResources.Greet the audience  ${user_name}
    ${fruit_selection} =  get selection from user  Do you want a fruit, ${user_name}?  @{FRUIT}
    Log  ${fruit_selection} are delicious!

*** Keywords ***

Enter Credentials
    #You can specify arguments for your keywords.
    #Use proper names for the arguments so it is intuitive what info is needed
    [Arguments]  ${username}  ${password}
    input text  id=username_field  ${username}
    input password  id=password_field  ${password}
    click button  id=login_btn
