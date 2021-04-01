.class public abstract Lcom/qq/e/comm/net/rr/AbstractRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/comm/net/rr/Request;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/qq/e/comm/net/rr/Request$Method;

.field private k:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/qq/e/comm/net/rr/Request$Method;[B)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/qq/e/comm/net/rr/Request$Method;
    .param p3, "postData"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->g:Ljava/util/Map;

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->h:Ljava/util/Map;

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->i:Ljava/util/Map;

    iput-object p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->j:Lcom/qq/e/comm/net/rr/Request$Method;

    if-nez p3, :cond_2e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->k:[B

    :goto_2d
    return-void

    :cond_2e
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->k:[B

    goto :goto_2d
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/qq/e/comm/net/rr/Request$Method;)V
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "method"    # Lcom/qq/e/comm/net/rr/Request$Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qq/e/comm/net/rr/Request$Method;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->a:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->f:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->i:Ljava/util/Map;

    iput-object p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->j:Lcom/qq/e/comm/net/rr/Request$Method;

    sget-object v1, Lcom/qq/e/comm/net/rr/Request$Method;->POST:Lcom/qq/e/comm/net/rr/Request$Method;

    if-ne v1, p3, :cond_96

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_31
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6a

    const-string v2, "&"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_75
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_31 .. :try_end_75} :catch_76

    goto :goto_39

    :catch_76
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_7d
    :try_start_7d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_96

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->k:[B

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v1, v2}, Lcom/qq/e/comm/net/rr/AbstractRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7d .. :try_end_96} :catch_76

    :cond_96
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method

.method public addQuery(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getConnectionTimeOut()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->c:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getMethod()Lcom/qq/e/comm/net/rr/Request$Method;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->j:Lcom/qq/e/comm/net/rr/Request$Method;

    return-object v0
.end method

.method public getPostData()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->k:[B

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->b:I

    return v0
.end method

.method public getQuerys()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->i:Ljava/util/Map;

    return-object v0
.end method

.method public getSocketTimeOut()I
    .registers 2

    iget v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->d:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlWithParas()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractRequest;->getQuerys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractRequest;->getQuerys()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_27

    :cond_43
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public isAutoClose()Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->a:Z

    return v0
.end method

.method public setAutoClose(Z)V
    .registers 2
    .param p1, "autoClose"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->a:Z

    return-void
.end method

.method public setConnectionTimeOut(I)V
    .registers 2
    .param p1, "connectionTimeOut"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->c:I

    return-void
.end method

.method public setPriority(I)V
    .registers 2
    .param p1, "priority"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->b:I

    return-void
.end method

.method public setSocketTimeOut(I)V
    .registers 2
    .param p1, "socketTimeOut"    # I

    .prologue
    iput p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->d:I

    return-void
.end method
