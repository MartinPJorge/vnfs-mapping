graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 9
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 1
    memory 15
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 7
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 2
    memory 5
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 8
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 1
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
    bw 175
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 141
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 103
  ]
  edge [
    source 0
    target 3
    delay 30
    bw 173
  ]
  edge [
    source 1
    target 5
    delay 28
    bw 192
  ]
  edge [
    source 2
    target 5
    delay 27
    bw 159
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 158
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 182
  ]
]
