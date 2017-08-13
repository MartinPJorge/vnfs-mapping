graph [
  node [
    id 0
    label 1
    disk 1
    cpu 1
    memory 8
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 2
    memory 6
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
    disk 2
    cpu 2
    memory 13
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 4
    memory 1
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 183
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 200
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 143
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 91
  ]
  edge [
    source 2
    target 5
    delay 27
    bw 112
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 60
  ]
  edge [
    source 4
    target 5
    delay 32
    bw 192
  ]
]
