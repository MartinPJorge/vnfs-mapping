graph [
  node [
    id 0
    label 1
    disk 6
    cpu 1
    memory 1
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 3
    memory 14
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 1
    memory 11
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 8
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 3
    memory 8
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 4
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 197
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 166
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 112
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 162
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 60
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 106
  ]
]
