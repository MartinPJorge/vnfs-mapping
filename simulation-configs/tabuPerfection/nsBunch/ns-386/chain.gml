graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 7
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 5
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 4
    memory 5
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 4
    memory 6
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 12
  ]
  node [
    id 5
    label 6
    disk 9
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
    delay 35
    bw 78
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 92
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 62
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 150
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 138
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 149
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 105
  ]
]
