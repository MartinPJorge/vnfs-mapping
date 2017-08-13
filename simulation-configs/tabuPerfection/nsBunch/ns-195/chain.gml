graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 10
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 16
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 2
    memory 12
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 3
    memory 2
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 3
    memory 2
  ]
  node [
    id 5
    label 6
    disk 9
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
    delay 29
    bw 77
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 52
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 30
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 88
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 56
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 58
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 52
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 55
  ]
]
