graph [
  node [
    id 0
    label 1
    disk 6
    cpu 1
    memory 7
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 1
    memory 15
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 1
    memory 6
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 3
    memory 9
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 12
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 1
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 48
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 66
  ]
  edge [
    source 1
    target 2
    delay 34
    bw 65
  ]
  edge [
    source 2
    target 3
    delay 25
    bw 55
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 54
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 78
  ]
]
