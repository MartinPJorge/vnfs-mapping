graph [
  node [
    id 0
    label 1
    disk 2
    cpu 1
    memory 10
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 14
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 9
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 2
    memory 10
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 3
    memory 11
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 4
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 67
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 160
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 116
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 159
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 154
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 141
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 182
  ]
]
