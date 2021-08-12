.class public final Lcom/anythink/basead/b/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static a:Lcom/anythink/basead/b/b; = null

.field private static final b:I = 0x3


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 52
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/basead/b/b;
    .registers 4

    .line 22
    sget-object v0, Lcom/anythink/basead/b/b;->a:Lcom/anythink/basead/b/b;

    if-nez v0, :cond_20

    .line 23
    new-instance v0, Lcom/anythink/basead/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_myoffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/basead/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/anythink/basead/b/b;->a:Lcom/anythink/basead/b/b;

    .line 25
    :cond_20
    sget-object p0, Lcom/anythink/basead/b/b;->a:Lcom/anythink/basead/b/b;

    return-object p0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 81
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS my_offer_cap_pacing (offer_id TEXT,offer_cap INTEGER,offer_pacing INTEGER,show_num INTEGER,show_time INTEGER,record_date INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/anythink/basead/b/b;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 85
    return-void

    .line 84
    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    return-void
.end method


# virtual methods
.method public final getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .line 30
    nop

    .line 32
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    .line 35
    goto :goto_8

    .line 33
    :catch_6
    move-exception v0

    const/4 v0, 0x0

    .line 36
    :goto_8
    return-object v0
.end method

.method public final declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    .line 41
    nop

    .line 43
    :try_start_2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_a
    .catchall {:try_start_2 .. :try_end_6} :catchall_7

    .line 46
    goto :goto_c

    .line 40
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0

    .line 44
    :catch_a
    move-exception v0

    const/4 v0, 0x0

    .line 47
    :goto_c
    monitor-exit p0

    return-object v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .line 56
    nop

    .line 1081
    :try_start_1
    const-string v0, "CREATE TABLE IF NOT EXISTS my_offer_cap_pacing (offer_id TEXT,offer_cap INTEGER,offer_pacing INTEGER,show_num INTEGER,show_time INTEGER,record_date INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1082
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/anythink/basead/b/b;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    .line 1085
    return-void

    .line 1084
    :catch_c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 77
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .line 61
    :goto_0
    if-ge p2, p3, :cond_10

    .line 62
    packed-switch p2, :pswitch_data_12

    goto :goto_d

    .line 67
    :pswitch_6
    const-string v0, "DROP TABLE IF EXISTS \'CREATE TABLE IF NOT EXISTS my_offer_info (topon_pl_id TEXT,offer_id TEXT,creative_id TEXT,title TEXT,desc TEXT,icon_url TEXT,image_url TEXT,endcard_image_url TEXT,adchoice_url TEXT,cta TEXT,video_url TEXT,click_type INTEGER,preview_url TEXT,deeplink_url TEXT,click_url TEXT,notice_url TEXT,video_start_tk_url TEXT,video_25_tk_url TEXT,video_50_tk_url TEXT,video_75_tk_url TEXT,video_end_tk_url TEXT,endcard_show_tk_url TEXT,endcard_close_tk_url TEXT,impression_tk_url TEXT,click_tk_url TEXT,pkg TEXT,cap INTEGER,pacing INTEGER,offer_type INTERGR,update_time INTEGER )\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_d

    .line 65
    :pswitch_c
    nop

    .line 61
    :goto_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 73
    :cond_10
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
