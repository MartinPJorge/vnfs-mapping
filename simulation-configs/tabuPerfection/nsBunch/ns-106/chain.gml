graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 11
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 1
    memory 12
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 14
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 10
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 1
    memory 2
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 1
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 33
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 88
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 88
  ]
  edge [
    source 2
    target 3
    delay 35
    bw 77
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 42
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 49
  ]
]
