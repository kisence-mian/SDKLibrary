.class public Lcom/tds/common/net/TdsHttp$Response;
.super Ljava/lang/Object;
.source "TdsHttp.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/TdsHttp$Response$Builder;
    }
.end annotation


# instance fields
.field final body:Lcom/tds/common/net/TdsHttp$ResponseBody;

.field final code:I

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

.field final message:Ljava/lang/String;

.field final request:Lcom/tds/common/net/TdsHttp$Request;


# direct methods
.method public constructor <init>(Lcom/tds/common/net/TdsHttp$Response$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/tds/common/net/TdsHttp$Response$Builder;

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Response;->headers:Ljava/util/Map;

    .line 524
    iget-object v1, p1, Lcom/tds/common/net/TdsHttp$Response$Builder;->request:Lcom/tds/common/net/TdsHttp$Request;

    iput-object v1, p0, Lcom/tds/common/net/TdsHttp$Response;->request:Lcom/tds/common/net/TdsHttp$Request;

    .line 525
    iget v1, p1, Lcom/tds/common/net/TdsHttp$Response$Builder;->code:I

    iput v1, p0, Lcom/tds/common/net/TdsHttp$Response;->code:I

    .line 526
    iget-object v1, p1, Lcom/tds/common/net/TdsHttp$Response$Builder;->message:Ljava/lang/String;

    iput-object v1, p0, Lcom/tds/common/net/TdsHttp$Response;->message:Ljava/lang/String;

    .line 527
    iget-object v1, p1, Lcom/tds/common/net/TdsHttp$Response$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 528
    iget-object v0, p1, Lcom/tds/common/net/TdsHttp$Response$Builder;->body:Lcom/tds/common/net/TdsHttp$ResponseBody;

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$Response;->body:Lcom/tds/common/net/TdsHttp$ResponseBody;

    .line 529
    return-void
.end method


# virtual methods
.method public body()Lcom/tds/common/net/TdsHttp$ResponseBody;
    .registers 2

    .line 540
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Response;->body:Lcom/tds/common/net/TdsHttp$ResponseBody;

    return-object v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Response;->body:Lcom/tds/common/net/TdsHttp$ResponseBody;

    if-eqz v0, :cond_7

    .line 554
    invoke-virtual {v0}, Lcom/tds/common/net/TdsHttp$ResponseBody;->close()V

    .line 556
    :cond_7
    return-void
.end method

.method public code()I
    .registers 2

    .line 532
    iget v0, p0, Lcom/tds/common/net/TdsHttp$Response;->code:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Response;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public isSuccessful()Z
    .registers 3

    .line 548
    iget v0, p0, Lcom/tds/common/net/TdsHttp$Response;->code:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_c

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public message()Ljava/lang/String;
    .registers 2

    .line 536
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$Response;->message:Ljava/lang/String;

    return-object v0
.end method
