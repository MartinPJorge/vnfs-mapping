graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 7
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 1
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 1
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 15
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 3
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 86
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 55
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 70
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 100
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 34
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 57
  ]
]
