graph [
  node [
    id 0
    label 1
    disk 5
    cpu 2
    memory 14
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 1
    memory 15
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 16
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 1
    memory 3
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 1
    memory 13
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 2
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 125
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 113
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 193
  ]
  edge [
    source 1
    target 3
    delay 26
    bw 104
  ]
  edge [
    source 1
    target 4
    delay 28
    bw 159
  ]
  edge [
    source 2
    target 5
    delay 25
    bw 174
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 143
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 68
  ]
]
