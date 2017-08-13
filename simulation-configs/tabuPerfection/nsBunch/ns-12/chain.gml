graph [
  node [
    id 0
    label 1
    disk 4
    cpu 4
    memory 16
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 4
  ]
  node [
    id 2
    label 3
    disk 6
    cpu 3
    memory 7
  ]
  node [
    id 3
    label 4
    disk 9
    cpu 1
    memory 2
  ]
  node [
    id 4
    label 5
    disk 9
    cpu 1
    memory 2
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 2
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 64
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 38
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 37
  ]
  edge [
    source 0
    target 3
    delay 26
    bw 100
  ]
  edge [
    source 1
    target 4
    delay 33
    bw 40
  ]
  edge [
    source 2
    target 4
    delay 31
    bw 59
  ]
  edge [
    source 3
    target 5
    delay 30
    bw 89
  ]
  edge [
    source 4
    target 5
    delay 30
    bw 22
  ]
]
