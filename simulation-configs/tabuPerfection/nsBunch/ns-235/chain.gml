graph [
  node [
    id 0
    label 1
    disk 3
    cpu 3
    memory 5
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 8
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 4
    memory 5
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 13
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 3
    memory 8
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 4
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 65
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 57
  ]
  edge [
    source 0
    target 2
    delay 35
    bw 70
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 88
  ]
  edge [
    source 2
    target 5
    delay 32
    bw 60
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 81
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 82
  ]
]
