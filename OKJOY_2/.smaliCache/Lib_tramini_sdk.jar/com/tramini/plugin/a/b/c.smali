.class public Lcom/tramini/plugin/a/b/c;
.super Lcom/tramini/plugin/a/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tramini/plugin/a/b/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/tramini/plugin/a/b/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lcom/tramini/plugin/a/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/tramini/plugin/a/b/b;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/tramini/plugin/a/b/e;-><init>(Lcom/tramini/plugin/a/b/b;)V

    .line 27
    return-void
.end method

.method public static a(Lcom/tramini/plugin/a/b/b;)Lcom/tramini/plugin/a/b/c;
    .registers 2

    .line 30
    sget-object v0, Lcom/tramini/plugin/a/b/c;->b:Lcom/tramini/plugin/a/b/c;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/tramini/plugin/a/b/c;

    invoke-direct {v0, p0}, Lcom/tramini/plugin/a/b/c;-><init>(Lcom/tramini/plugin/a/b/b;)V

    sput-object v0, Lcom/tramini/plugin/a/b/c;->b:Lcom/tramini/plugin/a/b/c;

    .line 33
    :cond_b
    sget-object p0, Lcom/tramini/plugin/a/b/c;->b:Lcom/tramini/plugin/a/b/c;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/tramini/plugin/a/c/d;)J
    .registers 10

    monitor-enter p0

    .line 71
    :try_start_1
    invoke-virtual {p0}, Lcom/tramini/plugin/a/b/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_5b

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_59

    if-nez p1, :cond_c

    goto :goto_59

    .line 75
    :cond_c
    :try_start_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 76
    const-string v3, "id"

    iget-object v4, p1, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "value"

    iget-object v4, p1, Lcom/tramini/plugin/a/c/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v3, "time"

    iget-wide v4, p1, Lcom/tramini/plugin/a/c/d;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    iget-object v3, p1, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/tramini/plugin/a/b/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 83
    const-string v3, "id = ? "

    .line 84
    invoke-virtual {p0}, Lcom/tramini/plugin/a/b/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "il_all"

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

    .line 89
    :cond_49
    :try_start_49
    invoke-virtual {p0}, Lcom/tramini/plugin/a/b/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v3, "il_all"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_54} :catch_56
    .catchall {:try_start_49 .. :try_end_54} :catchall_5b

    monitor-exit p0

    return-wide v0

    .line 91
    :catch_56
    move-exception p1

    .line 96
    monitor-exit p0

    return-wide v1

    .line 72
    :cond_59
    :goto_59
    monitor-exit p0

    return-wide v1

    .line 70
    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)J
    .registers 4

    .line 20
    check-cast p1, Lcom/tramini/plugin/a/c/d;

    invoke-virtual {p0, p1}, Lcom/tramini/plugin/a/b/c;->a(Lcom/tramini/plugin/a/c/d;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized c()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 37
    nop

    .line 39
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/tramini/plugin/a/b/c;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "il_all"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_5f

    .line 41
    if-eqz v1, :cond_5c

    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5c

    .line 42
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 44
    :goto_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 45
    new-instance v3, Lcom/tramini/plugin/a/c/d;

    invoke-direct {v3}, Lcom/tramini/plugin/a/c/d;-><init>()V

    .line 46
    const-string v4, "id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    .line 47
    const-string v4, "value"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tramini/plugin/a/c/d;->b:Ljava/lang/String;

    .line 48
    const-string v4, "time"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tramini/plugin/a/c/d;->c:J

    .line 50
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_15 .. :try_end_52} :catchall_5a

    goto :goto_20

    .line 60
    :cond_53
    if-eqz v1, :cond_58

    .line 61
    :try_start_55
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_67

    .line 53
    :cond_58
    monitor-exit p0

    return-object v2

    .line 55
    :catchall_5a
    move-exception v2

    goto :goto_61

    .line 60
    :cond_5c
    if-eqz v1, :cond_6a

    .line 61
    goto :goto_63

    .line 55
    :catchall_5f
    move-exception v1

    move-object v1, v0

    .line 60
    :goto_61
    if-eqz v1, :cond_6a

    .line 61
    :goto_63
    :try_start_63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_6a

    .line 36
    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0

    .line 65
    :cond_6a
    :goto_6a
    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized d()J
    .registers 4

    monitor-enter p0

    .line 100
    :try_start_1
    invoke-virtual {p0}, Lcom/tramini/plugin/a/b/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    if-nez v0, :cond_b

    .line 101
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 104
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/tramini/plugin/a/b/c;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "il_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_19

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 99
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method
