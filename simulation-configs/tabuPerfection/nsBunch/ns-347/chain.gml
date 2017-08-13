graph [
  node [
    id 0
    label 1
    disk 1
    cpu 1
    memory 10
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 2
    memory 11
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 3
    memory 3
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 4
    memory 11
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 3
    memory 10
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 3
    memory 5
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 29
    bw 94
  ]
  edge [
    source 0
    target 1
    delay 29
    bw 55
  ]
  edge [
    source 1
    target 2
    delay 35
    bw 75
  ]
  edge [
    source 2
    target 3
    delay 29
    bw 38
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 54
  ]
  edge [
    source 3
    target 5
    delay 33
    bw 37
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 49
  ]
]
