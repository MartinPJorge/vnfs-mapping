graph [
  node [
    id 0
    label 1
    disk 1
    cpu 2
    memory 1
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 11
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 3
    memory 15
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 7
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 12
  ]
  node [
    id 5
    label 6
    disk 9
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
    delay 33
    bw 167
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 136
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 121
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 96
  ]
  edge [
    source 1
    target 4
    delay 31
    bw 127
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 185
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 196
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 88
  ]
]
