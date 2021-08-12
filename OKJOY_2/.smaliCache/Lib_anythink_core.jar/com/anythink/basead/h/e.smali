.class public final Lcom/anythink/basead/h/e;
.super Lcom/anythink/core/common/e/a;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Lcom/anythink/core/common/d/u;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/anythink/core/common/d/u;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/d/u;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/anythink/core/common/e/a;-><init>()V

    .line 35
    iput p1, p0, Lcom/anythink/basead/h/e;->a:I

    .line 36
    iput-object p2, p0, Lcom/anythink/basead/h/e;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/anythink/basead/h/e;->c:Lcom/anythink/core/common/d/u;

    .line 38
    iput-object p4, p0, Lcom/anythink/basead/h/e;->d:Ljava/util/Map;

    .line 39
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .line 43
    const/4 v0, 0x2

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 130
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 135
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 7

    .line 49
    iget-object v0, p0, Lcom/anythink/basead/h/e;->d:Ljava/util/Map;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/anythink/basead/h/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 51
    :try_start_c
    iget-object v0, p0, Lcom/anythink/basead/h/e;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    iget-object v3, p0, Lcom/anythink/basead/h/e;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\\{"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\\}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/basead/h/e;->b:Ljava/lang/String;
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_4d

    .line 56
    goto :goto_16

    .line 59
    :cond_4c
    goto :goto_51

    .line 58
    :catchall_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/anythink/basead/h/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 2

    .line 126
    return-void
.end method

.method protected final c()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/anythink/basead/h/e;->c:Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_29

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/anythink/basead/h/e;->c:Lcom/anythink/core/common/d/u;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/u;->x()Lcom/anythink/core/common/d/v;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_28

    .line 71
    iget v2, p0, Lcom/anythink/basead/h/e;->a:I

    invoke-static {v2, v1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/j;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 72
    invoke-static {}, Lcom/anythink/core/common/g/d;->j()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 74
    const-string v2, "User-Agent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_28
    return-object v0

    .line 80
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()[B
    .registers 2

    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 2

    .line 105
    const-string v0, ""

    return-object v0
.end method

.method protected final g()Z
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .registers 2

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .registers 2

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final k()Ljava/lang/String;
    .registers 2

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final l()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method
