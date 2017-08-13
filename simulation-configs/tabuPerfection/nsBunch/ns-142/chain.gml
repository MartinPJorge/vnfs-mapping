graph [
  node [
    id 0
    label 1
    disk 4
    cpu 1
    memory 10
  ]
  node [
    id 1
    label 2
    disk 10
    cpu 4
    memory 9
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 1
    memory 10
  ]
  node [
    id 3
    label 4
    disk 3
    cpu 3
    memory 4
  ]
  node [
    id 4
    label 5
    disk 1
    cpu 1
    memory 4
  ]
  node [
    id 5
    label 6
    disk 9
    cpu 1
    memory 13
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 35
    bw 60
  ]
  edge [
    source 0
    target 1
    delay 31
    bw 45
  ]
  edge [
    source 1
    target 2
    delay 26
    bw 37
  ]
  edge [
    source 2
    target 3
    delay 33
    bw 41
  ]
  edge [
    source 2
    target 4
    delay 33
    bw 54
  ]
  edge [
    source 4
    target 5
    delay 31
    bw 48
  ]
]
