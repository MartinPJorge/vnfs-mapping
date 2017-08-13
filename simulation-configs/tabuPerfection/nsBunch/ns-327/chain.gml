graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 5
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 3
    memory 13
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 2
    memory 5
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 3
    memory 6
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 4
    memory 6
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 3
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 41
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 86
  ]
  edge [
    source 1
    target 2
    delay 28
    bw 84
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 83
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 25
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 79
  ]
]
