graph [
  node [
    id 0
    label 1
    disk 8
    cpu 4
    memory 10
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 4
    memory 5
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 10
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 2
    memory 4
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 3
    memory 6
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 4
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 93
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 40
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 47
  ]
  edge [
    source 1
    target 3
    delay 34
    bw 91
  ]
  edge [
    source 2
    target 3
    delay 31
    bw 46
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 68
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 62
  ]
]
