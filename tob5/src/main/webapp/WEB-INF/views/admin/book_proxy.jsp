<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<?php
header("Content-Type: text/html; charset=UTF-8");

require_once "naverBookApi.jsp";

$book = new Book();

echo $book->getBookSearch($_POST['query']);
?>