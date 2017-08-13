graph [
  node [
    id 0
    label 1
    disk 3
    cpu 3
    memory 5
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 16
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 14
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 2
    memory 13
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 2
    memory 8
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 43
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 63
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 63
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 26
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 50
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 37
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 97
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 76
  ]
]
