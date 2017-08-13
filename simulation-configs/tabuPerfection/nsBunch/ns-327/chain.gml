graph [
  node [
    id 0
    label 1
    disk 4
    cpu 2
    memory 13
  ]
  node [
    id 1
    label 2
    disk 6
    cpu 4
    memory 7
  ]
  node [
    id 2
    label 3
    disk 1
    cpu 2
    memory 5
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 4
    memory 14
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 1
    memory 1
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 2
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 55
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 88
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 33
  ]
  edge [
    source 0
    target 3
    delay 29
    bw 21
  ]
  edge [
    source 1
    target 5
    delay 30
    bw 95
  ]
  edge [
    source 2
    target 4
    delay 26
    bw 37
  ]
  edge [
    source 3
    target 4
    delay 26
    bw 95
  ]
]
