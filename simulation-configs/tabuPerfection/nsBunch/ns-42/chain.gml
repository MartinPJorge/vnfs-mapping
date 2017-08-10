graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 9
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 14
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 1
    memory 1
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 1
    memory 12
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
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
    bw 122
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 152
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 130
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 175
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 150
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 75
  ]
]
