graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 1
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 10
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 2
    memory 4
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 2
    memory 3
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 1
    memory 16
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 3
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 129
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 172
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 83
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 116
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 106
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 101
  ]
]
