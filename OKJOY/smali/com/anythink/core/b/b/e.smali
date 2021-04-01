.class public Lcom/anythink/core/b/b/e;
.super Lcom/anythink/core/b/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/b/b/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/b/b/a",
        "<",
        "Lcom/anythink/core/b/c/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/anythink/core/b/b/e;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/anythink/core/b/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/b/e;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/anythink/core/b/b/b;)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/anythink/core/b/b/a;-><init>(Lcom/anythink/core/b/b/b;)V

    .line 21
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/anythink/core/b/b/e;->d:I

    .line 25
    return-void
.end method

.method public static a(Lcom/anythink/core/b/b/b;)Lcom/anythink/core/b/b/e;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcom/anythink/core/b/b/e;->c:Lcom/anythink/core/b/b/e;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/anythink/core/b/b/e;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/b/e;-><init>(Lcom/anythink/core/b/b/b;)V

    sput-object v0, Lcom/anythink/core/b/b/e;->c:Lcom/anythink/core/b/b/e;

    .line 32
    :cond_b
    sget-object v0, Lcom/anythink/core/b/b/e;->c:Lcom/anythink/core/b/b/e;

    return-object v0
.end method

.method private declared-synchronized d()V
    .registers 5

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/core/b/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_15
    .catchall {:try_start_1 .. :try_end_4} :catchall_17

    move-result-object v0

    if-nez v0, :cond_9

    .line 43
    :goto_7
    monitor-exit p0

    return-void

    .line 40
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/anythink/core/b/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "request_info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_15
    .catchall {:try_start_9 .. :try_end_14} :catchall_17

    goto :goto_7

    .line 43
    :catch_15
    move-exception v0

    goto :goto_7

    .line 37
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/anythink/core/b/c/f;)J
    .registers 8

    .prologue
    const-wide/16 v0, -0x1

    .line 46
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/anythink/core/b/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_67

    move-result-object v2

    if-nez v2, :cond_b

    .line 74
    :goto_9
    monitor-exit p0

    return-wide v0

    .line 51
    :cond_b
    :try_start_b
    const-string v2, "SELECT * FROM request_info"

    .line 52
    invoke-virtual {p0}, Lcom/anythink/core/b/b/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 53
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget v4, p0, Lcom/anythink/core/b/b/e;->d:I

    if-lt v3, v4, :cond_24

    .line 54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 56
    invoke-direct {p0}, Lcom/anythink/core/b/b/e;->d()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_24} :catch_6c
    .catchall {:try_start_b .. :try_end_24} :catchall_67

    .line 63
    :cond_24
    :goto_24
    :try_start_24
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 64
    const-string v3, "id"

    iget-object v4, p1, Lcom/anythink/core/b/c/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "req_type"

    iget v4, p1, Lcom/anythink/core/b/c/f;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v3, "req_url"

    iget-object v4, p1, Lcom/anythink/core/b/c/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "req_head"

    iget-object v4, p1, Lcom/anythink/core/b/c/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v3, "req_content"

    iget-object v4, p1, Lcom/anythink/core/b/c/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "time"

    iget-wide v4, p1, Lcom/anythink/core/b/c/f;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    invoke-virtual {p0}, Lcom/anythink/core/b/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "request_info"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_65} :catch_6a
    .catchall {:try_start_24 .. :try_end_65} :catchall_67

    move-result-wide v0

    goto :goto_9

    .line 46
    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :catch_6a
    move-exception v2

    goto :goto_9

    :catch_6c
    move-exception v2

    goto :goto_24
.end method

.method public final declared-synchronized b(Lcom/anythink/core/b/c/f;)I
    .registers 8

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/core/b/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_21

    move-result-object v0

    if-eqz v0, :cond_9

    if-nez p1, :cond_c

    .line 79
    :cond_9
    const/4 v0, -0x1

    .line 81
    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/anythink/core/b/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "request_info"

    const-string v2, "id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/anythink/core/b/c/f;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_21

    move-result v0

    goto :goto_a

    .line 78
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/b/c/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    monitor-enter p0

    :try_start_2
    const-string v0, "SELECT * FROM request_info ORDER BY time DESC LIMIT 10"
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_84

    .line 88
    :try_start_4
    invoke-virtual {p0}, Lcom/anythink/core/b/b/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_c} :catch_8e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_c} :catch_99
    .catchall {:try_start_4 .. :try_end_c} :catchall_a1

    move-result-object v2

    .line 89
    if-eqz v2, :cond_87

    :try_start_f
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_87

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    :goto_1a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 93
    new-instance v3, Lcom/anythink/core/b/c/f;

    invoke-direct {v3}, Lcom/anythink/core/b/c/f;-><init>()V

    .line 94
    const-string v4, "id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/b/c/f;->a:Ljava/lang/String;

    .line 95
    const-string v4, "req_type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/anythink/core/b/c/f;->b:I

    .line 96
    const-string v4, "req_url"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/b/c/f;->d:Ljava/lang/String;

    .line 97
    const-string v4, "req_head"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/b/c/f;->c:Ljava/lang/String;

    .line 98
    const-string v4, "req_content"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/b/c/f;->e:Ljava/lang/String;

    .line 99
    const-string v4, "time"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/anythink/core/b/c/f;->f:J

    .line 101
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_70} :catch_71
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_70} :catch_ad
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_70} :catch_ab
    .catchall {:try_start_f .. :try_end_70} :catchall_a9

    goto :goto_1a

    .line 118
    :catch_71
    move-exception v0

    move-object v0, v2

    :goto_73
    if-eqz v0, :cond_78

    .line 119
    :try_start_75
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_84

    :cond_78
    :goto_78
    move-object v0, v1

    .line 122
    :cond_79
    :goto_79
    monitor-exit p0

    return-object v0

    .line 103
    :cond_7b
    :try_start_7b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_71
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7b .. :try_end_7e} :catch_ad
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_ab
    .catchall {:try_start_7b .. :try_end_7e} :catchall_a9

    .line 118
    if-eqz v2, :cond_79

    .line 119
    :try_start_80
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_79

    .line 85
    :catchall_84
    move-exception v0

    monitor-exit p0

    throw v0

    .line 118
    :cond_87
    if-eqz v2, :cond_8c

    .line 119
    :try_start_89
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_84

    :cond_8c
    move-object v0, v1

    .line 106
    goto :goto_79

    .line 112
    :catch_8e
    move-exception v0

    move-object v2, v1

    :goto_90
    :try_start_90
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_a9

    .line 118
    if-eqz v2, :cond_78

    .line 119
    :try_start_95
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_78

    .line 118
    :catch_99
    move-exception v0

    move-object v2, v1

    :goto_9b
    if-eqz v2, :cond_78

    .line 119
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_78

    .line 118
    :catchall_a1
    move-exception v0

    move-object v2, v1

    :goto_a3
    if-eqz v2, :cond_a8

    .line 119
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a8
    throw v0
    :try_end_a9
    .catchall {:try_start_95 .. :try_end_a9} :catchall_84

    .line 118
    :catchall_a9
    move-exception v0

    goto :goto_a3

    :catch_ab
    move-exception v0

    goto :goto_9b

    .line 112
    :catch_ad
    move-exception v0

    goto :goto_90

    .line 118
    :catch_af
    move-exception v0

    move-object v0, v1

    goto :goto_73
.end method
