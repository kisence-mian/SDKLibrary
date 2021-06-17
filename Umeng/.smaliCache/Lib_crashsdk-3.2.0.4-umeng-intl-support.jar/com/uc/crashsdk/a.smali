.class public Lcom/uc/crashsdk/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static C:I

.field private static D:I

.field private static E:I

.field private static F:Ljava/lang/Runnable;

.field private static G:Z

.field private static H:Z

.field private static I:Z

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field static c:Z

.field static final synthetic d:Z

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:I

.field private static j:J

.field private static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:I

.field private static final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static final y:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/a;->d:Z

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/uc/crashsdk/a;->a:Ljava/lang/String;

    .line 27
    sput-object v0, Lcom/uc/crashsdk/a;->b:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/a;->e:Ljava/util/Map;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/a;->f:Ljava/util/List;

    .line 56
    sput-object v0, Lcom/uc/crashsdk/a;->g:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/a;->h:Ljava/lang/String;

    .line 59
    const/4 v0, -0x1

    sput v0, Lcom/uc/crashsdk/a;->i:I

    .line 60
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/uc/crashsdk/a;->j:J

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/a;->k:Ljava/util/HashMap;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/a;->l:Ljava/util/List;

    .line 185
    const/4 v0, 0x0

    sput v0, Lcom/uc/crashsdk/a;->m:I

    .line 186
    sput v0, Lcom/uc/crashsdk/a;->n:I

    .line 187
    sput v0, Lcom/uc/crashsdk/a;->o:I

    .line 188
    sput v0, Lcom/uc/crashsdk/a;->p:I

    .line 423
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/a;->q:Ljava/util/HashMap;

    .line 424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/a;->r:Ljava/util/List;

    .line 426
    sput v0, Lcom/uc/crashsdk/a;->s:I

    .line 427
    sput v0, Lcom/uc/crashsdk/a;->t:I

    .line 428
    sput v0, Lcom/uc/crashsdk/a;->u:I

    .line 429
    sput v0, Lcom/uc/crashsdk/a;->v:I

    .line 431
    sput v0, Lcom/uc/crashsdk/a;->w:I

    .line 432
    sput v0, Lcom/uc/crashsdk/a;->x:I

    .line 754
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/a;->y:Landroid/util/SparseArray;

    .line 755
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/a;->z:Ljava/util/List;

    .line 855
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/a;->A:Ljava/util/HashMap;

    .line 856
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/a;->B:Ljava/util/List;

    .line 858
    sput v0, Lcom/uc/crashsdk/a;->C:I

    .line 859
    sput v0, Lcom/uc/crashsdk/a;->D:I

    .line 860
    sput v0, Lcom/uc/crashsdk/a;->E:I

    .line 1143
    sput-boolean v0, Lcom/uc/crashsdk/a;->c:Z

    .line 1145
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0xc9

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v1, Lcom/uc/crashsdk/a;->F:Ljava/lang/Runnable;

    .line 1220
    sput-boolean v0, Lcom/uc/crashsdk/a;->G:Z

    .line 1234
    sput-boolean v0, Lcom/uc/crashsdk/a;->H:Z

    .line 1286
    sput-boolean v0, Lcom/uc/crashsdk/a;->I:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)I
    .registers 8

    .line 1113
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1117
    :cond_e
    const/4 v0, 0x0

    .line 1118
    invoke-static {p0}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-static {p0}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1119
    :cond_1b
    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3d

    .line 1120
    sget-object v1, Lcom/uc/crashsdk/a;->y:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1121
    const/4 v3, 0x4

    int-to-long v4, p0

    :try_start_25
    invoke-static {v3, v4, v5, p1, v2}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    .line 1123
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_3a

    .line 1124
    invoke-static {p0}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1125
    const/4 v0, 0x1

    .line 1127
    :cond_30
    invoke-static {p0}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1128
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    goto :goto_44

    .line 1123
    :catchall_3a
    move-exception p0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0

    .line 1133
    :cond_3d
    const-string v1, "crashsdk so has not loaded!"

    const-string v3, "crashsdk"

    invoke-static {v3, v1, v2}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1136
    :cond_44
    :goto_44
    invoke-static {p0}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result p0

    if-eqz p0, :cond_53

    .line 1137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/uc/crashsdk/a;->a(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 1138
    or-int/lit8 v0, v0, 0x10

    .line 1140
    :cond_53
    return v0
.end method

.method public static a(Ljava/lang/String;II)I
    .registers 11

    .line 863
    const/4 v0, 0x0

    if-eqz p0, :cond_d9

    if-gtz p1, :cond_7

    goto/16 :goto_d9

    .line 866
    :cond_7
    const/16 v1, 0x5dc

    if-le p1, v1, :cond_14

    .line 867
    const-string p0, "createCachedInfo: capacity is too large!"

    const-string p1, "crashsdk"

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 868
    return v0

    .line 871
    :cond_14
    nop

    .line 872
    nop

    .line 874
    sget-object v1, Lcom/uc/crashsdk/a;->A:Ljava/util/HashMap;

    monitor-enter v1

    .line 875
    nop

    .line 876
    :try_start_1a
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_34

    .line 877
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 878
    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 879
    invoke-static {v2, p2}, Lcom/uc/crashsdk/export/LogType;->addType(II)I

    move-result v4

    goto :goto_36

    .line 876
    :cond_34
    move v4, p2

    const/4 v2, 0x0

    .line 882
    :goto_36
    invoke-static {v4}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_52

    invoke-static {v2}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v5

    if-nez v5, :cond_52

    .line 883
    sget v5, Lcom/uc/crashsdk/a;->C:I

    if-lt v5, v6, :cond_4f

    .line 884
    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v4

    goto :goto_52

    .line 886
    :cond_4f
    add-int/2addr v5, v3

    sput v5, Lcom/uc/crashsdk/a;->C:I

    .line 889
    :cond_52
    :goto_52
    invoke-static {v4}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-static {v2}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 890
    sget v5, Lcom/uc/crashsdk/a;->D:I

    if-lt v5, v6, :cond_67

    .line 891
    invoke-static {v4, v3}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v4

    goto :goto_6a

    .line 893
    :cond_67
    add-int/2addr v5, v3

    sput v5, Lcom/uc/crashsdk/a;->D:I

    .line 896
    :cond_6a
    :goto_6a
    invoke-static {v4}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result v5

    const/high16 v7, 0x100000

    if-eqz v5, :cond_84

    invoke-static {v2}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result v5

    if-nez v5, :cond_84

    .line 897
    sget v5, Lcom/uc/crashsdk/a;->E:I

    if-lt v5, v6, :cond_81

    .line 898
    invoke-static {v4, v7}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v4

    goto :goto_84

    .line 900
    :cond_81
    add-int/2addr v5, v3

    sput v5, Lcom/uc/crashsdk/a;->E:I

    .line 904
    :cond_84
    :goto_84
    const v5, 0x100111

    and-int/2addr v5, v4

    if-nez v5, :cond_8c

    .line 905
    const/4 v2, 0x0

    goto :goto_94

    .line 906
    :cond_8c
    if-nez v2, :cond_93

    .line 908
    sget-object v2, Lcom/uc/crashsdk/a;->B:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    :cond_93
    const/4 v2, 0x1

    :goto_94
    if-nez v2, :cond_98

    .line 911
    monitor-exit v1

    return v4

    .line 914
    :cond_98
    sget-boolean v2, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v2, :cond_ba

    const v2, 0x100001

    and-int/2addr p2, v2

    if-eqz p2, :cond_ba

    .line 915
    invoke-static {p0, p1, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeCreateCachedInfo(Ljava/lang/String;II)I

    move-result p2

    .line 917
    invoke-static {p2}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result v2

    if-nez v2, :cond_b0

    .line 918
    invoke-static {v4, v3}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v4

    .line 920
    :cond_b0
    invoke-static {p2}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result p2

    if-nez p2, :cond_ba

    .line 921
    invoke-static {v4, v7}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v4

    .line 924
    :cond_ba
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    .line 925
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    const/4 p1, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    aput-object v0, p2, p1

    .line 924
    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    monitor-exit v1

    .line 927
    return v4

    .line 926
    :catchall_d6
    move-exception p0

    monitor-exit v1
    :try_end_d8
    .catchall {:try_start_1a .. :try_end_d8} :catchall_d6

    throw p0

    .line 864
    :cond_d9
    :goto_d9
    return v0
.end method

.method public static a(Ljava/lang/String;ILjava/util/concurrent/Callable;JI)I
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/String;",
            ">;JI)I"
        }
    .end annotation

    .line 436
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p3

    const/4 v4, 0x0

    if-nez v0, :cond_a

    .line 437
    return v4

    .line 440
    :cond_a
    nop

    .line 441
    nop

    .line 443
    sget-object v5, Lcom/uc/crashsdk/a;->q:Ljava/util/HashMap;

    monitor-enter v5

    .line 444
    nop

    .line 445
    :try_start_10
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 446
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 447
    aget-object v6, v6, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 448
    invoke-static {v6, v1}, Lcom/uc/crashsdk/export/LogType;->addType(II)I

    move-result v7

    .line 449
    if-ne v6, v7, :cond_2e

    .line 450
    monitor-exit v5

    return v6

    .line 445
    :cond_2c
    move v7, v1

    const/4 v6, 0x0

    .line 454
    :cond_2e
    invoke-static {v7}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v8

    const-wide/16 v9, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x1

    if-eqz v8, :cond_69

    invoke-static {v6}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v8

    if-nez v8, :cond_69

    .line 455
    nop

    .line 457
    sget v8, Lcom/uc/crashsdk/a;->s:I

    const/16 v13, 0x8

    if-lt v8, v13, :cond_47

    .line 458
    const/4 v8, 0x1

    goto :goto_61

    .line 459
    :cond_47
    cmp-long v13, v2, v9

    if-eqz v13, :cond_55

    .line 461
    sget v13, Lcom/uc/crashsdk/a;->w:I

    if-lt v13, v11, :cond_51

    .line 462
    const/4 v8, 0x1

    goto :goto_61

    .line 464
    :cond_51
    add-int/2addr v13, v12

    sput v13, Lcom/uc/crashsdk/a;->w:I

    .line 465
    goto :goto_5d

    .line 467
    :cond_55
    sget v13, Lcom/uc/crashsdk/a;->w:I

    sub-int v13, v8, v13

    if-lt v13, v11, :cond_5d

    .line 469
    const/4 v8, 0x1

    goto :goto_61

    .line 472
    :cond_5d
    :goto_5d
    add-int/2addr v8, v12

    sput v8, Lcom/uc/crashsdk/a;->s:I

    const/4 v8, 0x0

    .line 475
    :goto_61
    if-eqz v8, :cond_69

    .line 476
    const/16 v8, 0x10

    invoke-static {v7, v8}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v7

    .line 480
    :cond_69
    nop

    .line 481
    nop

    .line 482
    invoke-static {v7}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result v8

    const/4 v13, 0x4

    if-eqz v8, :cond_af

    invoke-static {v6}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result v8

    if-nez v8, :cond_af

    .line 483
    nop

    .line 485
    sget v8, Lcom/uc/crashsdk/a;->t:I

    if-lt v8, v11, :cond_81

    .line 486
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_a8

    .line 487
    :cond_81
    cmp-long v14, v2, v9

    if-eqz v14, :cond_98

    .line 489
    sget v9, Lcom/uc/crashsdk/a;->x:I

    if-lt v9, v13, :cond_8d

    .line 490
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_a8

    .line 492
    :cond_8d
    add-int/2addr v9, v12

    sput v9, Lcom/uc/crashsdk/a;->x:I

    .line 493
    add-int/2addr v8, v12

    sput v8, Lcom/uc/crashsdk/a;->t:I

    .line 494
    nop

    .line 495
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    goto :goto_a8

    .line 497
    :cond_98
    sget v9, Lcom/uc/crashsdk/a;->x:I

    sub-int v9, v8, v9

    if-lt v9, v13, :cond_a2

    .line 499
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_a8

    .line 502
    :cond_a2
    add-int/2addr v8, v12

    sput v8, Lcom/uc/crashsdk/a;->t:I

    .line 503
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 506
    :goto_a8
    if-eqz v8, :cond_b1

    .line 507
    invoke-static {v7, v12}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v7

    goto :goto_b1

    .line 511
    :cond_af
    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_b1
    :goto_b1
    nop

    .line 512
    invoke-static {v7}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result v8

    const/high16 v14, 0x100000

    if-eqz v8, :cond_cf

    invoke-static {v6}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result v8

    if-nez v8, :cond_cf

    .line 513
    sget v8, Lcom/uc/crashsdk/a;->v:I

    if-lt v8, v11, :cond_ca

    .line 514
    invoke-static {v7, v14}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v7

    const/4 v8, 0x0

    goto :goto_d0

    .line 516
    :cond_ca
    add-int/2addr v8, v12

    sput v8, Lcom/uc/crashsdk/a;->v:I

    .line 517
    const/4 v8, 0x1

    goto :goto_d0

    .line 521
    :cond_cf
    const/4 v8, 0x0

    :goto_d0
    nop

    .line 522
    invoke-static {v7}, Lcom/uc/crashsdk/export/LogType;->isForUnexp(I)Z

    move-result v15

    const/16 v4, 0x100

    if-eqz v15, :cond_ee

    invoke-static {v6}, Lcom/uc/crashsdk/export/LogType;->isForUnexp(I)Z

    move-result v15

    if-nez v15, :cond_ee

    .line 523
    sget v15, Lcom/uc/crashsdk/a;->u:I

    if-lt v15, v11, :cond_e9

    .line 524
    invoke-static {v7, v4}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v7

    const/4 v11, 0x0

    goto :goto_ef

    .line 526
    :cond_e9
    add-int/2addr v15, v12

    sput v15, Lcom/uc/crashsdk/a;->u:I

    .line 527
    const/4 v11, 0x1

    goto :goto_ef

    .line 531
    :cond_ee
    const/4 v11, 0x0

    :goto_ef
    const v15, 0x100111

    and-int/2addr v15, v7

    if-nez v15, :cond_f7

    .line 532
    const/4 v6, 0x0

    goto :goto_ff

    .line 533
    :cond_f7
    if-nez v6, :cond_fe

    .line 535
    sget-object v6, Lcom/uc/crashsdk/a;->r:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_fe
    const/4 v6, 0x1

    :goto_ff
    if-nez v6, :cond_103

    .line 538
    monitor-exit v5

    return v7

    .line 541
    :cond_103
    sget-boolean v6, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v6, :cond_14e

    const v6, 0x100101

    and-int/2addr v6, v1

    if-eqz v6, :cond_14e

    .line 542
    move/from16 v6, p5

    invoke-static {v0, v1, v2, v3, v6}, Lcom/uc/crashsdk/JNIBridge;->nativeAddCallbackInfo(Ljava/lang/String;IJI)I

    move-result v1

    .line 544
    invoke-static {v1}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result v15

    if-nez v15, :cond_12b

    .line 545
    invoke-static {v7, v12}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v7

    .line 546
    if-eqz v9, :cond_124

    .line 547
    sget v9, Lcom/uc/crashsdk/a;->t:I

    sub-int/2addr v9, v12

    sput v9, Lcom/uc/crashsdk/a;->t:I

    .line 549
    :cond_124
    if-eqz v10, :cond_12b

    .line 550
    sget v9, Lcom/uc/crashsdk/a;->x:I

    sub-int/2addr v9, v12

    sput v9, Lcom/uc/crashsdk/a;->x:I

    .line 553
    :cond_12b
    invoke-static {v1}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result v9

    if-nez v9, :cond_13c

    .line 554
    invoke-static {v7, v14}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v7

    .line 555
    if-eqz v8, :cond_13c

    .line 556
    sget v8, Lcom/uc/crashsdk/a;->v:I

    sub-int/2addr v8, v12

    sput v8, Lcom/uc/crashsdk/a;->v:I

    .line 559
    :cond_13c
    invoke-static {v1}, Lcom/uc/crashsdk/export/LogType;->isForUnexp(I)Z

    move-result v1

    if-nez v1, :cond_150

    .line 560
    invoke-static {v7, v4}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v7

    .line 561
    if-eqz v11, :cond_150

    .line 562
    sget v1, Lcom/uc/crashsdk/a;->u:I

    sub-int/2addr v1, v12

    sput v1, Lcom/uc/crashsdk/a;->u:I

    goto :goto_150

    .line 541
    :cond_14e
    move/from16 v6, p5

    .line 567
    :cond_150
    :goto_150
    new-array v1, v13, [Ljava/lang/Object;

    .line 568
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v1, v8

    aput-object p2, v1, v12

    const/4 v4, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 567
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    monitor-exit v5

    .line 570
    return v7

    .line 569
    :catchall_16e
    move-exception v0

    monitor-exit v5
    :try_end_170
    .catchall {:try_start_10 .. :try_end_170} :catchall_16e

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZZIZ)I
    .registers 15

    .line 193
    const/4 v0, 0x0

    if-eqz p0, :cond_109

    if-nez p1, :cond_7

    goto/16 :goto_109

    .line 196
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_18

    .line 197
    const-string p0, "addDumpFile: description is too long!"

    const-string p1, "crashsdk"

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    return v0

    .line 201
    :cond_18
    nop

    .line 202
    nop

    .line 204
    sget-object v1, Lcom/uc/crashsdk/a;->k:Ljava/util/HashMap;

    monitor-enter v1

    .line 205
    nop

    .line 206
    :try_start_1e
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 207
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 208
    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 209
    invoke-static {v3, p4}, Lcom/uc/crashsdk/export/LogType;->addType(II)I

    move-result v4

    goto :goto_39

    .line 206
    :cond_37
    move v4, p4

    const/4 v3, 0x0

    .line 212
    :goto_39
    invoke-static {v4}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v5

    const/16 v6, 0xa

    const/4 v7, 0x1

    if-eqz v5, :cond_56

    invoke-static {v3}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v5

    if-nez v5, :cond_56

    .line 213
    sget v5, Lcom/uc/crashsdk/a;->m:I

    if-lt v5, v6, :cond_53

    .line 214
    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v4

    goto :goto_56

    .line 216
    :cond_53
    add-int/2addr v5, v7

    sput v5, Lcom/uc/crashsdk/a;->m:I

    .line 219
    :cond_56
    :goto_56
    invoke-static {v4}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-static {v3}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 220
    sget v5, Lcom/uc/crashsdk/a;->n:I

    if-lt v5, v6, :cond_6b

    .line 221
    invoke-static {v4, v7}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v4

    goto :goto_6e

    .line 223
    :cond_6b
    add-int/2addr v5, v7

    sput v5, Lcom/uc/crashsdk/a;->n:I

    .line 226
    :cond_6e
    :goto_6e
    invoke-static {v4}, Lcom/uc/crashsdk/export/LogType;->isForUnexp(I)Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-static {v3}, Lcom/uc/crashsdk/export/LogType;->isForUnexp(I)Z

    move-result v5

    if-nez v5, :cond_86

    .line 227
    sget v5, Lcom/uc/crashsdk/a;->o:I

    if-lt v5, v6, :cond_83

    .line 228
    invoke-static {v4, v2}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v4

    goto :goto_86

    .line 230
    :cond_83
    add-int/2addr v5, v7

    sput v5, Lcom/uc/crashsdk/a;->o:I

    .line 233
    :cond_86
    :goto_86
    invoke-static {v4}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result v5

    const/high16 v8, 0x100000

    if-eqz v5, :cond_a0

    invoke-static {v3}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result v5

    if-nez v5, :cond_a0

    .line 234
    sget v5, Lcom/uc/crashsdk/a;->p:I

    if-lt v5, v6, :cond_9d

    .line 235
    invoke-static {v4, v8}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v4

    goto :goto_a0

    .line 237
    :cond_9d
    add-int/2addr v5, v7

    sput v5, Lcom/uc/crashsdk/a;->p:I

    .line 241
    :cond_a0
    :goto_a0
    const v5, 0x100111

    and-int/2addr v5, v4

    if-nez v5, :cond_a8

    .line 242
    const/4 v3, 0x0

    goto :goto_b0

    .line 243
    :cond_a8
    if-nez v3, :cond_af

    .line 245
    sget-object v3, Lcom/uc/crashsdk/a;->l:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_af
    const/4 v3, 0x1

    :goto_b0
    if-nez v3, :cond_b4

    .line 248
    monitor-exit v1

    return v4

    .line 251
    :cond_b4
    sget-boolean v3, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v3, :cond_e1

    const v3, 0x100101

    and-int/2addr v3, p4

    if-eqz v3, :cond_e1

    .line 252
    invoke-static/range {p0 .. p5}, Lcom/uc/crashsdk/JNIBridge;->nativeAddDumpFile(Ljava/lang/String;Ljava/lang/String;ZZIZ)I

    move-result p4

    .line 254
    invoke-static {p4}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result v3

    if-nez v3, :cond_cc

    .line 255
    invoke-static {v4, v7}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v4

    .line 257
    :cond_cc
    invoke-static {p4}, Lcom/uc/crashsdk/export/LogType;->isForUnexp(I)Z

    move-result v3

    if-nez v3, :cond_d7

    .line 258
    invoke-static {v4, v2}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v2

    move v4, v2

    .line 260
    :cond_d7
    invoke-static {p4}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result p4

    if-nez p4, :cond_e1

    .line 261
    invoke-static {v4, v8}, Lcom/uc/crashsdk/export/LogType;->removeType(II)I

    move-result v4

    .line 264
    :cond_e1
    const/4 p4, 0x5

    new-array p4, p4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p4, v0

    aput-object p1, p4, v7

    const/4 p1, 0x2

    .line 265
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p4, p1

    const/4 p1, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p4, p1

    const/4 p1, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p4, p1

    .line 264
    invoke-virtual {v1, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    monitor-exit v1

    .line 267
    return v4

    .line 266
    :catchall_106
    move-exception p0

    monitor-exit v1
    :try_end_108
    .catchall {:try_start_1e .. :try_end_108} :catchall_106

    throw p0

    .line 194
    :cond_109
    :goto_109
    return v0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .line 78
    sget-object v0, Lcom/uc/crashsdk/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 79
    return-object v0

    .line 81
    :cond_5
    invoke-static {}, Lcom/uc/crashsdk/a;->o()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 82
    sget-object v0, Lcom/uc/crashsdk/a;->h:Ljava/lang/String;

    return-object v0

    .line 84
    :cond_e
    const-string v0, ""

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 385
    sget-object v0, Lcom/uc/crashsdk/a;->k:Ljava/util/HashMap;

    monitor-enter v0

    .line 386
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 387
    if-nez p0, :cond_e

    .line 388
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    .line 391
    :cond_e
    const/4 v1, 0x1

    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/String;

    .line 392
    const/4 v3, 0x2

    aget-object v4, p0, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 393
    const/4 v5, 0x3

    aget-object p0, p0, v5

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 394
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s%s%d%d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const-string v2, "`"

    aput-object v2, v8, v1

    if-eqz v4, :cond_37

    const/4 v2, 0x1

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    .line 395
    :goto_38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v3

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v8, v5

    .line 394
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 396
    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    .line 664
    sget-object v0, Lcom/uc/crashsdk/a;->q:Ljava/util/HashMap;

    monitor-enter v0

    .line 665
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 666
    const/4 v2, 0x2

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 668
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_26

    .line 671
    const/4 v4, 0x3

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 672
    invoke-static {p0, v2, v3, v1, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeGetCallbackInfo(Ljava/lang/String;JIZ)Ljava/lang/String;

    move-result-object p0

    .line 674
    goto :goto_2e

    .line 676
    :cond_26
    invoke-static {p0, p1}, Lcom/uc/crashsdk/a;->b(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 677
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 680
    :goto_2e
    monitor-exit v0

    return-object p0

    .line 681
    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public static a(I)V
    .registers 9

    .line 1308
    const/4 v0, 0x0

    const-string v1, "crashsdk"

    packed-switch p0, :pswitch_data_b8

    .line 1318
    sget-boolean p0, Lcom/uc/crashsdk/a;->d:Z

    if-eqz p0, :cond_b2

    .line 1321
    return-void

    .line 1314
    :pswitch_b
    invoke-static {}, Lcom/uc/crashsdk/a;->p()V

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/uc/crashsdk/g;->R()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {}, Lcom/uc/crashsdk/g;->S()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {}, Lcom/uc/crashsdk/g;->T()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "%s/%s/%s"

    invoke-static {p0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/uc/crashsdk/a;->m()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/uc/crashsdk/a;->g:Ljava/lang/String;

    sget-boolean v2, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v2, :cond_3e

    const/16 v2, 0x80

    sget-object v3, Lcom/uc/crashsdk/a;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_3e
    sget-object v2, Lcom/uc/crashsdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_4e

    invoke-static {}, Lcom/uc/crashsdk/b;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4e
    if-eqz v2, :cond_6c

    invoke-static {}, Lcom/uc/crashsdk/g;->u()Z

    move-result v2

    if-eqz v2, :cond_6c

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v5, Lcom/uc/crashsdk/a;->g:Ljava/lang/String;

    aput-object v5, v3, v0

    aput-object p0, v3, v4

    const-string p0, "Is new version (\'%s\' -> \'%s\'), deleting old stats data!"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/b;->s()V

    .line 1315
    :cond_6c
    return-void

    .line 1310
    :pswitch_6d
    const-string p0, "Begin update info ..."

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_91

    sget-boolean p0, Lcom/uc/crashsdk/a;->c:Z

    if-eqz p0, :cond_91

    const/16 p0, 0xb

    invoke-static {}, Lcom/uc/crashsdk/g;->E()I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Lcom/uc/crashsdk/g;->F()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v4, v5, v6, v7}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    :cond_91
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Update info took "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " ms"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uc/crashsdk/a;->a(Z)Z

    .line 1311
    return-void

    .line 1318
    :cond_b2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_data_b8
    .packed-switch 0xc9
        :pswitch_6d
        :pswitch_b
    .end packed-switch
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 7

    .line 145
    sget-object v0, Lcom/uc/crashsdk/a;->e:Ljava/util/Map;

    monitor-enter v0

    .line 146
    :try_start_3
    sget-object v1, Lcom/uc/crashsdk/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_49

    .line 148
    :try_start_15
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 149
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    sget-object v4, Lcom/uc/crashsdk/a;->e:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    if-eqz v2, :cond_31

    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_31
    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_42

    .line 160
    goto :goto_9

    .line 158
    :catchall_42
    move-exception v2

    :try_start_43
    invoke-static {v2, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 161
    goto :goto_9

    .line 162
    :cond_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_49

    goto :goto_4d

    :goto_4c
    throw p0

    :goto_4d
    goto :goto_4c
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 776
    sget-object v0, Lcom/uc/crashsdk/a;->y:Landroid/util/SparseArray;

    monitor-enter v0

    .line 777
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 778
    sget-object v2, Lcom/uc/crashsdk/a;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_127

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_129

    .line 779
    nop

    .line 780
    nop

    .line 782
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_22
    sget-object v7, Lcom/uc/crashsdk/a;->y:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 783
    if-nez v7, :cond_2d

    .line 784
    goto :goto_d

    .line 786
    :cond_2d
    aget-object v8, v7, v6

    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 787
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Thread;
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_6a

    .line 788
    :try_start_37
    aget-object v7, v7, v5

    check-cast v7, Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_65

    .line 789
    if-nez v8, :cond_62

    .line 790
    :try_start_3d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Thread ("

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ") has exited!"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_3d .. :try_end_5f} :catchall_60

    .line 792
    goto :goto_d

    .line 797
    :catchall_60
    move-exception v4

    goto :goto_6e

    .line 794
    :cond_62
    if-eq v1, v8, :cond_d

    .line 795
    goto :goto_71

    .line 797
    :catchall_65
    move-exception v7

    move-object v12, v7

    move-object v7, v4

    move-object v4, v12

    goto :goto_6e

    :catchall_6a
    move-exception v7

    move-object v8, v4

    move-object v4, v7

    move-object v7, v8

    :goto_6e
    :try_start_6e
    invoke-static {v4, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_129

    .line 802
    :goto_71
    :try_start_71
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Thread Name: \'%s\'\n"

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v7, v10, v6

    invoke-static {v4, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 804
    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 806
    invoke-virtual {v8}, Ljava/lang/Thread;->isDaemon()Z

    move-result v4

    if-eqz v4, :cond_8d

    const-string v4, " daemon"

    goto :goto_8f

    :cond_8d
    const-string v4, ""

    .line 807
    :goto_8f
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "\"%s\"%s prio=%d tid=%d %s\n"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    .line 809
    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    aput-object v4, v10, v5

    const/4 v4, 0x2

    invoke-virtual {v8}, Ljava/lang/Thread;->getPriority()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    const/4 v4, 0x3

    .line 810
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v4

    const/4 v3, 0x4

    invoke-virtual {v8}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread$State;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    .line 807
    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 811
    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_c6
    .catchall {:try_start_71 .. :try_end_c6} :catchall_c7

    .line 814
    goto :goto_cb

    .line 812
    :catchall_c7
    move-exception v3

    :try_start_c8
    invoke-static {v3, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_129

    .line 817
    :goto_cb
    :try_start_cb
    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 818
    array-length v4, v3

    if-nez v4, :cond_db

    .line 819
    const-string v4, "  (no stack frames)"

    invoke-virtual {v4, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 821
    :cond_db
    nop

    .line 822
    array-length v4, v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_df
    if-ge v7, v4, :cond_10a

    aget-object v9, v3, v7

    .line 823
    if-nez v8, :cond_ee

    .line 824
    const-string v8, "\n"

    invoke-virtual {v8, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 826
    :cond_ee
    nop

    .line 827
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "  at %s"

    new-array v11, v5, [Ljava/lang/Object;

    .line 828
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v11, v6

    .line 827
    invoke-static {v8, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 829
    invoke-virtual {v8, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/OutputStream;->write([B)V
    :try_end_106
    .catchall {:try_start_cb .. :try_end_106} :catchall_10b

    .line 822
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    goto :goto_df

    .line 833
    :cond_10a
    goto :goto_10f

    .line 831
    :catchall_10b
    move-exception v3

    :try_start_10c
    invoke-static {v3, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_10f
    .catchall {:try_start_10c .. :try_end_10f} :catchall_129

    .line 836
    :goto_10f
    :try_start_10f
    const-string v3, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 837
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_11f
    .catchall {:try_start_10f .. :try_end_11f} :catchall_121

    .line 840
    goto/16 :goto_d

    .line 838
    :catchall_121
    move-exception v3

    :try_start_122
    invoke-static {v3, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 841
    goto/16 :goto_d

    .line 842
    :cond_127
    monitor-exit v0

    return-void

    :catchall_129
    move-exception p0

    monitor-exit v0
    :try_end_12b
    .catchall {:try_start_122 .. :try_end_12b} :catchall_129

    goto :goto_12d

    :goto_12c
    throw p0

    :goto_12d
    goto :goto_12c
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 596
    sget-object v0, Lcom/uc/crashsdk/a;->q:Ljava/util/HashMap;

    monitor-enter v0

    .line 597
    :try_start_3
    sget-object v1, Lcom/uc/crashsdk/a;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_d4

    .line 599
    :try_start_15
    sget-object v3, Lcom/uc/crashsdk/a;->q:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 600
    const/4 v4, 0x0

    aget-object v5, v3, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 602
    if-nez p3, :cond_2f

    .line 604
    invoke-static {v5}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v5

    if-nez v5, :cond_36

    .line 605
    goto :goto_9

    .line 609
    :cond_2f
    invoke-static {p3, v2}, Lcom/uc/crashsdk/a;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 610
    goto :goto_9

    .line 614
    :cond_36
    nop

    .line 615
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 616
    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 618
    const/4 v5, 0x2

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 620
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_6e

    .line 623
    const/4 v7, 0x3

    aget-object v3, v3, v7

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 624
    invoke-static {v2, v5, v6, v3, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeGetCallbackInfo(Ljava/lang/String;JIZ)Ljava/lang/String;

    move-result-object v2

    .line 626
    goto :goto_76

    .line 628
    :cond_6e
    invoke-static {v2, v4}, Lcom/uc/crashsdk/a;->b(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 629
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 632
    :goto_76
    if-eqz v2, :cond_86

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_86

    .line 633
    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_94

    .line 635
    :cond_86
    const-string v2, "(data is null)\n"

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_8f
    .catchall {:try_start_15 .. :try_end_8f} :catchall_90

    .line 639
    goto :goto_94

    .line 637
    :catchall_90
    move-exception v2

    :try_start_91
    invoke-static {v2, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_d4

    .line 642
    :goto_94
    :try_start_94
    const-string v2, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 643
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_a4
    .catchall {:try_start_94 .. :try_end_a4} :catchall_a6

    .line 646
    goto/16 :goto_9

    .line 644
    :catchall_a6
    move-exception v2

    :try_start_a7
    invoke-static {v2, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 647
    goto/16 :goto_9

    .line 650
    :cond_ac
    if-eqz p3, :cond_d2

    invoke-static {}, Lcom/uc/crashsdk/e;->E()Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 651
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 652
    sget-object p3, Lcom/uc/crashsdk/a;->r:Ljava/util/List;

    invoke-static {p3, p2}, Lcom/uc/crashsdk/a;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_d1

    .line 653
    const-string p3, "CUSTOMCALLBACKINFO"

    invoke-static {p0, p3, p2}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_d1
    goto :goto_b8

    .line 658
    :cond_d2
    monitor-exit v0

    return-void

    :catchall_d4
    move-exception p0

    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_a7 .. :try_end_d6} :catchall_d4

    goto :goto_d8

    :goto_d7
    throw p0

    :goto_d8
    goto :goto_d7
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 293
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_a

    const/4 v11, 0x1

    goto :goto_b

    :cond_a
    const/4 v11, 0x0

    .line 294
    :goto_b
    invoke-static {}, Lcom/uc/crashsdk/e;->E()Z

    move-result v12

    .line 295
    sget-object v13, Lcom/uc/crashsdk/a;->k:Ljava/util/HashMap;

    monitor-enter v13

    .line 296
    nop

    .line 297
    :try_start_13
    sget-object v0, Lcom/uc/crashsdk/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v1, 0x0

    :goto_1a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_10e

    .line 299
    :try_start_26
    sget-object v2, Lcom/uc/crashsdk/a;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 300
    if-nez v8, :cond_40

    .line 302
    aget-object v3, v2, v10

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 303
    invoke-static {v3}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 304
    goto :goto_1a

    .line 306
    :cond_3f
    goto :goto_47

    .line 308
    :cond_40
    invoke-static {v8, v0}, Lcom/uc/crashsdk/a;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 309
    goto :goto_1a

    .line 313
    :cond_47
    :goto_47
    const/4 v3, 0x3

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 314
    if-eqz v3, :cond_73

    .line 315
    nop

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_66
    .catchall {:try_start_26 .. :try_end_66} :catchall_e2

    .line 317
    move-object/from16 v15, p1

    :try_start_68
    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_70

    goto :goto_75

    .line 348
    :catchall_70
    move-exception v0

    goto/16 :goto_e5

    .line 314
    :cond_73
    move-object/from16 v15, p1

    .line 320
    :goto_75
    const v0, 0x25800

    if-le v1, v0, :cond_7e

    .line 321
    const v16, 0x25800

    goto :goto_80

    .line 320
    :cond_7e
    move/from16 v16, v1

    .line 323
    :goto_80
    const/16 v1, 0x5000

    sub-int v0, v0, v16

    :try_start_84
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 325
    const/4 v0, 0x2

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 326
    aget-object v0, v2, v9

    check-cast v0, Ljava/lang/String;

    .line 327
    const/4 v1, 0x4

    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 329
    if-eqz v12, :cond_b5

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b5

    .line 330
    const-string v2, "FILE"

    move-object/from16 v1, p0

    move-object v3, v0

    move/from16 v6, v17

    invoke-static/range {v1 .. v6}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;IZZ)V

    move/from16 v1, v16

    goto :goto_c8

    .line 333
    :cond_b5
    if-eqz v5, :cond_c0

    .line 334
    invoke-static {v7, v0, v4}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;Ljava/lang/String;I)I

    move-result v1

    add-int v16, v16, v1

    move/from16 v1, v16

    goto :goto_c8

    .line 337
    :cond_c0
    invoke-static {v7, v0, v4}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I

    move-result v1
    :try_end_c4
    .catchall {:try_start_84 .. :try_end_c4} :catchall_de

    add-int v16, v16, v1

    move/from16 v1, v16

    .line 342
    :goto_c8
    if-eqz v17, :cond_dc

    if-eqz v11, :cond_dc

    if-nez v12, :cond_dc

    .line 343
    :try_start_ce
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 345
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_dc
    .catchall {:try_start_ce .. :try_end_dc} :catchall_70

    .line 350
    :cond_dc
    goto/16 :goto_1a

    .line 348
    :catchall_de
    move-exception v0

    move/from16 v1, v16

    goto :goto_e5

    :catchall_e2
    move-exception v0

    move-object/from16 v15, p1

    :goto_e5
    :try_start_e5
    invoke-static {v0, v7}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 351
    goto/16 :goto_1a

    .line 354
    :cond_ea
    if-eqz v8, :cond_10c

    if-eqz v12, :cond_10c

    .line 355
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 356
    sget-object v2, Lcom/uc/crashsdk/a;->l:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/uc/crashsdk/a;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10b

    .line 357
    const-string v2, "CUSTOMDUMPFILE"

    invoke-static {v7, v2, v1}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_10b
    goto :goto_f2

    .line 362
    :cond_10c
    monitor-exit v13

    return-void

    :catchall_10e
    move-exception v0

    monitor-exit v13
    :try_end_110
    .catchall {:try_start_e5 .. :try_end_110} :catchall_10e

    goto :goto_112

    :goto_111
    throw v0

    :goto_112
    goto :goto_111
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 99
    sget-object v0, Lcom/uc/crashsdk/a;->e:Ljava/util/Map;

    monitor-enter v0

    .line 100
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 101
    sget-object v1, Lcom/uc/crashsdk/a;->f:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_e
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v1, :cond_18

    .line 105
    invoke-static {p0, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_18
    invoke-static {}, Lcom/uc/crashsdk/e;->x()V

    .line 109
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Thread;)Z
    .registers 7

    .line 758
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 759
    return v0

    .line 762
    :cond_4
    sget-object v1, Lcom/uc/crashsdk/a;->y:Landroid/util/SparseArray;

    monitor-enter v1

    .line 763
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    long-to-int v3, v2

    .line 764
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 765
    if-nez v2, :cond_1d

    .line 766
    sget-object v2, Lcom/uc/crashsdk/a;->z:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_1d
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 770
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v2, p1, v0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 771
    monitor-exit v1

    .line 772
    return v0

    .line 771
    :catchall_2f
    move-exception p0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 400
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 401
    return v1

    .line 403
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 404
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 405
    const/4 p0, 0x1

    return p0

    .line 407
    :cond_20
    goto :goto_c

    .line 408
    :cond_21
    return v1
.end method

.method public static a(Z)Z
    .registers 6

    .line 1168
    sget-boolean v0, Lcom/uc/crashsdk/b;->c:Z

    const-string v1, "crashsdk"

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 1169
    const-string p0, "Unexp log not enabled, skip update unexp info!"

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    return v2

    .line 1173
    :cond_d
    invoke-static {}, Lcom/uc/crashsdk/e;->E()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_4e

    .line 1177
    :cond_1a
    nop

    .line 1178
    const/4 v0, 0x1

    if-eqz p0, :cond_25

    .line 1180
    sget-object p0, Lcom/uc/crashsdk/a;->F:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/uc/crashsdk/a/f;->a(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    goto :goto_47

    .line 1182
    :cond_25
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result p0

    if-nez p0, :cond_31

    .line 1183
    const-string p0, "Stop update unexp info in background!"

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    return v2

    .line 1187
    :cond_31
    invoke-static {}, Lcom/uc/crashsdk/g;->E()I

    move-result p0

    if-gtz p0, :cond_38

    .line 1188
    return v2

    .line 1191
    :cond_38
    sget-object p0, Lcom/uc/crashsdk/a;->F:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 1193
    return v0

    .line 1196
    :cond_41
    invoke-static {}, Lcom/uc/crashsdk/g;->E()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    .line 1199
    :goto_47
    sget-object v1, Lcom/uc/crashsdk/a;->F:Ljava/lang/Runnable;

    int-to-long v3, p0

    invoke-static {v2, v1, v3, v4}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 1201
    return v0

    .line 1174
    :cond_4e
    :goto_4e
    return v2
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 931
    const/4 v0, 0x0

    if-eqz p0, :cond_95

    if-nez p1, :cond_7

    goto/16 :goto_95

    .line 935
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x800

    if-le v1, v2, :cond_13

    .line 936
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 939
    :cond_13
    nop

    .line 940
    sget-object v1, Lcom/uc/crashsdk/a;->A:Ljava/util/HashMap;

    monitor-enter v1

    .line 942
    :try_start_17
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 943
    nop

    .line 944
    const/high16 v3, 0x100000

    const/4 v4, 0x1

    if-eqz v2, :cond_71

    .line 945
    aget-object v5, v2, v0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 946
    aget-object v6, v2, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 947
    const/4 v7, 0x2

    aget-object v2, v2, v7

    check-cast v2, Ljava/util/List;

    .line 948
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v5, :cond_41

    .line 949
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 951
    :cond_41
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    invoke-static {v6}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 953
    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/uc/crashsdk/export/LogType;->addType(II)I

    move-result v0

    .line 958
    :cond_50
    sget-boolean v2, Lcom/uc/crashsdk/b;->d:Z

    if-nez v2, :cond_6e

    .line 959
    invoke-static {v6}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 960
    invoke-static {v0, v4}, Lcom/uc/crashsdk/export/LogType;->addType(II)I

    move-result v0

    .line 962
    :cond_5e
    invoke-static {v6}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 963
    invoke-static {v0, v3}, Lcom/uc/crashsdk/export/LogType;->addType(II)I

    move-result v0

    move v2, v0

    move v0, v6

    goto :goto_72

    .line 962
    :cond_6b
    move v2, v0

    move v0, v6

    goto :goto_72

    .line 958
    :cond_6e
    move v2, v0

    move v0, v6

    goto :goto_72

    .line 944
    :cond_71
    const/4 v2, 0x0

    .line 971
    :goto_72
    sget-boolean v5, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v5, :cond_90

    .line 972
    invoke-static {p0, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeAddCachedInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_90

    .line 973
    invoke-static {v0}, Lcom/uc/crashsdk/export/LogType;->isForNative(I)Z

    move-result p0

    if-eqz p0, :cond_86

    .line 974
    invoke-static {v2, v4}, Lcom/uc/crashsdk/export/LogType;->addType(II)I

    move-result v2

    .line 976
    :cond_86
    invoke-static {v0}, Lcom/uc/crashsdk/export/LogType;->isForANR(I)Z

    move-result p0

    if-eqz p0, :cond_90

    .line 977
    invoke-static {v2, v3}, Lcom/uc/crashsdk/export/LogType;->addType(II)I

    move-result v2

    .line 980
    :cond_90
    monitor-exit v1

    .line 981
    return v2

    .line 980
    :catchall_92
    move-exception p0

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_17 .. :try_end_94} :catchall_92

    throw p0

    .line 932
    :cond_95
    :goto_95
    return v0
.end method

.method static b()J
    .registers 2

    .line 88
    sget-wide v0, Lcom/uc/crashsdk/a;->j:J

    return-wide v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1093
    sget-object v1, Lcom/uc/crashsdk/a;->A:Ljava/util/HashMap;

    monitor-enter v1

    .line 1094
    :try_start_8
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 1096
    const/4 v3, 0x0

    aget-object v4, v2, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1097
    const/4 v5, 0x2

    aget-object v2, v2, v5

    check-cast v2, Ljava/util/List;

    .line 1100
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s (%d/%d)\n"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v3

    const/4 p0, 0x1

    .line 1101
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v8, v5

    .line 1100
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_41
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    goto :goto_41

    .line 1108
    :cond_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_8 .. :try_end_57} :catchall_5c

    .line 1109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1108
    :catchall_5c
    move-exception p0

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    goto :goto_60

    :goto_5f
    throw p0

    :goto_60
    goto :goto_5f
.end method

.method private static b(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .registers 5

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    :try_start_5
    sget-object v1, Lcom/uc/crashsdk/a;->q:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_45

    .line 691
    if-nez v1, :cond_1f

    .line 693
    :try_start_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown callback: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_31

    .line 695
    :cond_1f
    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/util/concurrent/Callable;

    .line 696
    if-eqz v1, :cond_2d

    .line 698
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_31

    .line 701
    :cond_2d
    invoke-static {p0, p1}, Lcom/uc/crashsdk/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 705
    :goto_31
    if-eqz p0, :cond_36

    .line 706
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_37

    .line 711
    :cond_36
    goto :goto_49

    .line 708
    :catchall_37
    move-exception p0

    .line 709
    :try_start_38
    const-string p1, "[DEBUG] Callback occurred new exception:\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_45

    .line 714
    goto :goto_49

    .line 712
    :catchall_45
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 717
    :goto_49
    :try_start_49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_54

    .line 718
    const-string p0, "(data is null)\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_55

    .line 722
    :cond_54
    goto :goto_59

    .line 720
    :catchall_55
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 723
    :goto_59
    return-object v0
.end method

.method static b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1013
    sget-object v0, Lcom/uc/crashsdk/a;->A:Ljava/util/HashMap;

    monitor-enter v0

    .line 1014
    :try_start_3
    sget-object v1, Lcom/uc/crashsdk/a;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1015
    sget-object v3, Lcom/uc/crashsdk/a;->A:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 1016
    const/4 v4, 0x0

    aget-object v5, v3, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1017
    const/4 v6, 0x1

    aget-object v7, v3, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1018
    const/4 v8, 0x2

    aget-object v3, v3, v8

    check-cast v3, Ljava/util/List;

    .line 1020
    if-nez p3, :cond_3d

    .line 1022
    invoke-static {v7}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v7

    if-nez v7, :cond_43

    .line 1023
    goto :goto_9

    .line 1027
    :cond_3d
    invoke-static {p3, v2}, Lcom/uc/crashsdk/a;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v7
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_d2

    if-eqz v7, :cond_9

    .line 1028
    :cond_43
    :try_start_43
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%s (%d/%d)\n"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v4

    .line 1035
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v8

    .line 1034
    invoke-static {v7, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1036
    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_67
    .catchall {:try_start_43 .. :try_end_67} :catchall_68

    .line 1039
    goto :goto_6c

    .line 1037
    :catchall_68
    move-exception v2

    :try_start_69
    invoke-static {v2, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_d2

    .line 1043
    :goto_6c
    :try_start_6c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1044
    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1045
    const-string v3, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_8c
    .catchall {:try_start_6c .. :try_end_8c} :catchall_8e

    .line 1046
    goto :goto_70

    .line 1049
    :cond_8d
    goto :goto_92

    .line 1047
    :catchall_8e
    move-exception v2

    :try_start_8f
    invoke-static {v2, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_d2

    .line 1053
    :goto_92
    :try_start_92
    const-string v2, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1054
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_a2
    .catchall {:try_start_92 .. :try_end_a2} :catchall_a4

    .line 1057
    goto/16 :goto_9

    .line 1055
    :catchall_a4
    move-exception v2

    :try_start_a5
    invoke-static {v2, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1058
    goto/16 :goto_9

    .line 1061
    :cond_aa
    if-eqz p3, :cond_d0

    invoke-static {}, Lcom/uc/crashsdk/e;->E()Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 1062
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1063
    sget-object p3, Lcom/uc/crashsdk/a;->B:Ljava/util/List;

    invoke-static {p3, p2}, Lcom/uc/crashsdk/a;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_cf

    .line 1064
    const-string p3, "CUSTOMCACHEDINFO"

    invoke-static {p0, p3, p2}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :cond_cf
    goto :goto_b6

    .line 1069
    :cond_d0
    monitor-exit v0

    return-void

    :catchall_d2
    move-exception p0

    monitor-exit v0
    :try_end_d4
    .catchall {:try_start_a5 .. :try_end_d4} :catchall_d2

    goto :goto_d6

    :goto_d5
    throw p0

    :goto_d6
    goto :goto_d5
.end method

.method static c()I
    .registers 2

    .line 92
    sget v0, Lcom/uc/crashsdk/a;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 93
    invoke-static {}, Lcom/uc/crashsdk/a;->o()Z

    .line 95
    :cond_8
    sget v0, Lcom/uc/crashsdk/a;->i:I

    return v0
.end method

.method static c(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1205
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1206
    const/4 p0, 0x0

    return-object p0

    .line 1209
    :cond_8
    const/16 v0, 0x14

    const-string v1, ";"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 1210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    array-length v1, p0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_27

    aget-object v3, p0, v2

    .line 1212
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 1213
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1217
    :cond_27
    return-object v0
.end method

.method static d()V
    .registers 6

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    sget-object v1, Lcom/uc/crashsdk/a;->e:Ljava/util/Map;

    monitor-enter v1

    .line 115
    :try_start_8
    sget-object v2, Lcom/uc/crashsdk/a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    sget-object v4, Lcom/uc/crashsdk/a;->e:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    if-eqz v4, :cond_30

    .line 119
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_30
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    goto :goto_e

    .line 123
    :cond_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_58

    .line 125
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "(saved at %s)\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 126
    invoke-static {}, Lcom/uc/crashsdk/e;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 125
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {}, Lcom/uc/crashsdk/b;->e()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    return-void

    .line 123
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    goto :goto_5c

    :goto_5b
    throw v0

    :goto_5c
    goto :goto_5b
.end method

.method static e()V
    .registers 4

    .line 134
    sget-boolean v0, Lcom/uc/crashsdk/a;->d:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :cond_f
    :goto_f
    sget-object v0, Lcom/uc/crashsdk/a;->e:Ljava/util/Map;

    monitor-enter v0

    .line 137
    :try_start_12
    sget-object v1, Lcom/uc/crashsdk/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    sget-object v3, Lcom/uc/crashsdk/a;->e:Ljava/util/Map;

    .line 139
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    invoke-static {v2, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    goto :goto_18

    .line 141
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_32

    goto :goto_36

    :goto_35
    throw v1

    :goto_36
    goto :goto_35
.end method

.method public static f()[B
    .registers 1

    .line 166
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        0x18t
        0x63t
        0x79t
        0x3ct
    .end array-data
.end method

.method static g()V
    .registers 9

    .line 272
    sget-boolean v0, Lcom/uc/crashsdk/a;->d:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 274
    :cond_f
    :goto_f
    sget-object v0, Lcom/uc/crashsdk/a;->k:Ljava/util/HashMap;

    monitor-enter v0

    .line 275
    :try_start_12
    sget-object v1, Lcom/uc/crashsdk/a;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 276
    sget-object v2, Lcom/uc/crashsdk/a;->k:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 277
    const/4 v4, 0x0

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 278
    const v4, 0x100101

    and-int/2addr v4, v7

    if-eqz v4, :cond_18

    .line 279
    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/String;

    .line 282
    const/4 v5, 0x2

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 283
    const/4 v6, 0x3

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 284
    const/4 v8, 0x4

    aget-object v2, v2, v8

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 285
    invoke-static/range {v3 .. v8}, Lcom/uc/crashsdk/JNIBridge;->nativeAddDumpFile(Ljava/lang/String;Ljava/lang/String;ZZIZ)I

    .line 288
    goto :goto_18

    .line 289
    :cond_60
    monitor-exit v0

    return-void

    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_12 .. :try_end_64} :catchall_62

    goto :goto_66

    :goto_65
    throw v1

    :goto_66
    goto :goto_65
.end method

.method static h()Ljava/lang/String;
    .registers 7

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    sget-object v1, Lcom/uc/crashsdk/a;->k:Ljava/util/HashMap;

    monitor-enter v1

    .line 368
    const/4 v2, 0x1

    .line 369
    :try_start_9
    sget-object v3, Lcom/uc/crashsdk/a;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 370
    sget-object v5, Lcom/uc/crashsdk/a;->k:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 371
    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 372
    invoke-static {v5}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 373
    if-nez v2, :cond_39

    .line 374
    const-string v2, "`"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const/4 v2, 0x0

    .line 379
    :cond_3d
    goto :goto_f

    .line 380
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_44

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 380
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    goto :goto_48

    :goto_47
    throw v0

    :goto_48
    goto :goto_47
.end method

.method static i()V
    .registers 8

    .line 575
    sget-boolean v0, Lcom/uc/crashsdk/a;->d:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 577
    :cond_f
    :goto_f
    sget-object v0, Lcom/uc/crashsdk/a;->q:Ljava/util/HashMap;

    monitor-enter v0

    .line 578
    :try_start_12
    sget-object v1, Lcom/uc/crashsdk/a;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 579
    sget-object v3, Lcom/uc/crashsdk/a;->q:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 580
    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 582
    const v5, 0x100101

    and-int/2addr v5, v4

    if-eqz v5, :cond_18

    .line 583
    const/4 v5, 0x2

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 586
    const/4 v7, 0x3

    aget-object v3, v3, v7

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 587
    invoke-static {v2, v4, v5, v6, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeAddCallbackInfo(Ljava/lang/String;IJI)I

    .line 589
    goto :goto_18

    .line 590
    :cond_51
    monitor-exit v0

    return-void

    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_12 .. :try_end_55} :catchall_53

    goto :goto_57

    :goto_56
    throw v1

    :goto_57
    goto :goto_56
.end method

.method static j()Ljava/lang/String;
    .registers 8

    .line 727
    sget-object v0, Lcom/uc/crashsdk/a;->q:Ljava/util/HashMap;

    monitor-enter v0

    .line 728
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    sget-object v2, Lcom/uc/crashsdk/a;->r:Ljava/util/List;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_49

    .line 730
    const/4 v3, 0x1

    .line 731
    :try_start_c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 732
    sget-object v6, Lcom/uc/crashsdk/a;->q:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 733
    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 734
    invoke-static {v6}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 735
    if-nez v3, :cond_3a

    .line 736
    const-string v3, "`"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_3a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const/4 v3, 0x0

    .line 741
    :cond_3e
    goto :goto_10

    .line 742
    :cond_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_46

    .line 743
    :try_start_40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_49

    return-object v1

    .line 742
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw v1

    .line 744
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_49

    goto :goto_4d

    :goto_4c
    throw v1

    :goto_4d
    goto :goto_4c
.end method

.method static k()V
    .registers 7

    .line 985
    sget-boolean v0, Lcom/uc/crashsdk/a;->d:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_9

    goto :goto_f

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 987
    :cond_f
    :goto_f
    sget-object v0, Lcom/uc/crashsdk/a;->A:Ljava/util/HashMap;

    monitor-enter v0

    .line 989
    :try_start_12
    sget-object v1, Lcom/uc/crashsdk/a;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 990
    sget-object v3, Lcom/uc/crashsdk/a;->A:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 991
    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 992
    const/4 v5, 0x1

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 993
    const/4 v6, 0x2

    aget-object v3, v3, v6

    check-cast v3, Ljava/util/List;

    .line 994
    const v6, 0x100001

    and-int/2addr v6, v5

    if-eqz v6, :cond_18

    .line 995
    invoke-static {v2, v4, v5}, Lcom/uc/crashsdk/JNIBridge;->nativeCreateCachedInfo(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_18

    .line 998
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1003
    invoke-static {v2, v4}, Lcom/uc/crashsdk/JNIBridge;->nativeAddCachedInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 1004
    :cond_65
    goto :goto_18

    .line 1008
    :cond_66
    monitor-exit v0

    return-void

    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_12 .. :try_end_6a} :catchall_68

    goto :goto_6c

    :goto_6b
    throw v1

    :goto_6c
    goto :goto_6b
.end method

.method static l()Ljava/lang/String;
    .registers 7

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1074
    sget-object v1, Lcom/uc/crashsdk/a;->A:Ljava/util/HashMap;

    monitor-enter v1

    .line 1075
    nop

    .line 1076
    :try_start_9
    sget-object v2, Lcom/uc/crashsdk/a;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1077
    sget-object v6, Lcom/uc/crashsdk/a;->A:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 1078
    aget-object v6, v6, v3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1079
    invoke-static {v6}, Lcom/uc/crashsdk/export/LogType;->isForJava(I)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1080
    if-nez v4, :cond_3a

    .line 1081
    const-string v4, "`"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    :cond_3a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    const/4 v4, 0x0

    .line 1086
    :cond_3e
    goto :goto_11

    .line 1087
    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_45

    .line 1088
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1087
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    goto :goto_49

    :goto_48
    throw v0

    :goto_49
    goto :goto_48
.end method

.method static m()Ljava/lang/String;
    .registers 2

    .line 1223
    sget-boolean v0, Lcom/uc/crashsdk/a;->G:Z

    if-nez v0, :cond_17

    .line 1224
    invoke-static {}, Lcom/uc/crashsdk/b;->j()Ljava/lang/String;

    move-result-object v0

    .line 1225
    invoke-static {v0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/a;->g:Ljava/lang/String;

    .line 1226
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/a;->G:Z

    .line 1227
    if-nez v0, :cond_17

    .line 1228
    const-string v0, ""

    sput-object v0, Lcom/uc/crashsdk/a;->g:Ljava/lang/String;

    .line 1231
    :cond_17
    sget-object v0, Lcom/uc/crashsdk/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static n()V
    .registers 3

    .line 1237
    invoke-static {}, Lcom/uc/crashsdk/a;->p()V

    .line 1239
    sget-boolean v0, Lcom/uc/crashsdk/a;->H:Z

    if-eqz v0, :cond_13

    .line 1240
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_12

    .line 1241
    const/16 v0, 0x80

    sget-object v1, Lcom/uc/crashsdk/a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 1243
    :cond_12
    return-void

    .line 1245
    :cond_13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/a;->H:Z

    .line 1247
    const/4 v0, 0x0

    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0xca

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    .line 1249
    return-void
.end method

.method private static o()Z
    .registers 4

    .line 64
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 66
    sget-object v2, Lcom/uc/crashsdk/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 67
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/uc/crashsdk/a;->h:Ljava/lang/String;

    .line 68
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sput-wide v2, Lcom/uc/crashsdk/a;->j:J

    .line 69
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/uc/crashsdk/a;->i:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 70
    const/4 v0, 0x1

    return v0

    .line 71
    :catchall_1d
    move-exception v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/Throwable;)V

    .line 74
    return v0
.end method

.method private static p()V
    .registers 5

    .line 1289
    sget-boolean v0, Lcom/uc/crashsdk/a;->I:Z

    if-eqz v0, :cond_5

    return-void

    .line 1290
    :cond_5
    invoke-static {}, Lcom/uc/crashsdk/e;->a()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 1295
    :cond_c
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-nez v0, :cond_14

    sget-boolean v0, Lcom/uc/crashsdk/b;->g:Z

    if-nez v0, :cond_76

    .line 1296
    :cond_14
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1297
    invoke-static {}, Lcom/uc/crashsdk/g;->R()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1298
    invoke-static {}, Lcom/uc/crashsdk/g;->S()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    .line 1299
    invoke-static {}, Lcom/uc/crashsdk/g;->T()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1296
    const-string v2, "%s/%s/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UUID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/e;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crashsdk"

    invoke-static {v2, v1}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Version: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    sput-boolean v3, Lcom/uc/crashsdk/a;->I:Z

    .line 1305
    :cond_76
    return-void
.end method
