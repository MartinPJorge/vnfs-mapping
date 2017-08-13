graph [
  node [
    id 0
    label 1
    disk 1
    cpu 1
    memory 4
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 1
    memory 6
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 1
    memory 3
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 3
    memory 7
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 4
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 2
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 66
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 142
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 158
  ]
  edge [
    source 1
    target 3
    delay 31
    bw 60
  ]
  edge [
    source 2
    target 4
    delay 32
    bw 119
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 164
  ]
]
