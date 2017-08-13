graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 4
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 3
    memory 12
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 14
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 3
    memory 4
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 1
    memory 5
  ]
  node [
    id 5
    label 6
    disk 4
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
    delay 35
    bw 88
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 26
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 64
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 89
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 42
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 63
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 39
  ]
]
