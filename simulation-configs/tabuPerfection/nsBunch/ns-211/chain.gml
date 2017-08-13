graph [
  node [
    id 0
    label 1
    disk 1
    cpu 4
    memory 8
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 2
    memory 4
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 3
    memory 2
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 2
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
    disk 3
    cpu 1
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 75
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 97
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 98
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 32
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 55
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 78
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 75
  ]
]
