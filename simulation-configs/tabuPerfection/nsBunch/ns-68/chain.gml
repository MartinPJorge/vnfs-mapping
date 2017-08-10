graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 15
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 8
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 4
    memory 5
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 3
    memory 4
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 10
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 4
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 61
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 150
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 60
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 138
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 147
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 51
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 134
  ]
]