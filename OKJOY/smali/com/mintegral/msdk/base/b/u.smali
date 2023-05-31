.class public Lcom/mintegral/msdk/base/b/u;
.super Lcom/mintegral/msdk/base/b/a;
.source "UnitIDDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/base/entity/i;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/mintegral/msdk/base/b/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/b/u;->b:Lcom/mintegral/msdk/base/b/u;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 17
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/u;
    .registers 3

    .prologue
    .line 20
    sget-object v0, Lcom/mintegral/msdk/base/b/u;->b:Lcom/mintegral/msdk/base/b/u;

    if-nez v0, :cond_13

    .line 21
    const-class v1, Lcom/mintegral/msdk/base/b/u;

    monitor-enter v1

    .line 22
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/u;->b:Lcom/mintegral/msdk/base/b/u;

    if-nez v0, :cond_12

    .line 23
    new-instance v0, Lcom/mintegral/msdk/base/b/u;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/u;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/u;->b:Lcom/mintegral/msdk/base/b/u;

    .line 26
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 28
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/u;->b:Lcom/mintegral/msdk/base/b/u;

    return-object v0

    .line 26
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 35
    monitor-enter p0

    .line 36
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select * from unit_id WHERE ad_type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_54

    move-result-object v0

    .line 40
    :try_start_11
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/u;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_64
    .catchall {:try_start_11 .. :try_end_19} :catchall_57

    move-result-object v1

    .line 41
    if-eqz v1, :cond_6e

    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6e

    .line 42
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_68
    .catchall {:try_start_1c .. :try_end_2b} :catchall_5f

    .line 43
    :goto_2b
    :try_start_2b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 44
    const-string v0, "unitId"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3e} :catch_3f
    .catchall {:try_start_2b .. :try_end_3e} :catchall_5f

    goto :goto_2b

    .line 49
    :catch_3f
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_61

    .line 51
    if-eqz v2, :cond_4b

    .line 52
    :try_start_48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_54

    .line 55
    :cond_4b
    :goto_4b
    monitor-exit p0

    return-object v0

    :cond_4d
    move-object v0, v3

    .line 51
    :goto_4e
    if-eqz v1, :cond_4b

    .line 52
    :try_start_50
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_4b

    .line 35
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0

    .line 51
    :catchall_57
    move-exception v0

    move-object v1, v2

    :goto_59
    if-eqz v1, :cond_5e

    .line 52
    :try_start_5b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5e
    throw v0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_54

    .line 51
    :catchall_5f
    move-exception v0

    goto :goto_59

    :catchall_61
    move-exception v0

    move-object v1, v2

    goto :goto_59

    .line 49
    :catch_64
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_43

    :catch_68
    move-exception v0

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_43

    :cond_6e
    move-object v0, v2

    goto :goto_4e
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/u;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 61
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/u;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "unit_id"

    const-string v2, "unitId = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 64
    :cond_18
    monitor-exit p0

    return-void

    .line 60
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/u;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_27

    move-result-object v0

    if-nez v0, :cond_9

    .line 82
    :goto_7
    monitor-exit p0

    return-void

    .line 77
    :cond_9
    :try_start_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 78
    const-string v1, "unitId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "ad_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/u;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "unit_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_27

    goto :goto_7

    .line 74
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method
