graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 14
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 14
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 9
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 4
    memory 3
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 1
    memory 2
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 3
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 96
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 71
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 59
  ]
  edge [
    source 0
    target 3
    delay 31
    bw 36
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 58
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 97
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 51
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 80
  ]
]
