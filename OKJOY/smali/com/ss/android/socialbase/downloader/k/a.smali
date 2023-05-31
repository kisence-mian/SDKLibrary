.class public Lcom/ss/android/socialbase/downloader/k/a;
.super Ljava/lang/Object;
.source "DownloadSetting.java"


# static fields
.field private static final a:Lcom/ss/android/socialbase/downloader/m/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/m/h",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ss/android/socialbase/downloader/k/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/ss/android/socialbase/downloader/k/a;

.field private static c:Lorg/json/JSONObject;

.field private static d:Lorg/json/JSONObject;

.field private static e:Lorg/json/JSONObject;

.field private static f:Ljava/lang/Boolean;

.field private static g:Z

.field private static h:Lcom/ss/android/socialbase/downloader/k/a;


# instance fields
.field private final i:Lorg/json/JSONObject;

.field private final j:Lorg/json/JSONObject;

.field private final k:Ljava/lang/Boolean;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x8

    .line 41
    new-instance v0, Lcom/ss/android/socialbase/downloader/m/h;

    invoke-direct {v0, v1, v1}, Lcom/ss/android/socialbase/downloader/m/h;-><init>(II)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/k/a;->a:Lcom/ss/android/socialbase/downloader/m/h;

    .line 43
    new-instance v0, Lcom/ss/android/socialbase/downloader/k/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/k/a;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/ss/android/socialbase/downloader/k/a;->b:Lcom/ss/android/socialbase/downloader/k/a;

    .line 67
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->a()V

    .line 68
    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    .line 95
    if-eqz p1, :cond_41

    .line 96
    const-string v3, "bugfix"

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/k/a;->f(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 97
    const-string v3, "bugfix"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 98
    if-eqz v3, :cond_3e

    .line 99
    const-string v4, "default"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const-string v4, "default"

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/k/a;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 100
    const-string v2, "default"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3c

    :goto_32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v2, v3

    .line 105
    :goto_37
    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/k/a;->j:Lorg/json/JSONObject;

    .line 106
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->k:Ljava/lang/Boolean;

    .line 107
    return-void

    :cond_3c
    move v0, v1

    .line 100
    goto :goto_32

    :cond_3e
    move-object v0, v2

    move-object v2, v3

    goto :goto_37

    :cond_41
    move-object v0, v2

    goto :goto_37
.end method

.method public static a(I)Lcom/ss/android/socialbase/downloader/k/a;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(ILcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/k/a;
    .registers 6

    .prologue
    .line 161
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->h:Lcom/ss/android/socialbase/downloader/k/a;

    .line 162
    if-eqz v0, :cond_9

    iget v1, v0, Lcom/ss/android/socialbase/downloader/k/a;->l:I

    if-ne v1, p0, :cond_9

    .line 176
    :goto_8
    return-object v0

    .line 165
    :cond_9
    sget-object v1, Lcom/ss/android/socialbase/downloader/k/a;->a:Lcom/ss/android/socialbase/downloader/m/h;

    monitor-enter v1

    .line 166
    :try_start_c
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->a:Lcom/ss/android/socialbase/downloader/m/h;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/m/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/k/a;

    .line 167
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_33

    .line 168
    if-nez v0, :cond_2e

    .line 169
    if-nez p1, :cond_36

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/k/a;->c(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    .line 170
    :goto_21
    sget-object v1, Lcom/ss/android/socialbase/downloader/k/a;->a:Lcom/ss/android/socialbase/downloader/m/h;

    monitor-enter v1

    .line 171
    :try_start_24
    sget-object v2, Lcom/ss/android/socialbase/downloader/k/a;->a:Lcom/ss/android/socialbase/downloader/m/h;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/ss/android/socialbase/downloader/m/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_3b

    .line 174
    :cond_2e
    iput p0, v0, Lcom/ss/android/socialbase/downloader/k/a;->l:I

    .line 175
    sput-object v0, Lcom/ss/android/socialbase/downloader/k/a;->h:Lcom/ss/android/socialbase/downloader/k/a;

    goto :goto_8

    .line 167
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0

    .line 169
    :cond_36
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->b(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    goto :goto_21

    .line 172
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/k/a;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    if-nez p0, :cond_5

    .line 155
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->b:Lcom/ss/android/socialbase/downloader/k/a;

    .line 157
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/k/a;->a(ILcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    goto :goto_4
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/k/a;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 316
    if-eqz p0, :cond_a

    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->c:Lorg/json/JSONObject;

    if-eq p0, v0, :cond_a

    sget-boolean v0, Lcom/ss/android/socialbase/downloader/k/a;->g:Z

    if-eqz v0, :cond_d

    .line 317
    :cond_a
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->b:Lcom/ss/android/socialbase/downloader/k/a;

    .line 333
    :cond_c
    :goto_c
    return-object v0

    .line 319
    :cond_d
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->h:Lcom/ss/android/socialbase/downloader/k/a;

    .line 320
    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    if-eq v1, p0, :cond_c

    .line 323
    :cond_15
    sget-object v1, Lcom/ss/android/socialbase/downloader/k/a;->a:Lcom/ss/android/socialbase/downloader/m/h;

    monitor-enter v1

    .line 324
    :try_start_18
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->a:Lcom/ss/android/socialbase/downloader/m/h;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/m/h;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/k/a;

    .line 325
    iget-object v3, v0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    if-ne v3, p0, :cond_22

    .line 326
    sput-object v0, Lcom/ss/android/socialbase/downloader/k/a;->h:Lcom/ss/android/socialbase/downloader/k/a;

    .line 327
    monitor-exit v1

    goto :goto_c

    .line 330
    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_18 .. :try_end_38} :catchall_36

    throw v0

    :cond_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_36

    .line 331
    new-instance v0, Lcom/ss/android/socialbase/downloader/k/a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/k/a;-><init>(Lorg/json/JSONObject;)V

    .line 332
    sput-object v0, Lcom/ss/android/socialbase/downloader/k/a;->h:Lcom/ss/android/socialbase/downloader/k/a;

    goto :goto_c
.end method

.method public static a()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->v()Lorg/json/JSONObject;

    move-result-object v3

    .line 75
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->c:Lorg/json/JSONObject;

    if-eq v0, v3, :cond_40

    .line 76
    sput-object v3, Lcom/ss/android/socialbase/downloader/k/a;->c:Lorg/json/JSONObject;

    .line 77
    const-string v0, "disable_task_setting"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_41

    move v0, v1

    :goto_15
    sput-boolean v0, Lcom/ss/android/socialbase/downloader/k/a;->g:Z

    .line 78
    const-string v0, "disabled_task_keys"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/k/a;->d:Lorg/json/JSONObject;

    .line 79
    const-string v0, "bugfix"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 80
    const/4 v0, 0x0

    .line 81
    if-eqz v3, :cond_3c

    .line 82
    const-string v4, "default"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 83
    const-string v0, "default"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_43

    :goto_38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 86
    :cond_3c
    sput-object v3, Lcom/ss/android/socialbase/downloader/k/a;->e:Lorg/json/JSONObject;

    .line 87
    sput-object v0, Lcom/ss/android/socialbase/downloader/k/a;->f:Ljava/lang/Boolean;

    .line 89
    :cond_40
    return-void

    :cond_41
    move v0, v2

    .line 77
    goto :goto_15

    :cond_43
    move v1, v2

    .line 83
    goto :goto_38
.end method

.method public static a(ILorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 337
    if-eqz p1, :cond_a

    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->c:Lorg/json/JSONObject;

    if-eq p1, v0, :cond_a

    sget-boolean v0, Lcom/ss/android/socialbase/downloader/k/a;->g:Z

    if-eqz v0, :cond_b

    .line 361
    :cond_a
    :goto_a
    return-void

    .line 340
    :cond_b
    sget-object v2, Lcom/ss/android/socialbase/downloader/k/a;->a:Lcom/ss/android/socialbase/downloader/m/h;

    monitor-enter v2

    .line 341
    :try_start_e
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->h:Lcom/ss/android/socialbase/downloader/k/a;

    .line 342
    if-eqz v0, :cond_26

    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    if-ne v1, p1, :cond_26

    .line 343
    iput p0, v0, Lcom/ss/android/socialbase/downloader/k/a;->l:I

    .line 359
    :goto_18
    sget-object v1, Lcom/ss/android/socialbase/downloader/k/a;->a:Lcom/ss/android/socialbase/downloader/m/h;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/ss/android/socialbase/downloader/m/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    monitor-exit v2

    goto :goto_a

    :catchall_23
    move-exception v0

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_23

    throw v0

    .line 345
    :cond_26
    const/4 v1, 0x0

    .line 346
    :try_start_27
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->a:Lcom/ss/android/socialbase/downloader/m/h;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/m/h;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/k/a;

    .line 347
    iget-object v4, v0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    if-ne v4, p1, :cond_31

    .line 349
    iput p0, v0, Lcom/ss/android/socialbase/downloader/k/a;->l:I

    .line 353
    :goto_43
    if-nez v0, :cond_4c

    .line 354
    new-instance v0, Lcom/ss/android/socialbase/downloader/k/a;

    invoke-direct {v0, p1}, Lcom/ss/android/socialbase/downloader/k/a;-><init>(Lorg/json/JSONObject;)V

    .line 355
    iput p0, v0, Lcom/ss/android/socialbase/downloader/k/a;->l:I

    .line 357
    :cond_4c
    sput-object v0, Lcom/ss/android/socialbase/downloader/k/a;->h:Lcom/ss/android/socialbase/downloader/k/a;
    :try_end_4e
    .catchall {:try_start_27 .. :try_end_4e} :catchall_23

    goto :goto_18

    :cond_4f
    move-object v0, v1

    goto :goto_43
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 116
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->e:Lorg/json/JSONObject;

    if-nez v0, :cond_b

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/k/a;->e:Lorg/json/JSONObject;

    .line 119
    :cond_b
    sget-object v1, Lcom/ss/android/socialbase/downloader/k/a;->e:Lorg/json/JSONObject;

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13} :catch_16

    .line 122
    :goto_13
    return-void

    .line 119
    :cond_14
    const/4 v0, 0x0

    goto :goto_10

    .line 120
    :catch_16
    move-exception v0

    goto :goto_13
.end method

.method public static b()Lcom/ss/android/socialbase/downloader/k/a;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->b:Lcom/ss/android/socialbase/downloader/k/a;

    return-object v0
.end method

.method private static b(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/k/a;
    .registers 3

    .prologue
    .line 388
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/k/a;->g:Z

    if-eqz v0, :cond_7

    .line 389
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->b:Lcom/ss/android/socialbase/downloader/k/a;

    .line 400
    :goto_6
    return-object v0

    .line 392
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/c;->M()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 394
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 395
    new-instance v0, Lcom/ss/android/socialbase/downloader/k/a;

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/k/a;-><init>(Lorg/json/JSONObject;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_6

    .line 397
    :catch_1c
    move-exception v0

    .line 398
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 400
    :cond_20
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->b:Lcom/ss/android/socialbase/downloader/k/a;

    goto :goto_6
.end method

.method public static b(I)V
    .registers 4

    .prologue
    .line 364
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->h:Lcom/ss/android/socialbase/downloader/k/a;

    .line 365
    if-eqz v0, :cond_b

    iget v0, v0, Lcom/ss/android/socialbase/downloader/k/a;->l:I

    if-ne v0, p0, :cond_b

    .line 366
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/k/a;->h:Lcom/ss/android/socialbase/downloader/k/a;

    .line 368
    :cond_b
    sget-object v1, Lcom/ss/android/socialbase/downloader/k/a;->a:Lcom/ss/android/socialbase/downloader/m/h;

    monitor-enter v1

    .line 369
    :try_start_e
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->a:Lcom/ss/android/socialbase/downloader/m/h;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/m/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    monitor-exit v1

    .line 371
    return-void

    .line 370
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private static c(I)Lcom/ss/android/socialbase/downloader/k/a;
    .registers 2

    .prologue
    .line 374
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/k/a;->g:Z

    if-eqz v0, :cond_7

    .line 375
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->b:Lcom/ss/android/socialbase/downloader/k/a;

    .line 384
    :goto_6
    return-object v0

    .line 377
    :cond_7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_1c

    .line 379
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_1c

    .line 381
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->b(Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    goto :goto_6

    .line 384
    :cond_1c
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->b:Lcom/ss/android/socialbase/downloader/k/a;

    goto :goto_6
.end method

.method public static f(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    sget-object v2, Lcom/ss/android/socialbase/downloader/k/a;->d:Lorg/json/JSONObject;

    if-eqz v2, :cond_f

    sget-object v2, Lcom/ss/android/socialbase/downloader/k/a;->d:Lorg/json/JSONObject;

    .line 308
    invoke-virtual {v2, p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_f

    .line 311
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method


# virtual methods
.method public a(Ljava/lang/String;D)D
    .registers 6

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 248
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 250
    :goto_18
    return-wide v0

    :cond_19
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    goto :goto_18
.end method

.method public a(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 226
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 228
    :goto_18
    return v0

    :cond_19
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_18
.end method

.method public a(Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 237
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 239
    :goto_18
    return-wide v0

    :cond_19
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_18
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 270
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_18
    return-object v0

    :cond_19
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/k/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/k/a;->c(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Z)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 201
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_2f

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 202
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->j:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 203
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/k/a;->j:Lorg/json/JSONObject;

    if-eqz p2, :cond_20

    move v0, v1

    :goto_19
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_22

    .line 217
    :cond_1f
    :goto_1f
    return v1

    :cond_20
    move v0, v2

    .line 203
    goto :goto_19

    :cond_22
    move v1, v2

    goto :goto_1f

    .line 205
    :cond_24
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_2f

    .line 206
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1f

    .line 209
    :cond_2f
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->e:Lorg/json/JSONObject;

    if-eqz v0, :cond_55

    .line 210
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 211
    sget-object v3, Lcom/ss/android/socialbase/downloader/k/a;->e:Lorg/json/JSONObject;

    if-eqz p2, :cond_48

    move v0, v1

    :goto_40
    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1f

    move v1, v2

    goto :goto_1f

    :cond_48
    move v0, v2

    goto :goto_40

    .line 213
    :cond_4a
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_55

    .line 214
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1f

    :cond_55
    move v1, p2

    .line 217
    goto :goto_1f
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 265
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 259
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 261
    :goto_18
    return v0

    :cond_19
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_18
.end method

.method public d(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 277
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 279
    :goto_18
    return-object v0

    :cond_19
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_18
.end method

.method public e(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/k/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 284
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/k/a;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 286
    :goto_18
    return-object v0

    :cond_19
    sget-object v0, Lcom/ss/android/socialbase/downloader/k/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_18
.end method
