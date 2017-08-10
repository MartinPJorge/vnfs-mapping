graph [
  node [
    id 0
    label 1
    disk 1
    cpu 4
    memory 10
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 2
    memory 2
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 8
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 15
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 1
    memory 7
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 3
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 126
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 86
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 82
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 143
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 84
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 132
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 130
  ]
]
