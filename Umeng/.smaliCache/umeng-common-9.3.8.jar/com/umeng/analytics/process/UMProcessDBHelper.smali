.class public Lcom/umeng/analytics/process/UMProcessDBHelper;
.super Ljava/lang/Object;
.source "UMProcessDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/process/UMProcessDBHelper$ProcessToMainCallback;,
        Lcom/umeng/analytics/process/UMProcessDBHelper$a;,
        Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;


# instance fields
.field private ekvCallBack:Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

.field private mContext:Landroid/content/Context;

.field private mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {v0}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    .line 73
    new-instance v0, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->ekvCallBack:Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    .line 75
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {v0}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    .line 73
    new-instance v0, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->ekvCallBack:Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    .line 79
    invoke-static {}, Lcom/umeng/common/a;->a()Lcom/umeng/common/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/common/a;->a(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method static synthetic access$200(Lcom/umeng/analytics/process/UMProcessDBHelper;Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->processToMain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/umeng/analytics/process/UMProcessDBHelper;)Landroid/content/Context;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private datasAdapter(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/process/UMProcessDBHelper$a;",
            ">;"
        }
    .end annotation

    .line 385
    const-string v0, "__t"

    const-string v1, "__i"

    const-string v2, "ds"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 387
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 388
    return-object v3

    .line 390
    :cond_12
    const/4 v4, 0x0

    :goto_13
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_78

    .line 392
    :try_start_19
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 393
    new-instance v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/umeng/analytics/process/UMProcessDBHelper$a;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    .line 394
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->c:Ljava/lang/String;

    .line 395
    iget-object v7, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->g:Ljava/lang/String;

    .line 396
    iget-object v7, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->h:Ljava/lang/String;

    .line 397
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->b:Ljava/lang/String;

    .line 398
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->e:I

    .line 399
    iput-object p1, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->f:Ljava/lang/String;

    .line 401
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 402
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 404
    :cond_52
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getDataSource()I

    move-result v7

    invoke-virtual {v5, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 406
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 407
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    invoke-static {}, Lcom/umeng/common/a;->a()Lcom/umeng/common/a;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/umeng/common/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->d:Ljava/lang/String;

    .line 411
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 413
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_73} :catch_74

    .line 416
    goto :goto_75

    .line 415
    :catch_74
    move-exception v5

    .line 390
    :goto_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 418
    :cond_78
    return-object v3
.end method

.method private dbIsExists(Ljava/lang/String;)Z
    .registers 4

    .line 514
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/analytics/process/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_13

    if-eqz p1, :cond_14

    .line 516
    const/4 p1, 0x1

    return p1

    .line 518
    :catchall_13
    move-exception p1

    .line 520
    :cond_14
    nop

    .line 522
    const/4 p1, 0x0

    return p1
.end method

.method private getDataSource()I
    .registers 2

    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;
    .registers 3

    .line 83
    sget-object v0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;

    if-nez v0, :cond_17

    .line 84
    const-class v0, Lcom/umeng/analytics/process/UMProcessDBHelper;

    monitor-enter v0

    .line 85
    :try_start_7
    sget-object v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;

    if-nez v1, :cond_12

    .line 86
    new-instance v1, Lcom/umeng/analytics/process/UMProcessDBHelper;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/process/UMProcessDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;

    .line 88
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 91
    :cond_17
    :goto_17
    sget-object v0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;

    iput-object p0, v0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    .line 93
    return-object v0
.end method

.method private insertEvents_(Ljava/lang/String;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/process/UMProcessDBHelper$a;",
            ">;)Z"
        }
    .end annotation

    .line 344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_b5

    if-eqz p2, :cond_b5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_b5

    .line 348
    :cond_11
    nop

    .line 350
    const/4 v0, 0x0

    :try_start_13
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_a1
    .catchall {:try_start_13 .. :try_end_1d} :catchall_8e

    .line 352
    :try_start_1d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 353
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_30} :catch_8b
    .catchall {:try_start_1d .. :try_end_30} :catchall_88

    .line 355
    :try_start_30
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 357
    const-string v5, "__i"

    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v5, "__e"

    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v5, "__t"

    iget v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    const-string v5, "__pn"

    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v5, "__av"

    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v5, "__vc"

    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v5, "__s"

    iget-object v3, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v3, "__et_p"

    invoke-virtual {v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_6f} :catch_70
    .catchall {:try_start_30 .. :try_end_6f} :catchall_88

    .line 366
    goto :goto_71

    .line 365
    :catch_70
    move-exception v3

    .line 367
    :goto_71
    goto :goto_24

    .line 368
    :cond_72
    :try_start_72
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_8b
    .catchall {:try_start_72 .. :try_end_75} :catchall_88

    .line 373
    if-eqz v2, :cond_7c

    .line 374
    :try_start_77
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_7c

    .line 376
    :catchall_7b
    move-exception p2

    :cond_7c
    :goto_7c
    nop

    .line 377
    iget-object p2, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 378
    nop

    .line 380
    return v1

    .line 372
    :catchall_88
    move-exception p2

    move-object v0, v2

    goto :goto_8f

    .line 369
    :catch_8b
    move-exception p2

    move-object v0, v2

    goto :goto_a2

    .line 372
    :catchall_8e
    move-exception p2

    .line 373
    :goto_8f
    if-eqz v0, :cond_96

    .line 374
    :try_start_91
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_96

    .line 376
    :catchall_95
    move-exception v0

    :cond_96
    :goto_96
    nop

    .line 377
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw p2

    .line 369
    :catch_a1
    move-exception p2

    .line 370
    :goto_a2
    const/4 p2, 0x0

    .line 373
    if-eqz v0, :cond_aa

    .line 374
    :try_start_a5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_aa

    .line 376
    :catchall_a9
    move-exception v0

    :cond_aa
    :goto_aa
    nop

    .line 377
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    return p2

    .line 345
    :cond_b5
    :goto_b5
    return v1
