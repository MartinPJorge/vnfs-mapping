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
    disk 8
    cpu 4
    memory 5
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 2
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 4
    memory 9
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 3
    memory 8
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 3
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 74
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 171
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 105
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 70
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 192
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 167
  ]
  edge [
    source 3
    target 5
    delay 32
    bw 55
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 61
  ]
]
