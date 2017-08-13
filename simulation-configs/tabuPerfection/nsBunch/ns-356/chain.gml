graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 16
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 15
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 1
    memory 6
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 2
    memory 1
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 3
    memory 13
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 89
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 29
  ]
  edge [
    source 0
    target 2
    delay 34
    bw 51
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 55
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 43
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 30
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 20
  ]
]
