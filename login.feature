Feature: Logging into The Asset Bank

Scenario Outline: UAG login for s1 accounts
  Given I am on UAG login screen
  When I fill in "user_name" with "<name>"
  And I fill in "password" with "<password>"
  And I select the s1 option from the dropdown
  And I press "submit_button"
  Then I should see "Welcome to The Asset Bank!"
  When I select to agree terms
  And I press submit
  Then I should see "Advanced"
  And I will navigate back to the UAG login screen

Examples:
  | name          | password   | 
  | Hanyu.ATA     | Pa77word!? |
  | Lee.LTA       | Pa77word!? |
  | Andy.ISTA     | Pa77word!? |
  | Eric.ISTB     | Pa77word!? |
  | Hu-Wang.ISTC  | Pa77word!? |
  | Hanyu.NATA    | Pa77word!? |
  | Lee.NLTA      | Pa77word!? |
  | Andy.NISTA    | Pa77word!? |
  | Eric.NISTB    | Pa77word!? |
  | Sun.NIPTA     | Pa77word!? |
  | Lee.NIPTB     | Pa77word!? |
  | Hun.NISTA     | Pa77word!? |
  | Bea.NISTB     | Pa77word!? |
  | Hu-Wang.NISTC | Pa77word!? |
  | Climie.NISTD  | Pa77word!? |
  | Gordon.NEPTA  | Pa77word!? |
  | Angie.NEPTB   | Pa77word!? |
  | Sun.NEPTC     | Pa77word!? |
  | Huang.NESTA   | Pa77word!? |
  | Angela.NESTB  | Pa77word!? |
  | John.NESTC    | Pa77word!? |
  | Tang.NEGTA    | Pa77word!? |
  | Jenny.NEGTB   | Pa77word!? |

Scenario Outline: UAG login for s2 accounts
  Given I am on UAG login screen
  When I fill in "user_name" with "<name>"
  And I fill in "password" with "<password>"
  And I select the s2 option from the dropdown
  And I press "submit_button"
  Then I should see "Welcome to The Asset Bank!"
  When I select to agree terms
  And I press submit
  Then I should see "Advanced"
  And I will navigate back to the UAG login screen

Examples:
  | name           | password   | 
  | Rick.RIPT1DE   | Pa77word!? |
  | Daniel.RIPT2SA | Pa77word!? |
  | Daniel.LIPT2SA | Pa77word!? |
  | Rene.AT1       | Pa77word!? |
  | Sian.LT1       | Pa77word!? |
  | Jason.GIST1    | Pa77word!? |
  | Rick.GIPT1     | Pa77word!? |
  | Daniel.GIPT2   | Pa77word!? |
  | Lorna.GIST1    | Pa77word!? |
  | Henry.GIST3    | Pa77word!? |
  | Jason.RIST1    | Pa77word!? |
  | Rick.RIPT1     | Pa77word!? |
  | Lorna.RIST1    | Pa77word!? |
  | Lewis.RIST2    | Pa77word!? |
  | Jason.LIST1    | Pa77word!? |
  | Rick.LIPT1     | Pa77word!? |
  | Lorna.LIST1    | Pa77word!? |
  | Lewis.LIST2    | Pa77word!? |
  | Danni.GEPT1    | Welcome1   |
  | Pete.GEPT2     | Pa77word!? |
  | Dave.GEPT3     | Pa77word!? |
  | Lisa.GEST1     | Pa77word!? |
  | Fiona.GEST2    | Pa77word!? |
  | Mick.GEST3     | Pa77word!? |
  | Donna.GEGT1    | Pa77word!? |
  | Jonathan.GEGT2 | Pa77word!? |
  | Danni.REPT1    | Pa77word!? |
  | Dave.REPT3     | Pa77word!? |
  | Lisa.REST1     | Pa77word!? |
  | Mick.REST3     | Pa77word!? |
  | Danni.LEPT1    | Pa77word!? |
  | Dave.LEPT3     | Pa77word!? |
  | Lisa.LEST1     | Pa77word!? |
  | Mick.LEST3     | Pa77word!? |
  | Donna.LEGT1    | Pa77word!? |

Scenario Outline: UAG login for s3 accounts
  Given I am on UAG login screen
  When I fill in "user_name" with "<name>"
  And I fill in "password" with "<password>"
  And I select the s3 option from the dropdown
  And I press "submit_button"
  Then I should see "Welcome to The Asset Bank!"
  When I select to agree terms
  And I press submit
  Then I should see "Advanced"
  And I will navigate back to the UAG login screen

Examples:
  | name            | password   | 
  | Pete.NREPT2     | Pa77word!? |
  | Fiona.NREST2    | Pa77word!? |
  | Jonathan.NREGT2 | Pa77word!? |
  | Pete.NLEPT2     | Pa77word!? |
  | Fiona.NLEST2    | Pa77word!? |
  | Jonathan.NLEGT2 | Pa77word!? |
  | Daniel.LIPT2    | Pa77word!? |
  | MaryRose.LIST4  | Pa77word!? |
  | Jasmine.NRIST2  | Pa77word!? |
  | Daniel.NRIPT2   | Pa77word!? |
  | Henry.NRIST3    | Pa77word!? |
  | MaryRose.NRIST4 | Pa77word!? |
  | Jasmine.NLIST2  | Pa77word!? |
  | Daniel.NLIPT2   | Pa77word!? |
  | Henry.NLIST3    | Pa77word!? |
  | MaryRose.NLIST4 | Pa77word!? |

Scenario Outline: Verify a user from each group
  Given I am on UAG login screen
  When I fill in "user_name" with "<name>"
  And I fill in "password" with "<password>"
  And I select the s3 option from the dropdown
  And I press "submit_button"
  Then I should see "Welcome to The Asset Bank!"
  When I select to agree terms
  And I press submit
  #Then I will see the quick find page
  When I select the advanced link
  Then I will see the advanced page

Examples:
  | name            | password   | 
  | Pete.NREPT2     | Pa77word!? |
