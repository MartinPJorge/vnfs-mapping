graph [
  node [
    id 0
    label 1
    disk 2
    cpu 4
    memory 13
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 10
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 3
    memory 4
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 3
    memory 2
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 1
    memory 1
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 4
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 88
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 184
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 82
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 95
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 58
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 103
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 189
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 198
  ]
]
