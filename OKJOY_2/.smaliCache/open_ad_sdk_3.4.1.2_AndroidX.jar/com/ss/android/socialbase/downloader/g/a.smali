.class public Lcom/ss/android/socialbase/downloader/g/a;
.super Ljava/lang/Object;
.source "DownloadSetting.java"


# static fields
.field private static final a:Lcom/ss/android/socialbase/downloader/i/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/i/g<",
            "Ljava/lang/Integer;",
            "Lcom/ss/android/socialbase/downloader/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/ss/android/socialbase/downloader/g/a;

.field private static c:Lorg/json/JSONObject;

.field private static d:Lorg/json/JSONObject;

.field private static e:Ljava/lang/Boolean;

.field private static f:Z

.field private static g:Lcom/ss/android/socialbase/downloader/g/a;


# instance fields
.field private final h:Lorg/json/JSONObject;

.field private final i:Lorg/json/JSONObject;

.field private final j:Ljava/lang/Boolean;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/g;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v1}, Lcom/ss/android/socialbase/downloader/i/g;-><init>(II)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/g/a;->a:Lcom/ss/android/socialbase/downloader/i/g;

    .line 43
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    .line 68
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->a()V

    .line 69
    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .registers 6

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    .line 91
    nop

    .line 92
    nop

    .line 93
    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    .line 94
    const-string v1, "bugfix"

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 95
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 96
    if-eqz p1, :cond_37

    .line 97
    const-string v1, "default"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    move v0, v2

    :cond_2f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_3c

    .line 103
    :cond_37
    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_3c

    :cond_3b
    move-object p1, v0

    :goto_3c
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->i:Lorg/json/JSONObject;

    .line 104
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/a;->j:Ljava/lang/Boolean;

    .line 105
    return-void
.end method

.method public static a(I)Lcom/ss/android/socialbase/downloader/g/a;
    .registers 2

    .line 143
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;
    .registers 4

    .line 163
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    .line 164
    if-eqz v0, :cond_9

    iget v1, v0, Lcom/ss/android/socialbase/downloader/g/a;->k:I

    if-ne v1, p0, :cond_9

    .line 165
    return-object v0

    .line 167
    :cond_9
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->a:Lcom/ss/android/socialbase/downloader/i/g;

    monitor-enter v0

    .line 168
    :try_start_c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/i/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/g/a;

    .line 169
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_37

    .line 170
    if-nez v1, :cond_32

    .line 171
    if-nez p1, :cond_20

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->c(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    goto :goto_24

    :cond_20
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    :goto_24
    move-object v1, p1

    .line 172
    monitor-enter v0

    .line 173
    :try_start_26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/socialbase/downloader/i/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    monitor-exit v0

    goto :goto_32

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_2f

    throw p0

    .line 176
    :cond_32
    :goto_32
    iput p0, v1, Lcom/ss/android/socialbase/downloader/g/a;->k:I

    .line 177
    sput-object v1, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    .line 178
    return-object v1

    .line 169
    :catchall_37
    move-exception p0

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;
    .registers 2

    .line 156
    if-nez p0, :cond_5

    .line 157
    sget-object p0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object p0

    .line 159
    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/g/a;->a(ILcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;
    .registers 5

    .line 318
    if-eqz p0, :cond_42

    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    if-eq p0, v0, :cond_42

    sget-boolean v0, Lcom/ss/android/socialbase/downloader/g/a;->f:Z

    if-eqz v0, :cond_d

    goto :goto_42

    .line 321
    :cond_d
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    .line 322
    if-eqz v0, :cond_16

    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-ne v1, p0, :cond_16

    .line 323
    return-object v0

    .line 325
    :cond_16
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->a:Lcom/ss/android/socialbase/downloader/i/g;

    monitor-enter v0

    .line 326
    :try_start_19
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/g;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/g/a;

    .line 327
    iget-object v3, v2, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-ne v3, p0, :cond_35

    .line 328
    sput-object v2, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    .line 329
    monitor-exit v0

    return-object v2

    .line 331
    :cond_35
    goto :goto_21

    .line 332
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_3f

    .line 333
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/g/a;-><init>(Lorg/json/JSONObject;)V

    .line 334
    sput-object v0, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    .line 335
    return-object v0

    .line 332
    :catchall_3f
    move-exception p0

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0

    .line 319
    :cond_42
    :goto_42
    sget-object p0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object p0
.end method

.method public static a()V
    .registers 6

    .line 75
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->E()Lorg/json/JSONObject;

    move-result-object v0

    .line 76
    const-string v1, "disable_task_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    move v1, v3

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/ss/android/socialbase/downloader/g/a;->f:Z

    .line 77
    const-string v1, "disabled_task_keys"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/g/a;->c:Lorg/json/JSONObject;

    .line 78
    const-string v1, "bugfix"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 79
    const/4 v1, 0x0

    .line 80
    if-eqz v0, :cond_37

    .line 81
    const-string v4, "default"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 82
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_33

    move v2, v3

    :cond_33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 85
    :cond_37
    sput-object v0, Lcom/ss/android/socialbase/downloader/g/a;->d:Lorg/json/JSONObject;

    .line 86
    sput-object v1, Lcom/ss/android/socialbase/downloader/g/a;->e:Ljava/lang/Boolean;

    .line 87
    return-void
.end method

.method public static a(ILorg/json/JSONObject;)V
    .registers 7

    .line 339
    if-eqz p1, :cond_53

    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    if-eq p1, v0, :cond_53

    sget-boolean v0, Lcom/ss/android/socialbase/downloader/g/a;->f:Z

    if-eqz v0, :cond_d

    goto :goto_53

    .line 342
    :cond_d
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->a:Lcom/ss/android/socialbase/downloader/i/g;

    monitor-enter v0

    .line 343
    :try_start_10
    sget-object v1, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    .line 344
    if-eqz v1, :cond_1b

    iget-object v2, v1, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-ne v2, p1, :cond_1b

    .line 345
    iput p0, v1, Lcom/ss/android/socialbase/downloader/g/a;->k:I

    goto :goto_45

    .line 347
    :cond_1b
    const/4 v1, 0x0

    .line 348
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/g;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/g/a;

    .line 349
    iget-object v4, v3, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-ne v4, p1, :cond_39

    .line 350
    nop

    .line 351
    iput p0, v3, Lcom/ss/android/socialbase/downloader/g/a;->k:I

    .line 352
    move-object v1, v3

    goto :goto_3a

    .line 354
    :cond_39
    goto :goto_24

    .line 355
    :cond_3a
    :goto_3a
    if-nez v1, :cond_43

    .line 356
    new-instance v1, Lcom/ss/android/socialbase/downloader/g/a;

    invoke-direct {v1, p1}, Lcom/ss/android/socialbase/downloader/g/a;-><init>(Lorg/json/JSONObject;)V

    .line 357
    iput p0, v1, Lcom/ss/android/socialbase/downloader/g/a;->k:I

    .line 359
    :cond_43
    sput-object v1, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    .line 361
    :goto_45
    sget-object p1, Lcom/ss/android/socialbase/downloader/g/a;->a:Lcom/ss/android/socialbase/downloader/i/g;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/ss/android/socialbase/downloader/i/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_10 .. :try_end_52} :catchall_50

    throw p0

    .line 340
    :cond_53
    :goto_53
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 3

    .line 119
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_b

    .line 120
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/g/a;->d:Lorg/json/JSONObject;

    .line 122
    :cond_b
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->d:Lorg/json/JSONObject;

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_15} :catch_16

    .line 124
    goto :goto_17

    .line 123
    :catch_16
    move-exception p0

    .line 125
    :goto_17
    return-void
