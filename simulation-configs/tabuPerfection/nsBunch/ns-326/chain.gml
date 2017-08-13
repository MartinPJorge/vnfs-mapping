graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 12
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 2
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 7
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 12
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 2
    memory 16
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 1
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 37
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 60
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 30
  ]
  edge [
    source 2
    target 3
    delay 32
    bw 49
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 29
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 24
  ]
]
