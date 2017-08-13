graph [
  node [
    id 0
    label 1
    disk 3
    cpu 1
    memory 5
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 2
    memory 14
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 2
    memory 15
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 2
    memory 2
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 1
    memory 8
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 4
    memory 15
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 59
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 60
  ]
  edge [
    source 1
    target 2
    delay 25
    bw 60
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 95
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 67
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 80
  ]
]