.end method

.method private processIsService(Landroid/content/Context;)Z
    .registers 4

    .line 600
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 602
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 604
    const/4 v1, 0x0

    :try_start_10
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_19

    .line 605
    if-eqz p1, :cond_18

    .line 606
    const/4 p1, 0x1

    return p1

    .line 609
    :cond_18
    goto :goto_1a

    .line 608
    :catch_19
    move-exception p1

    .line 611
    :goto_1a
    return v1
.end method

.method private processToMain(Ljava/lang/String;)V
    .registers 4

    .line 151
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->dbIsExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 152
    return-void

    .line 156
    :cond_7
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->readEventByProcess(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 159
    return-void

    .line 162
    :cond_12
    const-string v1, "_main_"

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEvents_(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    .line 163
    if-eqz v1, :cond_1e

    .line 165
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->deleteEventDatas(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 167
    :cond_1e
    return-void
.end method

.method private readEventByProcess(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/process/UMProcessDBHelper$a;",
            ">;"
        }
    .end annotation

    .line 469
    const-string v0, "select *  from __et_p"

    .line 471
    nop

    .line 472
    nop

    .line 473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 476
    const/4 v2, 0x0

    :try_start_a
    iget-object v3, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_a1
    .catchall {:try_start_a .. :try_end_14} :catchall_9e

    .line 478
    :try_start_14
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 479
    invoke-virtual {v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_99
    .catchall {:try_start_14 .. :try_end_1b} :catchall_97

    .line 480
    if-eqz v0, :cond_89

    .line 481
    :goto_1d
    :try_start_1d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 482
    new-instance v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;

    invoke-direct {v4, p0, v2}, Lcom/umeng/analytics/process/UMProcessDBHelper$a;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    .line 483
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->a:I

    .line 484
    const-string v5, "__i"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->b:Ljava/lang/String;

    .line 485
    const-string v5, "__e"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->c:Ljava/lang/String;

    .line 486
    const-string v5, "__s"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->d:Ljava/lang/String;

    .line 487
    const-string v5, "__t"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->e:I

    .line 488
    const-string v5, "__pn"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->f:Ljava/lang/String;

    .line 489
    const-string v5, "__av"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->g:Ljava/lang/String;

    .line 490
    const-string v5, "__vc"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->h:Ljava/lang/String;

    .line 491
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_86} :catch_87
    .catchall {:try_start_1d .. :try_end_86} :catchall_c1

    .line 492
    goto :goto_1d

    .line 494
    :catch_87
    move-exception v2

    goto :goto_a5

    .line 499
    :cond_89
    if-eqz v0, :cond_91

    .line 500
    :try_start_8b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_91

    .line 505
    :catch_8f
    move-exception v0

    goto :goto_b5

    .line 502
    :cond_91
    :goto_91
    if-eqz v3, :cond_b5

    .line 503
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_96} :catch_8f

    goto :goto_b5

    .line 498
    :catchall_97
    move-exception v1

    goto :goto_c3

    .line 494
    :catch_99
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_a5

    .line 498
    :catchall_9e
    move-exception v1

    move-object v3, v2

    goto :goto_c3

    .line 494
    :catch_a1
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    .line 495
    :goto_a5
    :try_start_a5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_c1

    .line 499
    if-eqz v0, :cond_b0

    .line 500
    :try_start_aa
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b0

    .line 505
    :catch_ae
    move-exception v0

    goto :goto_b5

    .line 502
    :cond_b0
    :goto_b0
    if-eqz v3, :cond_b5

    .line 503
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b5} :catch_ae

    .line 505
    :cond_b5
    :goto_b5
    nop

    .line 506
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 507
    nop

    .line 509
    return-object v1

    .line 498
    :catchall_c1
    move-exception v1

    move-object v2, v0

    .line 499
    :goto_c3
    if-eqz v2, :cond_cb

    .line 500
    :try_start_c5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_cb

    .line 505
    :catch_c9
    move-exception v0

    goto :goto_d0

    .line 502
    :cond_cb
    :goto_cb
    if-eqz v3, :cond_d0

    .line 503
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d0} :catch_c9

    .line 505
    :cond_d0
    :goto_d0
    nop

    .line 506
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    goto :goto_dc

    :goto_db
    throw v1

    :goto_dc
    goto :goto_db
