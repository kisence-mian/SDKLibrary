.class final Lcom/anythink/core/c/d$1$2;
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
.field final synthetic a:Landroid/os/CountDownTimer;

.field final synthetic b:[Z

.field final synthetic c:Lcom/anythink/core/c/d$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/c/d$1;Landroid/os/CountDownTimer;[Z)V
    .registers 4

    .line 173
    iput-object p1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iput-object p2, p0, Lcom/anythink/core/c/d$1$2;->a:Landroid/os/CountDownTimer;

    iput-object p3, p0, Lcom/anythink/core/c/d$1$2;->b:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .line 177
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 9

    .line 181
    check-cast p1, Ljava/lang/String;

    .line 183
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    const-string v1, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_14} :catch_15

    .line 188
    goto :goto_19

    .line 187
    :catch_15
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 189
    :goto_19
    invoke-static {p1}, Lcom/anythink/core/c/c;->b(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 191
    const-string v1, ""

    if-eqz v0, :cond_56

    .line 192
    iget-object v2, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v2, v2, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    iget-object v3, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v3, v3, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v3}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

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

    .line 193
    invoke-virtual {v0}, Lcom/anythink/core/c/c;->o()I

    move-result p1

    if-ne p1, v6, :cond_56

    .line 194
    invoke-static {}, Lcom/anythink/core/common/m;->a()Lcom/anythink/core/common/m;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v2, v2, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {v2}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v3, v3, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/anythink/core/common/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    :cond_56
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    new-instance v2, Lcom/anythink/core/c/d$1$2$1;

    invoke-direct {v2, p0}, Lcom/anythink/core/c/d$1$2$1;-><init>(Lcom/anythink/core/c/d$1$2;)V

    invoke-virtual {p1, v2}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 209
    iget-object p1, p0, Lcom/anythink/core/c/d$1$2;->b:[Z

    const/4 v2, 0x0

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_79

    .line 210
    iget-object p1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz p1, :cond_78

    if-eqz v0, :cond_78

    .line 211
    iget-object p1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    invoke-interface {p1, v0}, Lcom/anythink/core/c/d$a;->b(Lcom/anythink/core/c/c;)V

    .line 213
    :cond_78
    return-void

    .line 216
    :cond_79
    if-eqz v0, :cond_89

    .line 217
    iget-object p1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz p1, :cond_9e

    .line 218
    iget-object p1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    invoke-interface {p1, v0}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/c/c;)V

    return-void

    .line 221
    :cond_89
    iget-object p1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz p1, :cond_9e

    .line 222
    iget-object p1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    const-string v0, "3001"

    const-string v2, "Placement Service error."

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/api/AdError;)V

    .line 227
    :cond_9e
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .registers 6

    .line 231
    sget-object v0, Lcom/anythink/core/c/d;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "place laod f!:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "9991"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 235
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "10004"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 236
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "10003"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 237
    invoke-virtual {p2}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "10001"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 239
    :cond_3f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 240
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

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", key -> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object p2, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object p2, p2, Lcom/anythink/core/c/d$1;->f:Lcom/anythink/core/c/d;

    invoke-static {p2}, Lcom/anythink/core/c/d;->a(Lcom/anythink/core/c/d;)Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lcom/anythink/core/common/b/e;->y:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p2, v0, p1, v1, v2}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 244
    :cond_a1
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    new-instance p2, Lcom/anythink/core/c/d$1$2$2;

    invoke-direct {p2, p0}, Lcom/anythink/core/c/d$1$2$2;-><init>(Lcom/anythink/core/c/d$1$2;)V

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 255
    iget-object p1, p0, Lcom/anythink/core/c/d$1$2;->b:[Z

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_b5

    .line 256
    return-void

    .line 260
    :cond_b5
    iget-object p1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz p1, :cond_c6

    .line 261
    iget-object p1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object p1, p1, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    iget-object p2, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object p2, p2, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-interface {p1, p2}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/c/c;)V

    .line 263
    :cond_c6
    return-void
.end method

.method public final b()V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->b:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    .line 268
    return-void

    .line 272
    :cond_8
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    if-eqz v0, :cond_19

    .line 273
    iget-object v0, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v0, v0, Lcom/anythink/core/c/d$1;->c:Lcom/anythink/core/c/d$a;

    iget-object v1, p0, Lcom/anythink/core/c/d$1$2;->c:Lcom/anythink/core/c/d$1;

    iget-object v1, v1, Lcom/anythink/core/c/d$1;->a:Lcom/anythink/core/c/c;

    invoke-interface {v0, v1}, Lcom/anythink/core/c/d$a;->a(Lcom/anythink/core/c/c;)V

    .line 275
    :cond_19
    return-void
.end method
