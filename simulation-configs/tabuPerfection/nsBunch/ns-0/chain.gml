graph [
  node [
    id 0
    label 1
    disk 4
    cpu 2
    memory 16
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 4
    memory 11
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 14
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 3
    memory 16
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 168
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 88
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 121
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 195
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 160
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 146
  ]
  edge [
    source 3
    target 5
    delay 35
    bw 84
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 121
  ]
]
