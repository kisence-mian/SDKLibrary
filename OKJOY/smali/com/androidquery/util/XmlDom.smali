.class public Lcom/androidquery/util/XmlDom;
.super Ljava/lang/Object;
.source "XmlDom.java"


# instance fields
.field private root:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 7
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 112
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_7
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 113
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 114
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    iput-object v4, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;
    :try_end_15
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_15} :catch_1d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_16

    .line 120
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    :goto_15
    return-void

    .line 116
    :catch_16
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 115
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1d
    move-exception v4

    goto :goto_15
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidquery/util/XmlDom;-><init>([B)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 2
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    .line 76
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/androidquery/util/XmlDom;-><init>(Ljava/io/InputStream;)V

    .line 98
    return-void
.end method

.method private static convert(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .registers 8
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    .line 279
    const/4 v1, 0x0

    .line 294
    :cond_8
    :goto_8
    return-object v1

    :cond_9
    move-object v0, p0

    .line 282
    check-cast v0, Lorg/w3c/dom/Element;

    .line 284
    .local v0, "e":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 286
    .local v1, "result":Lcom/androidquery/util/XmlDom;
    if-eqz p1, :cond_19

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 287
    :cond_19
    if-eqz p2, :cond_21

    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 288
    :cond_21
    if-eqz p3, :cond_2d

    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 289
    :cond_2d
    new-instance v1, Lcom/androidquery/util/XmlDom;

    .end local v1    # "result":Lcom/androidquery/util/XmlDom;
    invoke-direct {v1, v0}, Lcom/androidquery/util/XmlDom;-><init>(Lorg/w3c/dom/Element;)V

    .restart local v1    # "result":Lcom/androidquery/util/XmlDom;
    goto :goto_8
.end method

.method private static convert(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p0, "nl"    # Lorg/w3c/dom/NodeList;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/androidquery/util/XmlDom;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_d

    .line 273
    return-object v1

    .line 269
    :cond_d
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lcom/androidquery/util/XmlDom;->convert(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;

    move-result-object v2

    .line 270
    .local v2, "xml":Lcom/androidquery/util/XmlDom;
    if-eqz v2, :cond_1a

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private serialize(Lorg/w3c/dom/Element;I)Ljava/lang/String;
    .registers 11
    .param p1, "e"    # Lorg/w3c/dom/Element;
    .param p2, "intent"    # I

    .prologue
    const/4 v5, 0x0

    .line 364
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 365
    .local v2, "s":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 367
    .local v4, "sw":Ljava/io/StringWriter;
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 368
    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 370
    const/4 v3, 0x0

    .line 371
    .local v3, "spaces":Ljava/lang/String;
    if-lez p2, :cond_22

    .line 372
    new-array v0, p2, [C

    .line 373
    .local v0, "chars":[C
    const/16 v6, 0x20

    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([CC)V

    .line 374
    new-instance v3, Ljava/lang/String;

    .end local v3    # "spaces":Ljava/lang/String;
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 377
    .end local v0    # "chars":[C
    .restart local v3    # "spaces":Ljava/lang/String;
    :cond_22
    iget-object v6, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v2, v7, v3}, Lcom/androidquery/util/XmlDom;->serialize(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 378
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 380
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_30

    move-result-object v5

    .line 385
    .end local v2    # "s":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "spaces":Ljava/lang/String;
    .end local v4    # "sw":Ljava/io/StringWriter;
    :goto_2f
    return-object v5

    .line 381
    :catch_30
    move-exception v1

    .line 382
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method private serialize(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    .registers 16
    .param p1, "e"    # Lorg/w3c/dom/Element;
    .param p2, "s"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "depth"    # I
    .param p4, "spaces"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 442
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, p2, p3, p4}, Lcom/androidquery/util/XmlDom;->writeSpace(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 446
    const-string v8, ""

    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 449
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 450
    .local v6, "nm":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    if-lt v2, v8, :cond_3a

    .line 456
    .end local v2    # "i":I
    .end local v6    # "nm":Lorg/w3c/dom/NamedNodeMap;
    :cond_1d
    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v8

    if-eqz v8, :cond_34

    .line 458
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 460
    .local v5, "nl":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .line 462
    .local v1, "elements":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_29
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lt v2, v8, :cond_50

    .line 484
    if-lez v1, :cond_34

    .line 485
    invoke-direct {p0, p2, p3, p4}, Lcom/androidquery/util/XmlDom;->writeSpace(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 489
    .end local v1    # "elements":I
    .end local v2    # "i":I
    .end local v5    # "nl":Lorg/w3c/dom/NodeList;
    :cond_34
    const-string v8, ""

    invoke-interface {p2, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    return-void

    .line 451
    .restart local v2    # "i":I
    .restart local v6    # "nm":Lorg/w3c/dom/NamedNodeMap;
    :cond_3a
    invoke-interface {v6, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 452
    .local v0, "attr":Lorg/w3c/dom/Attr;
    const-string v8, ""

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 464
    .end local v0    # "attr":Lorg/w3c/dom/Attr;
    .end local v6    # "nm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v1    # "elements":I
    .restart local v5    # "nl":Lorg/w3c/dom/NodeList;
    :cond_50
    invoke-interface {v5, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 466
    .local v3, "n":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    .line 468
    .local v7, "type":S
    packed-switch v7, :pswitch_data_78

    .line 462
    .end local v3    # "n":Lorg/w3c/dom/Node;
    :goto_5b
    :pswitch_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 470
    .restart local v3    # "n":Lorg/w3c/dom/Node;
    :pswitch_5e
    check-cast v3, Lorg/w3c/dom/Element;

    .end local v3    # "n":Lorg/w3c/dom/Node;
    add-int/lit8 v8, p3, 0x1

    invoke-direct {p0, v3, p2, v8, p4}, Lcom/androidquery/util/XmlDom;->serialize(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    .line 471
    add-int/lit8 v1, v1, 0x1

    .line 472
    goto :goto_5b

    .line 474
    .restart local v3    # "n":Lorg/w3c/dom/Node;
    :pswitch_68
    invoke-direct {p0, v3}, Lcom/androidquery/util/XmlDom;->text(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5b

    .line 477
    :pswitch_70
    invoke-direct {p0, v3}, Lcom/androidquery/util/XmlDom;->text(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_5b

    .line 468
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5b
        :pswitch_68
        :pswitch_70
    .end packed-switch
.end method

.method private text(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 4
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 422
    .local v0, "text":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 434
    :cond_8
    :goto_8
    if-nez v0, :cond_c

    const-string v0, ""

    .line 436
    :cond_c
    return-object v0

    .line 424
    :pswitch_d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 426
    goto :goto_8

    .line 428
    :pswitch_18
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 422
    nop

    :pswitch_data_1e
    .packed-switch 0x3
        :pswitch_d
        :pswitch_18
    .end packed-switch
.end method

.method private writeSpace(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    .registers 6
    .param p1, "s"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "depth"    # I
    .param p3, "spaces"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 390
    if-eqz p3, :cond_a

    .line 391
    const-string v1, "\n"

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-lt v0, p2, :cond_b

    .line 396
    .end local v0    # "i":I
    :cond_a
    return-void

    .line 393
    .restart local v0    # "i":I
    :cond_b
    invoke-interface {p1, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method


# virtual methods
.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public child(Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, p1, v0, v0}, Lcom/androidquery/util/XmlDom;->child(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;

    move-result-object v0

    return-object v0
.end method

.method public child(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/util/XmlDom;->children(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, "c":Ljava/util/List;, "Ljava/util/List<Lcom/androidquery/util/XmlDom;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    .line 212
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/util/XmlDom;

    goto :goto_b
.end method

.method public children(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, v0, v0}, Lcom/androidquery/util/XmlDom;->children(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public children(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/androidquery/util/XmlDom;->convert(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public tag(Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v2, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v2, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 136
    .local v0, "nl":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .line 138
    .local v1, "result":Lcom/androidquery/util/XmlDom;
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_1b

    .line 139
    new-instance v1, Lcom/androidquery/util/XmlDom;

    .end local v1    # "result":Lcom/androidquery/util/XmlDom;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-direct {v1, v2}, Lcom/androidquery/util/XmlDom;-><init>(Lorg/w3c/dom/Element;)V

    .line 143
    .restart local v1    # "result":Lcom/androidquery/util/XmlDom;
    :cond_1b
    return-object v1
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/androidquery/util/XmlDom;
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/util/XmlDom;->tags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "tags":Ljava/util/List;, "Ljava/util/List<Lcom/androidquery/util/XmlDom;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 165
    const/4 v1, 0x0

    .line 167
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/util/XmlDom;

    goto :goto_b
.end method

.method public tags(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, v0, v0}, Lcom/androidquery/util/XmlDom;->tags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public tags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androidquery/util/XmlDom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v1, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 260
    .local v0, "nl":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3}, Lcom/androidquery/util/XmlDom;->convert(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public text()Ljava/lang/String;
    .registers 6

    .prologue
    .line 407
    iget-object v3, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 408
    .local v1, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 415
    :goto_16
    return-object v3

    .line 410
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_28

    .line 415
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    .line 412
    :cond_28
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/androidquery/util/XmlDom;->text(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method public text(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/androidquery/util/XmlDom;->child(Ljava/lang/String;)Lcom/androidquery/util/XmlDom;

    move-result-object v0

    .line 311
    .local v0, "dom":Lcom/androidquery/util/XmlDom;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    .line 312
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/androidquery/util/XmlDom;->text()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androidquery/util/XmlDom;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 3
    .param p1, "intentSpaces"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/androidquery/util/XmlDom;->root:Lorg/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lcom/androidquery/util/XmlDom;->serialize(Lorg/w3c/dom/Element;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
