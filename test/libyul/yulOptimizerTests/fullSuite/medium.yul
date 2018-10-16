{
    function allocate(size) -> p {
        p := mload(0x40)
        mstore(0x40, add(p, size))
    }
    function array_index_access(array, index) -> p {
        p := add(array, mul(index, 0x20))
    }
    pop(allocate(0x20))
    let x := allocate(0x40)
    mstore(array_index_access(x, 3), 2)
}
// ----
// fullSuite
// {
//     {
//         let _12 := 0x20
//         let allocate_p
//         let allocate__7 := 0x40
//         allocate_p := mload(allocate__7)
//         mstore(allocate__7, add(allocate_p, _12))
//         pop(allocate_p)
//         let allocate_p_1
//         allocate_p_1 := mload(allocate__7)
//         mstore(allocate__7, add(allocate_p_1, allocate__7))
//         mstore(add(allocate_p_1, 96), 2)
//     }
// }
