graph [
  node [
    id 0
    label 1
    disk 3
    cpu 2
    memory 10
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 10
  ]
  node [
    id 2
    label 3
    disk 4
    cpu 3
    memory 14
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 3
    memory 14
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 4
    memory 9
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 3
    memory 11
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 77
  ]
  edge [
    source 0
    target 1
    delay 28
    bw 54
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 161
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 142
  ]
  edge [
    source 1
    target 4
    delay 29
    bw 130
  ]
  edge [
    source 2
    target 4
    delay 29
    bw 128
  ]
  edge [
    source 3
    target 4
    delay 28
    bw 106
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 182
  ]
]
