graph [
  node [
    id 0
    label 1
    disk 6
    cpu 1
    memory 16
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 3
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 12
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 5
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 1
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 80
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 40
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 96
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 53
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 29
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 70
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 74
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 93
  ]
]
