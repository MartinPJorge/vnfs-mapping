graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 2
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 15
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 2
    memory 13
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 1
    memory 14
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 2
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 94
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 111
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 93
  ]
  edge [
    source 0
    target 3
    delay 35
    bw 57
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 74
  ]
  edge [
    source 2
    target 4
    delay 25
    bw 92
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 117
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 61
  ]
]
