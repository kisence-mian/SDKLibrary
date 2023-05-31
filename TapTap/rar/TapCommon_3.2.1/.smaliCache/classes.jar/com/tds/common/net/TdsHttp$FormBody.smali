.class public Lcom/tds/common/net/TdsHttp$FormBody;
.super Lcom/tds/common/net/TdsHttp$RequestBody;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormBody"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/TdsHttp$FormBody$Builder;
    }
.end annotation


# instance fields
.field private contentLength:J

.field private final encodedNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 423
    .local p1, "encodedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "encodedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/tds/common/net/TdsHttp$RequestBody;-><init>()V

    .line 421
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tds/common/net/TdsHttp$FormBody;->contentLength:J

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$FormBody;->encodedNames:Ljava/util/List;

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$FormBody;->encodedValues:Ljava/util/List;

    .line 426
    return-void
.end method

.method private writeOrCountBytes(Ljava/io/OutputStream;)J
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 449
    .local v0, "countBytes":Z
    :goto_5
    if-eqz v0, :cond_d

    .line 450
    new-instance v1, Lcom/tds/common/net/TdsHttp$CountBytesOutputStream;

    invoke-direct {v1}, Lcom/tds/common/net/TdsHttp$CountBytesOutputStream;-><init>()V

    move-object p1, v1

    .line 452
    :cond_d
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 453
    .local v1, "writer":Ljava/io/Writer;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/tds/common/net/TdsHttp$FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_19
    if-ge v2, v3, :cond_40

    .line 454
    if-lez v2, :cond_22

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 455
    :cond_22
    iget-object v4, p0, Lcom/tds/common/net/TdsHttp$FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 456
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 457
    iget-object v4, p0, Lcom/tds/common/net/TdsHttp$FormBody;->encodedValues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 459
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_40
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 461
    if-eqz v0, :cond_4b

    .line 462
    move-object v2, p1

    check-cast v2, Lcom/tds/common/net/TdsHttp$CountBytesOutputStream;

    iget-wide v2, v2, Lcom/tds/common/net/TdsHttp$CountBytesOutputStream;->length:J

    return-wide v2

    .line 464
    :cond_4b
    const-wide/16 v2, 0x0

    return-wide v2
.end method


# virtual methods
.method public contentLength()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    iget-wide v0, p0, Lcom/tds/common/net/TdsHttp$FormBody;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    .line 436
    return-wide v0

    .line 438
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tds/common/net/TdsHttp$FormBody;->writeOrCountBytes(Ljava/io/OutputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/common/net/TdsHttp$FormBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .registers 2

    .line 430
    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    invoke-direct {p0, p1}, Lcom/tds/common/net/TdsHttp$FormBody;->writeOrCountBytes(Ljava/io/OutputStream;)J

    .line 445
    return-void
.end method
