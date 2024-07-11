.class public Lcom/anythink/core/common/c/d;
.super Lcom/anythink/core/common/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/c/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/c/a<",
        "Lcom/anythink/core/common/d/y;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/anythink/core/common/c/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/anythink/core/common/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/c/d;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/anythink/core/common/c/b;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/a;-><init>(Lcom/anythink/core/common/c/b;)V

    .line 27
    return-void
.end method

.method private declared-synchronized a(Lcom/anythink/core/common/d/y;)J
    .registers 11

    monitor-enter p0

    .line 73
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8f

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_8d

    if-nez p1, :cond_d

    goto/16 :goto_8d

    .line 77
    :cond_d
    :try_start_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 78
    const-string v3, "key"

    invoke-virtual {p1}, Lcom/anythink/core/common/d/y;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v3, "type"

    invoke-virtual {p1}, Lcom/anythink/core/common/d/y;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "value"

    invoke-virtual {p1}, Lcom/anythink/core/common/d/y;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "lastupdatetime"

    invoke-virtual {p1}, Lcom/anythink/core/common/d/y;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/anythink/core/common/d/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/anythink/core/common/d/y;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/anythink/core/common/d/y;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/anythink/core/common/c/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 83
    sget-object v3, Lcom/anythink/core/common/c/d;->b:Ljava/lang/String;

    const-string v4, "existsByTime--update"

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "key = ? AND type = ? AND lastupdatetime = ?  "

    .line 85
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "sdkconfig"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/anythink/core/common/d/y;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/anythink/core/common/d/y;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p1}, Lcom/anythink/core/common/d/y;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_73} :catch_8a
    .catchall {:try_start_d .. :try_end_73} :catchall_8f

    int-to-long v0, p1

    monitor-exit p0

    return-wide v0

    .line 87
    :cond_76
    :try_start_76
    sget-object p1, Lcom/anythink/core/common/c/d;->b:Ljava/lang/String;

    const-string v3, "existsByTime--insert"

    invoke-static {p1, v3}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v3, "sdkconfig"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_88} :catch_8a
    .catchall {:try_start_76 .. :try_end_88} :catchall_8f

    monitor-exit p0

    return-wide v0

    .line 90
    :catch_8a
    move-exception p1

    .line 95
    monitor-exit p0

    return-wide v1

    .line 74
    :cond_8d
    :goto_8d
    monitor-exit p0

    return-wide v1

    .line 72
    :catchall_8f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/d;
    .registers 2

    .line 31
    sget-object v0, Lcom/anythink/core/common/c/d;->c:Lcom/anythink/core/common/c/d;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lcom/anythink/core/common/c/d;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/c/d;-><init>(Lcom/anythink/core/common/c/b;)V

    sput-object v0, Lcom/anythink/core/common/c/d;->c:Lcom/anythink/core/common/c/d;

    .line 34
    :cond_b
    sget-object p0, Lcom/anythink/core/common/c/d;->c:Lcom/anythink/core/common/c/d;

    return-object p0
.end method

