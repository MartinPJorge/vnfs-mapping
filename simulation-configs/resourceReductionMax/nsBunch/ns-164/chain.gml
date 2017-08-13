graph [
  node [
    id 0
    label 1
    disk 6
    cpu 4
    memory 15
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 3
    memory 9
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 1
    memory 2
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 1
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 8
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 2
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 187
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 133
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 143
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 126
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 155
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 145
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 184
  ]
]
