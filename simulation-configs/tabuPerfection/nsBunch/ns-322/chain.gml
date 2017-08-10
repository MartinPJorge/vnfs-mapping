graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 11
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 3
    memory 5
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 2
    memory 1
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 4
    memory 9
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 8
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 1
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 185
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 187
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 180
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 137
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 126
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 59
  ]
]
