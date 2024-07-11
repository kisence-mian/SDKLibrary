.class public Lcom/efs/sdk/pa/PAFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/pa/PAFactory$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_OUT_TIME:J = 0x7d0L

.field private static final INVALID_TIME_OUT_TIME:J = 0x0L

.field private static final MAX_TIME_OUT_TIME:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "pafactory"

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/efs/sdk/pa/PA;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfigManager:Lcom/efs/sdk/pa/config/ConfigManager;

.field private mContext:Landroid/content/Context;

.field private mExtend:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReporter:Lcom/efs/sdk/base/EfsReporter;

.field private mReporterFactory:Lcom/efs/sdk/pa/config/IEfsReporter;

.field private mSerial:Ljava/lang/String;

.field private mSver:Ljava/lang/String;

.field private mTimeOutTime:J

.field private mTraceListener:Lcom/efs/sdk/pa/PATraceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/efs/sdk/pa/PAFactory;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/PackageLevel;Lcom/efs/sdk/pa/config/IEfsReporter;ZLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JLcom/efs/sdk/pa/PATraceListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/efs/sdk/pa/config/PackageLevel;",
            "Lcom/efs/sdk/pa/config/IEfsReporter;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lcom/efs/sdk/pa/PATraceListener;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p3, p0, Lcom/efs/sdk/pa/PAFactory;->mReporterFactory:Lcom/efs/sdk/pa/config/IEfsReporter;

    .line 75
    iput-object p5, p0, Lcom/efs/sdk/pa/PAFactory;->mSerial:Ljava/lang/String;

    .line 76
    iput-object p6, p0, Lcom/efs/sdk/pa/PAFactory;->mExtend:Ljava/util/HashMap;

    .line 77
    iput-object p7, p0, Lcom/efs/sdk/pa/PAFactory;->mSver:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory;->mContext:Landroid/content/Context;

    .line 79
    iput-object p10, p0, Lcom/efs/sdk/pa/PAFactory;->mTraceListener:Lcom/efs/sdk/pa/PATraceListener;

    .line 80
    iput-wide p8, p0, Lcom/efs/sdk/pa/PAFactory;->mTimeOutTime:J

    .line 81
    new-instance p5, Lcom/efs/sdk/pa/config/ConfigManager;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/efs/sdk/pa/config/ConfigManager;-><init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/PackageLevel;Lcom/efs/sdk/pa/config/IEfsReporter;Z)V

    iput-object p5, p0, Lcom/efs/sdk/pa/PAFactory;->mConfigManager:Lcom/efs/sdk/pa/config/ConfigManager;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/PackageLevel;Lcom/efs/sdk/pa/config/IEfsReporter;ZLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JLcom/efs/sdk/pa/PATraceListener;Lcom/efs/sdk/pa/PAFactory$1;)V
    .registers 12

    .line 31
    invoke-direct/range {p0 .. p10}, Lcom/efs/sdk/pa/PAFactory;-><init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/PackageLevel;Lcom/efs/sdk/pa/config/IEfsReporter;ZLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JLcom/efs/sdk/pa/PATraceListener;)V

    return-void
.end method


# virtual methods
.method public getConfigManager()Lcom/efs/sdk/pa/config/ConfigManager;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mConfigManager:Lcom/efs/sdk/pa/config/ConfigManager;

    return-object v0
.end method

.method public getExtend()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mExtend:Ljava/util/HashMap;

    return-object v0
.end method

.method public declared-synchronized getPaInstance()Lcom/efs/sdk/pa/PA;
    .registers 7

    monitor-enter p0

    .line 64
    :try_start_1
    sget-object v0, Lcom/efs/sdk/pa/PAFactory;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/efs/sdk/pa/PA;

    .line 65
    if-nez v1, :cond_25

    .line 66
    new-instance v1, Lcom/efs/sdk/pa/a/c;

    iget-object v2, p0, Lcom/efs/sdk/pa/PAFactory;->mConfigManager:Lcom/efs/sdk/pa/config/ConfigManager;

    invoke-virtual {v2}, Lcom/efs/sdk/pa/config/ConfigManager;->enableTracer()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/efs/sdk/pa/a/c;-><init>(Z)V

    .line 67
    iget-object v2, p0, Lcom/efs/sdk/pa/PAFactory;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/efs/sdk/pa/a;

    invoke-direct {v3, p0}, Lcom/efs/sdk/pa/a;-><init>(Lcom/efs/sdk/pa/PAFactory;)V

    iget-wide v4, p0, Lcom/efs/sdk/pa/PAFactory;->mTimeOutTime:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/efs/sdk/pa/PA;->registerPAANRListener(Landroid/content/Context;Lcom/efs/sdk/pa/PAANRListener;J)V

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 70
    :cond_25
    monitor-exit p0

    return-object v1

    .line 63
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReporter()Lcom/efs/sdk/base/EfsReporter;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mReporter:Lcom/efs/sdk/base/EfsReporter;

    if-nez v0, :cond_10

    .line 106
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mReporterFactory:Lcom/efs/sdk/pa/config/IEfsReporter;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/efs/sdk/pa/config/IEfsReporter;->getReporter()Lcom/efs/sdk/base/EfsReporter;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 108
    :cond_10
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mReporter:Lcom/efs/sdk/base/EfsReporter;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getSver()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mSver:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceListener()Lcom/efs/sdk/pa/PATraceListener;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mTraceListener:Lcom/efs/sdk/pa/PATraceListener;

    return-object v0
.end method
