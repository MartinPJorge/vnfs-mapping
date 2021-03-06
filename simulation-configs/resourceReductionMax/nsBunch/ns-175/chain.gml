graph [
  node [
    id 0
    label 1
    disk 8
    cpu 1
    memory 15
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 1
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 15
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 3
    memory 9
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 10
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 3
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 74
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 150
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 73
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 182
  ]
  edge [
    source 1
    target 5
    delay 28
    bw 118
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 124
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 173
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 52
  ]
]
