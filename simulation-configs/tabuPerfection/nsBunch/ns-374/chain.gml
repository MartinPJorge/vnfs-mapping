graph [
  node [
    id 0
    label 1
    disk 10
    cpu 2
    memory 3
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 14
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 2
    memory 2
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 15
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 1
    memory 7
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 4
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 29
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 75
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 50
  ]
  edge [
    source 0
    target 3
    delay 30
    bw 26
  ]
  edge [
    source 1
    target 5
    delay 35
    bw 47
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 66
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 100
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 79
  ]
]
