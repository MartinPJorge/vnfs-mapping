graph [
  node [
    id 0
    label 1
    disk 2
    cpu 4
    memory 1
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 3
    memory 15
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 2
    memory 7
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 14
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 1
    memory 5
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 4
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 137
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 165
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 78
  ]
  edge [
    source 0
    target 3
    delay 29
    bw 118
  ]
  edge [
    source 1
    target 5
    delay 28
    bw 181
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 175
  ]
]
