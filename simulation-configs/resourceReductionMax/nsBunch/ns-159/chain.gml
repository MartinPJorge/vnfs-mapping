graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 10
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 3
    memory 12
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 6
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 13
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 10
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 2
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 168
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 50
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 98
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 73
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 68
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 195
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 187
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 124
  ]
]
