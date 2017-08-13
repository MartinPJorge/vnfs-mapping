graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 15
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 1
    memory 5
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 13
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 2
    memory 3
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 2
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 39
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 82
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 28
  ]
  edge [
    source 0
    target 3
    delay 35
    bw 50
  ]
  edge [
    source 2
    target 5
    delay 26
    bw 47
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 51
  ]
]
