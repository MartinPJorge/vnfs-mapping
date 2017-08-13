graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 16
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 9
  ]
  node [
    id 2
    label 3
    disk 3
    cpu 1
    memory 3
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 3
    memory 6
  ]
  node [
    id 4
    label 5
    disk 3
    cpu 3
    memory 1
  ]
  node [
    id 5
    label 6
    disk 3
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
    delay 26
    bw 159
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 58
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 98
  ]
  edge [
    source 0
    target 3
    delay 29
    bw 110
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 183
  ]
  edge [
    source 2
    target 4
    delay 34
    bw 198
  ]
  edge [
    source 3
    target 4
    delay 35
    bw 119
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 101
  ]
]
