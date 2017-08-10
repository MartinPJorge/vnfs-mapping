graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 8
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 2
    memory 2
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 1
    memory 6
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 6
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 12
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 55
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 190
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 82
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 188
  ]
  edge [
    source 1
    target 5
    delay 33
    bw 86
  ]
  edge [
    source 2
    target 4
    delay 25
    bw 53
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 140
  ]
]