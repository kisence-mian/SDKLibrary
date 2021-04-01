.class final Lcom/anythink/core/b/d$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/anythink/core/b/d$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/d$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 234
    iput-object p1, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iput-object p2, p0, Lcom/anythink/core/b/d$1$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/b/d$1$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/b/d$1$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/b/d$1$3;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 9

    .prologue
    .line 279
    sget-object v0, Lcom/anythink/core/b/a/d$e;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iget-object v1, v1, Lcom/anythink/core/b/d$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iget-object v2, v2, Lcom/anythink/core/b/d$1;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/anythink/core/b/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v3

    .line 1064
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 1066
    :try_start_18
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1067
    const-string v5, "action"

    sget-object v6, Lcom/anythink/core/b/a/d$e;->r:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1068
    const-string v5, "result"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1069
    const-string v5, "placementId"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1070
    const-string v1, "adtype"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1071
    const-string v1, "errorMsg"

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/anythink/core/b/a/d$e;->g:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/anythink/core/b/g/k;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_5a} :catch_94

    .line 281
    :cond_5a
    :goto_5a
    const-string v0, "3001"

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v1

    .line 283
    iget-object v0, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iget-object v2, v0, Lcom/anythink/core/b/d$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/d$1$3;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iget-object v4, v0, Lcom/anythink/core/b/d$1;->b:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iget-boolean v0, v0, Lcom/anythink/core/b/d$1;->e:Z

    if-eqz v0, :cond_92

    const/4 v0, 0x1

    :goto_7a
    invoke-static {v2, v3, v4, v5, v0}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 284
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/anythink/core/b/c/b;->p(I)V

    .line 286
    iget-object v2, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iget-object v2, v2, Lcom/anythink/core/b/d$1;->f:Lcom/anythink/core/b/d;

    invoke-virtual {v1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iget-object v4, v4, Lcom/anythink/core/b/d$1;->c:Lcom/anythink/core/b/d$a;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/d;Lcom/anythink/core/b/c/b;Lcom/anythink/core/api/AdError;Ljava/lang/String;Lcom/anythink/core/b/d$a;)V

    .line 287
    return-void

    .line 283
    :cond_92
    const/4 v0, 0x0

    goto :goto_7a

    :catch_94
    move-exception v0

    goto :goto_5a
.end method

.method public final a(Lcom/anythink/core/c/c;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$1;->f:Lcom/anythink/core/b/d;

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->n()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/anythink/core/b/d;->a(Lcom/anythink/core/b/d;J)J

    .line 244
    iget-object v0, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iget-object v2, v0, Lcom/anythink/core/b/d$1;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/d$1$3;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iget-object v4, v0, Lcom/anythink/core/b/d$1;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iget-boolean v0, v0, Lcom/anythink/core/b/d$1;->e:Z

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    :goto_1d
    invoke-static {v2, v3, v4, p1, v0}, Lcom/anythink/core/b/g/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/b/c/b;

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->s()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iget-object v3, v3, Lcom/anythink/core/b/d$1;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 248
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    new-instance v3, Lcom/anythink/core/b/d$1$3$1;

    invoke-direct {v3, p0}, Lcom/anythink/core/b/d$1$3$1;-><init>(Lcom/anythink/core/b/d$1$3;)V

    invoke-virtual {v2, v3}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 258
    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/b;->a(Z)V

    .line 262
    const-string v2, "Mismatched ad placement and ad format."

    invoke-static {v0, v2}, Lcom/anythink/core/b/f/c;->a(Lcom/anythink/core/b/c/b;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/anythink/core/b/d$1$3;->e:Lcom/anythink/core/b/d$1;

    iget-object v0, v0, Lcom/anythink/core/b/d$1;->f:Lcom/anythink/core/b/d;

    iput-boolean v1, v0, Lcom/anythink/core/b/d;->i:Z

    .line 275
    :goto_4d
    return-void

    :cond_4e
    move v0, v1

    .line 244
    goto :goto_1d

    .line 267
    :cond_50
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v1

    new-instance v2, Lcom/anythink/core/b/d$1$3$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/anythink/core/b/d$1$3$2;-><init>(Lcom/anythink/core/b/d$1$3;Lcom/anythink/core/c/c;Lcom/anythink/core/b/c/b;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    goto :goto_4d
.end method
