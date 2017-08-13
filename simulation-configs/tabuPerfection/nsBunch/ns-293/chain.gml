graph [
  node [
    id 0
    label 1
    disk 3
    cpu 3
    memory 8
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 9
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 15
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 11
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 1
    memory 5
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 94
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 36
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 61
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 26
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 84
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 41
  ]
]
