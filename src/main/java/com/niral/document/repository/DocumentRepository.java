package com.niral.document.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niral.document.entities.Document;

public interface DocumentRepository extends JpaRepository<Document, Long>{

}
