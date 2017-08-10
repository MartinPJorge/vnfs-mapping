graph [
  node [
    id 0
    label 1
    disk 5
    cpu 4
    memory 9
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 10
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 2
    memory 4
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 4
    memory 14
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 2
    memory 7
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 75
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 149
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 186
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 78
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 64
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 78
  ]
  edge [
    source 3
    target 5
    delay 29
    bw 55
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 123
  ]
]
