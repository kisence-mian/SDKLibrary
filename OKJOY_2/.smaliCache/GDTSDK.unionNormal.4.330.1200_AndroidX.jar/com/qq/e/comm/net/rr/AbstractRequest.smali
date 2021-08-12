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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->k:[B

    return-void

    :cond_2e
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->k:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/qq/e/comm/net/rr/Request$Method;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qq/e/comm/net/rr/Request$Method;",
            ")V"
        }
    .end annotation

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

    iput-object p3, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->j:Lcom/qq/e/comm/net/rr/Request$Method;

    sget-object p1, Lcom/qq/e/comm/net/rr/Request$Method;->POST:Lcom/qq/e/comm/net/rr/Request$Method;

    if-ne p1, p3, :cond_91

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_31
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_39
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_31 .. :try_end_3d} :catch_8a

    const-string v0, "utf-8"

    if-eqz p3, :cond_72

    :try_start_41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_66

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_66
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_89

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->k:[B

    const-string p1, "Content-Type"

    const-string p2, "application/x-www-form-urlencoded"

    invoke-virtual {p0, p1, p2}, Lcom/qq/e/comm/net/rr/AbstractRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_41 .. :try_end_89} :catch_8a

    :cond_89
    return-void

    :catch_8a
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_91
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p2}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    :cond_d
    iget-object v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    :goto_12
    return-void
.end method

.method public addQuery(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

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
            "Ljava/util/Map<",
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
            "Ljava/util/Map<",
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

    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qq/e/comm/net/rr/AbstractRequest;->getQuerys()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_27

    :cond_43
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoClose()Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->a:Z

    return v0
.end method

.method public setAutoClose(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->a:Z

    return-void
.end method

.method public setConnectionTimeOut(I)V
    .registers 2

    iput p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->c:I

    return-void
.end method

.method public setPriority(I)V
    .registers 2

    iput p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->b:I

    return-void
.end method

.method public setSocketTimeOut(I)V
    .registers 2

    iput p1, p0, Lcom/qq/e/comm/net/rr/AbstractRequest;->d:I

    return-void
.end method
