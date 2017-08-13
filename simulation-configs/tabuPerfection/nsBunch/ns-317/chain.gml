graph [
  node [
    id 0
    label 1
    disk 9
    cpu 3
    memory 3
  ]
  node [
    id 1
    label 2
    disk 1
    cpu 1
    memory 10
  ]
  node [
    id 2
    label 3
    disk 10
    cpu 4
    memory 7
  ]
  node [
    id 3
    label 4
    disk 6
    cpu 2
    memory 4
  ]
  node [
    id 4
    label 5
    disk 7
    cpu 1
    memory 11
  ]
  node [
    id 5
    label 6
    disk 4
    cpu 2
    memory 16
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 32
    bw 33
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 49
  ]
  edge [
    source 1
    target 2
    delay 29
    bw 59
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 95
  ]
  edge [
    source 2
    target 4
    delay 25
    bw 96
  ]
  edge [
    source 3
    target 4
    delay 33
    bw 39
  ]
  edge [
    source 4
    target 5
    delay 26
    bw 70
  ]
]
