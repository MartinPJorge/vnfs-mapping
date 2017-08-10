graph [
  node [
    id 0
    label 1
    disk 3
    cpu 3
    memory 11
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 4
    memory 10
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 2
    memory 15
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 16
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 1
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 4
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 153
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 137
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 135
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 165
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 62
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 123
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 67
  ]
]
