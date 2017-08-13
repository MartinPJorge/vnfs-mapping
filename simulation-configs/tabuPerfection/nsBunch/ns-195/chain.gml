graph [
  node [
    id 0
    label 1
    disk 10
    cpu 1
    memory 14
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 2
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 9
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 4
    memory 13
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 16
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 35
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 77
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 39
  ]
  edge [
    source 1
    target 3
    delay 31
    bw 90
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 50
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 47
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 93
  ]
]
