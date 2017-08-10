graph [
  node [
    id 0
    label 1
    disk 3
    cpu 4
    memory 12
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 3
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 2
    memory 16
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 6
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 2
    memory 4
  ]
  node [
    id 5
    label 6
    disk 7
    cpu 2
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 162
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 139
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 80
  ]
  edge [
    source 0
    target 3
    delay 34
    bw 96
  ]
  edge [
    source 2
    target 5
    delay 26
    bw 115
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 159
  ]
]
