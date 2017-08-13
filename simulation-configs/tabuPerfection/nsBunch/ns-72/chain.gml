graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 3
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 3
    memory 3
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 4
    memory 10
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 6
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 9
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 3
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 86
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 82
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 62
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 94
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 60
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 99
  ]
]
