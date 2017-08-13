graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 14
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 15
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 1
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 1
    memory 7
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 9
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 2
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 28
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 40
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 35
  ]
  edge [
    source 0
    target 3
    delay 30
    bw 50
  ]
  edge [
    source 2
    target 5
    delay 26
    bw 92
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 94
  ]
]
