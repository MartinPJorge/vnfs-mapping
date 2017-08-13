graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 5
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 14
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 1
    memory 10
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 3
    memory 2
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 1
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 91
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 89
  ]
  edge [
    source 0
    target 2
    delay 27
    bw 55
  ]
  edge [
    source 0
    target 3
    delay 25
    bw 75
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 67
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 25
  ]
]
