.class public Lcom/tramini/plugin/a/b/d;
.super Lcom/tramini/plugin/a/b/b;


# static fields
.field private static a:Lcom/tramini/plugin/a/b/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/tramini/plugin/a/b/b;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tramini/plugin/a/b/d;
    .registers 3

    .line 24
    sget-object v0, Lcom/tramini/plugin/a/b/d;->a:Lcom/tramini/plugin/a/b/d;

    if-nez v0, :cond_17

    .line 25
    const-class v0, Lcom/tramini/plugin/a/b/d;

    monitor-enter v0

    .line 26
    :try_start_7
    new-instance v1, Lcom/tramini/plugin/a/b/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/tramini/plugin/a/b/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tramini/plugin/a/b/d;->a:Lcom/tramini/plugin/a/b/d;

    .line 27
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 30
    :cond_17
    :goto_17
    sget-object p0, Lcom/tramini/plugin/a/b/d;->a:Lcom/tramini/plugin/a/b/d;

    return-object p0
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 46
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS il(id TEXT ,value TEXT ,time INTEGER)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const-string v0, "CREATE TABLE IF NOT EXISTS il_all(id TEXT ,value TEXT ,time INTEGER)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 50
    return-void

    .line 49
    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    return-void
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 56
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS \'il\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "DROP TABLE IF EXISTS \'il_all\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 60
    return-void

    .line 59
    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 67
    invoke-static {p1}, Lcom/tramini/plugin/a/b/d;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 68
    return-void
.end method

.method protected final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 72
    nop

    .line 1056
    :try_start_1
    const-string v0, "DROP TABLE IF EXISTS \'il\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1057
    const-string v0, "DROP TABLE IF EXISTS \'il_all\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    .line 1060
    goto :goto_10

    .line 1059
    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    :goto_10
    invoke-static {p1}, Lcom/tramini/plugin/a/b/d;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, "tramini.db"

    return-object v0
.end method

.method protected final d()I
    .registers 2

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method protected final e()V
    .registers 1

    .line 79
    return-void
.end method
