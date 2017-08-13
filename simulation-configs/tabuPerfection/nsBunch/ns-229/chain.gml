graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 11
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 5
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 2
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 4
    memory 6
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 1
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
    delay 31
    bw 63
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 88
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 83
  ]
  edge [
    source 0
    target 3
    delay 30
    bw 48
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 42
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 94
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 67
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 64
  ]
]
