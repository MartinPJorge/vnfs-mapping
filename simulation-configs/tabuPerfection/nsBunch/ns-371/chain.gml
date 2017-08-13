graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 14
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 1
    memory 6
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 3
    memory 3
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 15
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 4
    memory 13
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 3
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 82
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 97
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 26
  ]
  edge [
    source 1
    target 3
    delay 34
    bw 55
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 80
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 82
  ]
]
