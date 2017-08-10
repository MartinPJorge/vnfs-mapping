graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 8
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 2
    memory 8
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 3
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 1
    memory 7
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 3
    memory 9
  ]
  node [
    id 5
    label 6
    disk 10
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
    delay 34
    bw 198
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 69
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 94
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 73
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 79
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 106
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 68
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 73
  ]
]
