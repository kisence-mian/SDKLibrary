.class final Lcom/anythink/core/c/d$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/e/g;


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

    .line 286
    iput-object p1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 290
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 9

    .line 294
    check-cast p1, Ljava/lang/String;

    .line 296
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 297
    const-string v1, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 298
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_14} :catch_15

    .line 301
    goto :goto_19

    .line 300
    :catch_15
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 303
    :goto_19
    invoke-static {p1}, Lcom/anythink/core/c/c;->b(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 305
    const-string v1, ""

    if-eqz v0, :cond_64

    .line 306
    iget-object v2, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v2, v2, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    iget-object v3, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v3, v3, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v3}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v4, v4, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->A()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_39

    goto :goto_3a

    :cond_39
    move-object p1, v1

    :goto_3a
    invoke-virtual {v2, v3, v4, v0, p1}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0}, Lcom/anythink/core/c/c;->o()I

    move-result p1

    if-ne p1, v6, :cond_56

    .line 309
    invoke-static {}, Lcom/anythink/core/common/m;->a()Lcom/anythink/core/common/m;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v2, v2, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/anythink/core/common/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    :cond_56
    iget-object p1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz p1, :cond_79

    .line 313
    iget-object p1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    invoke-interface {p1, v0}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/c/c;)V

    return-void

    .line 316
    :cond_64
    iget-object p1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz p1, :cond_79

    .line 317
    iget-object p1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    const-string v0, "3001"

    const-string v2, "Placement Service error."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/api/AdError;)V

    .line 322
    :cond_79
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 7

    .line 326
    sget-object v0, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "place laod f!:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "9991"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 330
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "10004"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 331
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "10003"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 332
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "10001"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 334
    :cond_3f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 335
    sget-object v0, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", key -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/anythink/core/common/b/e;->y:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 338
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->p()Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 339
    sget-object p1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Please check these params in your code (AppId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AppKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PlacementId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_e5
    iget-object p1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz p1, :cond_f2

    .line 344
    iget-object p1, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    invoke-interface {p1, p2}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/api/AdError;)V

    .line 346
    :cond_f2
    return-void
.end method

.method public final b()V
    .registers 5

    .line 350
    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz v0, :cond_17

    .line 351
    iget-object v0, p0, Lcom/anythink/core/c/d$1$3;->a:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    const-string v1, "9999"

    const-string v2, ""

    const-string v3, "by canceled"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/api/AdError;)V

    .line 353
    :cond_17
    return-void
.end method
