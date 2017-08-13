graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 3
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 16
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 1
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 1
    memory 15
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 1
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
    delay 33
    bw 81
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 29
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 89
  ]
  edge [
    source 1
    target 5
    delay 27
    bw 45
  ]
  edge [
    source 2
    target 3
    delay 31
    bw 62
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 91
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 70
  ]
]
