.class public Lcom/mintegral/msdk/mtgbanner/common/c/a;
.super Ljava/lang/Object;
.source "BannerLoadManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile h:Lcom/mintegral/msdk/mtgbanner/common/c/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mintegral/msdk/mtgbanner/common/util/a;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/mtgbanner/common/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/mintegral/msdk/mtgbanner/common/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->b:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/util/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgbanner/common/util/a;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->c:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->d:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->e:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->g:Ljava/util/Map;

    .line 65
    return-void
.end method

.method public static a()Lcom/mintegral/msdk/mtgbanner/common/c/a;
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->h:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    if-nez v0, :cond_13

    .line 54
    const-class v1, Lcom/mintegral/msdk/mtgbanner/common/c/a;

    monitor-enter v1

    .line 55
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->h:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    if-nez v0, :cond_12

    .line 56
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/c/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgbanner/common/c/a;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->h:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    .line 58
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 60
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->h:Lcom/mintegral/msdk/mtgbanner/common/c/a;

    return-object v0

    .line 58
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgbanner/common/c/a;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgbanner/common/c/a;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/mtgbanner/common/c/a;)Lcom/mintegral/msdk/mtgbanner/common/util/a;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->c:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 218
    .line 220
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 221
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 224
    :goto_17
    packed-switch p1, :pswitch_data_96

    .line 263
    :cond_1a
    :goto_1a
    return-void

    .line 227
    :pswitch_1b
    if-ne v0, v3, :cond_1a

    .line 228
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 229
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 230
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 232
    :cond_30
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 237
    :pswitch_3a
    const/4 v1, 0x2

    if-eq v0, v1, :cond_40

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 238
    :cond_40
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->g:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {p0, p2, p3, p4}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V

    goto :goto_1a

    .line 243
    :pswitch_4d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 244
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 245
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 248
    :cond_60
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 252
    :pswitch_6a
    if-nez v0, :cond_76

    .line 253
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 255
    :cond_76
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 256
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 257
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 259
    :cond_89
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_93
    move v0, v1

    goto :goto_17

    .line 224
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_1b
        :pswitch_3a
        :pswitch_6a
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 201
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_19
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V
    .registers 9

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->b:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->c:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    const-string v1, "Banner Context == null!"

    invoke-virtual {v0, p3, v1, p1}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_b
    return-void

    .line 82
    :cond_c
    if-eqz p2, :cond_10

    if-nez p3, :cond_18

    .line 83
    :cond_10
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->c:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    const-string v1, "Banner request parameters or callback empty!"

    invoke-virtual {v0, p3, v1, p1}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 88
    :cond_18
    invoke-static {}, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a()Lcom/mintegral/msdk/mtgbanner/common/c/a;

    move-result-object v1

    monitor-enter v1

    .line 89
    :try_start_1d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->e:Ljava/util/Map;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 90
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 91
    if-eqz v0, :cond_43

    .line 92
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->c:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    const-string v2, "Current unit is loading!"

    invoke-virtual {v0, p3, v2, p1}, Lcom/mintegral/msdk/mtgbanner/common/util/a;->a(Lcom/mintegral/msdk/mtgbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    monitor-exit v1

    goto :goto_b

    .line 118
    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_40

    throw v0

    .line 100
    :cond_43
    :try_start_43
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->e:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1130
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgbanner/common/a/c;

    .line 104
    :goto_5d
    new-instance v2, Lcom/mintegral/msdk/mtgbanner/common/c/b;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->c:Lcom/mintegral/msdk/mtgbanner/common/util/a;

    invoke-direct {v2, v3, v0, p3, v4}, Lcom/mintegral/msdk/mtgbanner/common/c/b;-><init>(Landroid/content/Context;Lcom/mintegral/msdk/mtgbanner/common/a/c;Lcom/mintegral/msdk/mtgbanner/common/b/b;Lcom/mintegral/msdk/mtgbanner/common/util/a;)V

    .line 106
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/c/a$1;

    invoke-direct {v0, p0, p2}, Lcom/mintegral/msdk/mtgbanner/common/c/a$1;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/a;Lcom/mintegral/msdk/mtgbanner/common/a/b;)V

    invoke-virtual {v2, p1, p2, v0}, Lcom/mintegral/msdk/mtgbanner/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/d;)V

    .line 118
    monitor-exit v1

    goto :goto_b

    .line 1132
    :cond_70
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 1133
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    .line 1134
    if-nez v0, :cond_85

    .line 1135
    invoke-static {p1}, Lcom/mintegral/msdk/c/d;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    .line 1137
    :cond_85
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->A()I

    move-result v0

    mul-int/lit8 v2, v0, 0x1

    .line 1139
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/common/a/c;

    const-string v3, ""

    invoke-direct {v0, p1, v3, v2}, Lcom/mintegral/msdk/mtgbanner/common/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1140
    iget-object v2, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catchall {:try_start_43 .. :try_end_97} :catchall_40

    goto :goto_5d
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 271
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 274
    :cond_9
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->e:Ljava/util/Map;

    if-eqz v0, :cond_12

    .line 275
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 278
    :cond_12
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    if-eqz v0, :cond_42

    .line 279
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_20

    .line 285
    :cond_3d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 288
    :cond_42
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->g:Ljava/util/Map;

    if-eqz v0, :cond_4b

    .line 289
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 291
    :cond_4b
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/a/b;Lcom/mintegral/msdk/mtgbanner/common/b/b;)V
    .registers 8

    .prologue
    .line 153
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/mintegral/msdk/mtgbanner/common/a/b;->b()I

    move-result v0

    if-gtz v0, :cond_1d

    .line 154
    :cond_8
    sget-object v0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doUnitRotation: Illegal banner request parameters! && unitId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_1c
    return-void

    .line 159
    :cond_1d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 160
    iget-object v0, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 166
    :goto_2d
    new-instance v1, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/mintegral/msdk/mtgbanner/common/c/a$2;-><init>(Lcom/mintegral/msdk/mtgbanner/common/c/a;Ljava/lang/String;Lcom/mintegral/msdk/mtgbanner/common/b/b;Lcom/mintegral/msdk/mtgbanner/common/a/b;)V

    .line 191
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p2}, Lcom/mintegral/msdk/mtgbanner/common/a/b;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1c

    .line 162
    :cond_3f
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 163
    iget-object v1, p0, Lcom/mintegral/msdk/mtgbanner/common/c/a;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d
.end method
