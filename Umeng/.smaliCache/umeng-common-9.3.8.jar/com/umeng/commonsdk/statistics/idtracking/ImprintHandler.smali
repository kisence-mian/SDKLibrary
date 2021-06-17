.class public Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;
.super Ljava/lang/Object;
.source "ImprintHandler.java"

# interfaces
.implements Lcom/umeng/commonsdk/utils/FileLockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ImprintHandler"

.field private static b:Ljava/lang/Object; = null

.field private static final c:Ljava/lang/String; = ".imprint"

.field private static final d:[B

.field private static f:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/Object; = null

.field private static j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler; = null

.field private static k:Landroid/content/Context; = null

.field private static l:Lcom/umeng/commonsdk/utils/FileLockUtil; = null

.field private static final m:I = 0x0

.field private static final n:I = 0x1

.field private static o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/lang/Object;


# instance fields
.field private e:Lcom/umeng/commonsdk/statistics/internal/d;

.field private h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

.field private i:Lcom/umeng/commonsdk/statistics/proto/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->b:Ljava/lang/Object;

    .line 46
    const-string v0, "pbl0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->d:[B

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->p:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    .line 92
    return-void
.end method

.method private a(Lcom/umeng/commonsdk/statistics/proto/d;Lcom/umeng/commonsdk/statistics/proto/d;Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/d;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/commonsdk/statistics/proto/d;",
            "Lcom/umeng/commonsdk/statistics/proto/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/commonsdk/statistics/proto/d;"
        }
    .end annotation

    .line 412
    if-nez p2, :cond_3

    .line 413
    return-object p1

    .line 416
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v0

    .line 417
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v1

    .line 418
    nop

    .line 419
    nop

    .line 420
    nop

    .line 421
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 422
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b2

    .line 423
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 424
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/umeng/commonsdk/statistics/proto/e;

    iget-object v5, v5, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    .line 426
    sget-object v6, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->p:Ljava/lang/Object;

    monitor-enter v6

    .line 427
    :try_start_40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5f

    sget-object v7, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 428
    sget-object v7, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;

    .line 429
    if-eqz v7, :cond_5f

    .line 430
    invoke-interface {v7, v3, v5}, Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;->onPreProcessImprintKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 431
    const/4 v4, 0x1

    .line 435
    :cond_5f
    monitor-exit v6
    :try_end_60
    .catchall {:try_start_40 .. :try_end_60} :catchall_af

    .line 437
    if-nez v4, :cond_90

    .line 438
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 442
    :try_start_70
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8b

    sget-object v4, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 444
    sget-object v4, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 445
    if-eqz v4, :cond_8b

    .line 446
    invoke-interface {p3, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_8b
    monitor-exit v2

    goto :goto_ae

    :catchall_8d
    move-exception p1

    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_70 .. :try_end_8f} :catchall_8d

    throw p1

    .line 455
    :cond_90
    const-string v2, "MobclickRT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>> merge: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] should be ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :goto_ae
    goto :goto_f1

    .line 435
    :catchall_af
    move-exception p1

    :try_start_b0
    monitor-exit v6
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw p1

    .line 459
    :cond_b2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 461
    sget-object v3, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 462
    nop

    .line 463
    :try_start_bc
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e8

    sget-object v5, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e8

    .line 465
    sget-object v5, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 466
    if-eqz v5, :cond_e8

    .line 467
    nop

    :goto_d5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_e8

    .line 468
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;->onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    add-int/lit8 v4, v4, 0x1

    goto :goto_d5

    .line 472
    :cond_e8
    monitor-exit v3
    :try_end_e9
    .catchall {:try_start_bc .. :try_end_e9} :catchall_f3

    .line 473
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    invoke-virtual {v3, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;)V

    .line 476
    :goto_f1
    goto/16 :goto_16

    .line 472
    :catchall_f3
    move-exception p1

    :try_start_f4
    monitor-exit v3
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw p1

    .line 478
    :cond_f6
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d;->a(I)Lcom/umeng/commonsdk/statistics/proto/d;

    .line 479
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d;->a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/d;

    .line 481
    return-object p1
.end method

.method private a(Ljava/io/File;)V
    .registers 5

    .line 597
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez v0, :cond_5

    .line 598
    return-void

    .line 602
    :cond_5
    :try_start_5
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_2c

    .line 603
    :try_start_8
    new-instance v1, Lcom/umeng/analytics/pro/az;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/az;-><init>()V

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/az;->a(Lcom/umeng/analytics/pro/aq;)[B

    move-result-object v1

    .line 605
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_29

    .line 608
    :try_start_18
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 609
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_24

    .line 611
    :try_start_1e
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/OutputStream;)V

    .line 612
    nop

    .line 613
    monitor-exit v0

    .line 616
    goto :goto_30

    .line 611
    :catchall_24
    move-exception p1

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/OutputStream;)V

    throw p1

    .line 613
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2c} :catch_2c

    .line 614
    :catch_2c
    move-exception p1

    .line 615
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 617
    :goto_30
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    .registers 8

    .line 109
    nop

    .line 110
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_4
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_60

    .line 113
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>> addCallback: before add: callbacks size is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 116
    nop

    :goto_30
    if-ge v2, v1, :cond_42

    .line 117
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_3f

    .line 118
    const-string p0, "--->>> addCallback: callback has exist, just exit"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_b5

    .line 120
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_bd

    return-void

    .line 116
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 123
    :cond_42
    :try_start_42
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> addCallback: after add: callbacks size is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 125
    goto :goto_b4

    .line 126
    :cond_60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>> addCallback: before add: callbacks size is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 129
    nop

    :goto_80
    if-ge v2, v3, :cond_92

    .line 130
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_8f

    .line 131
    const-string p0, "--->>> addCallback: callback has exist, just exit"

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_42 .. :try_end_8d} :catchall_b5

    .line 133
    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_bd

    return-void

    .line 129
    :cond_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 136
    :cond_92
    :try_start_92
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> addCallback: after add: callbacks size is: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 138
    sget-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b4
    .catchall {:try_start_92 .. :try_end_b4} :catchall_b5

    .line 142
    :goto_b4
    goto :goto_bb

    .line 140
    :catchall_b5
    move-exception p0

    .line 141
    :try_start_b6
    sget-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 143
    :goto_bb
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_bd
    move-exception p0

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_bd

    goto :goto_c1

    :goto_c0
    throw p0

    :goto_c1
    goto :goto_c0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 400
    if-nez p1, :cond_8

    .line 401
    if-eqz p2, :cond_6

    .line 402
    const/4 p1, 0x0

    return p1

    .line 404
    :cond_6
    const/4 p1, 0x1

    return p1

    .line 407
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static b(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    .registers 7

    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ac

    if-nez p1, :cond_a

    goto/16 :goto_ac

    .line 151
    :cond_a
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_d
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 154
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 155
    if-eqz p1, :cond_a0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a0

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>> removeCallback: before remove: callbacks size is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 159
    const/4 v3, 0x0

    :goto_40
    if-ge v3, v2, :cond_65

    .line 160
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_62

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> removeCallback: remove index "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 163
    goto :goto_65

    .line 159
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 166
    :cond_65
    :goto_65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> removeCallback: after remove: callbacks size is: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_a0

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> removeCallback: remove key from map: key = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 170
    sget-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a0
    .catchall {:try_start_d .. :try_end_a0} :catchall_a1

    .line 176
    :cond_a0
    goto :goto_a7

    .line 174
    :catchall_a1
    move-exception p0

    .line 175
    :try_start_a2
    sget-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 177
    :goto_a7
    monitor-exit v0

    .line 179
    return-void

    .line 177
    :catchall_a9
    move-exception p0

    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_a9

    throw p0

    .line 148
    :cond_ac
    :goto_ac
    return-void
.end method

.method private c(Lcom/umeng/commonsdk/statistics/proto/d;)Z
    .registers 8

    .line 253
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 254
    return v1

    .line 257
    :cond_10
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/e;

    .line 258
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->reverseHexString(Ljava/lang/String;)[B

    move-result-object v2

    .line 259
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Lcom/umeng/commonsdk/statistics/proto/e;)[B

    move-result-object v0

    .line 261
    const/4 v3, 0x0

    :goto_35
    const/4 v4, 0x4

    if-ge v3, v4, :cond_42

    .line 262
    aget-byte v4, v2, v3

    aget-byte v5, v0, v3

    if-eq v4, v5, :cond_3f

    .line 263
    return v1

    .line 261
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 265
    :cond_42
    goto :goto_1c

    .line 267
    :cond_43
    const/4 p1, 0x1

    return p1
.end method

.method private d(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;
    .registers 5

    .line 308
    nop

    .line 309
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v0

    .line 310
    const-string v1, "umtt"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 311
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/statistics/proto/d;->a(I)Lcom/umeng/commonsdk/statistics/proto/d;

    .line 314
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/statistics/proto/d;->a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/d;

    .line 316
    :cond_23
    return-object p1
.end method

.method private e(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;
    .registers 11

    .line 490
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v0

    .line 491
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    nop

    .line 494
    nop

    .line 495
    nop

    .line 496
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 497
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v5}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 498
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 500
    :cond_3b
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 501
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    iget-object v3, v3, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    .line 503
    nop

    .line 505
    sget-object v6, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->p:Ljava/lang/Object;

    monitor-enter v6

    .line 506
    :try_start_4d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6d

    sget-object v7, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 507
    sget-object v7, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;

    .line 508
    if-eqz v7, :cond_6d

    .line 509
    invoke-interface {v7, v5, v3}, Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;->onPreProcessImprintKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 510
    const/4 v7, 0x1

    goto :goto_6e

    .line 514
    :cond_6d
    const/4 v7, 0x0

    :goto_6e
    monitor-exit v6
    :try_end_6f
    .catchall {:try_start_4d .. :try_end_6f} :catchall_a9

    .line 516
    if-eqz v7, :cond_74

    .line 517
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_74
    nop

    .line 521
    sget-object v7, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter v7

    .line 522
    :try_start_78
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a3

    sget-object v6, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 524
    sget-object v6, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 525
    if-eqz v6, :cond_a3

    .line 526
    nop

    :goto_91
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_a3

    .line 527
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;

    invoke-interface {v8, v5, v3}, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;->onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    add-int/lit8 v4, v4, 0x1

    goto :goto_91

    .line 531
    :cond_a3
    monitor-exit v7

    .line 533
    :goto_a4
    goto/16 :goto_1a

    .line 531
    :catchall_a6
    move-exception p1

    monitor-exit v7
    :try_end_a8
    .catchall {:try_start_78 .. :try_end_a8} :catchall_a6

    throw p1

    .line 514
    :catchall_a9
    move-exception p1

    :try_start_aa
    monitor-exit v6
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw p1

    .line 535
    :cond_ac
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 537
    sget-object v3, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 538
    :try_start_bf
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_eb

    sget-object v5, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 540
    sget-object v5, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 541
    if-eqz v5, :cond_eb

    .line 542
    const/4 v6, 0x0

    :goto_d8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_eb

    .line 543
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;->onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    add-int/lit8 v6, v6, 0x1

    goto :goto_d8

    .line 547
    :cond_eb
    monitor-exit v3
    :try_end_ec
    .catchall {:try_start_bf .. :try_end_ec} :catchall_f0

    .line 548
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    goto :goto_b0

    .line 547
    :catchall_f0
    move-exception p1

    :try_start_f1
    monitor-exit v3
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw p1

    .line 551
    :cond_f3
    return-object p1
.end method

.method private e()V
    .registers 6

    .line 563
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".imprint"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 565
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    .line 567
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_62

    return-void

    .line 570
    :cond_18
    nop

    .line 571
    nop

    .line 573
    const/4 v0, 0x0

    :try_start_1b
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    const-string v3, ".imprint"

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_2f
    .catchall {:try_start_1b .. :try_end_23} :catchall_2a

    .line 574
    :try_start_23
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_28
    .catchall {:try_start_23 .. :try_end_27} :catchall_5d

    goto :goto_34

    .line 575
    :catch_28
    move-exception v3

    goto :goto_31

    .line 578
    :catchall_2a
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_5e

    .line 575
    :catch_2f
    move-exception v3

    move-object v2, v0

    .line 576
    :goto_31
    :try_start_31
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_5d

    .line 578
    :goto_34
    :try_start_34
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_62

    .line 579
    nop

    .line 581
    if-eqz v0, :cond_5b

    .line 583
    :try_start_3a
    new-instance v2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v2}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>()V

    .line 584
    new-instance v3, Lcom/umeng/analytics/pro/at;

    invoke-direct {v3}, Lcom/umeng/analytics/pro/at;-><init>()V

    invoke-virtual {v3, v2, v0}, Lcom/umeng/analytics/pro/at;->a(Lcom/umeng/analytics/pro/aq;[B)V

    .line 585
    iput-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 586
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    invoke-virtual {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Lcom/umeng/commonsdk/statistics/proto/d;)V

    .line 587
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->d(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_56} :catch_57
    .catchall {:try_start_3a .. :try_end_56} :catchall_62

    .line 590
    goto :goto_5b

    .line 588
    :catch_57
    move-exception v0

    .line 589
    :try_start_58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    :cond_5b
    :goto_5b
    monitor-exit v1

    .line 594
    return-void

    .line 578
    :catchall_5d
    move-exception v0

    :goto_5e
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    throw v0

    .line 592
    :catchall_62
    move-exception v0

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_62

    throw v0
.end method

.method public static declared-synchronized getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;
    .registers 5

    const-class v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    monitor-enter v0

    .line 95
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    if-nez v1, :cond_2b

    .line 96
    new-instance v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    .line 97
    new-instance p0, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {p0}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    sput-object p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->l:Lcom/umeng/commonsdk/utils/FileLockUtil;

    .line 98
    nop

    .line 99
    new-instance p0, Ljava/io/File;

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".imprint"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->l:Lcom/umeng/commonsdk/utils/FileLockUtil;

    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;I)V

    .line 105
    :cond_2b
    sget-object p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2f

    monitor-exit v0

    return-object p0

    .line 94
    :catchall_2f
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;
    .registers 7

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    new-instance v1, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 238
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 241
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->e()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 244
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/proto/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    goto :goto_16

    .line 247
    :cond_5f
    iget p1, p1, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/umeng/commonsdk/statistics/internal/d;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->e:Lcom/umeng/commonsdk/statistics/internal/d;

    .line 232
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 214
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_9
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 217
    const-string v1, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> unregistPreProcessCallback: unregist ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] success."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 220
    :cond_35
    const-string v1, "MobclickRT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> unregistPreProcessCallback: can\'t find ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "], pls regist first."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_9 .. :try_end_53} :catchall_54

    .line 224
    :goto_53
    goto :goto_5a

    .line 222
    :catchall_54
    move-exception p1

    .line 223
    :try_start_55
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 225
    :goto_5a
    monitor-exit v0

    goto :goto_5f

    :catchall_5c
    move-exception p1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_5c

    throw p1

    .line 227
    :cond_5f
    :goto_5f
    return-void
