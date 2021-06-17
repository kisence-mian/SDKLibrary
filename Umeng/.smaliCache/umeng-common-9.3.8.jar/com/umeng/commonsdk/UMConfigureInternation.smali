.class public Lcom/umeng/commonsdk/UMConfigureInternation;
.super Ljava/lang/Object;
.source "UMConfigureInternation.java"


# static fields
.field private static isInternal:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigureInternation;->isInternal:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doSelfCheck(Landroid/content/Context;)V
    .registers 4

    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_2c

    if-eqz v0, :cond_2b

    .line 61
    const v0, 0x8021

    .line 62
    :try_start_1d
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v1

    const/4 v2, 0x0

    .line 61
    invoke-static {p0, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_2a

    .line 64
    goto :goto_2b

    .line 63
    :catchall_2a
    move-exception p0

    .line 67
    :cond_2b
    :goto_2b
    goto :goto_2d

    .line 66
    :catchall_2c
    move-exception p0

    .line 68
    :goto_2d
    return-void
.end method

.method public static declared-synchronized sendInternal(Landroid/content/Context;)V
    .registers 7

    const-class v0, Lcom/umeng/commonsdk/UMConfigureInternation;

    monitor-enter v0

    .line 25
    if-eqz p0, :cond_40

    const/4 v1, 0x1

    :try_start_6
    sget-boolean v2, Lcom/umeng/commonsdk/UMConfigureInternation;->isInternal:Z

    if-nez v2, :cond_40

    .line 26
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/umeng/commonsdk/UMConfigureInternation$1;

    invoke-direct {v3, p0}, Lcom/umeng/commonsdk/UMConfigureInternation$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 47
    sput-boolean v1, Lcom/umeng/commonsdk/UMConfigureInternation;->isInternal:Z
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    goto :goto_40

    .line 49
    :catchall_1a
    move-exception p0

    .line 50
    :try_start_1b
    const-string v2, "internal"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_1b .. :try_end_3c} :catchall_3d

    goto :goto_41

    .line 24
    :catchall_3d
    move-exception p0

    monitor-exit v0

    throw p0

    .line 51
    :cond_40
    :goto_40
    nop

    .line 53
    :goto_41
    monitor-exit v0

    return-void
.end method
