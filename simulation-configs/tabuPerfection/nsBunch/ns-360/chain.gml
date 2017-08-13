graph [
  node [
    id 0
    label 1
    disk 4
    cpu 3
    memory 3
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 4
    memory 14
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 7
  ]
  node [
    id 3
    label 4
    disk 10
    cpu 3
    memory 15
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 1
    memory 6
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 3
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 86
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 41
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 22
  ]
  edge [
    source 2
    target 3
    delay 30
    bw 39
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 51
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 22
  ]
]
