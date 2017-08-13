graph [
  node [
    id 0
    label 1
    disk 7
    cpu 3
    memory 5
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 3
    memory 8
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 3
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 1
    memory 13
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 3
    memory 4
  ]
  node [
    id 5
    label 6
    disk 6
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
    delay 29
    bw 56
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 48
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 32
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 33
  ]
  edge [
    source 1
    target 4
    delay 31
    bw 92
  ]
  edge [
    source 2
    target 5
    delay 35
    bw 57
  ]
  edge [
    source 3
    target 5
    delay 29
    bw 50
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 48
  ]
]
