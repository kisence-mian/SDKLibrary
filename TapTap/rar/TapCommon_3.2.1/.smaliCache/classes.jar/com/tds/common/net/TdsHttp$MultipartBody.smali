.class public Lcom/tds/common/net/TdsHttp$MultipartBody;
.super Lcom/tds/common/net/TdsHttp$RequestBody;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultipartBody"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;,
        Lcom/tds/common/net/TdsHttp$MultipartBody$Part;
    }
.end annotation


# static fields
.field static final CRLF:Ljava/lang/String; = "\r\n"

.field static final DASHDASH:Ljava/lang/String; = "--"


# instance fields
.field final boundary:Ljava/lang/String;

.field private contentLength:J

.field final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/common/net/TdsHttp$MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;

    .line 306
    invoke-direct {p0}, Lcom/tds/common/net/TdsHttp$RequestBody;-><init>()V

    .line 304
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tds/common/net/TdsHttp$MultipartBody;->contentLength:J

    .line 307
    iget-object v0, p1, Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;->boundary:Ljava/lang/String;

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$MultipartBody;->boundary:Ljava/lang/String;

    .line 308
    iget-object v0, p1, Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$MultipartBody;->type:Ljava/lang/String;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$MultipartBody;->parts:Ljava/util/List;

    .line 310
    return-void
.end method

.method private writeOrCountBytes(Ljava/io/OutputStream;)J
    .registers 15
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 333
    .local v0, "countBytes":Z
    :goto_5
    if-eqz v0, :cond_d

    .line 334
    new-instance v1, Lcom/tds/common/net/TdsHttp$CountBytesOutputStream;

    invoke-direct {v1}, Lcom/tds/common/net/TdsHttp$CountBytesOutputStream;-><init>()V

    move-object p1, v1

    .line 336
    :cond_d
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 337
    .local v1, "writer":Ljava/io/Writer;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/tds/common/net/TdsHttp$MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_19
    const-string v4, "--"

    const-string v5, "\r\n"

    if-ge v2, v3, :cond_6d

    .line 338
    iget-object v6, p0, Lcom/tds/common/net/TdsHttp$MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tds/common/net/TdsHttp$MultipartBody$Part;

    .line 339
    .local v6, "part":Lcom/tds/common/net/TdsHttp$MultipartBody$Part;
    iget-object v7, v6, Lcom/tds/common/net/TdsHttp$MultipartBody$Part;->headers:Ljava/util/List;

    .line 340
    .local v7, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, v6, Lcom/tds/common/net/TdsHttp$MultipartBody$Part;->body:Lcom/tds/common/net/TdsHttp$RequestBody;

    .line 342
    .local v8, "body":Lcom/tds/common/net/TdsHttp$RequestBody;
    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    iget-object v9, p0, Lcom/tds/common/net/TdsHttp$MultipartBody;->boundary:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 344
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 345
    .local v9, "line":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 346
    .end local v9    # "line":Ljava/lang/String;
    goto :goto_3c

    .line 348
    :cond_50
    if-eqz v0, :cond_5d

    invoke-virtual {v8}, Lcom/tds/common/net/TdsHttp$RequestBody;->contentLength()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    cmp-long v4, v9, v11

    if-nez v4, :cond_5d

    .line 349
    return-wide v11

    .line 351
    :cond_5d
    invoke-virtual {v1, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/Writer;->flush()V

    .line 352
    invoke-virtual {v8, p1}, Lcom/tds/common/net/TdsHttp$RequestBody;->writeTo(Ljava/io/OutputStream;)V

    .line 353
    invoke-virtual {v1, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 337
    .end local v6    # "part":Lcom/tds/common/net/TdsHttp$MultipartBody$Part;
    .end local v7    # "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "body":Lcom/tds/common/net/TdsHttp$RequestBody;
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 355
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_6d
    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    iget-object v3, p0, Lcom/tds/common/net/TdsHttp$MultipartBody;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 357
    if-eqz v0, :cond_8a

    .line 358
    move-object v2, p1

    check-cast v2, Lcom/tds/common/net/TdsHttp$CountBytesOutputStream;

    iget-wide v2, v2, Lcom/tds/common/net/TdsHttp$CountBytesOutputStream;->length:J

    return-wide v2

    .line 360
    :cond_8a
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

    .line 319
    iget-wide v0, p0, Lcom/tds/common/net/TdsHttp$MultipartBody;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    .line 320
    return-wide v0

    .line 322
    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tds/common/net/TdsHttp$MultipartBody;->writeOrCountBytes(Ljava/io/OutputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/common/net/TdsHttp$MultipartBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$MultipartBody;->type:Ljava/lang/String;

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

    .line 328
    invoke-direct {p0, p1}, Lcom/tds/common/net/TdsHttp$MultipartBody;->writeOrCountBytes(Ljava/io/OutputStream;)J

    .line 329
    return-void
.end method
