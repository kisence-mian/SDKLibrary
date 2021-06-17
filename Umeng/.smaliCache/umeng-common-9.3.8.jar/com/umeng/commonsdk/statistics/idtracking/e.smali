.class public Lcom/umeng/commonsdk/statistics/idtracking/e;
.super Ljava/lang/Object;
.source "IdTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/idtracking/e$a;
    }
.end annotation


# static fields
.field public static final a:J = 0x5265c00L

.field public static b:Lcom/umeng/commonsdk/statistics/idtracking/e; = null

.field private static final c:Ljava/lang/String; = "umeng_it.cache"

.field private static j:Ljava/lang/Object;


# instance fields
.field private d:Ljava/io/File;

.field private e:Lcom/umeng/commonsdk/statistics/proto/c;

.field private f:J

.field private g:J

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/umeng/commonsdk/statistics/idtracking/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->j:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    .line 42
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    .line 43
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "umeng_it.cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->d:Ljava/io/File;

    .line 57
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->g:J

    .line 58
    new-instance v0, Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    .line 59
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->b()V

    .line 60
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/e;
    .registers 5

    const-class v0, Lcom/umeng/commonsdk/statistics/idtracking/e;

    monitor-enter v0

    .line 63
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    if-nez v1, :cond_86

    .line 64
    new-instance v1, Lcom/umeng/commonsdk/statistics/idtracking/e;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    .line 66
    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/f;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/f;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 67
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/b;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 68
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/l;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/l;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 69
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/d;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/d;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 70
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/c;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 71
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/g;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 72
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/k;

    invoke-direct {v2}, Lcom/umeng/commonsdk/statistics/idtracking/k;-><init>()V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 74
    const-string v1, "header_device_oaid"

    invoke-static {v1}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 75
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/i;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/i;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 82
    :cond_64
    new-instance v1, Lcom/umeng/commonsdk/statistics/idtracking/j;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/idtracking/j;->g()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 84
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    invoke-direct {v2, v1}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 85
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v3, Lcom/umeng/commonsdk/statistics/idtracking/h;

    invoke-direct {v3, p0}, Lcom/umeng/commonsdk/statistics/idtracking/h;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    .line 86
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/idtracking/j;->i()V

    .line 89
    :cond_81
    sget-object p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->f()V

    .line 92
    :cond_86
    sget-object p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;
    :try_end_88
    .catchall {:try_start_3 .. :try_end_88} :catchall_8a

    monitor-exit v0

    return-object p0

    .line 62
    :catchall_8a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a()V
    .registers 2

    const-class v0, Lcom/umeng/commonsdk/statistics/idtracking/e;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    if-eqz v1, :cond_d

    .line 50
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/idtracking/e;->e()V

    .line 51
    const/4 v1, 0x0

    sput-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 53
    :cond_d
    monitor-exit v0

    return-void

    .line 48
    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Lcom/umeng/commonsdk/statistics/proto/c;)V
    .registers 4

    .line 261
    if-eqz p1, :cond_90

    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    if-eqz v0, :cond_90

    .line 263
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    const-string v1, "mac"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 264
    const-string v0, "header_device_id_mac"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 265
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_1d
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    const-string v1, "imei"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 270
    const-string v0, "header_device_id_imei"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 271
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_34
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    const-string v1, "android_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 276
    const-string v0, "header_device_id_android_id"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 277
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_4b
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    const-string v1, "serial"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 282
    const-string v0, "header_device_id_serialNo"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 283
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_62
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    const-string v1, "idfa"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 288
    const-string v0, "header_tracking_idfa"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 289
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_79
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    const-string v1, "oaid"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 294
    const-string v0, "header_device_oaid"

    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 295
    iget-object p1, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_90
    return-void
.end method

.method private a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 97
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 98
    :cond_13
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz v0, :cond_31

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;)V

    .line 102
    :cond_31
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/umeng/commonsdk/statistics/proto/c;)V
    .registers 4

    .line 303
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    if-eqz p1, :cond_22

    .line 308
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6} :catch_1e
    .catchall {:try_start_5 .. :try_end_6} :catchall_24

    .line 309
    :try_start_6
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/proto/c;)V

    .line 310
    new-instance v1, Lcom/umeng/analytics/pro/az;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/az;-><init>()V

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/pro/az;->a(Lcom/umeng/analytics/pro/aq;)[B

    move-result-object p1

    .line 311
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_1b

    .line 313
    if-eqz p1, :cond_1a

    .line 314
    :try_start_15
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->d:Ljava/io/File;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;[B)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1e
    .catchall {:try_start_15 .. :try_end_1a} :catchall_24

    .line 318
    :cond_1a
    goto :goto_22

    .line 311
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1e} :catch_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_24

    .line 316
    :catch_1e
    move-exception p1

    .line 317
    :try_start_1f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    :cond_22
    :goto_22
    monitor-exit v0

    .line 321
    return-void

    .line 320
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw p1
.end method

.method private declared-synchronized h()V
    .registers 8

    monitor-enter p0

    .line 143
    :try_start_1
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/proto/c;-><init>()V

    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/commonsdk/statistics/idtracking/a;

    .line 148
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v5

    if-nez v5, :cond_29

    .line 149
    goto :goto_16

    .line 151
    :cond_29
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->d()Lcom/umeng/commonsdk/statistics/proto/b;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 152
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->d()Lcom/umeng/commonsdk/statistics/proto/b;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_3a
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_51

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_51

    .line 156
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    :cond_51
    goto :goto_16

    .line 160
    :cond_52
    invoke-virtual {v0, v2}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Ljava/util/List;)Lcom/umeng/commonsdk/statistics/proto/c;

    .line 161
    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/c;

    .line 164
    monitor-enter p0
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_61

    .line 166
    :try_start_59
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    .line 167
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5e

    .line 168
    monitor-exit p0

    return-void

    .line 167
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    .line 142
    :catchall_61
    move-exception v0

    monitor-exit p0

    goto :goto_65

    :goto_64
    throw v0

    :goto_65
    goto :goto_64
