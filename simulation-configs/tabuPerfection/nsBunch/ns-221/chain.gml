graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 11
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 3
    memory 3
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 2
    memory 9
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 1
    memory 7
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 1
    memory 10
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 4
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 55
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 37
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 86
  ]
  edge [
    source 0
    target 3
    delay 29
    bw 98
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 34
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 64
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 95
  ]
]
