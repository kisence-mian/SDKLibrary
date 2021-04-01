.class public Lcom/mintegral/msdk/base/b/p;
.super Lcom/mintegral/msdk/base/b/a;
.source "PBInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/out/Campaign;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/mintegral/msdk/base/b/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/mintegral/msdk/base/b/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 19
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/p;
    .registers 3

    .prologue
    .line 22
    sget-object v0, Lcom/mintegral/msdk/base/b/p;->c:Lcom/mintegral/msdk/base/b/p;

    if-nez v0, :cond_13

    .line 23
    const-class v1, Lcom/mintegral/msdk/base/b/p;

    monitor-enter v1

    .line 24
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/p;->c:Lcom/mintegral/msdk/base/b/p;

    if-nez v0, :cond_12

    .line 25
    new-instance v0, Lcom/mintegral/msdk/base/b/p;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/p;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/p;->c:Lcom/mintegral/msdk/base/b/p;

    .line 27
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 29
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/p;->c:Lcom/mintegral/msdk/base/b/p;

    return-object v0

    .line 27
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 118
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT package_name FROM pbinfo WHERE package_name=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/p;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_2e

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2e

    .line 121
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2b} :catch_34
    .catchall {:try_start_2 .. :try_end_2b} :catchall_3f

    .line 122
    const/4 v0, 0x1

    .line 132
    :cond_2c
    :goto_2c
    monitor-exit p0

    return v0

    .line 124
    :cond_2e
    if-eqz v1, :cond_2c

    .line 125
    :try_start_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_3f

    goto :goto_2c

    .line 129
    :catch_34
    move-exception v1

    .line 130
    :try_start_35
    sget-object v2, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3f

    goto :goto_2c

    .line 118
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e()Ljava/lang/String;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/m;Ljava/lang/String;)J
    .registers 10

    .prologue
    const-wide/16 v0, -0x1

    .line 64
    monitor-enter p0

    if-nez p1, :cond_9

    .line 65
    const-wide/16 v0, 0x0

    .line 85
    :cond_7
    :goto_7
    monitor-exit p0

    return-wide v0

    .line 67
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/p;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 70
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 71
    const-string v3, "package_name"

    iget-object v4, p1, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, "report"

    iget-object v4, p1, Lcom/mintegral/msdk/base/entity/m;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v3, "uuid"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v3, p1, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mintegral/msdk/base/b/p;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 75
    sget-object v3, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertOrUpdate update:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/p;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "pbinfo"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_7

    .line 79
    :cond_69
    sget-object v3, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertOrUpdate insert:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/p;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "pbinfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_89} :catch_8c
    .catchall {:try_start_9 .. :try_end_89} :catchall_98

    move-result-wide v0

    goto/16 :goto_7

    .line 82
    :catch_8c
    move-exception v2

    .line 83
    :try_start_8d
    sget-object v3, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_98

    goto/16 :goto_7

    .line 64
    :catchall_98
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package_name = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/p;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_19} :catch_3d
    .catchall {:try_start_1 .. :try_end_19} :catchall_48

    move-result-object v1

    if-nez v1, :cond_1e

    .line 55
    :goto_1c
    monitor-exit p0

    return-void

    .line 50
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/p;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "pbinfo"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    sget-object v0, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteByPKG\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_3c} :catch_3d
    .catchall {:try_start_1e .. :try_end_3c} :catchall_48

    goto :goto_1c

    .line 52
    :catch_3d
    move-exception v0

    .line 53
    :try_start_3e
    sget-object v1, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_48

    goto :goto_1c

    .line 46
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/m;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    .line 95
    :cond_9
    sget-object v0, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    const-string v1, "insertOrUpdate size\u4e3a\u7a7a return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_20

    .line 108
    :goto_10
    monitor-exit p0

    return-void

    .line 99
    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/base/b/p$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/base/b/p$1;-><init>(Lcom/mintegral/msdk/base/b/p;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_20

    goto :goto_10

    .line 94
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .registers 5

    .prologue
    .line 34
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/p;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_1c
    .catchall {:try_start_1 .. :try_end_4} :catchall_27

    move-result-object v0

    if-nez v0, :cond_9

    .line 42
    :goto_7
    monitor-exit p0

    return-void

    .line 37
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/p;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "pbinfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 38
    sget-object v0, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    const-string v1, "deleteAll"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1b} :catch_1c
    .catchall {:try_start_9 .. :try_end_1b} :catchall_27

    goto :goto_7

    .line 39
    :catch_1c
    move-exception v0

    .line 40
    :try_start_1d
    sget-object v1, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_27

    goto :goto_7

    .line 34
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/m;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 139
    monitor-enter p0

    .line 143
    :try_start_2
    const-string v0, "SELECT * FROM pbinfo"

    .line 144
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/p;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c} :catch_d4
    .catchall {:try_start_2 .. :try_end_c} :catchall_bc

    move-result-object v3

    .line 145
    if-eqz v3, :cond_dd

    :try_start_f
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_dd

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1a} :catch_d8
    .catchall {:try_start_f .. :try_end_1a} :catchall_cf

    .line 147
    :goto_1a
    :try_start_1a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 148
    new-instance v0, Lcom/mintegral/msdk/base/entity/m;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/m;-><init>()V

    .line 149
    const-string v2, "package_name"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    .line 150
    const-string v2, "report"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mintegral/msdk/base/entity/m;->c:Ljava/lang/String;

    .line 151
    const-string v2, "uuid"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mintegral/msdk/base/entity/m;->b:Ljava/lang/String;

    .line 152
    sget-object v2, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAllPBInfo pb\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/m;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uuid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mintegral/msdk/base/entity/m;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_6e} :catch_6f
    .catchall {:try_start_1a .. :try_end_6e} :catchall_cf

    goto :goto_1a

    .line 157
    :catch_6f
    move-exception v0

    move-object v2, v3

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 158
    :goto_74
    :try_start_74
    sget-object v3, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_d1

    .line 161
    if-eqz v2, :cond_82

    .line 162
    :try_start_7f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_82} :catch_b1
    .catchall {:try_start_7f .. :try_end_82} :catchall_ae

    .line 168
    :cond_82
    :goto_82
    monitor-exit p0

    return-object v0

    .line 155
    :cond_84
    :try_start_84
    sget-object v0, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getAllPBInfo lis.size:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_9c} :catch_6f
    .catchall {:try_start_84 .. :try_end_9c} :catchall_cf

    move-object v0, v1

    .line 161
    :goto_9d
    if-eqz v3, :cond_82

    .line 162
    :try_start_9f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_a3
    .catchall {:try_start_9f .. :try_end_a2} :catchall_ae

    goto :goto_82

    .line 164
    :catch_a3
    move-exception v1

    .line 165
    :try_start_a4
    sget-object v2, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ad
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_ae

    goto :goto_82

    .line 139
    :catchall_ae
    move-exception v0

    monitor-exit p0

    throw v0

    .line 164
    :catch_b1
    move-exception v1

    .line 165
    :try_start_b2
    sget-object v2, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bb
    .catchall {:try_start_b2 .. :try_end_bb} :catchall_ae

    goto :goto_82

    .line 160
    :catchall_bc
    move-exception v0

    move-object v3, v2

    .line 161
    :goto_be
    if-eqz v3, :cond_c3

    .line 162
    :try_start_c0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c3} :catch_c4
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_ae

    .line 166
    :cond_c3
    :goto_c3
    :try_start_c3
    throw v0

    .line 164
    :catch_c4
    move-exception v1

    .line 165
    sget-object v2, Lcom/mintegral/msdk/base/b/p;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ce
    .catchall {:try_start_c3 .. :try_end_ce} :catchall_ae

    goto :goto_c3

    .line 160
    :catchall_cf
    move-exception v0

    goto :goto_be

    :catchall_d1
    move-exception v0

    move-object v3, v2

    goto :goto_be

    .line 157
    :catch_d4
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_74

    :catch_d8
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_74

    :cond_dd
    move-object v0, v2

    goto :goto_9d
.end method
