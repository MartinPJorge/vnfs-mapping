graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 2
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 2
    memory 11
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 2
    memory 13
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 1
    memory 8
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 11
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 4
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 25
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 55
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 84
  ]
  edge [
    source 0
    target 3
    delay 34
    bw 45
  ]
  edge [
    source 1
    target 5
    delay 30
    bw 57
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 83
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 78
  ]
]
