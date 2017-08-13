graph [
  node [
    id 0
    label 1
    disk 7
    cpu 2
    memory 14
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 4
    memory 12
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 4
    memory 4
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 3
    memory 14
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 6
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 28
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 24
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 100
  ]
  edge [
    source 0
    target 3
    delay 34
    bw 60
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 67
  ]
  edge [
    source 2
    target 5
    delay 33
    bw 39
  ]
]
