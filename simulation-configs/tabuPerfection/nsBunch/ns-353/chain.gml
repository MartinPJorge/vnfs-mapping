graph [
  node [
    id 0
    label 1
    disk 2
    cpu 2
    memory 15
  ]
  node [
    id 1
    label 2
    disk 5
    cpu 3
    memory 1
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 2
    memory 4
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 1
    memory 10
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 9
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 3
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
    bw 75
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 55
  ]
  edge [
    source 0
    target 2
    delay 33
    bw 52
  ]
  edge [
    source 0
    target 3
    delay 35
    bw 75
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 69
  ]
  edge [
    source 2
    target 4
    delay 27
    bw 31
  ]
  edge [
    source 3
    target 4
    delay 25
    bw 29
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 95
  ]
]