.end method

.method private static b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;
    .registers 2

    .line 390
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/g/a;->f:Z

    if-eqz v0, :cond_7

    .line 391
    sget-object p0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object p0

    .line 394
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadSettingString()Ljava/lang/String;

    move-result-object p0

    .line 395
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 396
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 397
    new-instance p0, Lcom/ss/android/socialbase/downloader/g/a;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/g/a;-><init>(Lorg/json/JSONObject;)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1d

    return-object p0

    .line 401
    :cond_1c
    goto :goto_21

    .line 399
    :catchall_1d
    move-exception p0

    .line 400
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 402
    :goto_21
    sget-object p0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object p0
.end method

.method public static b()Lorg/json/JSONObject;
    .registers 1

    .line 109
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->E()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)V
    .registers 2

    .line 366
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    .line 367
    if-eqz v0, :cond_b

    iget v0, v0, Lcom/ss/android/socialbase/downloader/g/a;->k:I

    if-ne v0, p0, :cond_b

    .line 368
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/g/a;->g:Lcom/ss/android/socialbase/downloader/g/a;

    .line 370
    :cond_b
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->a:Lcom/ss/android/socialbase/downloader/i/g;

    monitor-enter v0

    .line 371
    :try_start_e
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/i/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw p0
.end method

.method public static c()Lcom/ss/android/socialbase/downloader/g/a;
    .registers 1

    .line 132
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object v0
.end method

.method private static c(I)Lcom/ss/android/socialbase/downloader/g/a;
    .registers 2

    .line 376
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/g/a;->f:Z

    if-eqz v0, :cond_7

    .line 377
    sget-object p0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object p0

    .line 379
    :cond_7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_1c

    .line 381
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p0

    .line 382
    if-eqz p0, :cond_1c

    .line 383
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p0

    return-object p0

    .line 386
    :cond_1c
    sget-object p0, Lcom/ss/android/socialbase/downloader/g/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 3

    .line 309
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->c:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 310
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    .line 311
    return v0

    .line 313
    :cond_d
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;D)D
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 250
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1

    .line 252
    :cond_17
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public a(Ljava/lang/String;I)I
    .registers 4

    .line 227
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 228
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 230
    :cond_17
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;J)J
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 239
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    .line 241
    :cond_17
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 272
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 274
    :cond_17
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)I
    .registers 3

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Z)Z
    .registers 6

    .line 203
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->i:Lorg/json/JSONObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_27

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 204
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 205
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_1d

    move v1, v2

    :cond_1d
    return v1

    .line 207
    :cond_1e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_27

    .line 208
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 211
    :cond_27
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_44

    .line 212
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 213
    sget-object v0, Lcom/ss/android/socialbase/downloader/g/a;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_3a

    move v1, v2

    :cond_3a
    return v1

    .line 215
    :cond_3b
    sget-object p1, Lcom/ss/android/socialbase/downloader/g/a;->e:Ljava/lang/Boolean;

    if-eqz p1, :cond_44

    .line 216
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 219
    :cond_44
    return p2
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 267
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 279
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 281
    :cond_17
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 286
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/a;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1

    .line 288
    :cond_17
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method
