graph [
  node [
    id 0
    label 1
    disk 5
    cpu 4
    memory 2
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 1
    memory 10
  ]
  node [
    id 2
    label 3
    disk 7
    cpu 2
    memory 2
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 1
    memory 10
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 1
    memory 6
  ]
  node [
    id 5
    label 6
    disk 6
    cpu 2
    memory 9
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 28
    bw 35
  ]
  edge [
    source 0
    target 1
    delay 33
    bw 78
  ]
  edge [
    source 0
    target 2
    delay 25
    bw 27
  ]
  edge [
    source 0
    target 3
    delay 31
    bw 42
  ]
  edge [
    source 1
    target 5
    delay 35
    bw 70
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 35
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 85
  ]
  edge [
    source 4
    target 5
    delay 25
    bw 22
  ]
]
