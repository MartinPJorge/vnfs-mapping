graph [
  node [
    id 0
    label 1
    disk 2
    cpu 3
    memory 16
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 2
    memory 5
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 2
    memory 14
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 4
    memory 13
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 8
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 1
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 132
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 157
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 87
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 95
  ]
  edge [
    source 3
    target 4
    delay 34
    bw 100
  ]
  edge [
    source 3
    target 5
    delay 29
    bw 166
  ]
]
