graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 1
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 15
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 3
    memory 2
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 1
    memory 14
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 1
    memory 15
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 3
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 142
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 177
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 185
  ]
  edge [
    source 0
    target 3
    delay 27
    bw 111
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 192
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 99
  ]
]