.method private declared-synchronized a(Landroid/database/Cursor;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/y;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 189
    if-eqz p1, :cond_59

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_59

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    :goto_e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 193
    new-instance v1, Lcom/anythink/core/common/d/y;

    invoke-direct {v1}, Lcom/anythink/core/common/d/y;-><init>()V

    .line 194
    const-string v2, "key"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/y;->b(Ljava/lang/String;)V

    .line 195
    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/y;->c(Ljava/lang/String;)V

    .line 196
    const-string v2, "value"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/y;->d(Ljava/lang/String;)V

    .line 197
    const-string v2, "lastupdatetime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/y;->a(Ljava/lang/String;)V

    .line 198
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 200
    :cond_51
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_56

    .line 201
    monitor-exit p0

    return-object v0

    .line 188
    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1

    .line 203
    :cond_59
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 211
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_24
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    if-nez v0, :cond_9

    .line 212
    monitor-exit p0

    return-void

    .line 214
    :cond_9
    :try_start_9
    const-string v0, "lastupdatetime< ? and type = ?"

    .line 215
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sdkconfig"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    sget-object v4, Lcom/anythink/core/common/d/y$a;->a:Ljava/lang/String;

    aput-object v4, v3, p1

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_24
    .catchall {:try_start_9 .. :try_end_1f} :catchall_21

    .line 220
    monitor-exit p0

    return-void

    .line 210
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1

    .line 216
    :catch_24
    move-exception p1

    .line 221
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/y;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 319
    :try_start_1
    const-string v0, "SELECT * FROM sdkconfig WHERE type = ?"
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_42

    .line 320
    nop

    .line 322
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_3b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_13} :catch_29
    .catchall {:try_start_5 .. :try_end_13} :catchall_24

    .line 323
    :try_start_13
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/d;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_17} :catch_20
    .catchall {:try_start_13 .. :try_end_17} :catchall_1e

    .line 335
    if-eqz p1, :cond_1c

    .line 336
    :try_start_19
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_42

    .line 323
    :cond_1c
    monitor-exit p0

    return-object v0

    .line 330
    :catchall_1e
    move-exception v0

    goto :goto_26

    .line 328
    :catch_20
    move-exception v0

    goto :goto_2b

    .line 324
    :catch_22
    move-exception v0

    goto :goto_3d

    .line 330
    :catchall_24
    move-exception p1

    move-object p1, v1

    .line 335
    :goto_26
    if-eqz p1, :cond_40

    .line 336
    goto :goto_3f

    .line 328
    :catch_29
    move-exception p1

    move-object p1, v1

    .line 329
    :goto_2b
    :try_start_2b
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_34

    .line 335
    if-eqz p1, :cond_40

    .line 336
    :goto_30
    :try_start_30
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_40

    .line 335
    :catchall_34
    move-exception v0

    if-eqz p1, :cond_3a

    .line 336
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_3a
    throw v0
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_42

    .line 324
    :catch_3b
    move-exception p1

    move-object p1, v1

    .line 335
    :goto_3d
    if-eqz p1, :cond_40

    .line 336
    :goto_3f
    goto :goto_30

    .line 339
    :cond_40
    :goto_40
    monitor-exit p0

    return-object v1

    .line 318
    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    monitor-enter p0

    .line 100
    :try_start_1
    const-string v0, "SELECT key FROM sdkconfig WHERE key=? AND type=?"

    .line 102
    sget-object v1, Lcom/anythink/core/common/c/d;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 104
    if-eqz p2, :cond_26

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_26

    .line 105
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2d

    .line 106
    monitor-exit p0

    return p1

    .line 108
    :cond_26
    if-eqz p2, :cond_2b

    .line 109
    :try_start_28
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    .line 111
    :cond_2b
    monitor-exit p0

    return v3

    .line 99
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    .line 116
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT key FROM sdkconfig WHERE key=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' AND type=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' AND lastupdatetime=\'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    sget-object p2, Lcom/anythink/core/common/c/d;->b:Ljava/lang/String;

    const-string p3, "existsByTime---->"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 121
    if-eqz p1, :cond_50

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_50

    .line 122
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_58

    .line 123
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 125
    :cond_50
    if-eqz p1, :cond_55

    .line 126
    :try_start_52
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_58

    .line 128
    :cond_55
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 115
    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/y;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM sdkconfig WHERE key like \'%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "|||%\' and type = \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/anythink/core/common/d/y$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' and lastupdatetime like  \'%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "%\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    sget-object p2, Lcom/anythink/core/common/c/d;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_6a

    .line 142
    nop

    .line 144
    const/4 p2, 0x0

    :try_start_33
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_63
    .catch Ljava/lang/OutOfMemoryError; {:try_start_33 .. :try_end_3b} :catch_51
    .catchall {:try_start_33 .. :try_end_3b} :catchall_4c

    .line 145
    :try_start_3b
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/d;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3f} :catch_4a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3b .. :try_end_3f} :catch_48
    .catchall {:try_start_3b .. :try_end_3f} :catchall_46

    .line 157
    if-eqz p1, :cond_44

    .line 158
    :try_start_41
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_6a

    .line 145
    :cond_44
    monitor-exit p0

    return-object p2

    .line 152
    :catchall_46
    move-exception v0

    goto :goto_4e

    .line 150
    :catch_48
    move-exception v0

    goto :goto_53

    .line 146
    :catch_4a
    move-exception v0

    goto :goto_65

    .line 152
    :catchall_4c
    move-exception p1

    move-object p1, p2

    .line 157
    :goto_4e
    if-eqz p1, :cond_68

    .line 158
    goto :goto_67

    .line 150
    :catch_51
    move-exception p1

    move-object p1, p2

    .line 151
    :goto_53
    :try_start_53
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5c

    .line 157
    if-eqz p1, :cond_68

    .line 158
    :goto_58
    :try_start_58
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_68

    .line 157
    :catchall_5c
    move-exception p2

    if-eqz p1, :cond_62

    .line 158
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_62
    throw p2
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_6a

    .line 146
    :catch_63
    move-exception p1

    move-object p1, p2

    .line 157
    :goto_65
    if-eqz p1, :cond_68

    .line 158
    :goto_67
    goto :goto_58

    .line 161
    :cond_68
    :goto_68
    monitor-exit p0

    return-object p2

    .line 137
    :catchall_6a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/y;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 229
    :try_start_1
    const-string v0, "SELECT * FROM sdkconfig WHERE key = ? and type = ? and lastupdatetime = ?"
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_48

    .line 230
    nop

    .line 232
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p3, v3, p1

    const/4 p1, 0x2

    aput-object p2, v3, p1

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_41
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_19} :catch_2f
    .catchall {:try_start_5 .. :try_end_19} :catchall_2a

    .line 233
    :try_start_19
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/d;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_28
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_1d} :catch_26
    .catchall {:try_start_19 .. :try_end_1d} :catchall_24

    .line 245
    if-eqz p1, :cond_22

    .line 246
    :try_start_1f
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_48

    .line 233
    :cond_22
    monitor-exit p0

    return-object p2

    .line 240
    :catchall_24
    move-exception p2

    goto :goto_2c

    .line 238
    :catch_26
    move-exception p2

    goto :goto_31

    .line 234
    :catch_28
    move-exception p2

    goto :goto_43

    .line 240
    :catchall_2a
    move-exception p1

    move-object p1, v1

    .line 245
    :goto_2c
    if-eqz p1, :cond_46

    .line 246
    goto :goto_45

    .line 238
    :catch_2f
    move-exception p1

    move-object p1, v1

    .line 239
    :goto_31
    :try_start_31
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3a

    .line 245
    if-eqz p1, :cond_46

    .line 246
    :goto_36
    :try_start_36
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_46

    .line 245
    :catchall_3a
    move-exception p2

    if-eqz p1, :cond_40

    .line 246
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_40
    throw p2
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_48

    .line 234
    :catch_41
    move-exception p1

    move-object p1, v1

    .line 245
    :goto_43
    if-eqz p1, :cond_46

    .line 246
    :goto_45
    goto :goto_36

    .line 249
    :cond_46
    :goto_46
    monitor-exit p0

    return-object v1

    .line 228
    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 168
    :try_start_1
    sget-object v0, Lcom/anythink/core/common/d/y$a;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/core/common/c/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_4e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4e

    .line 170
    sget-object p2, Lcom/anythink/core/common/c/d;->b:Ljava/lang/String;

    const-string v1, "update---->"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/d/y;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/anythink/core/common/d/y;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/anythink/core/common/d/y;->d(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p2}, Lcom/anythink/core/common/c/d;->a(Lcom/anythink/core/common/d/y;)J
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_77

    .line 174
    goto :goto_22

    :cond_4c
    monitor-exit p0

    return-void

    .line 176
    :cond_4e
    :try_start_4e
    sget-object v0, Lcom/anythink/core/common/c/d;->b:Ljava/lang/String;

    const-string v1, "insert---->"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/anythink/core/common/d/y;

    invoke-direct {v0}, Lcom/anythink/core/common/d/y;-><init>()V

    .line 178
    invoke-virtual {v0, p2}, Lcom/anythink/core/common/d/y;->a(Ljava/lang/String;)V

    .line 179
    const-string p2, "1"

    invoke-virtual {v0, p2}, Lcom/anythink/core/common/d/y;->d(Ljava/lang/String;)V

    .line 180
    sget-object p2, Lcom/anythink/core/common/d/y$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/anythink/core/common/d/y;->c(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, p1}, Lcom/anythink/core/common/d/y;->b(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, v0}, Lcom/anythink/core/common/c/d;->a(Lcom/anythink/core/common/d/y;)J
    :try_end_75
    .catchall {:try_start_4e .. :try_end_75} :catchall_77

    .line 186
    monitor-exit p0

    return-void

    .line 167
    :catchall_77
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/y;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 290
    :try_start_1
    const-string v0, "SELECT * FROM sdkconfig WHERE key != ? and type = ?"
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_45

    .line 291
    nop

    .line 293
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_3e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_16} :catch_2c
    .catchall {:try_start_5 .. :try_end_16} :catchall_27

    .line 294
    :try_start_16
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/d;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_1a} :catch_23
    .catchall {:try_start_16 .. :try_end_1a} :catchall_21

    .line 306
    if-eqz p1, :cond_1f

    .line 307
    :try_start_1c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_45

    .line 294
    :cond_1f
    monitor-exit p0

    return-object p2

    .line 301
    :catchall_21
    move-exception p2

    goto :goto_29

    .line 299
    :catch_23
    move-exception p2

    goto :goto_2e

    .line 295
    :catch_25
    move-exception p2

    goto :goto_40

    .line 301
    :catchall_27
    move-exception p1

    move-object p1, v1

    .line 306
    :goto_29
    if-eqz p1, :cond_43

    .line 307
    goto :goto_42

    .line 299
    :catch_2c
    move-exception p1

    move-object p1, v1

    .line 300
    :goto_2e
    :try_start_2e
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_37

    .line 306
    if-eqz p1, :cond_43

    .line 307
    :goto_33
    :try_start_33
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_43

    .line 306
    :catchall_37
    move-exception p2

    if-eqz p1, :cond_3d

    .line 307
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_3d
    throw p2
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_45

    .line 295
    :catch_3e
    move-exception p1

    move-object p1, v1

    .line 306
    :goto_40
    if-eqz p1, :cond_43

    .line 307
    :goto_42
    goto :goto_33

    .line 310
    :cond_43
    :goto_43
    monitor-exit p0

    return-object v1

    .line 289
    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 11

    monitor-enter p0

    .line 46
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_71

    const-wide/16 v1, -0x1

    if-nez v0, :cond_b

    .line 47
    monitor-exit p0

    return-wide v1

    .line 51
    :cond_b
    :try_start_b
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 52
    const-string v3, "key"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "type"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "value"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string p2, "lastupdatetime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1, p3}, Lcom/anythink/core/common/c/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 57
    sget-object p2, Lcom/anythink/core/common/c/d;->b:Ljava/lang/String;

    const-string v3, "insertOrUpdate-->Update"

    invoke-static {p2, v3}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string p2, "key = ? AND type = ?"

    .line 59
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "sdkconfig"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 p1, 0x1

    aput-object p3, v5, p1

    invoke-virtual {v3, v4, v0, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_57} :catch_6e
    .catchall {:try_start_b .. :try_end_57} :catchall_71

    int-to-long p1, p1

    monitor-exit p0

    return-wide p1

    .line 61
    :cond_5a
    :try_start_5a
    sget-object p1, Lcom/anythink/core/common/c/d;->b:Ljava/lang/String;

    const-string p2, "insertOrUpdate-->insert"

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "sdkconfig"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6c} :catch_6e
    .catchall {:try_start_5a .. :try_end_6c} :catchall_71

    monitor-exit p0

    return-wide p1

    .line 64
    :catch_6e
    move-exception p1

    .line 69
    monitor-exit p0

    return-wide v1

    .line 45
    :catchall_71
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/y;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 258
    :try_start_1
    const-string v0, "SELECT * FROM sdkconfig WHERE key = ? and type = ?"

    .line 259
    sget-object v1, Lcom/anythink/core/common/c/d;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4a

    .line 260
    nop

    .line 262
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {p0}, Lcom/anythink/core/common/c/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_43
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_1b} :catch_31
    .catchall {:try_start_a .. :try_end_1b} :catchall_2c

    .line 263
    :try_start_1b
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/d;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1f} :catch_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b .. :try_end_1f} :catch_28
    .catchall {:try_start_1b .. :try_end_1f} :catchall_26

    .line 275
    if-eqz p1, :cond_24

    .line 276
    :try_start_21
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_4a

    .line 263
    :cond_24
    monitor-exit p0

    return-object p2

    .line 270
    :catchall_26
    move-exception p2

    goto :goto_2e

    .line 268
    :catch_28
    move-exception p2

    goto :goto_33

    .line 264
    :catch_2a
    move-exception p2

    goto :goto_45

    .line 270
    :catchall_2c
    move-exception p1

    move-object p1, v1

    .line 275
    :goto_2e
    if-eqz p1, :cond_48

    .line 276
    goto :goto_47

    .line 268
    :catch_31
    move-exception p1

    move-object p1, v1

    .line 269
    :goto_33
    :try_start_33
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3c

    .line 275
    if-eqz p1, :cond_48

    .line 276
    :goto_38
    :try_start_38
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_48

    .line 275
    :catchall_3c
    move-exception p2

    if-eqz p1, :cond_42

    .line 276
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_42
    throw p2
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_4a

    .line 264
    :catch_43
    move-exception p1

    move-object p1, v1

    .line 275
    :goto_45
    if-eqz p1, :cond_48

    .line 276
    :goto_47
    goto :goto_38

    .line 279
    :cond_48
    :goto_48
    monitor-exit p0

    return-object v1

    .line 257
    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
