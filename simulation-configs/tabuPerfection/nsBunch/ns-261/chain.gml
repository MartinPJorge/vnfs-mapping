graph [
  node [
    id 0
    label 1
    disk 4
    cpu 2
    memory 5
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 9
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 1
    memory 5
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 1
    memory 2
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 3
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 1
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 75
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 79
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 29
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 26
  ]
  edge [
    source 2
    target 3
    delay 29
    bw 62
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 85
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 98
  ]
]
