graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 1
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 12
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 3
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 2
    memory 1
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 2
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 1
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 67
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 33
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 92
  ]
  edge [
    source 1
    target 3
    delay 28
    bw 60
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 33
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 20
  ]
]