.end method

.method public a()[B
    .registers 4

    .line 290
    const/4 v0, 0x0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_20

    .line 292
    :try_start_2
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez v1, :cond_8

    .line 293
    monitor-exit p0

    return-object v0

    .line 295
    :cond_8
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/proto/d;->b()I

    move-result v1

    .line 296
    if-gtz v1, :cond_10

    .line 297
    monitor-exit p0

    return-object v0

    .line 299
    :cond_10
    new-instance v1, Lcom/umeng/analytics/pro/az;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/az;-><init>()V

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/az;->a(Lcom/umeng/analytics/pro/aq;)[B

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 300
    :catchall_1d
    move-exception v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    .line 301
    :catchall_20
    move-exception v1

    .line 302
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 303
    return-object v0
.end method

.method public a(Lcom/umeng/commonsdk/statistics/proto/e;)[B
    .registers 8

    .line 271
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 272
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 273
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/e;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 275
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 276
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->d:[B

    .line 277
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 279
    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_28

    .line 280
    aget-byte v4, p1, v3

    aget-byte v5, v0, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 283
    :cond_28
    return-object v2
.end method

.method public declared-synchronized b()Lcom/umeng/commonsdk/statistics/proto/d;
    .registers 2

    monitor-enter p0

    .line 555
    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 555
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/umeng/commonsdk/statistics/proto/d;)V
    .registers 9

    .line 320
    if-nez p1, :cond_e

    .line 321
    sget-boolean p1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz p1, :cond_d

    .line 323
    const-string p1, "MobclickRT"

    const-string v0, "Imprint is null"

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_d
    return-void

    .line 328
    :cond_e
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->c(Lcom/umeng/commonsdk/statistics/proto/d;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 329
    sget-boolean p1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz p1, :cond_1f

    .line 331
    const-string p1, "MobclickRT"

    const-string v0, "Imprint is not valid"

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_1f
    return-void

    .line 335
    :cond_20
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    .line 341
    nop

    .line 343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 344
    monitor-enter p0

    .line 345
    :try_start_29
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 346
    nop

    .line 347
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->d(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object p1

    .line 348
    const/4 v2, 0x0

    if-nez v1, :cond_35

    move-object v3, v2

    goto :goto_39

    :cond_35
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/proto/d;->i()Ljava/lang/String;

    move-result-object v3

    .line 349
    :goto_39
    if-nez v1, :cond_40

    .line 350
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->e(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object p1

    goto :goto_44

    .line 352
    :cond_40
    invoke-direct {p0, v1, p1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Lcom/umeng/commonsdk/statistics/proto/d;Lcom/umeng/commonsdk/statistics/proto/d;Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object p1

    .line 355
    :goto_44
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 356
    if-nez p1, :cond_49

    goto :goto_4d

    :cond_49
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->i()Ljava/lang/String;

    move-result-object v2

    .line 357
    :goto_4d
    invoke-direct {p0, v3, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_56

    .line 358
    const/4 p1, 0x1

    goto :goto_57

    .line 357
    :cond_56
    const/4 p1, 0x0

    .line 360
    :goto_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_29 .. :try_end_58} :catchall_eb

    .line 362
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v2, :cond_70

    .line 363
    sget-boolean v2, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    .line 366
    if-eqz p1, :cond_70

    .line 367
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {p1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Lcom/umeng/commonsdk/statistics/proto/d;)V

    .line 368
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->e:Lcom/umeng/commonsdk/statistics/internal/d;

    if-eqz p1, :cond_70

    .line 369
    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    invoke-interface {p1, v2}, Lcom/umeng/commonsdk/statistics/internal/d;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V

    .line 376
    :cond_70
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_ea

    .line 379
    sget-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 380
    :try_start_79
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_81
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 381
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 382
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 383
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e4

    sget-object v4, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>> target imprint key is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; value is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 385
    sget-object v4, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 386
    if-eqz v4, :cond_e4

    .line 387
    const/4 v5, 0x0

    :goto_d2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_e4

    .line 388
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;

    invoke-interface {v6, v3, v2}, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;->onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    add-int/lit8 v5, v5, 0x1

    goto :goto_d2

    .line 392
    :cond_e4
    goto :goto_81

    .line 394
    :cond_e5
    monitor-exit p1

    goto :goto_ea

    :catchall_e7
    move-exception v0

    monitor-exit p1
    :try_end_e9
    .catchall {:try_start_79 .. :try_end_e9} :catchall_e7

    throw v0

    .line 397
    :cond_ea
    :goto_ea
    return-void

    .line 360
    :catchall_eb
    move-exception p1

    :try_start_ec
    monitor-exit p0
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    goto :goto_ef

    :goto_ee
    throw p1

    :goto_ef
    goto :goto_ee
.end method

.method public c()Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;
    .registers 2

    .line 559
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    return-object v0
.end method

.method public d()V
    .registers 5

    .line 619
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez v0, :cond_5

    .line 620
    return-void

    .line 622
    :cond_5
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->l:Lcom/umeng/commonsdk/utils/FileLockUtil;

    if-eqz v0, :cond_33

    .line 623
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".imprint"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 626
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 634
    goto :goto_2b

    .line 627
    :catch_20
    move-exception v1

    .line 630
    :try_start_21
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 633
    goto :goto_2b

    .line 631
    :catch_25
    move-exception v1

    .line 632
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 636
    :cond_2b
    :goto_2b
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->l:Lcom/umeng/commonsdk/utils/FileLockUtil;

    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;I)V

    .line 638
    :cond_33
    return-void
.end method

.method public onFileLock(Ljava/io/File;I)Z
    .registers 4

    .line 80
    const/4 v0, 0x1

    if-nez p2, :cond_9

    .line 82
    sget-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->e()V

    goto :goto_10

    .line 83
    :cond_9
    if-ne p2, v0, :cond_10

    .line 85
    sget-object p2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    invoke-direct {p2, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Ljava/io/File;)V

    .line 87
    :cond_10
    :goto_10
    return v0
.end method

.method public onFileLock(Ljava/lang/String;)Z
    .registers 2

    .line 70
    const/4 p1, 0x0

    return p1
.end method

.method public onFileLock(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 75
    const/4 p1, 0x0

    return p1
.end method

.method public registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    .registers 4

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    .line 183
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    .line 185
    :cond_b
    return-void
.end method

.method public registPreProcessCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;)V
    .registers 6

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    if-eqz p2, :cond_61

    .line 196
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_b
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 200
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string p2, "MobclickRT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> registPreProcessCallback: key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " regist success."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 203
    :cond_37
    const-string p2, "MobclickRT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " PreProcesser has registed!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_b .. :try_end_55} :catchall_56

    .line 207
    :goto_55
    goto :goto_5c

    .line 205
    :catchall_56
    move-exception p1

    .line 206
    :try_start_57
    sget-object p2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 208
    :goto_5c
    monitor-exit v0

    goto :goto_61

    :catchall_5e
    move-exception p1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_5e

    throw p1

    .line 210
    :cond_61
    :goto_61
    return-void
.end method

.method public unregistImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    .registers 4

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    .line 189
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->b(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    .line 191
    :cond_b
    return-void
.end method
