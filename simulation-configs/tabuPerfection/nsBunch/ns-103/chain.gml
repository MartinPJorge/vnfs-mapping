graph [
  node [
    id 0
    label 1
    disk 10
    cpu 1
    memory 8
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 4
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 3
    memory 11
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 4
    memory 13
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 2
    memory 4
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 2
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 29
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 24
  ]
  edge [
    source 1
    target 2
    delay 33
    bw 92
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 36
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 49
  ]
  edge [
    source 3
    target 5
    delay 31
    bw 84
  ]
]
