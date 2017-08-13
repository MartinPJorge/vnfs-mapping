graph [
  node [
    id 0
    label 1
    disk 2
    cpu 3
    memory 1
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 10
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 1
    memory 13
  ]
  node [
    id 3
    label 4
    disk 5
    cpu 3
    memory 15
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 4
    memory 3
  ]
  node [
    id 5
    label 6
    disk 8
    cpu 2
    memory 7
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 31
    bw 60
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 36
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 48
  ]
  edge [
    source 1
    target 3
    delay 35
    bw 39
  ]
  edge [
    source 2
    target 4
    delay 35
    bw 70
  ]
  edge [
    source 3
    target 4
    delay 32
    bw 86
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 88
  ]
]
