graph [
  node [
    id 0
    label 1
    disk 1
    cpu 3
    memory 14
  ]
  node [
    id 1
    label 2
    disk 7
    cpu 3
    memory 9
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 2
    memory 5
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 2
    memory 10
  ]
  node [
    id 4
    label 5
    disk 6
    cpu 1
    memory 10
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 2
    memory 6
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 185
  ]
  edge [
    source 0
    target 1
    delay 25
    bw 135
  ]
  edge [
    source 1
    target 2
    delay 30
    bw 183
  ]
  edge [
    source 2
    target 3
    delay 34
    bw 132
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 54
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 51
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 153
  ]
]
