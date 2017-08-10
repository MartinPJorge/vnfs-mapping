graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 13
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 15
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 3
    memory 14
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 15
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 9
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 2
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 114
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 95
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 175
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 97
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 120
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 52
  ]
]
