graph [
  node [
    id 0
    label 1
    disk 2
    cpu 3
    memory 11
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 4
    memory 5
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 16
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 3
    memory 1
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 3
    memory 3
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 1
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 30
    bw 164
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 182
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 146
  ]
  edge [
    source 0
    target 3
    delay 28
    bw 171
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 115
  ]
  edge [
    source 2
    target 4
    delay 28
    bw 170
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 165
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 102
  ]
]
