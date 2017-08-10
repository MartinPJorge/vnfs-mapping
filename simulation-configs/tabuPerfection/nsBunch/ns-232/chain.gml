graph [
  node [
    id 0
    label 1
    disk 8
    cpu 2
    memory 5
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 2
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 15
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 2
    memory 1
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 8
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 1
    memory 2
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 51
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 96
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 172
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 111
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 186
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 113
  ]
]
