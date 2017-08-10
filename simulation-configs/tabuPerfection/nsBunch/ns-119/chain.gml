graph [
  node [
    id 0
    label 1
    disk 6
    cpu 1
    memory 9
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 11
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 5
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 15
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 14
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 4
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 97
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 63
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 168
  ]
  edge [
    source 1
    target 3
    delay 31
    bw 130
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 152
  ]
  edge [
    source 3
    target 5
    delay 33
    bw 78
  ]
]
