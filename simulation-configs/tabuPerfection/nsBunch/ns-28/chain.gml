graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 13
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 9
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 4
    memory 7
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 1
    memory 8
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 1
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 2
    memory 10
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 34
    bw 126
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 109
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 180
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 105
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 84
  ]
  edge [
    source 2
    target 5
    delay 30
    bw 68
  ]
]
