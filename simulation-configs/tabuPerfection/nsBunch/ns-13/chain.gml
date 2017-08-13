graph [
  node [
    id 0
    label 1
    disk 10
    cpu 2
    memory 16
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 10
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 4
    memory 10
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 2
    memory 6
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 2
    memory 9
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 1
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 55
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 76
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 35
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 83
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 83
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 53
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 38
  ]
]
