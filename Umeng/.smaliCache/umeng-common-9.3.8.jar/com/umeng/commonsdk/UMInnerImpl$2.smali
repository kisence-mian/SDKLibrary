.class final Lcom/umeng/commonsdk/UMInnerImpl$2;
.super Ljava/lang/Object;
.source "UMInnerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/UMInnerImpl;->initAndSendInternal(Landroid/content/Context;)V
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

    .line 79
    iput-object p1, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 84
    const-string v0, "e is "

    const-string v1, "internal"

    :try_start_4
    iget-object v2, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 85
    iget-object v3, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_b2

    if-eqz v2, :cond_b1

    .line 100
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_24
    iget-object v4, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/internal/utils/c;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/commonsdk/internal/utils/c;->a()Z

    move-result v4

    if-nez v4, :cond_39

    .line 101
    iget-object v4, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/internal/utils/c;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/commonsdk/internal/utils/c;->b()V
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_3a

    .line 107
    :cond_39
    goto :goto_53

    .line 104
    :catchall_3a
    move-exception v4

    .line 105
    :try_start_3b
    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_b2

    .line 111
    :goto_53
    :try_start_53
    iget-object v4, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/internal/utils/k;->b(Landroid/content/Context;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_59

    .line 114
    goto :goto_72

    .line 112
    :catchall_59
    move-exception v4

    .line 113
    :try_start_5a
    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v1, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_5a .. :try_end_72} :catchall_b2

    .line 119
    :goto_72
    :try_start_72
    iget-object v4, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/commonsdk/internal/utils/a;->c(Landroid/content/Context;)V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_78

    .line 123
    goto :goto_91

    .line 121
    :catchall_78
    move-exception v4

    .line 122
    :try_start_79
    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1, v5}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_91
    .catchall {:try_start_79 .. :try_end_91} :catchall_b2

    .line 139
    :goto_91
    :try_start_91
    iget-object v0, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/utils/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/utils/b;->a()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 140
    iget-object v0, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/utils/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/utils/b;->b()V
    :try_end_a6
    .catchall {:try_start_91 .. :try_end_a6} :catchall_a7

    .line 144
    :cond_a6
    goto :goto_b1

    .line 142
    :catchall_a7
    move-exception v0

    .line 143
    :try_start_a8
    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "get station is null "

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_b2

    .line 148
    :cond_b1
    :goto_b1
    goto :goto_b8

    .line 146
    :catchall_b2
    move-exception v0

    .line 147
    iget-object v1, p0, Lcom/umeng/commonsdk/UMInnerImpl$2;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 150
    :goto_b8
    return-void
.end method
