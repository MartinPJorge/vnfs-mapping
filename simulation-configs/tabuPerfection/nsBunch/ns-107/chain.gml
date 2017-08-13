graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 5
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 5
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 2
    memory 14
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 16
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 2
    memory 10
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 4
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 44
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 36
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 57
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 73
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 39
  ]
  edge [
    source 2
    target 5
    delay 26
    bw 67
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 48
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 23
  ]
]
