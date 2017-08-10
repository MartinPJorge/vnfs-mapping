graph [
  node [
    id 0
    label 1
    disk 3
    cpu 3
    memory 1
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 5
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 1
    memory 5
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 1
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 1
    memory 3
  ]
  node [
    id 5
    label 6
    disk 4
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
    delay 33
    bw 104
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 55
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 62
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 52
  ]
  edge [
    source 3
    target 4
    delay 33
    bw 136
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 60
  ]
]
