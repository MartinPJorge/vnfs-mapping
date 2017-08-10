graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 1
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 4
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 12
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 3
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 7
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 1
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 87
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 171
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 95
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 181
  ]
  edge [
    source 2
    target 5
    delay 27
    bw 67
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 148
  ]
]
