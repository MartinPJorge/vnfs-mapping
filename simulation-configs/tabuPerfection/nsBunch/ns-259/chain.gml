graph [
  node [
    id 0
    label 1
    disk 2
    cpu 4
    memory 8
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 14
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 4
    memory 1
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 3
    memory 1
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 2
    memory 7
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 156
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 125
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 132
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 112
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 143
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 166
  ]
]
