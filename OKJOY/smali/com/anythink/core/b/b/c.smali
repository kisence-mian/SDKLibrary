.class public Lcom/anythink/core/b/b/c;
.super Lcom/anythink/core/b/b/b;


# static fields
.field private static a:Lcom/anythink/core/b/b/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/anythink/core/b/b/b;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/b/b/c;
    .registers 4

    .prologue
    .line 23
    sget-object v0, Lcom/anythink/core/b/b/c;->a:Lcom/anythink/core/b/b/c;

    if-nez v0, :cond_13

    .line 24
    const-class v1, Lcom/anythink/core/b/b/c;

    monitor-enter v1

    .line 25
    :try_start_7
    new-instance v0, Lcom/anythink/core/b/b/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/anythink/core/b/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/core/b/b/c;->a:Lcom/anythink/core/b/b/c;

    .line 26
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 29
    :cond_13
    sget-object v0, Lcom/anythink/core/b/b/c;->a:Lcom/anythink/core/b/b/c;

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

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .prologue
    .line 74
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS sdkconfig(key TEXT ,type TEXT ,lastupdatetime TEXT ,value TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const-string v0, "CREATE TABLE IF NOT EXISTS request_info(id TEXT, req_type INTEGER, req_url TEXT, req_head TEXT, req_content TEXT, time INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lcom/anythink/core/b/b/c;->a(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 80
    :goto_f
    return-void

    .line 78
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 84
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS \'sdkconfig\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    const-string v0, "DROP TABLE IF EXISTS \'request_info\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    const-string v0, "DROP TABLE IF EXISTS \'placement_ad_impression\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 90
    :goto_f
    return-void

    .line 88
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 107
    invoke-static {p1}, Lcom/anythink/core/b/b/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/anythink/core/b/b/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/anythink/core/b/b/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    return-void
.end method

.method protected final a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 56
    :goto_0
    if-ge p2, p3, :cond_15

    .line 57
    packed-switch p2, :pswitch_data_16

    .line 56
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1107
    :pswitch_8
    invoke-static {p1}, Lcom/anythink/core/b/b/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1108
    invoke-direct {p0, p1}, Lcom/anythink/core/b/b/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_5

    .line 63
    :pswitch_f
    const-string v0, "CREATE TABLE IF NOT EXISTS placement_ad_impression(format INTEGER ,placement_id TEXT ,adsource_id TEXT ,hour_time TEXT ,hour_imp INTEGER ,date_time TEXT ,date_imp INTEGER , show_time INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_5

    .line 69
    :cond_15
    return-void

    .line 57
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method

.method protected final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 102
    invoke-static {p1}, Lcom/anythink/core/b/b/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/anythink/core/b/b/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final d()I
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x4

    return v0
.end method
