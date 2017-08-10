graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 5
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 1
    memory 10
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 8
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 13
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 1
    memory 4
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 131
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 52
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 73
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 67
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 105
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 105
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 123
  ]
]
