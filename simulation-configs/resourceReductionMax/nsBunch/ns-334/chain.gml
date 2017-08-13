graph [
  node [
    id 0
    label 1
    disk 8
    cpu 2
    memory 14
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
    disk 9
    cpu 2
    memory 15
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 4
    memory 16
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 2
    memory 6
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 4
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 105
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 146
  ]
  edge [
    source 0
    target 2
    delay 30
    bw 195
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 123
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 128
  ]
  edge [
    source 2
    target 5
    delay 34
    bw 174
  ]
  edge [
    source 3
    target 5
    delay 27
    bw 193
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 52
  ]
]
