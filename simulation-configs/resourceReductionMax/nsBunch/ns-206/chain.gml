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
    disk 7
    cpu 3
    memory 13
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 3
    memory 14
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 5
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 16
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 2
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 193
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 80
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 188
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 55
  ]
  edge [
    source 1
    target 4
    delay 31
    bw 59
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 129
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 92
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 98
  ]
]
