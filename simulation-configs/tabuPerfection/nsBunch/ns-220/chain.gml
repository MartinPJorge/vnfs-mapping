graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 2
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 6
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 4
    memory 16
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 8
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 8
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
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
    bw 50
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 74
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 39
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 27
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 97
  ]
  edge [
    source 3
    target 5
    delay 33
    bw 52
  ]
]