.end method

.method private i()Lcom/umeng/commonsdk/statistics/proto/c;
    .registers 8

    .line 234
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 236
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_44

    return-object v2

    .line 237
    :cond_e
    nop

    .line 239
    :try_start_f
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->d:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_34
    .catchall {:try_start_f .. :try_end_16} :catchall_2f

    .line 240
    :try_start_16
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 242
    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-direct {v4}, Lcom/umeng/commonsdk/statistics/proto/c;-><init>()V

    .line 243
    new-instance v5, Lcom/umeng/analytics/pro/at;

    invoke-direct {v5}, Lcom/umeng/analytics/pro/at;-><init>()V

    invoke-virtual {v5, v4, v3}, Lcom/umeng/analytics/pro/at;->a(Lcom/umeng/analytics/pro/aq;[B)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_27} :catch_2d
    .catchall {:try_start_16 .. :try_end_27} :catchall_3f

    .line 245
    nop

    .line 249
    :try_start_28
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_44

    return-object v4

    .line 246
    :catch_2d
    move-exception v3

    goto :goto_36

    .line 249
    :catchall_2f
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_40

    .line 246
    :catch_34
    move-exception v3

    move-object v1, v2

    .line 247
    :goto_36
    :try_start_36
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3f

    .line 249
    :try_start_39
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    .line 250
    nop

    .line 251
    monitor-exit v0

    .line 253
    return-object v2

    .line 249
    :catchall_3f
    move-exception v2

    :goto_40
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    throw v2

    .line 251
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_44

    throw v1
.end method


# virtual methods
.method public a(J)V
    .registers 3

    .line 106
    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->g:J

    .line 107
    return-void
.end method

.method public declared-synchronized b()V
    .registers 8

    monitor-enter p0

    .line 110
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->f:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->g:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_4f

    .line 112
    const/4 v2, 0x0

    .line 114
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/commonsdk/statistics/idtracking/a;

    .line 115
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v5

    if-nez v5, :cond_29

    .line 116
    goto :goto_16

    .line 119
    :cond_29
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->a()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 120
    const/4 v2, 0x1

    .line 122
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v5

    if-nez v5, :cond_3f

    .line 123
    iget-object v5, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->b(Ljava/lang/String;)V

    .line 126
    :cond_3f
    goto :goto_16

    .line 128
    :cond_40
    if-eqz v2, :cond_4d

    .line 129
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->h()V

    .line 130
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->a()V

    .line 131
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->g()V

    .line 134
    :cond_4d
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->f:J
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    .line 136
    :cond_4f
    monitor-exit p0

    return-void

    .line 109
    :catchall_51
    move-exception v0

    monitor-exit p0

    goto :goto_55

    :goto_54
    throw v0

    :goto_55
    goto :goto_54
.end method

.method public declared-synchronized c()Lcom/umeng/commonsdk/statistics/proto/c;
    .registers 2

    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 139
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized e()V
    .registers 6

    monitor-enter p0

    .line 175
    :try_start_1
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_45

    if-nez v0, :cond_7

    .line 177
    monitor-exit p0

    return-void

    .line 179
    :cond_7
    nop

    .line 180
    :try_start_8
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/idtracking/a;

    .line 181
    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v4

    if-nez v4, :cond_23

    .line 182
    goto :goto_10

    .line 184
    :cond_23
    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_38

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_38

    .line 185
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/umeng/commonsdk/statistics/idtracking/a;->a(Ljava/util/List;)V

    .line 186
    const/4 v2, 0x1

    .line 188
    :cond_38
    goto :goto_10

    .line 190
    :cond_39
    if-eqz v2, :cond_43

    .line 191
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/c;->b(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->g()V
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_45

    .line 194
    :cond_43
    monitor-exit p0

    return-void

    .line 174
    :catchall_45
    move-exception v0

    monitor-exit p0

    goto :goto_49

    :goto_48
    throw v0

    :goto_49
    goto :goto_48
.end method

.method public declared-synchronized f()V
    .registers 5

    monitor-enter p0

    .line 197
    :try_start_1
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->i()Lcom/umeng/commonsdk/statistics/proto/c;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_5a

    .line 199
    if-nez v0, :cond_9

    .line 200
    monitor-exit p0

    return-void

    .line 202
    :cond_9
    :try_start_9
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/proto/c;)V

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    monitor-enter p0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_5a

    .line 207
    :try_start_18
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    .line 209
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/idtracking/a;

    .line 210
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {v2, v3}, Lcom/umeng/commonsdk/statistics/idtracking/a;->a(Lcom/umeng/commonsdk/statistics/proto/c;)V

    .line 212
    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 213
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_3a
    goto :goto_20

    .line 217
    :cond_3b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/idtracking/a;

    .line 218
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 219
    goto :goto_3f

    .line 220
    :cond_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_18 .. :try_end_52} :catchall_57

    .line 222
    :try_start_52
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->h()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5a

    .line 223
    monitor-exit p0

    return-void

    .line 220
    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 196
    :catchall_5a
    move-exception v0

    monitor-exit p0

    goto :goto_5e

    :goto_5d
    throw v0

    :goto_5e
    goto :goto_5d
.end method

.method public declared-synchronized g()V
    .registers 2

    monitor-enter p0

    .line 226
    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    if-eqz v0, :cond_8

    .line 227
    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->b(Lcom/umeng/commonsdk/statistics/proto/c;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 228
    :cond_8
    monitor-exit p0

    return-void

    .line 225
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
