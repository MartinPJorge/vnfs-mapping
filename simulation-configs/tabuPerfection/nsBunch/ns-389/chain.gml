graph [
  node [
    id 0
    label 1
    disk 4
    cpu 2
    memory 6
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 1
    memory 3
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 3
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 4
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 15
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 94
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 50
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 31
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 49
  ]
  edge [
    source 2
    target 5
    delay 29
    bw 100
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 94
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 67
  ]
]
