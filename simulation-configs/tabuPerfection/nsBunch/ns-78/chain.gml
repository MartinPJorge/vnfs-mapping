graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 11
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 1
    memory 3
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 12
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 6
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 8
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 2
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 194
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 60
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 123
  ]
  edge [
    source 2
    target 3
    delay 31
    bw 97
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 120
  ]
  edge [
    source 3
    target 5
    delay 26
    bw 111
  ]
]
