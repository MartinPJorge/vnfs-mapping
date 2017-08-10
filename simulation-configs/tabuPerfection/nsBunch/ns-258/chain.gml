graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 10
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 16
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 3
    memory 4
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 4
    memory 9
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 1
    memory 13
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 126
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 151
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 189
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 103
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 68
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 119
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 51
  ]
]
