graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 1
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 4
    memory 8
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 1
    memory 12
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 1
    memory 12
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 4
    memory 7
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 2
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 182
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 101
  ]
  edge [
    source 0
    target 2
    delay 32
    bw 111
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 56
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 198
  ]
  edge [
    source 3
    target 4
    delay 27
    bw 150
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 137
  ]
]
