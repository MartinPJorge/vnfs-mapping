graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 6
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 3
    memory 5
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 10
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 14
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 4
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 3
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 51
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 22
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 25
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 100
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 31
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 92
  ]
]
