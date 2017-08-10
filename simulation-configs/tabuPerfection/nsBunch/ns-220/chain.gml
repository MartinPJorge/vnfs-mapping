graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 13
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 5
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 4
    memory 12
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 4
    memory 5
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 3
    memory 7
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 2
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 152
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 164
  ]
  edge [
    source 0
    target 2
    delay 28
    bw 116
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 87
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 128
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 133
  ]
  edge [
    source 3
    target 4
    delay 33
    bw 130
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 50
  ]
]
