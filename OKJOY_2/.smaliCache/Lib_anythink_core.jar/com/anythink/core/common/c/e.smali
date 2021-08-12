.class public Lcom/anythink/core/common/c/e;
.super Lcom/anythink/core/common/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/c/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/c/a<",
        "Lcom/anythink/core/common/d/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/anythink/core/common/c/e;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/anythink/core/common/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/c/e;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/anythink/core/common/c/b;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/a;-><init>(Lcom/anythink/core/common/c/b;)V

    .line 24
    const/16 p1, 0x3e8

    iput p1, p0, Lcom/anythink/core/common/c/e;->d:I

    .line 28
    return-void
.end method

.method public static a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/e;
    .registers 2

    .line 32
    sget-object v0, Lcom/anythink/core/common/c/e;->c:Lcom/anythink/core/common/c/e;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/anythink/core/common/c/e;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/c/e;-><init>(Lcom/anythink/core/common/c/b;)V

    sput-object v0, Lcom/anythink/core/common/c/e;->c:Lcom/anythink/core/common/c/e;

    .line 35
    :cond_b
    sget-object p0, Lcom/anythink/core/common/c/e;->c:Lcom/anythink/core/common/c/e;

    return-object p0
.end method

.method private declared-synchronized d()V
    .registers 4

    monitor-enter p0

    .line 40
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/core/common/c/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_18
    .catchall {:try_start_1 .. :try_end_5} :catchall_15

    if-nez v0, :cond_9

    .line 41
    monitor-exit p0

    return-void

    .line 43
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/anythink/core/common/c/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "request_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_18
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    .line 45
    monitor-exit p0

    return-void

    .line 39
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    .line 44
    :catch_18
    move-exception v0

    .line 46
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/anythink/core/common/d/n;)J
    .registers 9

    monitor-enter p0

    .line 49
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/core/common/c/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_89

    const-wide/16 v1, -0x1

    if-nez v0, :cond_b

    .line 50
    monitor-exit p0

    return-wide v1

    .line 52
    :cond_b
    nop

    .line 54
    const/4 v0, 0x0

    :try_start_d
    const-string v3, "SELECT * FROM request_info"

    .line 55
    invoke-virtual {p0}, Lcom/anythink/core/common/c/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_38
    .catchall {:try_start_d .. :try_end_17} :catchall_2d

    .line 56
    :try_start_17
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    iget v5, p0, Lcom/anythink/core/common/c/e;->d:I

    if-lt v4, v5, :cond_22

    .line 58
    invoke-direct {p0}, Lcom/anythink/core/common/c/e;->d()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_2b
    .catchall {:try_start_17 .. :try_end_22} :catchall_28

    .line 64
    :cond_22
    if-eqz v3, :cond_42

    .line 65
    :try_start_24
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_40
    .catchall {:try_start_24 .. :try_end_27} :catchall_89

    goto :goto_42

    .line 63
    :catchall_28
    move-exception p1

    move-object v0, v3

    goto :goto_2e

    .line 60
    :catch_2b
    move-exception v4

    goto :goto_3a

    .line 63
    :catchall_2d
    move-exception p1

    .line 64
    :goto_2e
    if-eqz v0, :cond_36

    .line 65
    :try_start_30
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_89

    goto :goto_36

    .line 68
    :catch_34
    move-exception v0

    goto :goto_37

    .line 70
    :cond_36
    :goto_36
    nop

    .line 72
    :goto_37
    :try_start_37
    throw p1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_89

    .line 60
    :catch_38
    move-exception v3

    move-object v3, v0

    .line 64
    :goto_3a
    if-eqz v3, :cond_42

    .line 65
    :try_start_3c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40
    .catchall {:try_start_3c .. :try_end_3f} :catchall_89

    goto :goto_42

    .line 68
    :catch_40
    move-exception v3

    .line 72
    goto :goto_43

    .line 70
    :cond_42
    :goto_42
    nop

    .line 75
    :goto_43
    :try_start_43
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 76
    const-string v4, "id"

    iget-object v5, p1, Lcom/anythink/core/common/d/n;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v4, "req_type"

    iget v5, p1, Lcom/anythink/core/common/d/n;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v4, "req_url"

    iget-object v5, p1, Lcom/anythink/core/common/d/n;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v4, "req_head"

    iget-object v5, p1, Lcom/anythink/core/common/d/n;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v4, "req_content"

    iget-object v5, p1, Lcom/anythink/core/common/d/n;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v4, "time"

    iget-wide v5, p1, Lcom/anythink/core/common/d/n;->f:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    invoke-virtual {p0}, Lcom/anythink/core/common/c/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v4, "request_info"

    invoke-virtual {p1, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_84} :catch_86
    .catchall {:try_start_43 .. :try_end_84} :catchall_89

    monitor-exit p0

    return-wide v0

    .line 84
    :catch_86
    move-exception p1

    .line 86
    monitor-exit p0

    return-wide v1

    .line 48
    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/anythink/core/common/d/n;)I
    .registers 7

    monitor-enter p0

    .line 90
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/core/common/c/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_20

    if-nez p1, :cond_a

    goto :goto_20

    .line 93
    :cond_a
    invoke-virtual {p0}, Lcom/anythink/core/common/c/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "request_info"

    const-string v2, "id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object p1, p1, Lcom/anythink/core/common/d/n;->a:Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_23

    monitor-exit p0

    return p1

    .line 91
    :cond_20
    :goto_20
    const/4 p1, -0x1

    monitor-exit p0

    return p1

    .line 89
    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/n;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_1
    const-string v0, "SELECT * FROM request_info ORDER BY time DESC LIMIT 10"
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a6

    .line 98
    nop

    .line 100
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Lcom/anythink/core/common/c/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_9f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_d} :catch_8d
    .catchall {:try_start_5 .. :try_end_d} :catchall_88

    .line 101
    if-eqz v0, :cond_81

    :try_start_f
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_81

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    :goto_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 105
    new-instance v3, Lcom/anythink/core/common/d/n;

    invoke-direct {v3}, Lcom/anythink/core/common/d/n;-><init>()V

    .line 106
    const-string v4, "id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/common/d/n;->a:Ljava/lang/String;

    .line 107
    const-string v4, "req_type"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/anythink/core/common/d/n;->b:I

    .line 108
    const-string v4, "req_url"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/common/d/n;->d:Ljava/lang/String;

    .line 109
    const-string v4, "req_head"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/common/d/n;->c:Ljava/lang/String;

    .line 110
    const-string v4, "req_content"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/common/d/n;->e:Ljava/lang/String;

    .line 111
    const-string v4, "time"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/anythink/core/common/d/n;->f:J

    .line 113
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 115
    :cond_71
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_74} :catch_7f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_74} :catch_7d
    .catchall {:try_start_f .. :try_end_74} :catchall_7b

    .line 130
    if-eqz v0, :cond_79

    .line 131
    :try_start_76
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_a6

    .line 116
    :cond_79
    monitor-exit p0

    return-object v2

    .line 125
    :catchall_7b
    move-exception v2

    goto :goto_8a

    .line 123
    :catch_7d
    move-exception v2

    goto :goto_8f

    .line 119
    :catch_7f
    move-exception v2

    goto :goto_a1

    .line 130
    :cond_81
    if-eqz v0, :cond_86

    .line 131
    :try_start_83
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_a6

    .line 118
    :cond_86
    monitor-exit p0

    return-object v1

    .line 125
    :catchall_88
    move-exception v0

    move-object v0, v1

    .line 130
    :goto_8a
    if-eqz v0, :cond_a4

    .line 131
    goto :goto_a3

    .line 123
    :catch_8d
    move-exception v0

    move-object v0, v1

    .line 124
    :goto_8f
    :try_start_8f
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_98

    .line 130
    if-eqz v0, :cond_a4

    .line 131
    :goto_94
    :try_start_94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_a4

    .line 130
    :catchall_98
    move-exception v1

    if-eqz v0, :cond_9e

    .line 131
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_9e
    throw v1
    :try_end_9f
    .catchall {:try_start_94 .. :try_end_9f} :catchall_a6

    .line 119
    :catch_9f
    move-exception v0

    move-object v0, v1

    .line 130
    :goto_a1
    if-eqz v0, :cond_a4

    .line 131
    :goto_a3
    goto :goto_94

    .line 134
    :cond_a4
    :goto_a4
    monitor-exit p0

    return-object v1

    .line 96
    :catchall_a6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
