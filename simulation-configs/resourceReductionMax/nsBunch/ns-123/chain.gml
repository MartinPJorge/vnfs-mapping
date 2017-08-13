graph [
  node [
    id 0
    label 1
    disk 4
    cpu 4
    memory 9
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 2
    memory 14
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 1
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 4
    memory 15
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 2
    memory 11
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 154
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 134
  ]
  edge [
    source 1
    target 2
    delay 27
    bw 164
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 149
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 130
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 165
  ]
]
