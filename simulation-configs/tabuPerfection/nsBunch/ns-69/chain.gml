graph [
  node [
    id 0
    label 1
    disk 8
    cpu 2
    memory 15
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 3
    memory 2
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 3
    memory 3
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 1
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 4
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 129
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 83
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 141
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 91
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 159
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 190
  ]
]
