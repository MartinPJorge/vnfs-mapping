graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 7
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 2
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 2
    memory 3
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 2
    memory 4
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 3
    memory 3
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 4
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 68
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 70
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 136
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 144
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 118
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 164
  ]
]
