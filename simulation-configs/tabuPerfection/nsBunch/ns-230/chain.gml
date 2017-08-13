graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 10
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 16
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 8
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 3
    memory 16
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 1
    memory 3
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 3
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 64
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 61
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 59
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 94
  ]
  edge [
    source 2
    target 3
    delay 31
    bw 30
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 48
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 94
  ]
]
