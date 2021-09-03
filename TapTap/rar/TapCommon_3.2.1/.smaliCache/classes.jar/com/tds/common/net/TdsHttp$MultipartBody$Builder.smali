.class public final Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;
.super Ljava/lang/Object;
.source "TdsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/net/TdsHttp$MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final boundary:Ljava/lang/String;

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
.method public constructor <init>()V
    .registers 4

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;->boundary:Ljava/lang/String;

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;->type:Ljava/lang/String;

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;->parts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFormDataPart(Ljava/lang/String;Ljava/io/File;)Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 400
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/tds/common/net/TdsHttp$RequestBody;->create(Ljava/lang/String;Ljava/io/File;)Lcom/tds/common/net/TdsHttp$RequestBody;

    move-result-object v0

    .line 401
    .local v0, "body":Lcom/tds/common/net/TdsHttp$RequestBody;
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;

    move-result-object v1

    return-object v1
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 391
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Content-Type: text/plain; charset=UTF-8"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 395
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/tds/common/net/TdsHttp$RequestBody;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$RequestBody;

    move-result-object v1

    .line 396
    .local v1, "body":Lcom/tds/common/net/TdsHttp$RequestBody;
    new-instance v2, Lcom/tds/common/net/TdsHttp$MultipartBody$Part;

    invoke-direct {v2, v0, v1}, Lcom/tds/common/net/TdsHttp$MultipartBody$Part;-><init>(Ljava/util/List;Lcom/tds/common/net/TdsHttp$RequestBody;)V

    invoke-virtual {p0, v2}, Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;->addPart(Lcom/tds/common/net/TdsHttp$MultipartBody$Part;)Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;

    move-result-object v2

    return-object v2
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lcom/tds/common/net/TdsHttp$RequestBody;)Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "body"    # Lcom/tds/common/net/TdsHttp$RequestBody;

    .line 405
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"; filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 407
    invoke-static {p2}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "Content-Transfer-Encoding: binary"

    aput-object v2, v0, v1

    .line 405
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 410
    .local v0, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/tds/common/net/TdsHttp$MultipartBody$Part;

    invoke-direct {v1, v0, p3}, Lcom/tds/common/net/TdsHttp$MultipartBody$Part;-><init>(Ljava/util/List;Lcom/tds/common/net/TdsHttp$RequestBody;)V

    invoke-virtual {p0, v1}, Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;->addPart(Lcom/tds/common/net/TdsHttp$MultipartBody$Part;)Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;

    move-result-object v1

    return-object v1
.end method

.method public addFormDataPart(Ljava/util/Map;)Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;"
        }
    .end annotation

    .line 384
    .local p1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 385
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;

    .line 386
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_8

    .line 387
    :cond_24
    return-object p0
.end method

.method addPart(Lcom/tds/common/net/TdsHttp$MultipartBody$Part;)Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;
    .registers 3
    .param p1, "part"    # Lcom/tds/common/net/TdsHttp$MultipartBody$Part;

    .line 379
    iget-object v0, p0, Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    return-object p0
.end method

.method public build()Lcom/tds/common/net/TdsHttp$MultipartBody;
    .registers 2

    .line 414
    new-instance v0, Lcom/tds/common/net/TdsHttp$MultipartBody;

    invoke-direct {v0, p0}, Lcom/tds/common/net/TdsHttp$MultipartBody;-><init>(Lcom/tds/common/net/TdsHttp$MultipartBody$Builder;)V

    return-object v0
.end method
