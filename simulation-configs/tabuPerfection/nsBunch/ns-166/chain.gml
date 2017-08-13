graph [
  node [
    id 0
    label 1
    disk 7
    cpu 3
    memory 7
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 3
    memory 16
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 15
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 1
    memory 2
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 3
    memory 13
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 2
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 27
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 96
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 90
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 57
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 39
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 65
  ]
]
