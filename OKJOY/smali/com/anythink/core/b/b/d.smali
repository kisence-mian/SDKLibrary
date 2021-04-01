.class public Lcom/anythink/core/b/b/d;
.super Lcom/anythink/core/b/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/b/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/b/b/a",
        "<",
        "Lcom/anythink/core/b/c/l;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/anythink/core/b/b/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/anythink/core/b/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/b/d;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/anythink/core/b/b/b;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/anythink/core/b/b/a;-><init>(Lcom/anythink/core/b/b/b;)V

    .line 23
    return-void
.end method

.method private declared-synchronized a(Lcom/anythink/core/b/c/l;)J
    .registers 11

    .prologue
    const-wide/16 v0, -0x1

    .line 69
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_88

    move-result-object v2

    if-eqz v2, :cond_b

    if-nez p1, :cond_d

    .line 91
    :cond_b
    :goto_b
    monitor-exit p0

    return-wide v0

    .line 73
    :cond_d
    :try_start_d
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 74
    const-string v3, "key"

    invoke-virtual {p1}, Lcom/anythink/core/b/c/l;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "type"

    invoke-virtual {p1}, Lcom/anythink/core/b/c/l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v3, "value"

    invoke-virtual {p1}, Lcom/anythink/core/b/c/l;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "lastupdatetime"

    invoke-virtual {p1}, Lcom/anythink/core/b/c/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/anythink/core/b/c/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/anythink/core/b/c/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/anythink/core/b/c/l;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/anythink/core/b/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 79
    sget-object v3, Lcom/anythink/core/b/b/d;->b:Ljava/lang/String;

    const-string v4, "existsByTime--update"

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "key = ? AND type = ? AND lastupdatetime = ?  "

    .line 81
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "sdkconfig"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/anythink/core/b/c/l;->b()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/anythink/core/b/c/l;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p1}, Lcom/anythink/core/b/c/l;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_b

    .line 83
    :cond_75
    sget-object v3, Lcom/anythink/core/b/b/d;->b:Ljava/lang/String;

    const-string v4, "existsByTime--insert"

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "sdkconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_86} :catch_8b
    .catchall {:try_start_d .. :try_end_86} :catchall_88

    move-result-wide v0

    goto :goto_b

    .line 69
    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :catch_8b
    move-exception v2

    goto/16 :goto_b
.end method

.method public static a(Lcom/anythink/core/b/b/b;)Lcom/anythink/core/b/b/d;
    .registers 2

    .prologue
    .line 27
    sget-object v0, Lcom/anythink/core/b/b/d;->c:Lcom/anythink/core/b/b/d;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Lcom/anythink/core/b/b/d;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/b/d;-><init>(Lcom/anythink/core/b/b/b;)V

    sput-object v0, Lcom/anythink/core/b/b/d;->c:Lcom/anythink/core/b/b/d;

    .line 30
    :cond_b
    sget-object v0, Lcom/anythink/core/b/b/d;->c:Lcom/anythink/core/b/b/d;

    return-object v0
.end method

