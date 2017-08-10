graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 8
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 3
    memory 10
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 2
    memory 9
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 2
    memory 3
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 3
    memory 2
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 2
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 50
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 148
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 134
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 156
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 160
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 55
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 168
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 75
  ]
]
