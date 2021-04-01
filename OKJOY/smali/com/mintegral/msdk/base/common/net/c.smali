.class public abstract Lcom/mintegral/msdk/base/common/net/c;
.super Ljava/lang/Object;
.source "CommonBaseHttpRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field protected b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/base/common/net/c;-><init>(Landroid/content/Context;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/mintegral/msdk/base/common/net/c;->c:I

    .line 68
    iput v1, p0, Lcom/mintegral/msdk/base/common/net/c;->d:I

    .line 70
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mintegral/msdk/base/common/net/c;->e:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/base/common/net/c;->f:Z

    .line 75
    iput v1, p0, Lcom/mintegral/msdk/base/common/net/c;->g:I

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/base/common/net/c;->h:I

    .line 98
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/net/c;->b:Landroid/content/Context;

    .line 1397
    iput p2, p0, Lcom/mintegral/msdk/base/common/net/c;->d:I

    .line 100
    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/util/Map;Lcom/mintegral/msdk/base/common/net/g;)Lcom/mintegral/msdk/base/common/net/f;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mintegral/msdk/base/common/net/g;",
            ")",
            "Lcom/mintegral/msdk/base/common/net/f;"
        }
    .end annotation

    .prologue
    .line 516
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 517
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 518
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 520
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "Content-Type"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 521
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v3, "Charset"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 524
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 528
    :cond_46
    new-instance v0, Lcom/mintegral/msdk/base/common/net/f;

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/c;->b:Landroid/content/Context;

    iget v4, p0, Lcom/mintegral/msdk/base/common/net/c;->c:I

    iget v5, p0, Lcom/mintegral/msdk/base/common/net/c;->d:I

    iget v6, p0, Lcom/mintegral/msdk/base/common/net/c;->e:I

    iget-boolean v7, p0, Lcom/mintegral/msdk/base/common/net/c;->f:Z

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/mintegral/msdk/base/common/net/f;-><init>(Landroid/content/Context;Lorg/apache/http/client/methods/HttpRequestBase;Lcom/mintegral/msdk/base/common/net/g;IIIZ)V

    .line 531
    return-object v0
.end method

