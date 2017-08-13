graph [
  node [
    id 0
    label 1
    disk 7
    cpu 3
    memory 9
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 9
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
    disk 8
    cpu 2
    memory 5
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 6
  ]
  node [
    id 5
    label 6
    disk 8
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
    delay 33
    bw 153
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 154
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 71
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 159
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 51
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 177
  ]
]
