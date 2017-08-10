graph [
  node [
    id 0
    label 1
    disk 6
    cpu 3
    memory 14
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 2
    memory 9
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 1
    memory 10
  ]
  node [
    id 3
    label 4
    disk 7
    cpu 3
    memory 4
  ]
  node [
    id 4
    label 5
    disk 10
    cpu 1
    memory 10
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 2
    memory 8
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 50
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
    delay 26
    bw 59
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 152
  ]
  edge [
    source 2
    target 4
    delay 25
    bw 195
  ]
  edge [
    source 3
    target 5
    delay 29
    bw 172
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 115
  ]
]