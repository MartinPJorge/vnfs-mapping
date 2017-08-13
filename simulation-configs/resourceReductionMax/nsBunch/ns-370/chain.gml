graph [
  node [
    id 0
    label 1
    disk 1
    cpu 2
    memory 2
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 13
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 4
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 9
  ]
  node [
    id 5
    label 6
    disk 1
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
    delay 28
    bw 200
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 75
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 134
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 117
  ]
  edge [
    source 1
    target 4
    delay 31
    bw 113
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 135
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 145
  ]
]
