.class final Lcom/umeng/commonsdk/UMInnerImpl$1;
.super Ljava/lang/Object;
.source "UMInnerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/UMInnerImpl;->sendInternal(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/umeng/commonsdk/UMInnerImpl$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/UMInnerImpl$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/umeng/commonsdk/UMInnerImpl$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_44

    if-eqz v0, :cond_43

    .line 47
    :try_start_1e
    iget-object v0, p0, Lcom/umeng/commonsdk/UMInnerImpl$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/d;->b(Landroid/content/Context;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_24

    .line 50
    goto :goto_43

    .line 48
    :catchall_24
    move-exception v0

    .line 49
    :try_start_25
    const-string v1, "internal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_44

    .line 64
    :cond_43
    :goto_43
    goto :goto_4a

    .line 62
    :catchall_44
    move-exception v0

    .line 63
    iget-object v1, p0, Lcom/umeng/commonsdk/UMInnerImpl$1;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 65
    :goto_4a
    return-void
.end method
