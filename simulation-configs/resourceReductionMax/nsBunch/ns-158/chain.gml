graph [
  node [
    id 0
    label 1
    disk 10
    cpu 3
    memory 11
  ]
  node [
    id 1
    label 2
    disk 9
    cpu 1
    memory 9
  ]
  node [
    id 2
    label 3
    disk 5
    cpu 2
    memory 4
  ]
  node [
    id 3
    label 4
    disk 4
    cpu 3
    memory 15
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
    disk 3
    cpu 3
    memory 14
  ]
  node [
    id 6
    label "start"
  ]
  edge [
    source 0
    target 6
    delay 26
    bw 192
  ]
  edge [
    source 0
    target 1
    delay 26
    bw 109
  ]
  edge [
    source 0
    target 2
    delay 26
    bw 100
  ]
  edge [
    source 0
    target 3
    delay 33
    bw 196
  ]
  edge [
    source 1
    target 4
    delay 27
    bw 154
  ]
  edge [
    source 2
    target 5
    delay 25
    bw 197
  ]
  edge [
    source 3
    target 4
    delay 33
    bw 170
  ]
  edge [
    source 4
    target 5
    delay 29
    bw 200
  ]
]
