graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 7
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 11
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 7
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 1
    memory 14
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 1
    memory 6
  ]
  node [
    id 5
    label 6
    disk 5
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
    delay 27
    bw 174
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 57
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 85
  ]
  edge [
    source 1
    target 3
    delay 29
    bw 164
  ]
  edge [
    source 1
    target 4
    delay 30
    bw 155
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 119
  ]
]
