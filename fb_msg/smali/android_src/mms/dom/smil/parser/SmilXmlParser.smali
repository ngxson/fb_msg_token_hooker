.class public Landroid_src/mms/dom/smil/parser/SmilXmlParser;
.super Ljava/lang/Object;
.source "SmilXmlParser.java"


# instance fields
.field private a:Lorg/xml/sax/XMLReader;

.field private b:Landroid_src/mms/dom/smil/parser/SmilContentHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "org.xml.sax.driver"

    const-string v1, "org.xmlpull.v1.sax2.Driver"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Landroid_src/mms/dom/smil/parser/SmilXmlParser;->a:Lorg/xml/sax/XMLReader;

    .line 41
    new-instance v0, Landroid_src/mms/dom/smil/parser/SmilContentHandler;

    invoke-direct {v0}, Landroid_src/mms/dom/smil/parser/SmilContentHandler;-><init>()V

    iput-object v0, p0, Landroid_src/mms/dom/smil/parser/SmilXmlParser;->b:Landroid_src/mms/dom/smil/parser/SmilContentHandler;

    .line 42
    iget-object v0, p0, Landroid_src/mms/dom/smil/parser/SmilXmlParser;->a:Lorg/xml/sax/XMLReader;

    iget-object v1, p0, Landroid_src/mms/dom/smil/parser/SmilXmlParser;->b:Landroid_src/mms/dom/smil/parser/SmilContentHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Landroid_src/mms/MmsException;

    invoke-direct {v1, v0}, Landroid_src/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lorg/w3c/dom/smil/SMILDocument;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILDocument;->c()Lorg/w3c/dom/smil/SMILElement;

    .line 72
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILDocument;->d()Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 73
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Landroid_src/mms/dom/smil/parser/SmilXmlParser;->b:Landroid_src/mms/dom/smil/parser/SmilContentHandler;

    invoke-virtual {v0}, Landroid_src/mms/dom/smil/parser/SmilContentHandler;->a()V

    .line 51
    iget-object v0, p0, Landroid_src/mms/dom/smil/parser/SmilXmlParser;->a:Lorg/xml/sax/XMLReader;

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 53
    iget-object v0, p0, Landroid_src/mms/dom/smil/parser/SmilXmlParser;->b:Landroid_src/mms/dom/smil/parser/SmilContentHandler;

    invoke-virtual {v0}, Landroid_src/mms/dom/smil/parser/SmilContentHandler;->b()Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Landroid_src/mms/dom/smil/parser/SmilXmlParser;->a(Lorg/w3c/dom/smil/SMILDocument;)V

    .line 56
    return-object v0
.end method
