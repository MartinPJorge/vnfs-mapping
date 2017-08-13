graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 1
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 4
    memory 9
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 1
    memory 6
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 6
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 3
    memory 5
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 99
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 54
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 95
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 65
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 44
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 47
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 97
  ]
]
