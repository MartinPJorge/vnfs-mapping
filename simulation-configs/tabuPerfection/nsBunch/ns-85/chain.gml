graph [
  node [
    id 0
    label 1
    disk 4
    cpu 4
    memory 4
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 1
    memory 2
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 1
    memory 1
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 1
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 1
    memory 1
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 1
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 21
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 28
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 29
  ]
  edge [
    source 0
    target 3
    delay 30
    bw 83
  ]
  edge [
    source 1
    target 5
    delay 34
    bw 57
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 71
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 96
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 91
  ]
]
