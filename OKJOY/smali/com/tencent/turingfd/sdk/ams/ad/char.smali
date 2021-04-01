.class public Lcom/tencent/turingfd/sdk/ams/ad/char;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final C:Ljava/lang/Object;

.field public static D:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/char;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/char;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/char;->C:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/char;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/char;->getVersionInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TuringFdJava"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Lcom/tencent/turingfd/sdk/ams/ad/case;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/char;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 25
    :goto_a
    return-void

    .line 2
    :cond_b
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/char;->C:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_e
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/char;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 4
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->Zb:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    .line 5
    invoke-virtual {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/case;)V

    .line 6
    monitor-exit v2

    goto :goto_a

    .line 25
    :catchall_1d
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw v0

    .line 7
    :cond_20
    :try_start_20
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/char;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 8
    monitor-exit v2

    goto :goto_a

    .line 9
    :cond_2a
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/char;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/char;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_6f

    .line 11
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/case;->n()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 12
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/case;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/case;->k()Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_1d

    move-result-object v3

    .line 14
    :try_start_49
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4c} :catch_61
    .catchall {:try_start_49 .. :try_end_4c} :catchall_1d

    move-result v4

    if-eqz v4, :cond_5d

    const-string v3, "turingad"

    .line 15
    :try_start_51
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_61
    .catchall {:try_start_51 .. :try_end_54} :catchall_1d

    .line 18
    :goto_54
    :try_start_54
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/char;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez v0, :cond_6f

    .line 19
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_1d

    goto :goto_a

    .line 16
    :cond_5d
    :try_start_5d
    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_61
    .catchall {:try_start_5d .. :try_end_60} :catchall_1d

    goto :goto_54

    :catch_61
    move-exception v0

    const-string v3, "TuringFdJava"

    .line 17
    :try_start_64
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_54

    .line 20
    :cond_69
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/char;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    :cond_6f
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->Zb:Lcom/tencent/turingfd/sdk/ams/ad/boolean;

    .line 22
    invoke-virtual {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/boolean;->a(Lcom/tencent/turingfd/sdk/ams/ad/case;)V

    .line 23
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/char;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/char;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_64 .. :try_end_81} :catchall_1d

    goto :goto_a
.end method

.method public static getVersionInfo()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x26

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x19c4c

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "6D27D714EDDD4B1A"

    aput-object v3, v1, v2

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string v3, "adMini"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "taf"

    aput-object v3, v1, v2

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x8

    const-string v3, "2019_12_04_11_39_18"

    aput-object v3, v1, v2

    const-string v2, "TuringFD v%d (c%d, l%s, t%d, %s, %s, e%d, d%d, compiled %s)"

    .line 7
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o()I
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/char;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, -0x2711

    .line 2
    :goto_a
    return v0

    :cond_b
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/char;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, -0x2712

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method
