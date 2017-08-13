graph [
  node [
    id 0
    label 1
    disk 9
    cpu 2
    memory 6
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 1
    memory 2
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 11
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 1
    memory 16
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 1
    memory 8
  ]
  node [
    id 5
    label 6
    disk 2
    cpu 1
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 162
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 164
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 137
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 128
  ]
  edge [
    source 3
    target 4
    delay 30
    bw 83
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 103
  ]
]
