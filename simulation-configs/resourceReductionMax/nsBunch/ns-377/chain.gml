graph [
  node [
    id 0
    label 1
    disk 6
    cpu 2
    memory 2
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 1
    memory 16
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 4
    memory 6
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 4
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 2
  ]
  node [
    id 5
    label 6
    disk 10
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
    delay 26
    bw 179
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 163
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 50
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 195
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 200
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 192
  ]
]
