.class final Lcom/anythink/core/common/d$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/d/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/anythink/core/common/d$1;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/d$1;Lcom/anythink/core/common/d/d;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 310
    iput-object p1, p0, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iput-object p2, p0, Lcom/anythink/core/common/d$1$2;->a:Lcom/anythink/core/common/d/d;

    iput-object p3, p0, Lcom/anythink/core/common/d$1$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/d$1$2;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/anythink/core/common/d$1$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/anythink/core/common/d$1$2;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/anythink/core/common/d$1$2;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/api/AdError;)V
    .registers 9

    .line 352
    sget-object v0, Lcom/anythink/core/common/b/e$e;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v1, v1, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v2, v2, Lcom/anythink/core/common/d$1;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/anythink/core/common/g/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v3

    .line 1073
    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1075
    :try_start_18
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1076
    const-string v5, "action"

    sget-object v6, Lcom/anythink/core/common/b/e$e;->s:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1077
    const-string v5, "result"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1078
    const-string v5, "placementId"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1079
    const-string v1, "adtype"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1080
    const-string v1, "errorMsg"

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/anythink/core/common/b/e$e;->g:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/anythink/core/common/g/l;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5a
    .catchall {:try_start_18 .. :try_end_5a} :catchall_5b

    .line 1085
    goto :goto_5c

    .line 1083
    :catchall_5b
    move-exception v0

    .line 354
    :cond_5c
    :goto_5c
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "3001"

    invoke-static {v1, v0, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    .line 356
    iget-object v0, p0, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v0, v0, Lcom/anythink/core/common/d$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/d$1$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v2, v2, Lcom/anythink/core/common/d$1;->b:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v4, v4, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    iget-boolean v4, v4, Lcom/anythink/core/common/g;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/common/g/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;I)Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 357
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 359
    iget-object v1, p0, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v1, v1, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    iget-object v2, p0, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v2, v2, Lcom/anythink/core/common/d$1;->c:Lcom/anythink/core/common/g;

    invoke-static {v1, v0, p1, v2}, Lcom/anythink/core/common/d;->a(Lcom/anythink/core/common/d;Lcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/g;)V

    .line 360
    return-void
.end method

.method public final a(Lcom/anythink/core/c/c;)V
    .registers 4

    .line 314
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/d$1$2$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/d$1$2$1;-><init>(Lcom/anythink/core/common/d$1$2;Lcom/anythink/core/c/c;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method public final b(Lcom/anythink/core/c/c;)V
    .registers 4

    .line 364
    iget-object v0, p0, Lcom/anythink/core/common/d$1$2;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 365
    iget-object v0, p0, Lcom/anythink/core/common/d$1$2;->g:Lcom/anythink/core/common/d$1;

    iget-object v0, v0, Lcom/anythink/core/common/d$1;->e:Lcom/anythink/core/common/d;

    const/4 v1, 0x0

    iput v1, v0, Lcom/anythink/core/common/d;->f:I

    .line 368
    :cond_13
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/d$1$2$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/d$1$2$2;-><init>(Lcom/anythink/core/common/d$1$2;Lcom/anythink/core/c/c;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method
