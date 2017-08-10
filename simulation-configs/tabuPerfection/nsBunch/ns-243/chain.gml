graph [
  node [
    id 0
    label 1
    disk 4
    cpu 4
    memory 1
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 3
    memory 1
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 3
    memory 9
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 1
    memory 8
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 13
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 4
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 157
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 194
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 138
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 99
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 193
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 101
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 119
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 85
  ]
]
