graph [
  node [
    id 0
    label 1
    disk 9
    cpu 4
    memory 13
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 3
    memory 15
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 8
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 4
    memory 8
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 2
    memory 7
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 1
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 134
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 88
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 200
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 65
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 149
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 123
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 67
  ]
]
