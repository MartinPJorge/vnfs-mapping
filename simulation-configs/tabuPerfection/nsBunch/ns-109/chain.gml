graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 11
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 1
    memory 10
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 14
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 5
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 3
    memory 2
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 1
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 22
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 100
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 89
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 30
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 85
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 89
  ]
]
