.class public Lcom/tds/common/net/TdsHttp$Response$Builder;
.super Ljava/lang/Object;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lcom/tds/common/net/TdsHttp$ResponseBody;

.field code:I

.field final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field message:Ljava/lang/String;

.field request:Lcom/tds/common/net/TdsHttp$Request;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    const/4 v0, -0x1

    iput v0, p0, Lcom/tds/common/net/TdsHttp$Response$Builder;->code:I

    .line 562
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Response$Builder;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public body(Lcom/tds/common/net/TdsHttp$ResponseBody;)Lcom/tds/common/net/TdsHttp$Response$Builder;
    .registers 2
    .param p1, "body"    # Lcom/tds/common/net/TdsHttp$ResponseBody;

    .line 596
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$Response$Builder;->body:Lcom/tds/common/net/TdsHttp$ResponseBody;

    .line 597
    return-object p0
.end method

.method public build()Lcom/tds/common/net/TdsHttp$Response;
    .registers 2

    .line 601
    new-instance v0, Lcom/tds/common/net/TdsHttp$Response;

    invoke-direct {v0, p0}, Lcom/tds/common/net/TdsHttp$Response;-><init>(Lcom/tds/common/net/TdsHttp$Response$Builder;)V

    return-object v0
.end method

.method public code(I)Lcom/tds/common/net/TdsHttp$Response$Builder;
    .registers 2
    .param p1, "code"    # I

    .line 571
    iput p1, p0, Lcom/tds/common/net/TdsHttp$Response$Builder;->code:I

    .line 572
    return-object p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$Response$Builder;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Response$Builder;->headers:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lcom/tds/common/net/TdsHttp$Response$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/tds/common/net/TdsHttp$Response$Builder;"
        }
    .end annotation

    .line 586
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Response$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 587
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$Response$Builder;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 576
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$Response$Builder;->message:Ljava/lang/String;

    .line 577
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$Response$Builder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Response$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    return-object p0
.end method

.method public request(Lcom/tds/common/net/TdsHttp$Request;)Lcom/tds/common/net/TdsHttp$Response$Builder;
    .registers 2
    .param p1, "request"    # Lcom/tds/common/net/TdsHttp$Request;

    .line 566
    iput-object p1, p0, Lcom/tds/common/net/TdsHttp$Response$Builder;->request:Lcom/tds/common/net/TdsHttp$Request;

    .line 567
    return-object p0
.end method
