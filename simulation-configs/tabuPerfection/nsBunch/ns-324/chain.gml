graph [
  node [
    id 0
    label 1
    disk 2
    cpu 2
    memory 7
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 2
    memory 3
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 2
    memory 7
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 3
    memory 7
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 3
    memory 6
  ]
  node [
    id 5
    label 6
    disk 9
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
    delay 34
    bw 147
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 191
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 158
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 98
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 186
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 144
  ]
]
