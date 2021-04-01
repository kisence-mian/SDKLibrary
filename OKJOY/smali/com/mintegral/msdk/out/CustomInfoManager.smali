.class public Lcom/mintegral/msdk/out/CustomInfoManager;
.super Ljava/lang/Object;
.source "CustomInfoManager.java"

# interfaces
.implements Lcom/mintegral/msdk/system/NoProGuard;


# static fields
.field private static INSTANCE:Lcom/mintegral/msdk/out/CustomInfoManager; = null

.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_BID:I = 0x6

.field public static final TYPE_BIDLOAD:I = 0x7

.field public static final TYPE_LOAD:I = 0x8


# instance fields
.field private infoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "CustomInfoManager"

    sput-object v0, Lcom/mintegral/msdk/out/CustomInfoManager;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/out/CustomInfoManager;->INSTANCE:Lcom/mintegral/msdk/out/CustomInfoManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    return-void
.end method

.method private getCustomInfoByUnitId(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 68
    const-string v0, ""

    .line 69
    packed-switch p2, :pswitch_data_50

    .line 85
    :goto_b
    return-object v0

    .line 71
    :pswitch_c
    iget-object v0, p0, Lcom/mintegral/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_bid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_b

    .line 75
    :pswitch_28
    iget-object v0, p0, Lcom/mintegral/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_bidload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_b

    .line 79
    :pswitch_44
    iget-object v0, p0, Lcom/mintegral/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_b

    .line 85
    :cond_4d
    const-string v0, ""

    goto :goto_b

    .line 69
    :pswitch_data_50
    .packed-switch 0x6
        :pswitch_c
        :pswitch_28
        :pswitch_44
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/mintegral/msdk/out/CustomInfoManager;
    .registers 3

    .prologue
    .line 36
    const-class v1, Lcom/mintegral/msdk/out/CustomInfoManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mintegral/msdk/out/CustomInfoManager;->INSTANCE:Lcom/mintegral/msdk/out/CustomInfoManager;

    if-nez v0, :cond_16

    .line 37
    const-class v2, Lcom/mintegral/msdk/out/CustomInfoManager;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    .line 38
    :try_start_a
    sget-object v0, Lcom/mintegral/msdk/out/CustomInfoManager;->INSTANCE:Lcom/mintegral/msdk/out/CustomInfoManager;

    if-nez v0, :cond_15

    .line 39
    new-instance v0, Lcom/mintegral/msdk/out/CustomInfoManager;

    invoke-direct {v0}, Lcom/mintegral/msdk/out/CustomInfoManager;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/out/CustomInfoManager;->INSTANCE:Lcom/mintegral/msdk/out/CustomInfoManager;

    .line 41
    :cond_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1a

    .line 43
    :cond_16
    :try_start_16
    sget-object v0, Lcom/mintegral/msdk/out/CustomInfoManager;->INSTANCE:Lcom/mintegral/msdk/out/CustomInfoManager;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_1d

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1d

    .line 36
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCustomInfoByUnitId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    const-string v0, ""

    .line 116
    :goto_8
    return-object v0

    .line 95
    :cond_9
    :try_start_9
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_78

    .line 97
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "hb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "bid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 101
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/out/CustomInfoManager;->getCustomInfoByUnitId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 104
    :cond_39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "hb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "load"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 105
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/out/CustomInfoManager;->getCustomInfoByUnitId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 108
    :cond_5b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_78

    const-string v1, "v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 109
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/out/CustomInfoManager;->getCustomInfoByUnitId(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_6e} :catch_70

    move-result-object v0

    goto :goto_8

    .line 112
    :catch_70
    move-exception v0

    .line 113
    sget-object v1, Lcom/mintegral/msdk/out/CustomInfoManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :cond_78
    const-string v0, ""

    goto :goto_8
.end method

.method public setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    .prologue
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p3, :cond_f

    .line 48
    invoke-static {p3}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    packed-switch p2, :pswitch_data_48

    .line 64
    :cond_f
    :goto_f
    return-void

    .line 52
    :pswitch_10
    iget-object v1, p0, Lcom/mintegral/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_bid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 56
    :pswitch_29
    iget-object v1, p0, Lcom/mintegral/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_bidload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 60
    :pswitch_42
    iget-object v1, p0, Lcom/mintegral/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 50
    :pswitch_data_48
    .packed-switch 0x6
        :pswitch_10
        :pswitch_29
        :pswitch_42
    .end packed-switch
.end method
