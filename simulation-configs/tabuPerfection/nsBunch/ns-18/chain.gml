graph [
  node [
    id 0
    label 1
    disk 2
    cpu 2
    memory 4
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 3
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 10
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 2
    memory 3
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 4
    memory 3
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 97
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 26
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 87
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 77
  ]
  edge [
    source 1
    target 5
    delay 33
    bw 95
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 70
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 92
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 98
  ]
]
