graph [
  node [
    id 0
    label 1
    disk 9
    cpu 2
    memory 11
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 2
    memory 1
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 16
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 2
    memory 5
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 3
    memory 8
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 4
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 48
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 28
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 99
  ]
  edge [
    source 1
    target 4
    delay 25
    bw 30
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 45
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 20
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 34
  ]
]
