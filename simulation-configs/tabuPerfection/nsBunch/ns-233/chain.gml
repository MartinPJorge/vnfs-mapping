graph [
  node [
    id 0
    label 1
    disk 10
    cpu 4
    memory 5
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 11
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 4
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 2
    memory 7
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 4
    memory 8
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 113
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 167
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 59
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 149
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 50
  ]
  edge [
    source 3
    target 5
    delay 29
    bw 121
  ]
]
