graph [
  node [
    id 0
    label 1
    disk 1
    cpu 2
    memory 14
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 5
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 1
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 4
    memory 2
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 6
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 148
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 166
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 159
  ]
  edge [
    source 2
    target 3
    delay 28
    bw 109
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 139
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 151
  ]
]
