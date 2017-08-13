graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 8
  ]
  node [
    id 1
    label 2
    disk 3
    cpu 3
    memory 9
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 10
  ]
  node [
    id 3
    label 4
    disk 2
    cpu 2
    memory 5
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 2
    memory 15
  ]
  node [
    id 5
    label 6
    disk 1
    cpu 2
    memory 4
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 33
    bw 37
  ]
  edge [
    source 0
    target 1
    delay 27
    bw 85
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 90
  ]
  edge [
    source 1
    target 3
    delay 33
    bw 84
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 22
  ]
  edge [
    source 3
    target 4
    delay 31
    bw 96
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 96
  ]
]
