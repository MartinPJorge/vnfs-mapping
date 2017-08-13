graph [
  node [
    id 0
    label 1
    disk 9
    cpu 4
    memory 14
  ]
  node [
    id 1
    label 2
    disk 8
    cpu 4
    memory 13
  ]
  node [
    id 2
    label 3
    disk 8
    cpu 2
    memory 16
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 3
    memory 13
  ]
  node [
    id 4
    label 5
    disk 8
    cpu 2
    memory 9
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 3
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 27
    bw 26
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 79
  ]
  edge [
    source 0
    target 2
    delay 31
    bw 75
  ]
  edge [
    source 1
    target 3
    delay 25
    bw 46
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 60
  ]
  edge [
    source 3
    target 5
    delay 28
    bw 45
  ]
  edge [
    source 4
    target 5
    delay 35
    bw 40
  ]
]