.method private c(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/base/common/net/l;",
            "Lcom/mintegral/msdk/base/common/net/d",
            "<*>;)",
            "Lcom/mintegral/msdk/base/common/f/a;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 152
    const-string v0, "BaseHttpRequest"

    const-string v1, "http get request url cannot be empty"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/mintegral/msdk/base/common/net/c$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/common/net/c$1;-><init>(Lcom/mintegral/msdk/base/common/net/c;)V

    .line 230
    :goto_12
    return-object v0

    .line 174
    :cond_13
    if-nez p3, :cond_1d

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IResponseHandle cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1d
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/net/c;->a:Ljava/lang/String;

    .line 182
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 187
    if-nez p2, :cond_2b

    .line 188
    new-instance p2, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {p2}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 190
    :cond_2b
    invoke-virtual {p0, p2}, Lcom/mintegral/msdk/base/common/net/c;->a(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 192
    :try_start_2e
    invoke-static {p2}, Lcom/mintegral/msdk/base/common/net/a/e;->d(Lcom/mintegral/msdk/base/common/net/l;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_130

    .line 196
    :goto_31
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    .line 1493
    const-string v0, " "

    const-string v3, "%20"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1495
    if-eqz p2, :cond_87

    .line 1496
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/common/net/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1497
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_87

    .line 1498
    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_76

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_76

    .line 1499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13c

    const-string v0, "&"

    :goto_6e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1501
    :cond_76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_87
    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 201
    if-eqz p2, :cond_95

    .line 202
    :try_start_8c
    const-string v0, "Charset"

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/common/net/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_95} :catch_140

    .line 210
    :cond_95
    :goto_95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mintegral/msdk/base/common/net/c;->g:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    iget v3, p0, Lcom/mintegral/msdk/base/common/net/c;->h:I

    if-lez v3, :cond_c3

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mintegral/msdk/base/common/net/c;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_c3
    iget v3, p0, Lcom/mintegral/msdk/base/common/net/c;->g:I

    if-nez v3, :cond_cc

    iget v3, p0, Lcom/mintegral/msdk/base/common/net/c;->h:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d1

    .line 215
    :cond_cc
    const-string v3, "Range"

    invoke-virtual {v2, v3, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_d1
    const-string v0, "BaseHttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_103

    .line 220
    const-string v0, "BaseHttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request headers: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_103
    if-eqz p2, :cond_11d

    .line 223
    const-string v0, "BaseHttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request params: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/common/net/l;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_11d
    const-string v0, "BaseHttpRequest"

    const-string v3, "request method: GET"

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, v2, v1, p3}, Lcom/mintegral/msdk/base/common/net/c;->a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/util/Map;Lcom/mintegral/msdk/base/common/net/g;)Lcom/mintegral/msdk/base/common/net/f;

    move-result-object v0

    .line 228
    invoke-virtual {p0, p3}, Lcom/mintegral/msdk/base/common/net/c;->a(Lcom/mintegral/msdk/base/common/net/d;)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/c;->a(Lcom/mintegral/msdk/base/common/net/f;)V

    goto/16 :goto_12

    .line 193
    :catch_130
    move-exception v0

    .line 194
    const-string v2, "BaseHttpRequest"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31

    .line 1499
    :cond_13c
    const-string v0, "?"

    goto/16 :goto_6e

    .line 205
    :catch_140
    move-exception v0

    const-string v0, "BaseHttpRequest"

    const-string v3, "setHeader failed"

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_95
.end method

.method private d(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/base/common/net/l;",
            "Lcom/mintegral/msdk/base/common/net/d",
            "<*>;)",
            "Lcom/mintegral/msdk/base/common/f/a;"
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 283
    const-string v0, "BaseHttpRequest"

    const-string v1, "http post request url cannot be empty"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v0, Lcom/mintegral/msdk/base/common/net/c$2;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/common/net/c$2;-><init>(Lcom/mintegral/msdk/base/common/net/c;)V

    .line 360
    :goto_12
    return-object v0

    .line 305
    :cond_13
    if-nez p3, :cond_1d

    .line 306
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IResponseHandle cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1d
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/net/c;->a:Ljava/lang/String;

    .line 313
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 318
    if-nez p2, :cond_2b

    .line 319
    new-instance p2, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {p2}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 321
    :cond_2b
    invoke-virtual {p0, p2}, Lcom/mintegral/msdk/base/common/net/c;->a(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 323
    :try_start_2e
    invoke-static {p2}, Lcom/mintegral/msdk/base/common/net/a/e;->d(Lcom/mintegral/msdk/base/common/net/l;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_f0

    .line 328
    :goto_31
    :try_start_31
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 329
    if-eqz p2, :cond_4f

    .line 330
    invoke-virtual {p2, p3}, Lcom/mintegral/msdk/base/common/net/l;->a(Lcom/mintegral/msdk/base/common/net/g;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 331
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Lorg/apache/http/Header;)V

    .line 332
    const-string v3, "Charset"

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/common/net/l;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 337
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mintegral/msdk/base/common/net/c;->g:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    iget v3, p0, Lcom/mintegral/msdk/base/common/net/c;->h:I

    if-lez v3, :cond_7d

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/mintegral/msdk/base/common/net/c;->h:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    :cond_7d
    const-string v3, "Range"

    invoke-virtual {v2, v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v0, "BaseHttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b4

    .line 345
    const-string v0, "BaseHttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request headers: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_b4
    if-eqz p2, :cond_ce

    .line 348
    const-string v0, "BaseHttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "request params: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/common/net/l;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_ce
    const-string v0, "BaseHttpRequest"

    const-string v3, "request method: POST"

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, v2, v1, p3}, Lcom/mintegral/msdk/base/common/net/c;->a(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/util/Map;Lcom/mintegral/msdk/base/common/net/g;)Lcom/mintegral/msdk/base/common/net/f;

    move-result-object v0

    .line 353
    invoke-virtual {p0, p3}, Lcom/mintegral/msdk/base/common/net/c;->a(Lcom/mintegral/msdk/base/common/net/d;)V

    .line 354
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/common/net/c;->a(Lcom/mintegral/msdk/base/common/net/f;)V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_df} :catch_e1

    goto/16 :goto_12

    .line 356
    :catch_e1
    move-exception v0

    .line 357
    const-string v1, "BaseHttpRequest"

    const-string v2, "write params an error occurred"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    new-instance v0, Lcom/mintegral/msdk/base/common/net/c$3;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/common/net/c$3;-><init>(Lcom/mintegral/msdk/base/common/net/c;)V

    goto/16 :goto_12

    .line 324
    :catch_f0
    move-exception v0

    .line 325
    const-string v2, "BaseHttpRequest"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_31
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/base/common/net/d",
            "<*>;)",
            "Lcom/mintegral/msdk/base/common/f/a;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/mintegral/msdk/base/common/net/c;->c(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/base/common/net/l;",
            "Lcom/mintegral/msdk/base/common/net/d",
            "<*>;)",
            "Lcom/mintegral/msdk/base/common/f/a;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/base/common/net/c;->c(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Lcom/mintegral/msdk/base/common/net/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/base/common/net/d",
            "<*>;)V"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/mintegral/msdk/base/common/net/f;)V
.end method

.method protected a(Lcom/mintegral/msdk/base/common/net/l;)V
    .registers 5

    .prologue
    .line 455
    if-eqz p1, :cond_6a

    .line 457
    invoke-static {}, Lcom/mintegral/msdk/base/common/net/Aa;->a()Ljava/lang/String;

    move-result-object v0

    .line 458
    if-nez v0, :cond_a

    .line 459
    const-string v0, ""

    .line 461
    :cond_a
    const-string v1, "channel"

    invoke-virtual {p1, v1, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v0, "BaseHttpRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "excute addExtraParams , url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/c;->a:Ljava/lang/String;

    const-string v1, "setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 465
    invoke-static {}, Lcom/mintegral/msdk/base/common/net/Aa;->b()Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 467
    const-string v1, "keyword"

    invoke-virtual {p1, v1, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_46
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/common/net/l;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "unit_id"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    if-eqz v0, :cond_69

    .line 473
    invoke-static {}, Lcom/mintegral/msdk/out/CustomInfoManager;->getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/mintegral/msdk/out/CustomInfoManager;->getCustomInfoByUnitId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 475
    const-string v1, "ch_info"

    invoke-virtual {p1, v1, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_69
    :goto_69
    return-void

    .line 479
    :cond_6a
    const-string v0, "BaseHttpRequest"

    const-string v1, "addExtraParams error, params is null,frame work error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69
.end method

.method public final b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/base/common/net/l;",
            "Lcom/mintegral/msdk/base/common/net/d",
            "<*>;)",
            "Lcom/mintegral/msdk/base/common/f/a;"
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/base/common/net/c;->d(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 388
    const/16 v0, 0x7530

    iput v0, p0, Lcom/mintegral/msdk/base/common/net/c;->c:I

    .line 389
    return-void
.end method
