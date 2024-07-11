.class public Lcom/tramini/plugin/a/b/e;
.super Lcom/tramini/plugin/a/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tramini/plugin/a/b/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tramini/plugin/a/b/a<",
        "Lcom/tramini/plugin/a/c/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/tramini/plugin/a/b/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/tramini/plugin/a/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/tramini/plugin/a/b/b;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/tramini/plugin/a/b/a;-><init>(Lcom/tramini/plugin/a/b/b;)V

    .line 27
    return-void
.end method

.method public static b(Lcom/tramini/plugin/a/b/b;)Lcom/tramini/plugin/a/b/e;
    .registers 2

    .line 30
    sget-object v0, Lcom/tramini/plugin/a/b/e;->b:Lcom/tramini/plugin/a/b/e;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/tramini/plugin/a/b/e;

    invoke-direct {v0, p0}, Lcom/tramini/plugin/a/b/e;-><init>(Lcom/tramini/plugin/a/b/b;)V

    sput-object v0, Lcom/tramini/plugin/a/b/e;->b:Lcom/tramini/plugin/a/b/e;

    .line 33
    :cond_b
    sget-object p0, Lcom/tramini/plugin/a/b/e;->b:Lcom/tramini/plugin/a/b/e;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tramini/plugin/a/c/d;)J
    .registers 10

    monitor-enter p0

    .line 39
    :try_start_1
    invoke-virtual {p0}, Lcom/tramini/plugin/a/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_5b

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_59

    if-nez p1, :cond_c

    goto :goto_59

    .line 43
    :cond_c
    :try_start_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 44
    const-string v3, "id"

    iget-object v4, p1, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v3, "value"

    iget-object v4, p1, Lcom/tramini/plugin/a/c/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v3, "time"

    iget-wide v4, p1, Lcom/tramini/plugin/a/c/d;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    iget-object v3, p1, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/tramini/plugin/a/b/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 51
    const-string v3, "id = ? "

    .line 52
    invoke-virtual {p0}, Lcom/tramini/plugin/a/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "il"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object p1, p1, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_46} :catch_56
    .catchall {:try_start_c .. :try_end_46} :catchall_5b

    int-to-long v0, p1

    monitor-exit p0

    return-wide v0

    .line 57
    :cond_49
    :try_start_49
    invoke-virtual {p0}, Lcom/tramini/plugin/a/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v3, "il"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_54} :catch_56
    .catchall {:try_start_49 .. :try_end_54} :catchall_5b

    monitor-exit p0

    return-wide v0

    .line 59
    :catch_56
    move-exception p1

    .line 64
    monitor-exit p0

    return-wide v1

    .line 40
    :cond_59
    :goto_59
    monitor-exit p0

    return-wide v1

    .line 38
    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)J
    .registers 4

    .line 20
    check-cast p1, Lcom/tramini/plugin/a/c/d;

    invoke-virtual {p0, p1}, Lcom/tramini/plugin/a/b/e;->a(Lcom/tramini/plugin/a/c/d;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final a(Ljava/lang/String;)Z
    .registers 12

    .line 110
    invoke-virtual {p0}, Lcom/tramini/plugin/a/b/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v4, v9

    const-string v1, "il"

    const-string v3, "id = ? "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 112
    if-eqz p1, :cond_27

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_27

    .line 113
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 114
    return v8

    .line 116
    :cond_27
    if-eqz p1, :cond_2c

    .line 117
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_2c
    return v9
.end method

.method public final declared-synchronized b(Lcom/tramini/plugin/a/c/d;)J
    .registers 7

    monitor-enter p0

    .line 102
    :try_start_1
    invoke-virtual {p0}, Lcom/tramini/plugin/a/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_21

    if-nez p1, :cond_a

    goto :goto_21

    .line 105
    :cond_a
    invoke-virtual {p0}, Lcom/tramini/plugin/a/b/e;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "il"

    const-string v2, "id= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object p1, p1, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_25

    int-to-long v0, p1

    monitor-exit p0

    return-wide v0

    .line 103
    :cond_21
    :goto_21
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 101
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)J
    .registers 4

    .line 20
    check-cast p1, Lcom/tramini/plugin/a/c/d;

    invoke-virtual {p0, p1}, Lcom/tramini/plugin/a/b/e;->b(Lcom/tramini/plugin/a/c/d;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized e()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tramini/plugin/a/c/d;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 68
    nop

    .line 70
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/tramini/plugin/a/b/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "il"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_61

    .line 72
    if-eqz v1, :cond_5e

    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5e

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 75
    :goto_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 76
    new-instance v3, Lcom/tramini/plugin/a/c/d;

    invoke-direct {v3}, Lcom/tramini/plugin/a/c/d;-><init>()V

    .line 77
    const-string v4, "id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    .line 78
    const-string v4, "value"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tramini/plugin/a/c/d;->b:Ljava/lang/String;

    .line 79
    const-string v4, "time"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tramini/plugin/a/c/d;->c:J

    .line 81
    iget-object v4, v3, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_15 .. :try_end_54} :catchall_5c

    goto :goto_20

    .line 91
    :cond_55
    if-eqz v1, :cond_5a

    .line 92
    :try_start_57
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_69

    .line 84
    :cond_5a
    monitor-exit p0

    return-object v2

    .line 86
    :catchall_5c
    move-exception v2

    goto :goto_63

    .line 91
    :cond_5e
    if-eqz v1, :cond_6c

    .line 92
    goto :goto_65

    .line 86
    :catchall_61
    move-exception v1

    move-object v1, v0

    .line 91
    :goto_63
    if-eqz v1, :cond_6c

    .line 92
    :goto_65
    :try_start_65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6c

    .line 67
    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :cond_6c
    :goto_6c
    monitor-exit p0

    return-object v0
.end method
