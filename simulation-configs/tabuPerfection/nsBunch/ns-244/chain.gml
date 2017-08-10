graph [
  node [
    id 0
    label 1
    disk 7
    cpu 1
    memory 3
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 14
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 3
    memory 3
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 1
    memory 3
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 11
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 2
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 79
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 56
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 167
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 109
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 59
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 181
  ]
]
