graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 14
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 2
    memory 15
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 13
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 8
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 3
    memory 4
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 96
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 88
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 36
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 79
  ]
  edge [
    source 1
    target 5
    delay 33
    bw 21
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 39
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 52
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 34
  ]
]
