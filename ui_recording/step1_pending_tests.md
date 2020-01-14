# Initialise cucumber structure

* Create code in container that has programming language that will be used in it

`docker run -v $PWD:/home -it ruby:2.6 /bin/bash`{{execute}}

* Navigate to working directory

`cd home`{{execute}}

* Install dependencies

`bundle install`

* Initialise cucumber repo

`cucumber —init`


# Add feature file

Create a new feature file and add the following content
`features/dev_ops.feature`{{open}}

```gherkin
Feature: Dev Ops
 
   IntegratonQA should know about Dev Ops so they can help companies with bridge the gap between
   development and operations
 
   Scenario: Find Dev Ops blog
     Given I am on the IntegrationQA blog page
     When I search for 'Dev Ops'
     Then a result is returned
 
   Scenario: Find Culture change blog
     Given I am on the IntegrationQA blog page
     When I search for 'Culture change'
     Then a result is returned`
```

Execute `cucumber`{{execute}} to see the pending tests