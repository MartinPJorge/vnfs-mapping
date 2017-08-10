graph [
  node [
    id 0
    label 1
    disk 1
    cpu 4
    memory 11
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 11
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 4
    memory 8
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 13
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 10
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 1
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 124
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 78
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 179
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 178
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 61
  ]
  edge [
    source 2
    target 5
    delay 27
    bw 185
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 88
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 69
  ]
]
