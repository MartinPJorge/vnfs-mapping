graph [
  node [
    id 0
    label 1
    disk 1
    cpu 4
    memory 4
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 13
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 15
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 1
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 4
    memory 13
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 171
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 194
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 63
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 58
  ]
  edge [
    source 1
    target 5
    delay 29
    bw 51
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 80
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 186
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 160
  ]
]
