-- https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true

SELECT N,
IF (
    P IS NULL,
    'Root',
    IF (
        N IN (SELECT P FROM BST),
        'Inner',
        'Leaf'
    )
)
FROM BST
ORDER BY N ASC;