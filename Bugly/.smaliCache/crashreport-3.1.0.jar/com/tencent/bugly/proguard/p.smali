.class public final Lcom/tencent/bugly/proguard/p;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/p$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/bugly/proguard/p;

.field private static b:Lcom/tencent/bugly/proguard/q;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    .line 30
    sput-object v0, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/proguard/p;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/tencent/bugly/proguard/q;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/proguard/q;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/p;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)I
    .registers 5

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)I

    move-result p0

    return p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)I
    .registers 7

    monitor-enter p0

    .line 212
    nop

    .line 213
    nop

    .line 215
    const/4 v0, 0x0

    :try_start_4
    sget-object v1, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_10

    .line 217
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    .line 224
    :cond_10
    if-eqz p4, :cond_18

    .line 225
    :try_start_12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_18

    .line 211
    :catchall_16
    move-exception p1

    goto :goto_32

    .line 227
    :cond_18
    :goto_18
    goto :goto_29

    .line 228
    :catchall_19
    move-exception p1

    .line 220
    :try_start_1a
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 221
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2b

    .line 224
    :cond_23
    if-eqz p4, :cond_18

    .line 225
    :try_start_25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_16

    goto :goto_18

    .line 231
    :goto_29
    monitor-exit p0

    return v0

    .line 228
    :catchall_2b
    move-exception p1

    if-eqz p4, :cond_31

    .line 225
    :try_start_2e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    :cond_31
    throw p1
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_16

    .line 211
    :goto_32
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/p;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;)J
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;)J

    move-result-wide p0

    return-wide p0
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;)J
    .registers 10

    monitor-enter p0

    .line 157
    nop

    .line 158
    nop

    .line 160
    const-wide/16 v0, 0x0

    :try_start_5
    sget-object v2, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_2f

    if-eqz p2, :cond_2f

    .line 162
    const-string v3, "_id"

    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 163
    cmp-long p2, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz p2, :cond_25

    .line 164
    const-string p2, "[Database] insert %s success."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {p2, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2e

    .line 166
    :cond_25
    const-string p2, "[Database] replace %s error."

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {p2, v5}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_38

    .line 168
    :goto_2e
    move-wide v0, v2

    .line 175
    :cond_2f
    if-eqz p3, :cond_37

    .line 176
    :try_start_31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_37

    .line 156
    :catchall_35
    move-exception p1

    goto :goto_51

    .line 178
    :cond_37
    :goto_37
    goto :goto_48

    .line 179
    :catchall_38
    move-exception p1

    .line 171
    :try_start_39
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_42

    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_4a

    .line 175
    :cond_42
    if-eqz p3, :cond_37

    .line 176
    :try_start_44
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_35

    goto :goto_37

    .line 182
    :goto_48
    monitor-exit p0

    return-wide v0

    .line 179
    :catchall_4a
    move-exception p1

    if-eqz p3, :cond_50

    .line 176
    :try_start_4d
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    :cond_50
    throw p1
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_35

    .line 156
    :goto_51
    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/p;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)Landroid/database/Cursor;
    .registers 11

    .line 28
    invoke-direct/range {p0 .. p10}, Lcom/tencent/bugly/proguard/p;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)Landroid/database/Cursor;
    .registers 23

    monitor-enter p0

    .line 188
    nop

    .line 189
    nop

    .line 191
    const/4 v1, 0x0

    :try_start_4
    sget-object v0, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 192
    if-eqz v2, :cond_1f

    .line 193
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_21

    .line 202
    :cond_1f
    :goto_1f
    nop

    .line 203
    goto :goto_2c

    .line 197
    :catchall_21
    move-exception v0

    .line 198
    :try_start_22
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 199
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2e

    goto :goto_1f

    .line 206
    :goto_2c
    monitor-exit p0

    return-object v1

    .line 202
    :catchall_2e
    move-exception v0

    .line 203
    :try_start_2f
    throw v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 187
    :catchall_30
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/p;
    .registers 2

    const-class v0, Lcom/tencent/bugly/proguard/p;

    monitor-enter v0

    .line 54
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    .line 54
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/p;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/a;",
            ">;)",
            "Lcom/tencent/bugly/proguard/p;"
        }
    .end annotation

    const-class v0, Lcom/tencent/bugly/proguard/p;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    if-nez v1, :cond_e

    .line 48
    new-instance v1, Lcom/tencent/bugly/proguard/p;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/proguard/p;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v1, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    .line 50
    :cond_e
    sget-object p0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 46
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/r;
    .registers 5

    .line 571
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 572
    return-object v0

    .line 575
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/bugly/proguard/r;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/r;-><init>()V

    .line 576
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/r;->a:J

    .line 577
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/proguard/r;->b:I

    .line 578
    const-string v2, "_pc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/r;->c:Ljava/lang/String;

    .line 579
    const-string v2, "_th"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/r;->d:Ljava/lang/String;

    .line 580
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/r;->e:J

    .line 581
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/bugly/proguard/r;->g:[B
    :try_end_51
    .catchall {:try_start_4 .. :try_end_51} :catchall_52

    .line 582
    return-object v1

    .line 583
    :catchall_52
    move-exception p0

    .line 584
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 585
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 588
    :cond_5c
    return-object v0
.end method

.method private a(ILcom/tencent/bugly/proguard/o;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/proguard/o;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 317
    nop

    .line 319
    const/4 p2, 0x0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/p;->c(I)Ljava/util/List;

    move-result-object p1

    .line 320
    if-eqz p1, :cond_2c

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_2e

    .line 322
    :try_start_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/bugly/proguard/r;

    .line 323
    iget-object v1, p2, Lcom/tencent/bugly/proguard/r;->g:[B

    .line 324
    if-eqz v1, :cond_26

    .line 325
    iget-object p2, p2, Lcom/tencent/bugly/proguard/r;->f:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_29

    .line 327
    :cond_26
    goto :goto_11

    .line 322
    :cond_27
    move-object p2, v0

    goto :goto_2c

    .line 329
    :catchall_29
    move-exception p1

    move-object p2, v0

    goto :goto_2f

    .line 334
    :cond_2c
    :goto_2c
    nop

    .line 335
    goto :goto_39

    .line 329
    :catchall_2e
    move-exception p1

    .line 330
    :goto_2f
    :try_start_2f
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 331
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_3a

    goto :goto_2c

    .line 338
    :goto_39
    return-object p2

    .line 334
    :catchall_3a
    move-exception p1

    .line 335
    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/p;ILcom/tencent/bugly/proguard/o;)Ljava/util/Map;
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/p;->a(ILcom/tencent/bugly/proguard/o;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(ILjava/lang/String;Lcom/tencent/bugly/proguard/o;)Z
    .registers 8

    monitor-enter p0

    .line 658
    nop

    .line 659
    nop

    .line 661
    const/4 v0, 0x0

    :try_start_4
    sget-object v1, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 662
    if-eqz v1, :cond_64

    .line 664
    invoke-static {p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 665
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "_id = "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_47

    .line 667
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " and _tp"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " = \""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 671
    :goto_47
    const-string p2, "t_pf"

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 672
    const-string p2, "[Database] deleted %s data %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "t_pf"

    aput-object v2, v1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_61
    .catchall {:try_start_4 .. :try_end_61} :catchall_6d

    .line 673
    if-lez p1, :cond_64

    move v0, v3

    .line 680
    :cond_64
    if-eqz p3, :cond_6c

    .line 681
    :try_start_66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6c

    .line 657
    :catchall_6a
    move-exception p1

    goto :goto_86

    .line 683
    :cond_6c
    :goto_6c
    goto :goto_7d

    .line 684
    :catchall_6d
    move-exception p1

    .line 676
    :try_start_6e
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_77

    .line 677
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_7f

    .line 680
    :cond_77
    if-eqz p3, :cond_6c

    .line 681
    :try_start_79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_6a

    goto :goto_6c

    .line 687
    :goto_7d
    monitor-exit p0

    return v0

    .line 684
    :catchall_7f
    move-exception p1

    if-eqz p3, :cond_85

    .line 681
    :try_start_82
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 683
    :cond_85
    throw p1
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_6a

    .line 657
    :goto_86
    monitor-exit p0

    throw p1
.end method

.method private a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;)Z
    .registers 9

    .line 296
    nop

    .line 298
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Lcom/tencent/bugly/proguard/r;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/r;-><init>()V

    .line 299
    int-to-long v2, p1

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/r;->a:J

    .line 300
    iput-object p2, v1, Lcom/tencent/bugly/proguard/r;->f:Ljava/lang/String;

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/tencent/bugly/proguard/r;->e:J

    .line 302
    iput-object p3, v1, Lcom/tencent/bugly/proguard/r;->g:[B

    .line 303
    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/p;->b(Lcom/tencent/bugly/proguard/r;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1e

    .line 309
    if-eqz p4, :cond_2b

    .line 310
    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_2b

    .line 304
    :catchall_1e
    move-exception p1

    .line 305
    :try_start_1f
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_28

    .line 306
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2c

    .line 309
    :cond_28
    if-eqz p4, :cond_2b

    .line 310
    goto :goto_1a

    .line 313
    :cond_2b
    :goto_2b
    return v0

    .line 309
    :catchall_2c
    move-exception p1

    if-eqz p4, :cond_32

    .line 310
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_32
    throw p1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/p;ILjava/lang/String;Lcom/tencent/bugly/proguard/o;)Z
    .registers 4

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/o;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/p;ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;)Z
    .registers 5

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/r;
    .registers 5

    .line 721
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 722
    return-object v0

    .line 725
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/bugly/proguard/r;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/r;-><init>()V

    .line 726
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/r;->a:J

    .line 727
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/r;->e:J

    .line 728
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/r;->f:Ljava/lang/String;

    .line 729
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    iput-object p0, v1, Lcom/tencent/bugly/proguard/r;->g:[B
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_3a

    .line 730
    return-object v1

    .line 731
    :catchall_3a
    move-exception p0

    .line 732
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 733
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 736
    :cond_44
    return-object v0
.end method

.method private declared-synchronized b(Lcom/tencent/bugly/proguard/r;)Z
    .registers 9

    monitor-enter p0

    .line 385
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 386
    monitor-exit p0

    return v0

    .line 388
    :cond_6
    nop

    .line 390
    :try_start_7
    sget-object v1, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_35

    .line 392
    invoke-static {p1}, Lcom/tencent/bugly/proguard/p;->d(Lcom/tencent/bugly/proguard/r;)Landroid/content/ContentValues;

    move-result-object v2

    .line 393
    if-eqz v2, :cond_35

    .line 394
    const-string v3, "t_pf"

    const-string v4, "_id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 395
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_33

    .line 396
    const-string v3, "[Database] insert %s success."

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "t_pf"

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 397
    iput-wide v1, p1, Lcom/tencent/bugly/proguard/r;->a:J
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_37

    .line 398
    monitor-exit p0

    return v4

    .line 400
    :cond_33
    monitor-exit p0

    return v0

    .line 404
    :cond_35
    monitor-exit p0

    return v0

    .line 405
    :catchall_37
    move-exception p1

    .line 406
    :try_start_38
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 407
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_43

    .line 409
    :cond_41
    monitor-exit p0

    return v0

    .line 411
    :catchall_43
    move-exception p1

    .line 412
    :try_start_44
    throw p1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    .line 384
    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static c(Lcom/tencent/bugly/proguard/r;)Landroid/content/ContentValues;
    .registers 7

    .line 542
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 543
    return-object v0

    .line 547
    :cond_4
    :try_start_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 548
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/r;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    .line 549
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/r;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 551
    :cond_1c
    const-string v2, "_tp"

    iget v3, p0, Lcom/tencent/bugly/proguard/r;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/r;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v2, "_th"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/r;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 555
    iget-object v2, p0, Lcom/tencent/bugly/proguard/r;->g:[B

    if-eqz v2, :cond_4b

    .line 556
    const-string v2, "_dt"

    iget-object p0, p0, Lcom/tencent/bugly/proguard/r;->g:[B

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_4c

    .line 558
    :cond_4b
    return-object v1

    .line 559
    :catchall_4c
    move-exception p0

    .line 560
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 561
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 564
    :cond_56
    return-object v0
.end method

.method private declared-synchronized c(I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/r;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 598
    nop

    .line 599
    nop

    .line 601
    const/4 v0, 0x0

    :try_start_4
    sget-object v1, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 602
    if-eqz v1, :cond_ac

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 604
    const-string v3, "t_pf"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move-object v5, v10

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_ad

    .line 606
    if-nez v2, :cond_31

    .line 607
    if-eqz v2, :cond_2f

    .line 642
    :try_start_2c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_c7

    .line 644
    :cond_2f
    monitor-exit p0

    return-object v0

    .line 610
    :cond_31
    :try_start_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 612
    :goto_3b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6f

    .line 613
    invoke-static {v2}, Lcom/tencent/bugly/proguard/p;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/r;

    move-result-object v5

    .line 614
    if-eqz v5, :cond_4c

    .line 615
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_aa

    goto :goto_3b

    .line 619
    :cond_4c
    :try_start_4c
    const-string v5, "_tp"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 620
    const-string v7, " or _tp"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_65
    .catchall {:try_start_4c .. :try_end_65} :catchall_66

    .line 623
    goto :goto_3b

    .line 621
    :catchall_66
    move-exception v5

    .line 622
    :try_start_67
    const-string v5, "[Database] unknown id."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 625
    goto :goto_3b

    .line 628
    :cond_6f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_a2

    .line 629
    const-string v5, " and _id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    const/4 p1, 0x4

    invoke-virtual {v10, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 631
    const-string v3, "t_pf"

    invoke-virtual {v1, v3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 632
    const-string v1, "[Database] deleted %s illegal data %d."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "t_pf"

    aput-object v5, v3, v6

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_a2
    .catchall {:try_start_67 .. :try_end_a2} :catchall_aa

    .line 634
    :cond_a2
    nop

    .line 641
    if-eqz v2, :cond_a8

    .line 642
    :try_start_a5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_c7

    .line 644
    :cond_a8
    monitor-exit p0

    return-object v4

    .line 645
    :catchall_aa
    move-exception p1

    goto :goto_af

    .line 641
    :cond_ac
    goto :goto_be

    .line 645
    :catchall_ad
    move-exception p1

    move-object v2, v0

    .line 637
    :goto_af
    :try_start_af
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_b8

    .line 638
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_af .. :try_end_b8} :catchall_c0

    .line 641
    :cond_b8
    if-eqz v2, :cond_bd

    .line 642
    :try_start_ba
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_c7

    .line 644
    :cond_bd
    nop

    .line 648
    :goto_be
    monitor-exit p0

    return-object v0

    .line 645
    :catchall_c0
    move-exception p1

    if-eqz v2, :cond_c6

    .line 642
    :try_start_c3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_c6
    throw p1
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_c7

    .line 597
    :catchall_c7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static d(Lcom/tencent/bugly/proguard/r;)Landroid/content/ContentValues;
    .registers 7

    .line 694
    const/4 v0, 0x0

    if-eqz p0, :cond_4d

    iget-object v1, p0, Lcom/tencent/bugly/proguard/r;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4d

    .line 699
    :cond_c
    :try_start_c
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 700
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/r;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_24

    .line 701
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/r;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 703
    :cond_24
    const-string v2, "_tp"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/r;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v2, "_tm"

    iget-wide v3, p0, Lcom/tencent/bugly/proguard/r;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 705
    iget-object v2, p0, Lcom/tencent/bugly/proguard/r;->g:[B

    if-eqz v2, :cond_41

    .line 706
    const-string v2, "_dt"

    iget-object p0, p0, Lcom/tencent/bugly/proguard/r;->g:[B

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_42

    .line 708
    :cond_41
    return-object v1

    .line 709
    :catchall_42
    move-exception p0

    .line 710
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 711
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 714
    :cond_4c
    return-object v0

    .line 695
    :cond_4d
    :goto_4d
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)I
    .registers 6

    .line 139
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, p3}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;Z)J
    .registers 5

    .line 68
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)Landroid/database/Cursor;
    .registers 18

    .line 91
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/proguard/p;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/r;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 423
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c2

    .line 424
    const/4 v9, 0x0

    if-eqz v0, :cond_c0

    .line 425
    nop

    .line 427
    if-ltz p1, :cond_22

    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_tp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_23

    .line 461
    :catchall_1e
    move-exception p1

    move-object v0, v9

    goto/16 :goto_aa

    .line 427
    :cond_22
    move-object v4, v9

    .line 428
    :goto_23
    const-string v2, "t_lr"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_1e

    .line 431
    if-nez p1, :cond_38

    .line 432
    if-eqz p1, :cond_36

    .line 467
    :try_start_33
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_c2

    .line 469
    :cond_36
    monitor-exit p0

    return-object v9

    .line 435
    :cond_38
    :try_start_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 437
    :goto_42
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_76

    .line 438
    invoke-static {p1}, Lcom/tencent/bugly/proguard/p;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/r;

    move-result-object v3

    .line 439
    if-eqz v3, :cond_53

    .line 440
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_a6

    goto :goto_42

    .line 444
    :cond_53
    :try_start_53
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 445
    const-string v3, " or _id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_6c
    .catchall {:try_start_53 .. :try_end_6c} :catchall_6d

    .line 449
    goto :goto_42

    .line 447
    :catchall_6d
    move-exception v3

    .line 448
    :try_start_6e
    const-string v3, "[Database] unknown id."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 451
    goto :goto_42

    .line 454
    :cond_76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9e

    .line 456
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 457
    const-string v3, "t_lr"

    invoke-virtual {v0, v3, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 458
    const-string v1, "[Database] deleted %s illegal data %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "t_lr"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_9e
    .catchall {:try_start_6e .. :try_end_9e} :catchall_a6

    .line 460
    :cond_9e
    nop

    .line 466
    if-eqz p1, :cond_a4

    .line 467
    :try_start_a1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_c2

    .line 469
    :cond_a4
    monitor-exit p0

    return-object v2

    .line 461
    :catchall_a6
    move-exception v0

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    .line 462
    :goto_aa
    :try_start_aa
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 463
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b3
    .catchall {:try_start_aa .. :try_end_b3} :catchall_b9

    .line 466
    :cond_b3
    if-eqz v0, :cond_b8

    .line 467
    :try_start_b5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 469
    :cond_b8
    goto :goto_c0

    .line 470
    :catchall_b9
    move-exception p1

    if-eqz v0, :cond_bf

    .line 467
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 469
    :cond_bf
    throw p1
    :try_end_c0
    .catchall {:try_start_b5 .. :try_end_c0} :catchall_c2

    .line 475
    :cond_c0
    :goto_c0
    monitor-exit p0

    return-object v9

    .line 422
    :catchall_c2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(ILcom/tencent/bugly/proguard/o;Z)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/proguard/o;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 264
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/p;->a(ILcom/tencent/bugly/proguard/o;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/r;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 483
    if-eqz p1, :cond_7a

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_7a

    .line 486
    :cond_a
    sget-object v0, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_75

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/r;

    .line 490
    const-string v3, " or _id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/tencent/bugly/proguard/r;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 491
    goto :goto_1b

    .line 493
    :cond_39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_48

    .line 495
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 497
    :cond_48
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_77

    .line 499
    :try_start_4c
    const-string v1, "t_lr"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 500
    const-string v0, "[Database] deleted %s data %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "t_lr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_68

    .line 506
    :cond_66
    :goto_66
    monitor-exit p0

    return-void

    .line 507
    :catchall_68
    move-exception p1

    .line 502
    :try_start_69
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 503
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_73

    goto :goto_66

    .line 507
    :catchall_73
    move-exception p1

    :try_start_74
    throw p1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_77

    .line 511
    :cond_75
    monitor-exit p0

    return-void

    .line 482
    :catchall_77
    move-exception p1

    monitor-exit p0

    throw p1

    .line 484
    :cond_7a
    :goto_7a
    monitor-exit p0

    return-void
.end method

.method public final a(ILjava/lang/String;Lcom/tencent/bugly/proguard/o;Z)Z
    .registers 5

    .line 285
    const/16 p1, 0x22b

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/o;)Z

    move-result p1

    return p1
.end method

.method public final a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;Z)Z
    .registers 7

    .line 243
    const/4 p4, 0x0

    if-nez p5, :cond_15

    .line 244
    new-instance p5, Lcom/tencent/bugly/proguard/p$a;

    const/4 v0, 0x4

    invoke-direct {p5, p0, v0, p4}, Lcom/tencent/bugly/proguard/p$a;-><init>(Lcom/tencent/bugly/proguard/p;ILcom/tencent/bugly/proguard/o;)V

    .line 245
    invoke-virtual {p5, p1, p2, p3}, Lcom/tencent/bugly/proguard/p$a;->a(ILjava/lang/String;[B)V

    .line 246
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    .line 247
    const/4 p1, 0x1

    return p1

    .line 249
    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized a(Lcom/tencent/bugly/proguard/r;)Z
    .registers 9

    monitor-enter p0

    .line 347
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 348
    monitor-exit p0

    return v0

    .line 350
    :cond_6
    nop

    .line 352
    :try_start_7
    sget-object v1, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 353
    if-eqz v1, :cond_35

    .line 354
    invoke-static {p1}, Lcom/tencent/bugly/proguard/p;->c(Lcom/tencent/bugly/proguard/r;)Landroid/content/ContentValues;

    move-result-object v2

    .line 355
    if-eqz v2, :cond_35

    .line 356
    const-string v3, "t_lr"

    const-string v4, "_id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 357
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_33

    .line 358
    const-string v3, "[Database] insert %s success."

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "t_lr"

    aput-object v6, v5, v0

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 359
    iput-wide v1, p1, Lcom/tencent/bugly/proguard/r;->a:J
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_37

    .line 360
    monitor-exit p0

    return v4

    .line 362
    :cond_33
    monitor-exit p0

    return v0

    .line 366
    :cond_35
    monitor-exit p0

    return v0

    .line 367
    :catchall_37
    move-exception p1

    .line 368
    :try_start_38
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 369
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_43

    .line 371
    :cond_41
    monitor-exit p0

    return v0

    .line 373
    :catchall_43
    move-exception p1

    .line 374
    :try_start_44
    throw p1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    .line 346
    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(I)V
    .registers 6

    monitor-enter p0

    .line 519
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_49

    .line 520
    if-eqz v0, :cond_47

    .line 522
    const/4 v1, 0x0

    if-ltz p1, :cond_1e

    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_tp = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    .line 531
    :catchall_1c
    move-exception p1

    goto :goto_3b

    .line 522
    :cond_1e
    move-object p1, v1

    .line 523
    :goto_1f
    const-string v2, "t_lr"

    invoke-virtual {v0, v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 524
    const-string v0, "[Database] deleted %s data %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "t_lr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_1c

    .line 530
    :cond_39
    :goto_39
    monitor-exit p0

    return-void

    .line 526
    :goto_3b
    :try_start_3b
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 527
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_45

    goto :goto_39

    .line 531
    :catchall_45
    move-exception p1

    :try_start_46
    throw p1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_49

    .line 535
    :cond_47
    monitor-exit p0

    return-void

    .line 518
    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method
