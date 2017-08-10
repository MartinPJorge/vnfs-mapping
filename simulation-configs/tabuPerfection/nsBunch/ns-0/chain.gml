graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 7
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 10
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 3
    memory 5
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 1
    memory 3
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 2
    memory 11
  ]
  node [
    id 5
    label 6
    disk 5
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
    delay 26
    bw 113
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 164
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 166
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 78
  ]
  edge [
    source 2
    target 3
    delay 31
    bw 183
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 54
  ]
  edge [
    source 4
    target 5
    delay 28
    bw 92
  ]
]
