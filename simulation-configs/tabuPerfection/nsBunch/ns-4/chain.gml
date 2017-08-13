graph [
  node [
    id 0
    label 1
    disk 1
    cpu 2
    memory 16
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 1
    memory 9
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 1
    memory 2
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 1
    memory 6
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 3
    memory 1
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 1
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
    bw 23
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 21
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 43
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 51
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 80
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 97
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 58
  ]
]
