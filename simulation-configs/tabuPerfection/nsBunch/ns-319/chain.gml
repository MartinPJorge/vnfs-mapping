graph [
  node [
    id 0
    label 1
    disk 5
    cpu 4
    memory 2
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 1
    memory 8
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 2
    memory 15
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 2
    memory 13
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
    disk 10
    cpu 3
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 180
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 105
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 192
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 121
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 92
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 106
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 160
  ]
]