.method private declared-synchronized a(Landroid/database/Cursor;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/b/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    monitor-enter p0

    if-eqz p1, :cond_59

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_59

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    :goto_e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 189
    new-instance v1, Lcom/anythink/core/b/c/l;

    invoke-direct {v1}, Lcom/anythink/core/b/c/l;-><init>()V

    .line 190
    const-string v2, "key"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/b/c/l;->b(Ljava/lang/String;)V

    .line 191
    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/b/c/l;->c(Ljava/lang/String;)V

    .line 192
    const-string v2, "value"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/b/c/l;->d(Ljava/lang/String;)V

    .line 193
    const-string v2, "lastupdatetime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/b/c/l;->a(Ljava/lang/String;)V

    .line 194
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_51

    goto :goto_e

    .line 185
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0

    .line 196
    :cond_54
    :try_start_54
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_51

    .line 199
    :goto_57
    monitor-exit p0

    return-object v0

    :cond_59
    const/4 v0, 0x0

    goto :goto_57
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_20
    .catchall {:try_start_1 .. :try_end_4} :catchall_22

    move-result-object v0

    if-nez v0, :cond_9

    .line 217
    :goto_7
    monitor-exit p0

    return-void

    .line 210
    :cond_9
    :try_start_9
    const-string v0, "lastupdatetime< ? and type = ?"

    .line 211
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sdkconfig"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/anythink/core/b/c/l$a;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_20
    .catchall {:try_start_9 .. :try_end_1f} :catchall_22

    goto :goto_7

    .line 217
    :catch_20
    move-exception v0

    goto :goto_7

    .line 207
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/b/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 315
    monitor-enter p0

    :try_start_2
    const-string v1, "SELECT * FROM sdkconfig WHERE type = ?"
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_25

    .line 318
    :try_start_4
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_1d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_11} :catch_28
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_33
    .catchall {:try_start_4 .. :try_end_11} :catchall_3b

    move-result-object v1

    .line 319
    :try_start_12
    invoke-direct {p0, v1}, Lcom/anythink/core/b/b/d;->a(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_4b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_15} :catch_49
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_47
    .catchall {:try_start_12 .. :try_end_15} :catchall_45

    move-result-object v0

    .line 331
    if-eqz v1, :cond_1b

    .line 332
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_25

    .line 335
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-object v0

    .line 331
    :catch_1d
    move-exception v1

    move-object v1, v0

    :goto_1f
    if-eqz v1, :cond_1b

    .line 332
    :try_start_21
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_1b

    .line 315
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    .line 325
    :catch_28
    move-exception v1

    move-object v1, v0

    :goto_2a
    :try_start_2a
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_45

    .line 331
    if-eqz v1, :cond_1b

    .line 332
    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    .line 331
    :catch_33
    move-exception v1

    move-object v1, v0

    :goto_35
    if-eqz v1, :cond_1b

    .line 332
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1b

    .line 331
    :catchall_3b
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3f
    if-eqz v1, :cond_44

    .line 332
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0
    :try_end_45
    .catchall {:try_start_2f .. :try_end_45} :catchall_25

    .line 331
    :catchall_45
    move-exception v0

    goto :goto_3f

    :catch_47
    move-exception v2

    goto :goto_35

    .line 325
    :catch_49
    move-exception v2

    goto :goto_2a

    .line 331
    :catch_4b
    move-exception v2

    goto :goto_1f
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    monitor-enter p0

    :try_start_3
    const-string v2, "SELECT key FROM sdkconfig WHERE key=? AND type=?"

    .line 98
    sget-object v3, Lcom/anythink/core/b/b/d;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_28

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_28

    .line 101
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2f

    .line 107
    :goto_26
    monitor-exit p0

    return v0

    .line 104
    :cond_28
    if-eqz v2, :cond_2d

    .line 105
    :try_start_2a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2f

    :cond_2d
    move v0, v1

    .line 107
    goto :goto_26

    .line 96
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT key FROM sdkconfig WHERE key=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND lastupdatetime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    sget-object v1, Lcom/anythink/core/b/b/d;->b:Ljava/lang/String;

    const-string v2, "existsByTime---->"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_50

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_50

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_57

    .line 119
    const/4 v0, 0x1

    .line 124
    :goto_4e
    monitor-exit p0

    return v0

    .line 121
    :cond_50
    if-eqz v0, :cond_55

    .line 122
    :try_start_52
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_57

    .line 124
    :cond_55
    const/4 v0, 0x0

    goto :goto_4e

    .line 112
    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/b/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 134
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM sdkconfig WHERE key like \'%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|||%\' and type = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/anythink/core/b/c/l$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and lastupdatetime like  \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    sget-object v2, Lcom/anythink/core/b/b/d;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_4e

    .line 140
    :try_start_32
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3a} :catch_46
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32 .. :try_end_3a} :catch_51
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3a} :catch_5c
    .catchall {:try_start_32 .. :try_end_3a} :catchall_64

    move-result-object v1

    .line 141
    :try_start_3b
    invoke-direct {p0, v1}, Lcom/anythink/core/b/b/d;->a(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_74
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3b .. :try_end_3e} :catch_72
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_70
    .catchall {:try_start_3b .. :try_end_3e} :catchall_6e

    move-result-object v0

    .line 153
    if-eqz v1, :cond_44

    .line 154
    :try_start_41
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4e

    .line 157
    :cond_44
    :goto_44
    monitor-exit p0

    return-object v0

    .line 153
    :catch_46
    move-exception v1

    move-object v1, v0

    :goto_48
    if-eqz v1, :cond_44

    .line 154
    :try_start_4a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_44

    .line 134
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :catch_51
    move-exception v1

    move-object v1, v0

    :goto_53
    :try_start_53
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_6e

    .line 153
    if-eqz v1, :cond_44

    .line 154
    :try_start_58
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_44

    .line 153
    :catch_5c
    move-exception v1

    move-object v1, v0

    :goto_5e
    if-eqz v1, :cond_44

    .line 154
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_44

    .line 153
    :catchall_64
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_68
    if-eqz v1, :cond_6d

    .line 154
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6d
    throw v0
    :try_end_6e
    .catchall {:try_start_58 .. :try_end_6e} :catchall_4e

    .line 153
    :catchall_6e
    move-exception v0

    goto :goto_68

    :catch_70
    move-exception v2

    goto :goto_5e

    .line 147
    :catch_72
    move-exception v2

    goto :goto_53

    .line 153
    :catch_74
    move-exception v2

    goto :goto_48
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/b/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 225
    monitor-enter p0

    :try_start_2
    const-string v1, "SELECT * FROM sdkconfig WHERE key = ? and type = ? and lastupdatetime = ?"
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_2b

    .line 228
    :try_start_4
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_23
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_17} :catch_2e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_17} :catch_39
    .catchall {:try_start_4 .. :try_end_17} :catchall_41

    move-result-object v1

    .line 229
    :try_start_18
    invoke-direct {p0, v1}, Lcom/anythink/core/b/b/d;->a(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_51
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_1b} :catch_4f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_4d
    .catchall {:try_start_18 .. :try_end_1b} :catchall_4b

    move-result-object v0

    .line 241
    if-eqz v1, :cond_21

    .line 242
    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2b

    .line 245
    :cond_21
    :goto_21
    monitor-exit p0

    return-object v0

    .line 241
    :catch_23
    move-exception v1

    move-object v1, v0

    :goto_25
    if-eqz v1, :cond_21

    .line 242
    :try_start_27
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_21

    .line 225
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 235
    :catch_2e
    move-exception v1

    move-object v1, v0

    :goto_30
    :try_start_30
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_4b

    .line 241
    if-eqz v1, :cond_21

    .line 242
    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_21

    .line 241
    :catch_39
    move-exception v1

    move-object v1, v0

    :goto_3b
    if-eqz v1, :cond_21

    .line 242
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_21

    .line 241
    :catchall_41
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_45
    if-eqz v1, :cond_4a

    .line 242
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4a
    throw v0
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_2b

    .line 241
    :catchall_4b
    move-exception v0

    goto :goto_45

    :catch_4d
    move-exception v2

    goto :goto_3b

    .line 235
    :catch_4f
    move-exception v2

    goto :goto_30

    .line 241
    :catch_51
    move-exception v2

    goto :goto_25
