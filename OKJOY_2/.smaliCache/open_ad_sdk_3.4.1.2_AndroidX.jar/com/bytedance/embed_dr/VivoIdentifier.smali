.class public final Lcom/bytedance/embed_dr/VivoIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private listener:Lcom/bun/supplier/IIdentifierListener;

.field private final mLock:Ljava/lang/Object;

.field private volatile mProloading:Z

.field private final mSecondCallGetDeviceIds:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private oaid:Ljava/lang/String;

.field private resultCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->mSecondCallGetDeviceIds:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->mProloading:Z

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->mLock:Ljava/lang/Object;

    .line 20
    new-instance v0, Lcom/bytedance/embed_dr/VivoIdentifier$1;

    invoke-direct {v0, p0}, Lcom/bytedance/embed_dr/VivoIdentifier$1;-><init>(Lcom/bytedance/embed_dr/VivoIdentifier;)V

    iput-object v0, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->listener:Lcom/bun/supplier/IIdentifierListener;

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/embed_dr/VivoIdentifier;Ljava/lang/String;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lcom/bytedance/embed_dr/VivoIdentifier;->setupOaid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/bytedance/embed_dr/VivoIdentifier;)Ljava/lang/Object;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lcom/bytedance/embed_dr/VivoIdentifier;Z)Z
    .registers 2

    .line 13
    iput-boolean p1, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->mProloading:Z

    return p1
.end method

.method private callFromReflect(Landroid/content/Context;)I
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->listener:Lcom/bun/supplier/IIdentifierListener;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/supplier/IIdentifierListener;)I

    move-result p1

    return p1
.end method

.method private declared-synchronized setupOaid(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 41
    :try_start_1
    sget-object v0, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OaidMiit#setupOaid id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oaid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->oaid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 43
    iget-object v0, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->oaid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 44
    iput-object p1, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->oaid:Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    .line 47
    :cond_35
    monitor-exit p0

    return-void

    .line 40
    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getOaid(Landroid/content/Context;)Lcom/bytedance/embedapplog/cf$a;
    .registers 5

    .line 99
    iget-object p1, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 100
    :try_start_3
    iget-boolean v0, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->mProloading:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1e

    if-eqz v0, :cond_13

    .line 102
    :try_start_7
    iget-object v0, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->mLock:Ljava/lang/Object;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    .line 105
    goto :goto_13

    .line 103
    :catchall_f
    move-exception v0

    .line 104
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    :cond_13
    :goto_13
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1e

    .line 108
    new-instance p1, Lcom/bytedance/embedapplog/cf$a;

    invoke-direct {p1}, Lcom/bytedance/embedapplog/cf$a;-><init>()V

    .line 109
    iget-object v0, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->oaid:Ljava/lang/String;

    iput-object v0, p1, Lcom/bytedance/embedapplog/cf$a;->b:Ljava/lang/String;

    .line 110
    return-object p1

    .line 107
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public preloadOaid(Landroid/content/Context;)V
    .registers 7

    .line 51
    iget-object v0, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->mProloading:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_b2

    .line 54
    const/4 v2, 0x0

    :try_start_7
    invoke-direct {p0, p1}, Lcom/bytedance/embed_dr/VivoIdentifier;->callFromReflect(Landroid/content/Context;)I

    move-result v3

    .line 56
    const v4, 0xf63e4

    if-ne v3, v4, :cond_1d

    .line 57
    sget-object p1, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    const-string v1, "OaidMiit#getDeviceIds \u4e0d\u652f\u6301\u7684\u8bbe\u5907"

    invoke-static {p1, v1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string p1, "\u4e0d\u652f\u6301\u7684\u8bbe\u5907"

    iput-object p1, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->resultCode:Ljava/lang/String;

    goto/16 :goto_a9

    .line 59
    :cond_1d
    const v4, 0xf63e5

    if-ne v3, v4, :cond_2f

    .line 60
    sget-object p1, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    const-string v1, "OaidMiit#getDeviceIds \u52a0\u8f7d\u914d\u7f6e\u6587\u4ef6\u51fa\u9519"

    invoke-static {p1, v1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string p1, "\u52a0\u8f7d\u914d\u7f6e\u6587\u4ef6\u51fa\u9519"

    iput-object p1, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->resultCode:Ljava/lang/String;

    goto/16 :goto_a9

    .line 62
    :cond_2f
    const v4, 0xf63e3

    if-ne v3, v4, :cond_40

    .line 63
    sget-object p1, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    const-string v1, "OaidMiit#getDeviceIds \u4e0d\u652f\u6301\u7684\u8bbe\u5907\u5382\u5546"

    invoke-static {p1, v1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string p1, "\u4e0d\u652f\u6301\u7684\u8bbe\u5907\u5382\u5546"

    iput-object p1, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->resultCode:Ljava/lang/String;

    goto :goto_a9

    .line 65
    :cond_40
    const v4, 0xf63e6

    if-ne v3, v4, :cond_5d

    .line 66
    sget-object v3, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    const-string v4, "OaidMiit#getDeviceIds \u83b7\u53d6\u63a5\u53e3\u662f\u5f02\u6b65\u7684\uff0c\u7ed3\u679c\u4f1a\u5728\u56de\u8c03\u4e2d\u8fd4\u56de\uff0c\u56de\u8c03\u6267\u884c\u7684\u56de\u8c03\u53ef\u80fd\u5728\u5de5\u4f5c\u7ebf\u7a0b"

    invoke-static {v3, v4}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->mSecondCallGetDeviceIds:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 69
    invoke-virtual {p0, p1}, Lcom/bytedance/embed_dr/VivoIdentifier;->preloadOaid(Landroid/content/Context;)V

    goto :goto_a9

    .line 71
    :cond_58
    const-string p1, "\u7ed3\u679c\u4f1a\u5728\u56de\u8c03\u4e2d\u8fd4\u56de"

    iput-object p1, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->resultCode:Ljava/lang/String;

    goto :goto_a9

    .line 73
    :cond_5d
    const p1, 0xf63e7

    if-ne v3, p1, :cond_6e

    .line 74
    sget-object p1, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    const-string v1, "OaidMiit#getDeviceIds \u53cd\u5c04\u8c03\u7528\u51fa\u9519"

    invoke-static {p1, v1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string p1, "\u53cd\u5c04\u8c03\u7528\u51fa\u9519"

    iput-object p1, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->resultCode:Ljava/lang/String;

    goto :goto_a9

    .line 76
    :cond_6e
    if-nez v3, :cond_7c

    .line 77
    sget-object p1, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    const-string v1, "OaidMiit#getDeviceIds \u6b63\u786e"

    invoke-static {p1, v1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string p1, "\u6b63\u786e"

    iput-object p1, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->resultCode:Ljava/lang/String;

    goto :goto_a9

    .line 80
    :cond_7c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672a\u77e5 resultCode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->resultCode:Ljava/lang/String;

    .line 81
    sget-object p1, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OaidMiit#getDeviceIds \u672a\u77e5 resultCode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_7 .. :try_end_a9} :catchall_aa

    .line 86
    :goto_a9
    goto :goto_b0

    .line 83
    :catchall_aa
    move-exception p1

    .line 84
    :try_start_ab
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    iput-boolean v2, p0, Lcom/bytedance/embed_dr/VivoIdentifier;->mProloading:Z

    .line 87
    :goto_b0
    monitor-exit v0

    .line 88
    return-void

    .line 87
    :catchall_b2
    move-exception p1

    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_ab .. :try_end_b4} :catchall_b2

    throw p1
.end method
