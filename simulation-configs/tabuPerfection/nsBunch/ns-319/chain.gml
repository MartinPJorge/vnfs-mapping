graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 15
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 11
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 4
    memory 3
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 1
    memory 3
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 3
    memory 14
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 1
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 23
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 33
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 35
  ]
  edge [
    source 1
    target 3
    delay 34
    bw 79
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 43
  ]
  edge [
    source 2
    target 5
    delay 35
    bw 87
  ]
]
