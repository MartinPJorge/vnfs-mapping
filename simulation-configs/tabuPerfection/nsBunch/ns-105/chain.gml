graph [
  node [
    id 0
    label 1
    disk 1
    cpu 2
    memory 5
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 7
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 1
    memory 4
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 3
    memory 16
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 6
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 3
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 23
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 49
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 100
  ]
  edge [
    source 2
    target 3
    delay 27
    bw 30
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 68
  ]
  edge [
    source 2
    target 5
    delay 35
    bw 92
  ]
]
