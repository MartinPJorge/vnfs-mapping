graph [
  node [
    id 0
    label 1
    disk 8
    cpu 1
    memory 9
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 3
    memory 6
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 8
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 2
    memory 12
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 3
    memory 10
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 1
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 51
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 37
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 43
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 97
  ]
  edge [
    source 2
    target 4
    delay 30
    bw 24
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 58
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 59
  ]
]
