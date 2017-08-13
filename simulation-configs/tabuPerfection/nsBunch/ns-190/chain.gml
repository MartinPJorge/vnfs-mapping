graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 16
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 3
    memory 4
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 1
    memory 11
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 3
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 2
  ]
  node [
    id 5
    label 6
    disk 6
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
    delay 30
    bw 20
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 97
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 43
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 21
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 30
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 40
  ]
]
