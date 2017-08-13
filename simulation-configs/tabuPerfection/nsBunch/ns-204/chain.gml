graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 1
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 16
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 6
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 2
    memory 16
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 1
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
    bw 93
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 33
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 29
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 97
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 22
  ]
  edge [
    source 2
    target 5
    delay 28
    bw 54
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 69
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 98
  ]
]
