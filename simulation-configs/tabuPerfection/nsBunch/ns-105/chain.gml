graph [
  node [
    id 0
    label 1
    disk 2
    cpu 4
    memory 2
  ]
  node [
    id 1
    label 2
    disk 10
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
    disk 1
    cpu 2
    memory 2
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 4
    memory 3
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 1
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 63
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 31
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 48
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 90
  ]
  edge [
    source 1
    target 5
    delay 30
    bw 40
  ]
  edge [
    source 2
    target 5
    delay 35
    bw 49
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 96
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 98
  ]
]
