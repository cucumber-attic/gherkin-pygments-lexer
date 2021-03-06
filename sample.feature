@foo34 @bar
Feature: proof of concept

  In order to read Cucumber features faster and eaiser on Github 
  As a Cucumber user
  I want to have syntax highlighting for Gherkin without 555 highlighted in the header
  This is part of the narrative, even if I have the # symbol, it is still the narrative- not a comment

  Background: this is multi-line description
    do you like it?
    Given cheese is good

  Scenario Outline: this is a test 
                    this the 2nd line of the description
    Given I am the first step multiline-description I should properly display 2E3 -10 foo@bar.com 222
    And I have a <var1> and some "string"
    And the following table and some 'string'
      | header 1    | header 2  |
      | cell 1-1    | cell 1-2  |
      | cell 2-1    | "cell 2-2"|
      | <var1>      | <var2>    |
      | foo@bar.com | stuff     |

    When I do <var2>
    And use apostrophes then the feature's syntax still looks good
    And here is a string with number 43 and double quotes- "i'll be back"
    # Given I comment something out
    And here is a string with the opposite 'the quote is "Foo"'
    And what about a var in a quote like so: "<var2>"
    And what about a multiline string with a var in it like so:
    """
    Hello!
    I am a multiple line string, often called a pystring.
    I can have regular "double quotes" without a problem...
    I can also sub in vars as well like: <var1> and <var2>
    """

    Then I should see something...
    But not something else...
    And email addresses like foo@bar.com and "bar@foo.com" should not be highlighted like tags

  Examples:
    | var1  |  var2  |
    | foo   |  bar   |
    | dog   |  food  |

  Scenarios: some other examples with a description
             and guess waht?!? I can have multilines as well!
             Who would have thunk?
    | var1  |  var2  |
    | foo   |  bar   |
    | dog   |  food  |

  @some_tag @another_tag
  Scenario: more examples
            will follow after this multi-line description
    Given some context 333
    # This is a comment
# So is this with no space at front...
    And some more some context <shouldnotbehilit>

Funktionalität: Addition
  Um dumme Fehler zu vermeiden
  möchte ich als Matheidiot
  die Summe zweier Zahlen gesagt bekommen

  Szenariogrundriss: Zwei Zahlen hinzufügen
    Gegeben sei ich habe <Eingabe_1> in den Taschenrechner eingegeben
    Und ich habe <Eingabe_2> in den Taschenrechner eingegeben
    Wenn ich <Knopf> drücke
    Dann sollte das Ergebniss auf dem Bildschirm <Ausgabe> sein

  Beispiele:
    | Eingabe_1 | Eingabe_2 | Knopf | Ausgabe |
    | 20        | 30        | add   | 50      |
    # A comment in the middle of the table is ok
    | 2         | 5         | add   | 7       |
    | 0         | 40        | add   | 40      |

Feature: Addition
  In order to avoid silly mistakes
  As a math idiot 
  I want to be told the sum of two numbers

  Scenario Outline: Add two numbers
    Given I have entered <input_1> into the calculator
    And I have entered <input_2> into the calculator
    When I press <button>
    Then the result should be <output> on the screen

  Examples:
    | input_1 | input_2 | button | output |
    | 20      | 30      | add    | 50     |
    | 2       | 5       | add    | 7      |
    | 0       | 40      | add    | 40     |

Egenskap: Summering
  For å slippe å gjøre dumme feil
  Som en regnskapsfører
  Vil jeg kunne legge sammen

  Scenario: to tall
    Gitt at jeg har tastet inn 5
    Og at jeg har tastet inn 7
    Når jeg summerer
    Så skal resultatet være 12

