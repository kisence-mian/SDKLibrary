.class public Lcom/ss/android/downloadlib/addownload/b/d;
.super Ljava/lang/Object;
.source "InstalledAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/b/d$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/ss/android/downloadlib/addownload/b/d;

.field private static final c:[Ljava/lang/String;

.field private static final d:[I


# instance fields
.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/ss/android/downloadlib/addownload/b/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 26
    const-string v0, "com"

    const-string v1, "android"

    const-string v2, "ss"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/addownload/b/d;->c:[Ljava/lang/String;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/ss/android/downloadlib/addownload/b/d;->d:[I

    return-void

    nop

    :array_16
    .array-data 4
        0xc1d
        0xc1e
        0xc1f
        0xc81
        0xc82
        0xc83
    .end array-data
.end method

.method private constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/d;->b:Ljava/util/LinkedList;

    .line 58
    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/b/d;
    .registers 2

    .line 61
    sget-object v0, Lcom/ss/android/downloadlib/addownload/b/d;->a:Lcom/ss/android/downloadlib/addownload/b/d;

    if-nez v0, :cond_17

    .line 62
    const-class v0, Lcom/ss/android/downloadlib/addownload/b/d;

    monitor-enter v0

    .line 63
    :try_start_7
    sget-object v1, Lcom/ss/android/downloadlib/addownload/b/d;->a:Lcom/ss/android/downloadlib/addownload/b/d;

    if-nez v1, :cond_12

    .line 64
    new-instance v1, Lcom/ss/android/downloadlib/addownload/b/d;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/addownload/b/d;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/addownload/b/d;->a:Lcom/ss/android/downloadlib/addownload/b/d;

    .line 66
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 68
    :cond_17
    :goto_17
    sget-object v0, Lcom/ss/android/downloadlib/addownload/b/d;->a:Lcom/ss/android/downloadlib/addownload/b/d;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    .line 345
    const-string v0, "\\."

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 346
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 347
    array-length v0, p0

    if-eqz v0, :cond_62

    array-length v0, p1

    if-nez v0, :cond_12

    goto :goto_62

    .line 350
    :cond_12
    nop

    .line 351
    nop

    .line 354
    array-length v0, p0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_18
    if-ge v2, v0, :cond_61

    aget-object v5, p0, v2

    .line 355
    nop

    .line 356
    sget-object v6, Lcom/ss/android/downloadlib/addownload/b/d;->c:[Ljava/lang/String;

    array-length v7, v6

    move v8, v1

    :goto_21
    const/4 v9, 0x1

    if-ge v8, v7, :cond_3f

    aget-object v10, v6, v8

    .line 357
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 358
    array-length v6, p1

    if-ge v3, v6, :cond_39

    aget-object v6, p1, v3

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 359
    add-int/lit8 v3, v3, 0x1

    .line 361
    :cond_39
    nop

    .line 362
    move v6, v9

    goto :goto_40

    .line 356
    :cond_3c
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    :cond_3f
    move v6, v1

    .line 365
    :goto_40
    if-nez v6, :cond_5e

    .line 366
    move v6, v4

    move v4, v3

    :goto_44
    array-length v7, p1

    if-ge v3, v7, :cond_5c

    .line 367
    aget-object v7, p1, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_63

    if-eqz v7, :cond_59

    .line 368
    if-ne v3, v4, :cond_53

    .line 369
    add-int/lit8 v4, v4, 0x1

    .line 371
    :cond_53
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x2

    if-lt v6, v7, :cond_59

    .line 372
    return v9

    .line 366
    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_5c
    move v3, v4

    move v4, v6

    .line 354
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 380
    :cond_61
    goto :goto_67

    .line 348
    :cond_62
    :goto_62
    return v1

    .line 378
    :catchall_63
    move-exception p0

    .line 379
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    :goto_67
    return v1
.end method

.method private b()V
    .registers 9

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 303
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/d;->b:Ljava/util/LinkedList;

    monitor-enter v2

    .line 304
    :try_start_7
    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/b/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 305
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 306
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/downloadlib/addownload/b/d$a;

    .line 307
    iget-wide v4, v4, Lcom/ss/android/downloadlib/addownload/b/d$a;->e:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-lez v4, :cond_28

    .line 309
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 314
    goto :goto_d

    .line 315
    :cond_28
    monitor-exit v2

    .line 316
    return-void

    .line 315
    :catchall_2a
    move-exception v0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method private c(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/d$a;
    .registers 13

    .line 321
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_29

    .line 324
    new-instance v10, Lcom/ss/android/downloadlib/addownload/b/d$a;

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v9, 0x0

    move-object v2, v10

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/ss/android/downloadlib/addownload/b/d$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcom/ss/android/downloadlib/addownload/b/d$1;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_2a

    .line 324
    return-object v10

    .line 330
    :cond_29
    goto :goto_2e

    .line 328
    :catchall_2a
    move-exception p1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 331
    :goto_2e
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcom/ss/android/downloadad/a/b/b;)Lcom/ss/android/downloadlib/addownload/b/d$a;
    .registers 10

    .line 137
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 138
    return-object v0

    .line 140
    :cond_4
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/b/d;->b()V

    .line 141
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/d;->b:Ljava/util/LinkedList;

    monitor-enter v1

    .line 142
    :try_start_a
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/b/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 143
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/downloadlib/addownload/b/d$a;

    .line 145
    iget-wide v4, v3, Lcom/ss/android/downloadlib/addownload/b/d$a;->e:J

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/b/b;->B()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_28

    .line 147
    monitor-exit v1

    return-object v3

    .line 149
    :cond_28
    goto :goto_10

    .line 150
    :cond_29
    monitor-exit v1

    .line 151
    return-object v0

    .line 150
    :catchall_2b
    move-exception p1

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/b/d;->b()V

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 74
    return-void

    .line 76
    :cond_a
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/b/d;->c(Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/d$a;

    move-result-object p1

    .line 77
    if-eqz p1, :cond_1d

    .line 78
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/d;->b:Ljava/util/LinkedList;

    monitor-enter v0

    .line 79
    :try_start_13
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw p1

    .line 82
    :cond_1d
    :goto_1d
    return-void
.end method

.method public b(Lcom/ss/android/downloadad/a/b/b;)Landroid/util/Pair;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/downloadad/a/b/b;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/ss/android/downloadlib/addownload/b/d$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 160
    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-nez p1, :cond_6

    .line 161
    return-object v2

    .line 164
    :cond_6
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/downloadlib/addownload/b/d;->b()V

    .line 165
    iget-object v0, v1, Lcom/ss/android/downloadlib/addownload/b/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 166
    return-object v2

    .line 169
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/b/b;->M()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/b/b;->e()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/b/b;->I()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/b/b;->H()I

    move-result v5

    .line 174
    nop

    .line 179
    sget-object v6, Lcom/ss/android/downloadlib/addownload/b/d;->d:[I

    array-length v6, v6

    new-array v7, v6, [Lcom/ss/android/downloadlib/addownload/b/d$a;

    .line 181
    iget-object v8, v1, Lcom/ss/android/downloadlib/addownload/b/d;->b:Ljava/util/LinkedList;

    monitor-enter v8
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_160

    .line 182
    :try_start_2b
    iget-object v9, v1, Lcom/ss/android/downloadlib/addownload/b/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v0

    move-object v0, v2

    .line 183
    :goto_36
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_141

    .line 184
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ss/android/downloadlib/addownload/b/d$a;

    .line 185
    iget-wide v13, v11, Lcom/ss/android/downloadlib/addownload/b/d$a;->e:J

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/downloadad/a/b/b;->B()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gez v13, :cond_4e

    .line 187
    goto :goto_36

    .line 190
    :cond_4e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_74

    .line 191
    if-nez v0, :cond_5c

    .line 192
    invoke-static/range {p1 .. p1}, Lcom/ss/android/downloadlib/h/k;->a(Lcom/ss/android/downloadad/a/b/b;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_5a
    .catchall {:try_start_2b .. :try_end_5a} :catchall_15d

    move-object v13, v0

    goto :goto_5d

    .line 191
    :cond_5c
    move-object v13, v0

    .line 194
    :goto_5d
    if-eqz v13, :cond_73

    .line 196
    :try_start_5f
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_72

    .line 199
    move-object v3, v0

    move-object v0, v13

    goto :goto_74

    .line 197
    :catchall_72
    move-exception v0

    .line 202
    :cond_73
    move-object v0, v13

    :cond_74
    :goto_74
    :try_start_74
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a7

    iget-object v13, v11, Lcom/ss/android/downloadlib/addownload/b/d$a;->d:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a7

    .line 203
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 205
    iget-object v13, v11, Lcom/ss/android/downloadlib/addownload/b/d$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_92

    .line 207
    aput-object v11, v7, v12

    .line 208
    goto/16 :goto_141

    .line 210
    :cond_92
    iget-object v13, v11, Lcom/ss/android/downloadlib/addownload/b/d$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a2

    iget-object v13, v11, Lcom/ss/android/downloadlib/addownload/b/d$a;->d:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a7

    .line 212
    :cond_a2
    const/4 v0, 0x1

    aput-object v11, v7, v0

    .line 213
    goto/16 :goto_141

    .line 217
    :cond_a7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_b7

    .line 218
    if-nez v0, :cond_b3

    .line 219
    invoke-static/range {p1 .. p1}, Lcom/ss/android/downloadlib/h/k;->a(Lcom/ss/android/downloadad/a/b/b;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 221
    :cond_b3
    if-eqz v0, :cond_b7

    .line 222
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 225
    :cond_b7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_f1

    iget-object v13, v11, Lcom/ss/android/downloadlib/addownload/b/d$a;->a:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_f1

    .line 226
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 227
    iget-object v13, v11, Lcom/ss/android/downloadlib/addownload/b/d$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_ed

    iget-object v13, v11, Lcom/ss/android/downloadlib/addownload/b/d$a;->a:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_da

    goto :goto_ed

    .line 234
    :cond_da
    const/4 v12, 0x3

    aget-object v13, v7, v12

    if-eqz v13, :cond_e1

    .line 235
    goto/16 :goto_36

    .line 237
    :cond_e1
    iget-object v13, v11, Lcom/ss/android/downloadlib/addownload/b/d$a;->a:Ljava/lang/String;

    invoke-static {v4, v13}, Lcom/ss/android/downloadlib/addownload/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f1

    .line 239
    aput-object v11, v7, v12

    .line 240
    goto/16 :goto_36

    .line 229
    :cond_ed
    :goto_ed
    const/4 v0, 0x2

    aput-object v11, v7, v0

    .line 230
    goto :goto_141

    .line 244
    :cond_f1
    const/4 v12, 0x4

    aget-object v13, v7, v12

    if-eqz v13, :cond_f8

    .line 245
    goto/16 :goto_36

    .line 248
    :cond_f8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_108

    .line 249
    if-nez v0, :cond_104

    .line 250
    invoke-static/range {p1 .. p1}, Lcom/ss/android/downloadlib/h/k;->a(Lcom/ss/android/downloadad/a/b/b;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 252
    :cond_104
    if-eqz v0, :cond_108

    .line 253
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 256
    :cond_108
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_126

    iget-object v13, v11, Lcom/ss/android/downloadlib/addownload/b/d$a;->c:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_126

    .line 257
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 258
    iget-object v13, v11, Lcom/ss/android/downloadlib/addownload/b/d$a;->c:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_126

    .line 260
    aput-object v11, v7, v12

    .line 261
    goto/16 :goto_36

    .line 266
    :cond_126
    const/4 v12, 0x5

    aget-object v13, v7, v12

    if-eqz v13, :cond_12d

    .line 267
    goto/16 :goto_36

    .line 270
    :cond_12d
    if-gtz v10, :cond_139

    .line 271
    if-nez v0, :cond_135

    .line 272
    invoke-static/range {p1 .. p1}, Lcom/ss/android/downloadlib/h/k;->a(Lcom/ss/android/downloadad/a/b/b;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 274
    :cond_135
    if-eqz v0, :cond_139

    .line 275
    iget v10, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 278
    :cond_139
    iget v13, v11, Lcom/ss/android/downloadlib/addownload/b/d$a;->b:I

    if-ne v10, v13, :cond_13f

    .line 280
    aput-object v11, v7, v12

    .line 282
    :cond_13f
    goto/16 :goto_36

    .line 283
    :cond_141
    :goto_141
    monitor-exit v8
    :try_end_142
    .catchall {:try_start_74 .. :try_end_142} :catchall_15d

    .line 285
    nop

    :goto_143
    if-ge v12, v6, :cond_15c

    .line 286
    :try_start_145
    aget-object v0, v7, v12

    if-eqz v0, :cond_159

    .line 287
    new-instance v0, Landroid/util/Pair;

    aget-object v3, v7, v12

    sget-object v4, Lcom/ss/android/downloadlib/addownload/b/d;->d:[I

    aget v4, v4, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_158
    .catchall {:try_start_145 .. :try_end_158} :catchall_160

    return-object v0

    .line 285
    :cond_159
    add-int/lit8 v12, v12, 0x1

    goto :goto_143

    .line 292
    :cond_15c
    goto :goto_164

    .line 283
    :catchall_15d
    move-exception v0

    :try_start_15e
    monitor-exit v8
    :try_end_15f
    .catchall {:try_start_15e .. :try_end_15f} :catchall_15d

    :try_start_15f
    throw v0
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_160

    .line 290
    :catchall_160
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 294
    :goto_164
    return-object v2
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .line 116
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/b/d;->b()V

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 118
    return-void

    .line 120
    :cond_a
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/d;->b:Ljava/util/LinkedList;

    monitor-enter v0

    .line 121
    :try_start_d
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/b/d;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 122
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/downloadlib/addownload/b/d$a;

    .line 124
    iget-object v2, v2, Lcom/ss/android/downloadlib/addownload/b/d$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 126
    monitor-exit v0

    return-void

    .line 128
    :cond_2c
    goto :goto_13

    .line 129
    :cond_2d
    monitor-exit v0

    .line 131
    return-void

    .line 129
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_2f

    throw p1
.end method
