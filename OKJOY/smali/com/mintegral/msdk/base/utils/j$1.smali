.class final Lcom/mintegral/msdk/base/utils/j$1;
.super Lcom/mintegral/msdk/base/common/f/a;
.source "CommonSDKUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/utils/j;->a(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 421
    iput-object p1, p0, Lcom/mintegral/msdk/base/utils/j$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 425
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    iget-object v0, p0, Lcom/mintegral/msdk/base/utils/j$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 426
    if-nez v0, :cond_12

    .line 427
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 432
    :cond_12
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    .line 431
    invoke-static {v1}, Lcom/mintegral/msdk/base/b/s;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/s;

    move-result-object v1

    .line 433
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aa()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/b/s;->a(Ljava/lang/Long;)V

    .line 436
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    .line 435
    invoke-static {v1}, Lcom/mintegral/msdk/base/b/b;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/b;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/b/b;->c()V

    .line 440
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    .line 439
    invoke-static {v1}, Lcom/mintegral/msdk/base/b/c;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/c;

    move-result-object v1

    .line 441
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->Y()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/b/c;->a(Ljava/lang/Long;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5b} :catch_5c

    .line 447
    :goto_5b
    return-void

    .line 445
    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5b
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 452
    return-void
.end method
