graph [
  node [
    id 0
    label 1
    disk 4
    cpu 3
    memory 3
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 3
    memory 2
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 12
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 3
    memory 16
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 3
    memory 7
  ]
  node [
    id 5
    label 6
    disk 10
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
    delay 25
    bw 88
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 68
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 34
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 29
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 32
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 48
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 34
  ]
]
