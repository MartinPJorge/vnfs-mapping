graph [
  node [
    id 0
    label 1
    disk 7
    cpu 1
    memory 12
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 2
    memory 1
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 11
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 2
    memory 14
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 4
    memory 4
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 2
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 79
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 53
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 47
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 54
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 97
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 97
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 40
  ]
]
