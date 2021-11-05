pragma solidity ^0.8.0;

// 用于表示复合型数据。结构体是引用类型
contract Struct {
    struct Book {
        string title;
        string author;
        uint256 book_id;
    }
    Book book;

    function setBook() public {
        book = Book("Learn Java", "TP", 1);
    }

    // should output uint256: 1 if invoke
    function getBookId() public view returns (uint256) {
        return book.book_id;
    }
}
