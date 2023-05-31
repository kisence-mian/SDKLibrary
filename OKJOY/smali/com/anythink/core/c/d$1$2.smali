.class final Lcom/anythink/core/c/d$1$2;
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
.field final synthetic a:Landroid/os/CountDownTimer;

.field final synthetic b:[Z

.field final synthetic c:Lcom/anythink/core/c/d$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/c/d$1;Landroid/os/CountDownTimer;[Z)V
    .registers 4

    .prologue
    .line 154
    iput-object p1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iput-object p2, p0, Lcom/anythink/core/c/d$1$2;->a:Landroid/os/CountDownTimer;

    iput-object p3, p0, Lcom/anythink/core/c/d$1$2;->b:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 158
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 162
    check-cast p1, Ljava/lang/String;

    .line 164
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v1, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 166
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_15} :catch_6d

    move-result-object p1

    .line 170
    :goto_16
    invoke-static {p1}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v8

    .line 172
    if-eqz v8, :cond_35

    .line 173
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    iget-object v1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v2, v2, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/anythink/core/c/c;->u()I

    move-result v3

    if-ne v3, v6, :cond_72

    :goto_32
    invoke-virtual {v0, v1, v2, v8, p1}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;)V

    .line 177
    :cond_35
    invoke-static {}, Lcom/anythink/core/b/k;->a()Lcom/anythink/core/b/k;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v2, v2, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/anythink/core/c/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/anythink/core/c/c;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/anythink/core/c/c;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/anythink/core/c/c;->g()I

    move-result v9

    if-ne v9, v6, :cond_75

    :goto_57
    invoke-virtual/range {v0 .. v6}, Lcom/anythink/core/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/c/d$1$2$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/c/d$1$2$1;-><init>(Lcom/anythink/core/c/d$1$2;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 191
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->b:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_77

    .line 206
    :cond_6c
    :goto_6c
    return-void

    .line 168
    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_16

    .line 173
    :cond_72
    const-string p1, ""

    goto :goto_32

    :cond_75
    move v6, v7

    .line 177
    goto :goto_57

    .line 195
    :cond_77
    if-eqz v8, :cond_87

    .line 196
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz v0, :cond_6c

    .line 197
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    invoke-interface {v0, v8}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/c/c;)V

    goto :goto_6c

    .line 200
    :cond_87
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz v0, :cond_6c

    .line 201
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    const-string v1, "3001"

    const-string v2, ""

    const-string v3, "Placement Service error."

    invoke-static {v1, v2, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/api/AdError;)V

    goto :goto_6c
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 9

    .prologue
    .line 210
    sget-object v0, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    const-string v1, "place laod f!:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "9991"

    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const-string v0, "10004"

    .line 214
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "10003"

    .line 215
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "10001"

    .line 216
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 218
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
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

    .line 220
    iget-object v1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v1}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/anythink/core/b/a/d;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v2, v0, v4, v5}, Lcom/anythink/core/b/g/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 223
    :cond_a1
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/c/d$1$2$2;

    invoke-direct {v1, p0}, Lcom/anythink/core/c/d$1$2$2;-><init>(Lcom/anythink/core/c/d$1$2;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 234
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->b:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_b5

    .line 242
    :cond_b4
    :goto_b4
    return-void

    .line 239
    :cond_b5
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz v0, :cond_b4

    .line 240
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    iget-object v1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-interface {v0, v1}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/c/c;)V

    goto :goto_b4
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->b:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    .line 254
    :cond_7
    :goto_7
    return-void

    .line 251
    :cond_8
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz v0, :cond_7

    .line 252
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    iget-object v1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-interface {v0, v1}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/c/c;)V

    goto :goto_7
.end method
