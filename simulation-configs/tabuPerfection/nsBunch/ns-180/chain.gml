graph [
  node [
    id 0
    label 1
    disk 9
    cpu 1
    memory 15
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 4
    memory 10
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 4
    memory 11
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 3
    memory 1
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 3
    memory 4
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 3
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 96
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 98
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 60
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 50
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 79
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 44
  ]
]
