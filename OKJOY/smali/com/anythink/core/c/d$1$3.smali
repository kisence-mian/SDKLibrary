.class final Lcom/anythink/core/c/d$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/b/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/c/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/c/d$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/c/d$1;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 269
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    .line 273
    check-cast p1, Ljava/lang/String;

    .line 275
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 276
    const-string v1, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 277
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_14} :catch_67

    move-result-object p1

    .line 282
    :goto_15
    invoke-static {p1}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v7

    .line 284
    if-eqz v7, :cond_71

    .line 285
    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    iget-object v1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v2, v2, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/anythink/core/c/c;->u()I

    move-result v3

    if-ne v3, v6, :cond_6c

    :goto_31
    invoke-virtual {v0, v1, v2, v7, p1}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/anythink/core/b/k;->a()Lcom/anythink/core/b/k;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v2, v2, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/anythink/core/c/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/anythink/core/c/c;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/anythink/core/c/c;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/anythink/core/c/c;->g()I

    move-result v8

    if-ne v8, v6, :cond_6f

    :goto_56
    invoke-virtual/range {v0 .. v6}, Lcom/anythink/core/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 288
    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz v0, :cond_66

    .line 289
    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    invoke-interface {v0, v7}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/c/c;)V

    .line 298
    :cond_66
    :goto_66
    return-void

    .line 279
    :catch_67
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_15

    .line 285
    :cond_6c
    const-string p1, ""

    goto :goto_31

    .line 287
    :cond_6f
    const/4 v6, 0x0

    goto :goto_56

    .line 292
    :cond_71
    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz v0, :cond_66

    .line 293
    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    const-string v1, "3001"

    const-string v2, ""

    const-string v3, "Placement Service error."

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/api/AdError;)V

    goto :goto_66
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 9

    .prologue
    .line 302
    sget-object v0, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    const-string v1, "place laod f!:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "9991"

    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const-string v0, "10004"

    .line 306
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "10003"

    .line 307
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "10001"

    .line 308
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 310
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    sget-object v1, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/anythink/core/b/a/d;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v2, v0, v4, v5}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 315
    :cond_a1
    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz v0, :cond_ae

    .line 316
    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    invoke-interface {v0, p2}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/api/AdError;)V

    .line 318
    :cond_ae
    return-void
.end method

.method public final b()V
    .registers 5

    .prologue
    .line 322
    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz v0, :cond_17

    .line 323
    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    const-string v1, "9999"

    const-string v2, ""

    const-string v3, "by canceled"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/api/AdError;)V

    .line 325
    :cond_17
    return-void
.end method
