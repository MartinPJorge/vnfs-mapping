graph [
  node [
    id 0
    label 1
    disk 6
    cpu 2
    memory 5
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 3
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 9
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 1
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 11
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 4
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 114
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 98
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 65
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 84
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 166
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 191
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 75
  ]
]
