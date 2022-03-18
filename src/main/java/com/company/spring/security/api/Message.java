package com.company.spring.security.api;

import javax.persistence.*;

@Entity
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String text;
    private String tag;
    private String filename;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "consumer_id")
    private Consumer author;

    public Message() {
    }

    public Message(String text, String tag, Consumer consumer) {
        this.author = consumer;
        this.text = text;
        this.tag = tag;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public Consumer getAuthor() {
        return author;
    }

    public void setAuthor(Consumer author) {
        this.author = author;
    }

    public String getAuthorName(){
        return author != null ? author.getUsername():"<none>";
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

}
