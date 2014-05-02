Feature: code-breaker submits guess
  
  The code-breaker submits a guess of four colored
  pegs. The mastermind game marks the guess with black
  and white "marker" pegs.
  For each peg in the guess that matches color
  and position of a peg in the secret code, the
  mark includes one black peg. For each additional
  peg in the guess that matches the color but not
  the position of a color in the secret code, a white
  peg is added to the mark.

  Scenario Outline: submit guess
    Given the secret code is "<code>"
    When I guess "<guess>"
    Then the mark should be "<mark>"

  Scenarios: all colors correct
    | code | guess | mark |
    | rgyc | rgyc  | bbbb |
    | rgyc | rgcy  | bbww | 
    | rgyc | yrgc  | bwww | 
    | rgyc | crgy  | wwww |

  Scenarios: three colors correct 
    | code | guess | mark | 
    |rgyc  |wgyc   | bbb  | 
    |rgyc  |wryc   | bbw  | 
    |rgyc  |wrgc   | bww  | 
    |rgyc  |wrgy   | www  |

  Scenarios: two colors correct
    | code | guess | mark |
    |rgyc  |wgwc   | bb   | 
    |rgyc  |wrwc   | bw   | 
    |rgyc  |gwcw   | ww   |

  Scenarios: 1 color correct
    | code | guess | mark | 
    |rgyc  | rwww  | b    | 
    |rgyc  | wwrw  | w    |

