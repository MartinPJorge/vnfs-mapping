graph [
  node [
    id 0
    label 1
    disk 7
    cpu 3
    memory 4
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 10
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 1
    memory 9
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 9
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 53
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 94
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 63
  ]
  edge [
    source 1
    target 3
    delay 31
    bw 94
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 86
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 60
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 24
  ]
]
