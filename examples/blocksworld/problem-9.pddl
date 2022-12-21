(define (problem blocksworld-9)
  (:domain blocksworld)
  (:objects a b c d e f g h i j - block)
  (:init
    (handempty)
    (clear j)
    (clear c)
    (ontable a)
    (ontable c)
    (on j i)
    (on i h)
    (on h f)
    (on f d)
    (on d e)
    (on e g)
    (on g b)
    (on b a)
  )
  (:goal (and
    (clear b) (ontable d)
    (on b e) (on e i) (on i g)
    (on g h) (on h c) (on c a)
    (on a f) (on f j) (on j d)
  ))
)