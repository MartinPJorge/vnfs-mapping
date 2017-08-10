graph [
  node [
    id 0
    label 1
    disk 5
    cpu 4
    memory 6
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 3
    memory 10
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 4
    memory 1
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 3
    memory 10
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 2
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 4
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
    bw 100
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 63
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 198
  ]
  edge [
    source 0
    target 3
    delay 32
    bw 194
  ]
  edge [
    source 1
    target 4
    delay 26
    bw 87
  ]
  edge [
    source 2
    target 5
    delay 27
    bw 131
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 163
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 66
  ]
]
