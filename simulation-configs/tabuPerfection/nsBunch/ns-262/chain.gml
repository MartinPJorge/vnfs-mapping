graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 10
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 1
    memory 12
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 13
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 3
    memory 7
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 3
    memory 4
  ]
  node [
    id 5
    label 6
    disk 9
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
    delay 29
    bw 162
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 52
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 198
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 102
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 51
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 62
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 59
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 194
  ]
]
