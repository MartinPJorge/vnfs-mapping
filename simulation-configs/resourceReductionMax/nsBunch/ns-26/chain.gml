graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 3
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 4
    memory 16
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 3
    memory 9
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 3
    memory 10
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 13
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 2
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 87
  ]
  edge [
    source 0
    target 1
    delay 35
    bw 78
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 150
  ]
  edge [
    source 0
    target 3
    delay 35
    bw 187
  ]
  edge [
    source 1
    target 4
    delay 34
    bw 146
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 145
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 152
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 197
  ]
]
