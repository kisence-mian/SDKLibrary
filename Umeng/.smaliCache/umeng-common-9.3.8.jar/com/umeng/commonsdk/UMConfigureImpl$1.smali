.class final Lcom/umeng/commonsdk/UMConfigureImpl$1;
.super Ljava/lang/Object;
.source "UMConfigureImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/UMConfigureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 69
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->a()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->b()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_30

    .line 70
    :cond_e
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->c()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 71
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigureImpl;->a(Z)Z

    .line 72
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigureImpl;->a(Landroid/content/Context;)V

    .line 74
    :cond_1f
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->e()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 75
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->e()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigureImpl;->a(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 79
    :cond_30
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigureImpl;->f()I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    .line 81
    goto :goto_35

    .line 80
    :catch_34
    move-exception v0

    .line 82
    :goto_35
    return-void
.end method
