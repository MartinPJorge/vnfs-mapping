graph [
  node [
    id 0
    label 1
    disk 7
    cpu 4
    memory 3
  ]
  node [
    id 1
    label 2
    disk 4
    cpu 2
    memory 6
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 4
    memory 1
  ]
  node [
    id 3
    label 4
    disk 8
    cpu 4
    memory 10
  ]
  node [
    id 4
    label 5
    disk 4
    cpu 4
    memory 15
  ]
  node [
    id 5
    label 6
    disk 10
    cpu 4
    memory 1
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 25
    bw 39
  ]
  edge [
    source 0
    target 1
    delay 30
    bw 69
  ]
  edge [
    source 1
    target 2
    delay 31
    bw 100
  ]
  edge [
    source 1
    target 3
    delay 34
    bw 59
  ]
  edge [
    source 1
    target 4
    delay 35
    bw 21
  ]
  edge [
    source 2
    target 5
    delay 26
    bw 80
  ]
  edge [
    source 3
    target 5
    delay 29
    bw 26
  ]
  edge [
    source 4
    target 5
    delay 33
    bw 89
  ]
]
