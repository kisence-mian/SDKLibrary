.class public Lcom/umeng/commonsdk/statistics/noise/ImLatent;
.super Ljava/lang/Object;
.source "ImLatent.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# static fields
.field private static instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;


# instance fields
.field private final LATENT_MAX:I

.field private final LATENT_WINDOW:I

.field private final _360HOURS_IN_MS:J

.field private final _36HOURS_IN_MS:J

.field private final _DEFAULT_HOURS:I

.field private final _DEFAULT_MAX_LATENT:I

.field private final _DEFAULT_MIN_HOURS:I

.field private final _DEFAULT_MIN_LATENT:I

.field private final _ONE_HOURS_IN_MS:J

.field private context:Landroid/content/Context;

.field private latentHour:J

.field private latentWindow:I

.field private mDelay:J

.field private mElapsed:J

.field private mLatentActivite:Z

.field private mLatentLock:Ljava/lang/Object;

.field private statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

.field private storeHelper:Lcom/umeng/commonsdk/statistics/common/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V
    .registers 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x168

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_HOURS:I

    .line 26
    const/16 v0, 0x24

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MIN_HOURS:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MIN_LATENT:I

    .line 28
    const/16 v0, 0x708

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_DEFAULT_MAX_LATENT:I

    .line 29
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_ONE_HOURS_IN_MS:J

    .line 30
    const-wide/32 v0, 0x4d3f6400

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_360HOURS_IN_MS:J

    .line 31
    const-wide/32 v2, 0x7b98a00

    iput-wide v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->_36HOURS_IN_MS:J

    .line 33
    const v2, 0x1b7740

    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->LATENT_MAX:I

    .line 34
    const/16 v2, 0xa

    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->LATENT_WINDOW:I

    .line 39
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    .line 40
    iput v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    .line 43
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->context:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/d;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/d;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->storeHelper:Lcom/umeng/commonsdk/statistics/common/d;

    .line 62
    iput-object p2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 63
    return-void
.end method

.method public static declared-synchronized getService(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    .registers 4

    const-class v0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    if-nez v1, :cond_19

    .line 53
    new-instance v1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    invoke-direct {v1, p0, p1}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;-><init>(Landroid/content/Context;Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;

    .line 54
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->c()Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V

    .line 56
    :cond_19
    sget-object p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->instanse:Lcom/umeng/commonsdk/statistics/noise/ImLatent;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v0

    return-object p0

    .line 51
    :catchall_1d
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getDelayTime()J
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-wide v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    monitor-exit v0

    return-wide v1

    .line 128
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getElapsedTime()J
    .registers 3

    .line 132
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    return-wide v0
.end method

.method public isLatentActivite()Z
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_3
    iget-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    monitor-exit v0

    return v1

    .line 116
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public latentDeactivite()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V
    .registers 6

    .line 141
    const/16 v0, 0x168

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "latent_hours"

    invoke-virtual {p1, v2, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 144
    const/16 v2, 0x24

    if-gt v1, v2, :cond_19

    .line 145
    goto :goto_1a

    .line 144
    :cond_19
    move v0, v1

    .line 147
    :goto_1a
    int-to-long v0, v0

    const-wide/32 v2, 0x36ee80

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    .line 148
    const-string v0, "latent"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 150
    const/4 v0, 0x1

    if-lt p1, v0, :cond_39

    const/16 v0, 0x708

    if-le p1, v0, :cond_3a

    .line 151
    :cond_39
    const/4 p1, 0x0

    .line 158
    :cond_3a
    if-nez p1, :cond_52

    .line 159
    sget p1, Lcom/umeng/commonsdk/statistics/a;->c:I

    if-lez p1, :cond_4d

    sget p1, Lcom/umeng/commonsdk/statistics/a;->c:I

    const v0, 0x1b7740

    if-le p1, v0, :cond_48

    goto :goto_4d

    .line 162
    :cond_48
    sget p1, Lcom/umeng/commonsdk/statistics/a;->c:I

    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    goto :goto_54

    .line 160
    :cond_4d
    :goto_4d
    const/16 p1, 0xa

    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    goto :goto_54

    .line 165
    :cond_52
    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    .line 167
    :goto_54
    return-void
.end method

.method public shouldStartLatency()Z
    .registers 9

    .line 71
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->storeHelper:Lcom/umeng/commonsdk/statistics/common/d;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/d;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 73
    return v1

    .line 76
    :cond_a
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->isFirstRequest()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 78
    return v1

    .line 81
    :cond_13
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_16
    iget-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    if-eqz v2, :cond_1c

    .line 84
    monitor-exit v0

    return v1

    .line 86
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_62

    .line 87
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->statTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getLastReqTime()J

    move-result-wide v2

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 91
    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentHour:J

    const/4 v0, 0x1

    cmp-long v6, v4, v2

    if-lez v6, :cond_4a

    .line 93
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 95
    :try_start_38
    iget v3, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->latentWindow:I

    invoke-static {v3, v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->random(ILjava/lang/String;)I

    move-result v1

    int-to-long v6, v1

    iput-wide v6, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    .line 96
    iput-wide v4, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    .line 97
    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 98
    monitor-exit v2

    .line 100
    return v0

    .line 98
    :catchall_47
    move-exception v0

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_47

    throw v0

    .line 101
    :cond_4a
    const-wide/32 v2, 0x7b98a00

    cmp-long v6, v4, v2

    if-lez v6, :cond_61

    .line 103
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    const-wide/16 v6, 0x0

    :try_start_56
    iput-wide v6, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mDelay:J

    .line 105
    iput-wide v4, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mElapsed:J

    .line 106
    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ImLatent;->mLatentActivite:Z

    .line 107
    monitor-exit v2

    .line 108
    return v0

    .line 107
    :catchall_5e
    move-exception v0

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_5e

    throw v0

    .line 110
    :cond_61
    return v1

    .line 86
    :catchall_62
    move-exception v1

    :try_start_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v1
.end method
