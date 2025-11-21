Feature: POS management

  Scenario: Update one of three existing POS
    Given the following POS exist:
      | name        | description   | latitude | longitude |
      | Cafe One    | Nice place    | 50.1     | 8.6       |
      | Cafe Two    | Cozy place    | 50.2     | 8.7       |
      | Cafe Three  | Quiet place   | 50.3     | 8.8       |

    When I update the POS "Cafe Two" with the description "Updated description"

    Then the POS "Cafe Two" should have the description "Updated description"