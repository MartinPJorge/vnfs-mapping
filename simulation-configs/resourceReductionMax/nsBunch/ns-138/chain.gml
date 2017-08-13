graph [
  node [
    id 0
    label 1
    disk 5
    cpu 3
    memory 2
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 4
    memory 2
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 3
    memory 3
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 6
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 7
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 4
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 86
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 146
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 62
  ]
  edge [
    source 1
    target 3
    delay 27
    bw 160
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 131
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 146
  ]
]
