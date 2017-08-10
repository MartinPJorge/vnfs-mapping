graph [
  node [
    id 0
    label 1
    disk 2
    cpu 3
    memory 5
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 4
    memory 16
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 12
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 7
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 2
    memory 9
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 97
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 158
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 57
  ]
  edge [
    source 0
    target 3
    delay 34
    bw 167
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 161
  ]
  edge [
    source 2
    target 4
    delay 25
    bw 117
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 82
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 184
  ]
]