.end method

.method private declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/anythink/core/b/c/l$a;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/core/b/b/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_4f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4f

    .line 166
    sget-object v1, Lcom/anythink/core/b/b/d;->b:Ljava/lang/String;

    const-string v2, "update---->"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/l;

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/anythink/core/b/c/l;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anythink/core/b/c/l;->d(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, v0}, Lcom/anythink/core/b/b/d;->a(Lcom/anythink/core/b/c/l;)J
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_4c

    goto :goto_22

    .line 164
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 172
    :cond_4f
    :try_start_4f
    sget-object v0, Lcom/anythink/core/b/b/d;->b:Ljava/lang/String;

    const-string v1, "insert---->"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/anythink/core/b/c/l;

    invoke-direct {v0}, Lcom/anythink/core/b/c/l;-><init>()V

    .line 174
    invoke-virtual {v0, p2}, Lcom/anythink/core/b/c/l;->a(Ljava/lang/String;)V

    .line 175
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/l;->d(Ljava/lang/String;)V

    .line 176
    sget-object v1, Lcom/anythink/core/b/c/l$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/c/l;->c(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Lcom/anythink/core/b/c/l;->b(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, v0}, Lcom/anythink/core/b/b/d;->a(Lcom/anythink/core/b/c/l;)J
    :try_end_76
    .catchall {:try_start_4f .. :try_end_76} :catchall_4c

    .line 182
    :cond_76
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/b/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 286
    monitor-enter p0

    :try_start_2
    const-string v1, "SELECT * FROM sdkconfig WHERE key != ? and type = ?"
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_28

    .line 289
    :try_start_4
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_20
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_14} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_14} :catch_36
    .catchall {:try_start_4 .. :try_end_14} :catchall_3e

    move-result-object v1

    .line 290
    :try_start_15
    invoke-direct {p0, v1}, Lcom/anythink/core/b/b/d;->a(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_4e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_18} :catch_4c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_4a
    .catchall {:try_start_15 .. :try_end_18} :catchall_48

    move-result-object v0

    .line 302
    if-eqz v1, :cond_1e

    .line 303
    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_28

    .line 306
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-object v0

    .line 302
    :catch_20
    move-exception v1

    move-object v1, v0

    :goto_22
    if-eqz v1, :cond_1e

    .line 303
    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_1e

    .line 286
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 296
    :catch_2b
    move-exception v1

    move-object v1, v0

    :goto_2d
    :try_start_2d
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_48

    .line 302
    if-eqz v1, :cond_1e

    .line 303
    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1e

    .line 302
    :catch_36
    move-exception v1

    move-object v1, v0

    :goto_38
    if-eqz v1, :cond_1e

    .line 303
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1e

    .line 302
    :catchall_3e
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_42
    if-eqz v1, :cond_47

    .line 303
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_47
    throw v0
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_28

    .line 302
    :catchall_48
    move-exception v0

    goto :goto_42

    :catch_4a
    move-exception v2

    goto :goto_38

    .line 296
    :catch_4c
    move-exception v2

    goto :goto_2d

    .line 302
    :catch_4e
    move-exception v2

    goto :goto_22
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 12

    .prologue
    const-wide/16 v0, -0x1

    .line 42
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6c

    move-result-object v2

    if-nez v2, :cond_b

    .line 65
    :goto_9
    monitor-exit p0

    return-wide v0

    .line 47
    :cond_b
    :try_start_b
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 48
    const-string v3, "key"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v3, "type"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v3, "value"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "lastupdatetime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1, p3}, Lcom/anythink/core/b/b/d;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 53
    sget-object v3, Lcom/anythink/core/b/b/d;->b:Ljava/lang/String;

    const-string v4, "insertOrUpdate-->Update"

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "key = ? AND type = ?"

    .line 55
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "sdkconfig"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_9

    .line 57
    :cond_59
    sget-object v3, Lcom/anythink/core/b/b/d;->b:Ljava/lang/String;

    const-string v4, "insertOrUpdate-->insert"

    invoke-static {v3, v4}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "sdkconfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_6a} :catch_6f
    .catchall {:try_start_b .. :try_end_6a} :catchall_6c

    move-result-wide v0

    goto :goto_9

    .line 42
    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 65
    :catch_6f
    move-exception v2

    goto :goto_9
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/b/c/l;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 254
    monitor-enter p0

    :try_start_2
    const-string v1, "SELECT * FROM sdkconfig WHERE key = ? and type = ?"

    .line 255
    sget-object v2, Lcom/anythink/core/b/b/d;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_2d

    .line 258
    :try_start_9
    invoke-virtual {p0}, Lcom/anythink/core/b/b/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_19} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_19} :catch_3b
    .catchall {:try_start_9 .. :try_end_19} :catchall_43

    move-result-object v1

    .line 259
    :try_start_1a
    invoke-direct {p0, v1}, Lcom/anythink/core/b/b/d;->a(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1d} :catch_51
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_4f
    .catchall {:try_start_1a .. :try_end_1d} :catchall_4d

    move-result-object v0

    .line 271
    if-eqz v1, :cond_23

    .line 272
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2d

    .line 275
    :cond_23
    :goto_23
    monitor-exit p0

    return-object v0

    .line 271
    :catch_25
    move-exception v1

    move-object v1, v0

    :goto_27
    if-eqz v1, :cond_23

    .line 272
    :try_start_29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_23

    .line 254
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 265
    :catch_30
    move-exception v1

    move-object v1, v0

    :goto_32
    :try_start_32
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_4d

    .line 271
    if-eqz v1, :cond_23

    .line 272
    :try_start_37
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_23

    .line 271
    :catch_3b
    move-exception v1

    move-object v1, v0

    :goto_3d
    if-eqz v1, :cond_23

    .line 272
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_23

    .line 271
    :catchall_43
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_47
    if-eqz v1, :cond_4c

    .line 272
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw v0
    :try_end_4d
    .catchall {:try_start_37 .. :try_end_4d} :catchall_2d

    .line 271
    :catchall_4d
    move-exception v0

    goto :goto_47

    :catch_4f
    move-exception v2

    goto :goto_3d

    .line 265
    :catch_51
    move-exception v2

    goto :goto_32

    .line 271
    :catch_53
    move-exception v2

    goto :goto_27
.end method
