graph [
  node [
    id 0
    label 1
    disk 9
    cpu 2
    memory 2
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 2
    memory 6
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 2
    memory 8
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 6
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 2
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 3
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 64
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 52
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 81
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 50
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 44
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 42
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 73
  ]
]
