graph [
  node [
    id 0
    label 1
    disk 8
    cpu 3
    memory 3
  ]
  node [
    id 1
    label 2
    disk 2
    cpu 4
    memory 13
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 9
  ]
  node [
    id 3
    label 4
    disk 1
    cpu 3
    memory 14
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 2
    memory 5
  ]
  node [
    id 5
    label 6
    disk 3
    cpu 1
    memory 12
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 44
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 78
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 37
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 80
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 48
  ]
  edge [
    source 3
    target 5
    delay 34
    bw 82
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 70
  ]
]