.end method


# virtual methods
.method public createDBByProcess(Ljava/lang/String;)V
    .registers 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    .line 103
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 106
    goto :goto_17

    .line 104
    :catch_13
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    :goto_17
    return-void
.end method

.method public deleteEventDatas(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/process/UMProcessDBHelper$a;",
            ">;)V"
        }
    .end annotation

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 312
    return-void

    .line 314
    :cond_7
    nop

    .line 315
    nop

    .line 317
    const/4 p2, 0x0

    :try_start_a
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_68
    .catchall {:try_start_a .. :try_end_14} :catchall_56

    .line 319
    :try_start_14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 320
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 321
    if-eqz p3, :cond_43

    if-lez v1, :cond_43

    .line 322
    const/4 p2, 0x0

    :goto_20
    if-ge p2, v1, :cond_48

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from __et_p where rowid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;

    iget v3, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 322
    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    .line 327
    :cond_43
    const-string p3, "__et_p"

    invoke-virtual {v0, p3, p2, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 330
    :cond_48
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4b} :catch_53
    .catchall {:try_start_14 .. :try_end_4b} :catchall_51

    .line 334
    if-eqz v0, :cond_6e

    .line 335
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_6e

    .line 334
    :catchall_51
    move-exception p2

    goto :goto_59

    .line 331
    :catch_53
    move-exception p2

    move-object p2, v0

    goto :goto_69

    .line 334
    :catchall_56
    move-exception p3

    move-object v0, p2

    move-object p2, p3

    :goto_59
    if-eqz v0, :cond_5e

    .line 335
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 337
    :cond_5e
    iget-object p3, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw p2

    .line 331
    :catch_68
    move-exception p3

    .line 334
    :goto_69
    if-eqz p2, :cond_6e

    .line 335
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 337
    :cond_6e
    :goto_6e
    iget-object p2, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 338
    nop

    .line 339
    return-void
