graph [
  node [
    id 0
    label 1
    disk 6
    cpu 1
    memory 1
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 1
    memory 16
  ]
  node [
    id 2
    label 3
    disk 9
    cpu 2
    memory 8
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 4
    memory 6
  ]
  node [
    id 4
    label 5
    disk 2
    cpu 3
    memory 2
  ]
  node [
    id 5
    label 6
    disk 7
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
    delay 34
    bw 31
  ]
  edge [
    source 0
    target 1
    delay 34
    bw 70
  ]
  edge [
    source 0
    target 2
    delay 29
    bw 97
  ]
  edge [
    source 1
    target 3
    delay 30
    bw 77
  ]
  edge [
    source 2
    target 3
    delay 26
    bw 46
  ]
  edge [
    source 3
    target 4
    delay 29
    bw 37
  ]
  edge [
    source 4
    target 5
    delay 34
    bw 33
  ]
]
