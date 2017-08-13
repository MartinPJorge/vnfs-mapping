graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 3
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 2
    memory 16
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 2
    memory 9
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 4
    memory 16
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 3
    memory 14
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 4
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 49
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 47
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 77
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 88
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 61
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 56
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 94
  ]
]
