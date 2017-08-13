graph [
  node [
    id 0
    label 1
    disk 3
    cpu 3
    memory 11
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 4
    memory 5
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 1
    memory 3
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 10
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 3
    memory 12
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 4
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 50
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 81
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 79
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 81
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 78
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 71
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 80
  ]
]
