.class final Lcom/mintegral/msdk/click/g$a$1;
.super Ljava/lang/Object;
.source "WebViewSpiderLoader.java"

# interfaces
.implements Lcom/mintegral/msdk/click/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/click/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/click/g$a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/click/g$a;)V
    .registers 2

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    iget-object v1, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    monitor-enter v1

    .line 328
    :try_start_5
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    iget-object v0, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setSuccess(Z)V

    .line 329
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g$a;->a(Lcom/mintegral/msdk/click/g$a;)V

    .line 330
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 319
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/click/g$a;->a(Lcom/mintegral/msdk/click/g$a;Ljava/lang/String;)Z

    .line 320
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    iget-object v0, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setContent(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "timeout"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/mintegral/msdk/click/g$a;->a(Lcom/mintegral/msdk/click/g$a;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/mintegral/msdk/click/g$a$1;->a()V

    .line 324
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 335
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 336
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    iget-object v0, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    .line 338
    :cond_11
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 339
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    iget-object v0, v0, Lcom/mintegral/msdk/click/g$a;->a:Lcom/mintegral/msdk/click/g;

    invoke-static {v0}, Lcom/mintegral/msdk/click/g;->g(Lcom/mintegral/msdk/click/g;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setContent(Ljava/lang/String;)V

    .line 341
    :cond_22
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/click/g$a;->a(Lcom/mintegral/msdk/click/g$a;Ljava/lang/String;)Z

    .line 342
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Lcom/mintegral/msdk/click/g$a;->a(Lcom/mintegral/msdk/click/g$a;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/mintegral/msdk/click/g$a$1;->a()V

    .line 345
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 7

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/click/g$a;->a(Lcom/mintegral/msdk/click/g$a;Ljava/lang/String;)Z

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v1, v2, v3, p1, v4}, Lcom/mintegral/msdk/click/g$a;->a(Lcom/mintegral/msdk/click/g$a;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 290
    if-eqz v0, :cond_14

    .line 292
    invoke-direct {p0}, Lcom/mintegral/msdk/click/g$a$1;->a()V

    .line 294
    :cond_14
    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 299
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/click/g$a;->a(Lcom/mintegral/msdk/click/g$a;Ljava/lang/String;)Z

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v2, v4, p1, v3}, Lcom/mintegral/msdk/click/g$a;->a(Lcom/mintegral/msdk/click/g$a;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 302
    if-eqz v0, :cond_1b

    .line 303
    iget-object v1, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    const-string v2, ""

    invoke-static {v1, v4, v4, p1, v2}, Lcom/mintegral/msdk/click/g$a;->a(Lcom/mintegral/msdk/click/g$a;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/mintegral/msdk/click/g$a$1;->a()V

    .line 306
    :cond_1b
    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lcom/mintegral/msdk/click/g$a$1;->a:Lcom/mintegral/msdk/click/g$a;

    const-string v1, ""

    invoke-static {v0, v2, v2, p1, v1}, Lcom/mintegral/msdk/click/g$a;->a(Lcom/mintegral/msdk/click/g$a;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 313
    return v2
.end method
