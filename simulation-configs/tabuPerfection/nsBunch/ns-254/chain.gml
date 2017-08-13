graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 3
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 4
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 1
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 15
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 2
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 50
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 50
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 98
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 78
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 95
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 75
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 44
  ]
]
