graph [
  node [
    id 0
    label 1
    disk 8
    cpu 4
    memory 13
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 10
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 1
    memory 8
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 6
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 1
    memory 14
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 2
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 166
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 187
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 147
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 146
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 65
  ]
  edge [
    source 3
    target 5
    delay 25
    bw 147
  ]
]
