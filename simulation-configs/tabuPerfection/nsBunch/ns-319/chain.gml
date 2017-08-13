graph [
  node [
    id 0
    label 1
    disk 6
    cpu 2
    memory 1
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 2
    memory 13
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 1
    memory 4
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 13
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 4
    memory 1
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 4
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 83
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 23
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 90
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 29
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 47
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 55
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 65
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 66
  ]
]
