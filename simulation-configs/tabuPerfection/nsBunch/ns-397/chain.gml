graph [
  node [
    id 0
    label 1
    disk 5
    cpu 1
    memory 4
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 2
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 4
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 4
    memory 5
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 5
  ]
  node [
    id 5
    label 6
    disk 10
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
    delay 27
    bw 59
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 88
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 20
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 48
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 84
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 60
  ]
]
