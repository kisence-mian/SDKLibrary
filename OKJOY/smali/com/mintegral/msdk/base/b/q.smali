.class public Lcom/mintegral/msdk/base/b/q;
.super Lcom/mintegral/msdk/base/b/a;
.source "PInfoDao.java"


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

.field private static c:Lcom/mintegral/msdk/base/b/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/mintegral/msdk/base/b/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/b/q;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 18
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/q;
    .registers 3

    .prologue
    .line 21
    sget-object v0, Lcom/mintegral/msdk/base/b/q;->c:Lcom/mintegral/msdk/base/b/q;

    if-nez v0, :cond_13

    .line 22
    const-class v1, Lcom/mintegral/msdk/base/b/q;

    monitor-enter v1

    .line 23
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/q;->c:Lcom/mintegral/msdk/base/b/q;

    if-nez v0, :cond_12

    .line 24
    new-instance v0, Lcom/mintegral/msdk/base/b/q;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/q;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/q;->c:Lcom/mintegral/msdk/base/b/q;

    .line 26
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 28
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/q;->c:Lcom/mintegral/msdk/base/b/q;

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

.method private declared-synchronized a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 185
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT package_name FROM pinfo WHERE package_name=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/q;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_2e

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2e

    .line 188
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_34
    .catchall {:try_start_2 .. :try_end_2b} :catchall_39

    .line 189
    const/4 v0, 0x1

    .line 199
    :cond_2c
    :goto_2c
    monitor-exit p0

    return v0

    .line 191
    :cond_2e
    if-eqz v1, :cond_2c

    .line 192
    :try_start_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_39

    goto :goto_2c

    .line 197
    :catch_34
    move-exception v1

    :try_start_35
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_2c

    .line 185
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/n;)J
    .registers 9

    .prologue
    const-wide/16 v0, -0x1

    .line 92
    monitor-enter p0

    if-nez p1, :cond_9

    .line 93
    const-wide/16 v0, 0x0

    .line 118
    :cond_7
    :goto_7
    monitor-exit p0

    return-wide v0

    .line 95
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/q;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 98
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 99
    const-string v3, "package_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "label"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/n;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v3, "modify_time"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/n;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    const-string v3, "pkg_source"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/n;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mintegral/msdk/base/b/q;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package_name = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/q;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "pinfo"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_7

    .line 113
    :cond_70
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/q;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "pinfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_7a} :catch_7c
    .catchall {:try_start_9 .. :try_end_7a} :catchall_81

    move-result-wide v0

    goto :goto_7

    .line 116
    :catch_7c
    move-exception v2

    :try_start_7d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_7

    .line 92
    :catchall_81
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/n;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 241
    monitor-enter p0

    .line 245
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM pinfo WHERE label <> 0  ORDER BY label DESC LIMIT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/q;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_90
    .catchall {:try_start_2 .. :try_end_19} :catchall_83

    move-result-object v3

    .line 247
    if-eqz v3, :cond_99

    :try_start_1c
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_99

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_94
    .catchall {:try_start_1c .. :try_end_27} :catchall_8b

    .line 249
    :goto_27
    :try_start_27
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 250
    new-instance v0, Lcom/mintegral/msdk/base/entity/n;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/n;-><init>()V

    .line 251
    const-string v2, "package_name"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/n;->a(Ljava/lang/String;)V

    .line 252
    const-string v2, "label"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/n;->a(I)V

    .line 253
    const-string v2, "modify_time"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/mintegral/msdk/base/entity/n;->a(J)V

    .line 254
    const-string v2, "pkg_source"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/n;->b(Ljava/lang/String;)V

    .line 255
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_69} :catch_6a
    .catchall {:try_start_27 .. :try_end_69} :catchall_8b

    goto :goto_27

    .line 259
    :catch_6a
    move-exception v0

    move-object v2, v3

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_6f
    :try_start_6f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_8d

    .line 261
    if-eqz v2, :cond_77

    .line 262
    :try_start_74
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_80

    .line 265
    :cond_77
    :goto_77
    monitor-exit p0

    return-object v0

    :cond_79
    move-object v0, v1

    .line 261
    :goto_7a
    if-eqz v3, :cond_77

    .line 262
    :try_start_7c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_77

    .line 241
    :catchall_80
    move-exception v0

    monitor-exit p0

    throw v0

    .line 261
    :catchall_83
    move-exception v0

    move-object v3, v2

    :goto_85
    if-eqz v3, :cond_8a

    .line 262
    :try_start_87
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8a
    throw v0
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_80

    .line 261
    :catchall_8b
    move-exception v0

    goto :goto_85

    :catchall_8d
    move-exception v0

    move-object v3, v2

    goto :goto_85

    .line 259
    :catch_90
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_6f

    :catch_94
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_6f

    :cond_99
    move-object v0, v2

    goto :goto_7a
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    move-result v0

    if-nez v0, :cond_b

    .line 145
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 133
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/base/b/q$1;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/base/b/q$1;-><init>(Lcom/mintegral/msdk/base/b/q;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_9

    .line 129
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/n;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 207
    monitor-enter p0

    .line 211
    :try_start_2
    const-string v0, "SELECT * FROM pinfo"

    .line 212
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/q;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_83
    .catchall {:try_start_2 .. :try_end_c} :catchall_76

    move-result-object v3

    .line 213
    if-eqz v3, :cond_8c

    :try_start_f
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8c

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_87
    .catchall {:try_start_f .. :try_end_1a} :catchall_7e

    .line 215
    :goto_1a
    :try_start_1a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 216
    new-instance v0, Lcom/mintegral/msdk/base/entity/n;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/n;-><init>()V

    .line 217
    const-string v2, "package_name"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/n;->a(Ljava/lang/String;)V

    .line 218
    const-string v2, "label"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/n;->a(I)V

    .line 219
    const-string v2, "modify_time"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/mintegral/msdk/base/entity/n;->a(J)V

    .line 220
    const-string v2, "pkg_source"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/n;->b(Ljava/lang/String;)V

    .line 221
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_5c} :catch_5d
    .catchall {:try_start_1a .. :try_end_5c} :catchall_7e

    goto :goto_1a

    .line 225
    :catch_5d
    move-exception v0

    move-object v2, v3

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_62
    :try_start_62
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_80

    .line 227
    if-eqz v2, :cond_6a

    .line 228
    :try_start_67
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_73

    .line 231
    :cond_6a
    :goto_6a
    monitor-exit p0

    return-object v0

    :cond_6c
    move-object v0, v1

    .line 227
    :goto_6d
    if-eqz v3, :cond_6a

    .line 228
    :try_start_6f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_6a

    .line 207
    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0

    .line 227
    :catchall_76
    move-exception v0

    move-object v3, v2

    :goto_78
    if-eqz v3, :cond_7d

    .line 228
    :try_start_7a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw v0
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_73

    .line 227
    :catchall_7e
    move-exception v0

    goto :goto_78

    :catchall_80
    move-exception v0

    move-object v3, v2

    goto :goto_78

    .line 225
    :catch_83
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_62

    :catch_87
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_62

    :cond_8c
    move-object v0, v2

    goto :goto_6d
.end method
