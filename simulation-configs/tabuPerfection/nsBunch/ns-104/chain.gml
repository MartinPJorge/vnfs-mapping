graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 12
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 12
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 1
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 4
    memory 14
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
    disk 5
    cpu 3
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 160
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 91
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 175
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 153
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 142
  ]
  edge [
    source 2
    target 5
    delay 31
    bw 131
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 133
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 187
  ]
]
