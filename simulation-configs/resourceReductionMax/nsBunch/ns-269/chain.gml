graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 2
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 3
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 3
    memory 5
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 1
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 3
    memory 13
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 4
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 55
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 190
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 128
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 72
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 198
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 77
  ]
]
