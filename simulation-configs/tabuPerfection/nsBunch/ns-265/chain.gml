graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 9
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 12
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 2
    memory 13
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 2
    memory 4
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 1
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 2
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 100
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 99
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 22
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 90
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 34
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 68
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 97
  ]
]