.end method

.method public deleteMainProcessEventDatasByIds(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 291
    const-string v0, "_main_"

    .line 293
    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 296
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 297
    const-string v3, "__et_p"

    const-string v4, "id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 298
    goto :goto_14

    .line 299
    :cond_32
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_48
    .catchall {:try_start_3 .. :try_end_35} :catchall_38

    .line 302
    if-eqz v1, :cond_4e

    .line 303
    goto :goto_4b

    .line 302
    :catchall_38
    move-exception p1

    if-eqz v1, :cond_3e

    .line 303
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 305
    :cond_3e
    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw p1

    .line 300
    :catch_48
    move-exception p1

    .line 302
    if-eqz v1, :cond_4e

    .line 303
    :goto_4b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 305
    :cond_4e
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 306
    nop

    .line 307
    return-void
.end method

.method public insertEvents(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 4

    .line 135
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->SUB_PROCESS_EVENT:Z

    if-nez v0, :cond_5

    .line 136
    return-void

    .line 139
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 140
    return-void

    .line 143
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->datasAdapter(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEvents_(Ljava/lang/String;Ljava/util/List;)Z

    .line 144
    return-void
.end method

.method public insertEventsInSubProcess(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 5

    .line 110
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->SUB_PROCESS_EVENT:Z

    if-nez v0, :cond_5

    .line 111
    return-void

    .line 114
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 115
    return-void

    .line 118
    :cond_c
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/analytics/process/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 122
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->ekvCallBack:Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    invoke-virtual {p1, v1, v0, p2}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;Ljava/lang/Object;)V

    goto :goto_2a

    .line 125
    :cond_25
    check-cast p2, Lorg/json/JSONArray;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEvents(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 127
    :goto_2a
    return-void
.end method

.method public processDBToMain()V
    .registers 4

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/umeng/analytics/process/UMProcessDBHelper$ProcessToMainCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/umeng/analytics/process/UMProcessDBHelper$ProcessToMainCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    new-instance v2, Lcom/umeng/analytics/process/UMProcessDBHelper$1;

    invoke-direct {v2, p0}, Lcom/umeng/analytics/process/UMProcessDBHelper$1;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;)V

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/process/DBFileTraversalUtil;->traverseDBFiles(Ljava/lang/String;Lcom/umeng/commonsdk/utils/FileLockCallback;Lcom/umeng/analytics/process/DBFileTraversalUtil$a;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_16

    .line 581
    :catch_15
    move-exception v0

    :goto_16
    nop

    .line 582
    return-void
.end method

.method public readMainEvents(JLjava/util/List;)Lorg/json/JSONObject;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 175
    move-object/from16 v1, p0

    const-string v0, "pn"

    const-string v2, "_main_"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 176
    nop

    .line 177
    nop

    .line 178
    nop

    .line 180
    const/4 v4, 0x0

    :try_start_f
    iget-object v5, v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_161
    .catchall {:try_start_f .. :try_end_19} :catchall_15d

    .line 182
    :try_start_19
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 183
    const-string v6, "select *  from __et_p"

    .line 185
    invoke-virtual {v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 186
    if-eqz v4, :cond_143

    .line 188
    nop

    .line 190
    nop

    .line 192
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2b} :catch_156
    .catchall {:try_start_19 .. :try_end_2b} :catchall_153

    const-string v7, ""

    .line 194
    :goto_2d
    :try_start_2d
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_100

    .line 195
    const-string v8, "id"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 196
    const-string v9, "__t"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 197
    const-string v10, "__i"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 198
    const-string v11, "__s"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 199
    const-string v12, "__pn"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 200
    const-string v13, "__av"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 201
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_76

    .line 202
    goto :goto_2d

    .line 205
    :cond_76
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7d

    .line 206
    move-object v7, v13

    .line 211
    :cond_7d
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_fc

    const/16 v14, 0x801

    if-ne v9, v14, :cond_fc

    .line 212
    new-instance v9, Lorg/json/JSONObject;

    invoke-static {}, Lcom/umeng/common/a;->a()Lcom/umeng/common/a;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/umeng/common/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 214
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a6

    const-string v14, "unknown"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c6

    .line 215
    :cond_a6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ":"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 216
    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    :cond_c6
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d1

    .line 219
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    goto :goto_d6

    .line 221
    :cond_d1
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 223
    :goto_d6
    invoke-static {v11}, Lcom/umeng/analytics/pro/p;->a(Lorg/json/JSONArray;)J

    move-result-wide v14

    .line 224
    invoke-static {v9}, Lcom/umeng/analytics/pro/p;->a(Lorg/json/JSONObject;)J

    move-result-wide v16

    .line 226
    add-long v16, v16, v14

    cmp-long v12, v16, p1

    if-lez v12, :cond_e5

    .line 227
    goto :goto_100

    .line 231
    :cond_e5
    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_ec

    .line 232
    goto :goto_100

    .line 234
    :cond_ec
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v12, p3

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 237
    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_fe

    .line 211
    :cond_fc
    move-object/from16 v12, p3

    .line 239
    :goto_fe
    goto/16 :goto_2d

    .line 241
    :cond_100
    :goto_100
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_141

    .line 242
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 243
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 245
    :goto_10f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_136

    .line 246
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 247
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 248
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 249
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_135

    .line 251
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 253
    :cond_135
    goto :goto_10f

    .line 254
    :cond_136
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_141

    .line 255
    const-string v6, "ekv"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    :cond_141
    nop

    .line 259
    nop

    .line 262
    :cond_143
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_146} :catch_156
    .catchall {:try_start_2d .. :try_end_146} :catchall_153

    .line 271
    if-eqz v4, :cond_14b

    .line 272
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_14b
    if-eqz v5, :cond_17e

    .line 276
    :try_start_14d
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_150
    .catchall {:try_start_14d .. :try_end_150} :catchall_151

    goto :goto_17e

    .line 278
    :catchall_151
    move-exception v0

    goto :goto_17e

    .line 271
    :catchall_153
    move-exception v0

    move-object v3, v0

    goto :goto_191

    .line 263
    :catch_156
    move-exception v0

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    goto :goto_163

    .line 271
    :catchall_15d
    move-exception v0

    move-object v3, v0

    move-object v5, v4

    goto :goto_191

    .line 263
    :catch_161
    move-exception v0

    move-object v5, v4

    .line 266
    :goto_163
    :try_start_163
    const-string v0, "MobclickRT"

    const-string v6, "--->>> \u6784\u5efa\u5b50\u8fdb\u7a0b\u4e8b\u4ef6\u6570\u636e\u5f02\u5e38\uff0c\u6e05\u9664\u6570\u636e\u5e93\u6570\u636e\u3002"

    invoke-static {v0, v6}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "delete from __et_p"

    .line 268
    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_172
    .catchall {:try_start_163 .. :try_end_172} :catchall_18a

    .line 271
    if-eqz v5, :cond_177

    .line 272
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_177
    if-eqz v4, :cond_17e

    .line 276
    :try_start_179
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_17c
    .catchall {:try_start_179 .. :try_end_17c} :catchall_17d

    goto :goto_17e

    .line 278
    :catchall_17d
    move-exception v0

    :cond_17e
    :goto_17e
    nop

    .line 279
    iget-object v0, v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 280
    nop

    .line 284
    return-object v3

    .line 271
    :catchall_18a
    move-exception v0

    move-object v3, v0

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    :goto_191
    if-eqz v4, :cond_196

    .line 272
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_196
    if-eqz v5, :cond_19d

    .line 276
    :try_start_198
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_19b
    .catchall {:try_start_198 .. :try_end_19b} :catchall_19c

    goto :goto_19d

    .line 278
    :catchall_19c
    move-exception v0

    :cond_19d
    :goto_19d
    nop

    .line 279
    iget-object v0, v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    goto :goto_1a9

    :goto_1a8
    throw v3

    :goto_1a9
    goto :goto_1a8
.end method

.method public readVersionInfoFromColumId(Ljava/lang/Integer;)Lorg/json/JSONObject;
    .registers 10

    .line 423
    const-string v0, "__vc"

    const-string v1, "__av"

    const-string v2, "_main_"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select *  from __et_p where rowid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 425
    nop

    .line 426
    nop

    .line 427
    nop

    .line 430
    const/4 v3, 0x0

    :try_start_1d
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_86
    .catchall {:try_start_1d .. :try_end_27} :catchall_83

    .line 432
    :try_start_27
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 433
    invoke-virtual {v4, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_80
    .catchall {:try_start_27 .. :try_end_2e} :catchall_a5

    .line 434
    if-eqz p1, :cond_68

    .line 435
    :try_start_30
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 436
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3b} :catch_64
    .catchall {:try_start_30 .. :try_end_3b} :catchall_61

    .line 437
    :try_start_3b
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 439
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_54

    .line 440
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    :cond_54
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 443
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5d} :catch_5f
    .catchall {:try_start_3b .. :try_end_5d} :catchall_61

    .line 454
    :cond_5d
    move-object v3, v5

    goto :goto_68

    .line 449
    :catch_5f
    move-exception v0

    goto :goto_66

    .line 453
    :catchall_61
    move-exception v0

    move-object v3, p1

    goto :goto_a6

    .line 449
    :catch_64
    move-exception v0

    move-object v5, v3

    :goto_66
    move-object v3, p1

    goto :goto_89

    .line 454
    :cond_68
    :goto_68
    if-eqz p1, :cond_70

    .line 455
    :try_start_6a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_70

    .line 460
    :catch_6e
    move-exception p1

    goto :goto_75

    .line 457
    :cond_70
    :goto_70
    if-eqz v4, :cond_75

    .line 458
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_75} :catch_6e

    .line 460
    :cond_75
    :goto_75
    nop

    .line 461
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 462
    goto :goto_a4

    .line 449
    :catch_80
    move-exception v0

    move-object v5, v3

    goto :goto_89

    .line 453
    :catchall_83
    move-exception v0

    move-object v4, v3

    goto :goto_a6

    .line 449
    :catch_86
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    .line 450
    :goto_89
    :try_start_89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_a5

    .line 454
    if-eqz v3, :cond_94

    .line 455
    :try_start_8e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_94

    .line 460
    :catch_92
    move-exception p1

    goto :goto_99

    .line 457
    :cond_94
    :goto_94
    if-eqz v4, :cond_99

    .line 458
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_99} :catch_92

    .line 460
    :cond_99
    :goto_99
    nop

    .line 461
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 462
    move-object v3, v5

    .line 464
    :goto_a4
    return-object v3

    .line 453
    :catchall_a5
    move-exception v0

    .line 454
    :goto_a6
    if-eqz v3, :cond_ae

    .line 455
    :try_start_a8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_ae

    .line 460
    :catch_ac
    move-exception p1

    goto :goto_b3

    .line 457
    :cond_ae
    :goto_ae
    if-eqz v4, :cond_b3

    .line 458
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b3} :catch_ac

    .line 460
    :cond_b3
    :goto_b3
    nop

    .line 461
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw v0
.end method
