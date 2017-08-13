graph [
  node [
    id 0
    label 1
    disk 4
    cpu 3
    memory 8
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 8
  ]
  node [
    id 2
    label 3
    disk 2
    cpu 2
    memory 6
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 2
    memory 11
  ]
  node [
    id 4
    label 5
    disk 5
    cpu 2
    memory 3
  ]
  node [
    id 5
    label 6
    disk 5
    cpu 1
    memory 3
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 111
  ]
  edge [
    source 0
    target 1
    delay 32
    bw 200
  ]
  edge [
    source 1
    target 2
    delay 32
    bw 149
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 85
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 84
  ]
  edge [
    source 3
    target 5
    delay 33
    bw 195
  ]
  edge [
    source 4
    target 5
    delay 27
    bw 50
  ]
]
