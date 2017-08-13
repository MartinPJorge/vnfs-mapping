graph [
  node [
    id 0
    label 1
    disk 7
    cpu 2
    memory 7
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 2
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 3
    memory 1
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 3
    memory 4
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 3
    memory 3
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 2
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 22
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 34
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 36
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 20
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 76
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 55
  ]
]
