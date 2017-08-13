graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 14
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 8
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 3
    memory 11
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 2
    memory 11
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 2
    memory 13
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 83
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 85
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 186
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 81
  ]
  edge [
    source 1
    target 5
    delay 31
    bw 112
  ]
  edge [
    source 2
    target 5
    delay 25
    bw 175
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 155
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 107
  ]
]
