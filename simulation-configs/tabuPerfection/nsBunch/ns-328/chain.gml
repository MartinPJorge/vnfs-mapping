graph [
  node [
    id 0
    label 1
    disk 7
    cpu 3
    memory 9
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 2
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 5
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 14
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 86
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 30
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 56
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 42
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 27
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 21
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 27
  ]
]
