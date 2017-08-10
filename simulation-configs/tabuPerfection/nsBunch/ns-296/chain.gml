graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 6
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 8
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 1
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 2
    memory 12
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 5
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 4
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 144
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 165
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 62
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 122
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 152
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 84
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 177
  ]
]
