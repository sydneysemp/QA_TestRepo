Feature: Filter functionality

    Through this feature a user will be able to filter by the Subdivision status

    Scenario: Validate the Filter by Subdivision status dropdown is displayed
        Given that the Zoda application is running
        When the user is on the Home page
        Then the Filter by Subdivision status dropdown is displayed
        And it's labelled "Subdivision status code filter"

    Scenario: Validate clicking the Filter by Subdivision status dropdown
        Given that the user is on the Zoda application home page
        And the Filter by Subdivision status dropdown is displayed
        When they click on the "Subdivision status code filter" dropdown
        Then further options are displayed within the dropdown

    Scenario: Validate the options within the Filter by Subdivision status dropdown - Active
        Given that the user is on the Zoda application home page
        And the Filter by Subdivision status dropdown is displayed
        When they click on the "Subdivision status code filter" dropdown
        Then further options are displayed within the dropdown
        And one of those optons is labelled "Active"

    Scenario: Validate the options within the Filter by Subdivision status dropdown - Future
        Given that the user is on the Zoda application home page
        And the Filter by Subdivision status dropdown is displayed
        When they click on the "Subdivision status code filter" dropdown
        Then further options are displayed within the dropdown
        And one of those optons is labelled "Future"

    Scenario: Validate the options within the Filter by Subdivision status dropdown - Builtout
        Given that the user is on the Zoda application home page
        And the Filter by Subdivision status dropdown is displayed
        When they click on the "Subdivision status code filter" dropdown
        Then further options are displayed within the dropdown
        And one of those optons is labelled "Builtout"

    Scenario: Validate Filter by specific Subdivision status dropdown - Active
        Given that the user is on the Zoda application home page
        And the Filter by Subdivision status dropdown is displayed
        When they click on the "Subdivision status code filter" dropdown
        And select Active
        Then only data an Active subdivision status is displayed in the table

    Scenario: Validate Filter by specific Subdivision status dropdown - Future
        Given that the user is on the Zoda application home page
        And the Filter by Subdivision status dropdown is displayed
        When they click on the "Subdivision status code filter" dropdown
        And select Future
        Then only data a Future subdivision status is displayed in the table

    Scenario: Validate Filter by specific Subdivision status dropdown - Builtout
        Given that the user is on the Zoda application home page
        And the Filter by Subdivision status dropdown is displayed
        When they click on the "Subdivision status code filter" dropdown
        And select Builtout
        Then only data a Builtout subdivision status is displayed in the table

    Scenario: Validate Clearing the applied filter
        Given that the user is on the Zoda application home page
        And they apply a Filter by Subdivision status
        When they click on the "Subdivision status code filter" dropdown
        And select Clear
        Then the applied filter is cleared
        And the data is displayed to include all subdivision statuses