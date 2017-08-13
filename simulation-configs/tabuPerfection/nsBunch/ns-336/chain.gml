graph [
  node [
    id 0
    label 1
    disk 9
    cpu 2
    memory 14
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 2
    memory 4
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 10
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 3
    memory 7
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 1
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 1
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 34
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 67
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 42
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 61
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 38
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 38
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 84
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 97
  ]
]
