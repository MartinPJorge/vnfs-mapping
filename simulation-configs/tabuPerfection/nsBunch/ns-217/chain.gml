graph [
  node [
    id 0
    label 1
    disk 9
    cpu 4
    memory 1
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 1
    memory 11
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 14
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 9
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 5
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 96
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 43
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 45
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 74
  ]
  edge [
    source 2
    target 3
    delay 29
    bw 65
  ]
  edge [
    source 3
    target 4
    delay 33
    bw 29
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 72
  ]
]
