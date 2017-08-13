graph [
  node [
    id 0
    label 1
    disk 10
    cpu 1
    memory 11
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 14
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 1
    memory 12
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 3
    memory 15
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 10
  ]
  node [
    id 5
    label 6
    disk 5
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
    delay 27
    bw 85
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 78
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 80
  ]
  edge [
    source 1
    target 3
    delay 32
    bw 41
  ]
  edge [
    source 1
    target 4
    delay 32
    bw 73
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 68
  ]
]
