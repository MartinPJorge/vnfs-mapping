graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 15
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 4
    memory 12
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 11
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 1
    memory 9
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 3
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 2
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 96
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 138
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 91
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 180
  ]
  edge [
    source 1
    target 5
    delay 25
    bw 189
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 60
  ]
]