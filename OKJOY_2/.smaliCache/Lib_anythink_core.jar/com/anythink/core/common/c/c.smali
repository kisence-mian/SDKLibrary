.class public Lcom/anythink/core/common/c/c;
.super Lcom/anythink/core/common/c/b;


# static fields
.field private static a:Lcom/anythink/core/common/c/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/b;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;
    .registers 3

    .line 26
    sget-object v0, Lcom/anythink/core/common/c/c;->a:Lcom/anythink/core/common/c/c;

    if-nez v0, :cond_17

    .line 27
    const-class v0, Lcom/anythink/core/common/c/c;

    monitor-enter v0

    .line 28
    :try_start_7
    new-instance v1, Lcom/anythink/core/common/c/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/anythink/core/common/c/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/c/c;->a:Lcom/anythink/core/common/c/c;

    .line 29
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 32
    :cond_17
    :goto_17
    sget-object p0, Lcom/anythink/core/common/c/c;->a:Lcom/anythink/core/common/c/c;

    return-object p0
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 77
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS sdkconfig(key TEXT ,type TEXT ,lastupdatetime TEXT ,value TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v0, "CREATE TABLE IF NOT EXISTS request_info(id TEXT, req_type INTEGER, req_url TEXT, req_head TEXT, req_content TEXT, time INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lcom/anythink/core/common/c/c;->a(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 82
    return-void

    .line 81
    :catch_10
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    return-void
.end method

.method private static d(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 87
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS \'sdkconfig\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const-string v0, "DROP TABLE IF EXISTS \'request_info\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string v0, "DROP TABLE IF EXISTS \'placement_ad_impression\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 92
    return-void

    .line 91
    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 110
    invoke-static {p1}, Lcom/anythink/core/common/c/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    return-void
.end method

.method protected final a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .line 59
    :goto_0
    if-ge p2, p3, :cond_17

    .line 60
    packed-switch p2, :pswitch_data_18

    goto :goto_14

    .line 66
    :pswitch_6
    const-string v0, "CREATE TABLE IF NOT EXISTS placement_ad_impression(format INTEGER ,placement_id TEXT ,adsource_id TEXT ,hour_time TEXT ,hour_imp INTEGER ,date_time TEXT ,date_imp INTEGER , show_time INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_14

    .line 63
    :pswitch_c
    nop

    .line 1110
    invoke-static {p1}, Lcom/anythink/core/common/c/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1111
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    nop

    .line 59
    :goto_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 72
    :cond_17
    return-void

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

.method protected final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 105
    invoke-static {p1}, Lcom/anythink/core/common/c/c;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/c;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 107
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

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

    .line 43
    const/4 v0, 0x4

    return v0
.end method
