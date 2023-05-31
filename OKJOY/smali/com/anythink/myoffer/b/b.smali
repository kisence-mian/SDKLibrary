.class public final Lcom/anythink/myoffer/b/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static a:Lcom/anythink/myoffer/b/b; = null

.field private static final b:I = 0x2


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;
    .registers 4

    .prologue
    .line 15
    sget-object v0, Lcom/anythink/myoffer/b/b;->a:Lcom/anythink/myoffer/b/b;

    if-nez v0, :cond_20

    .line 16
    new-instance v0, Lcom/anythink/myoffer/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_myoffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/anythink/myoffer/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/anythink/myoffer/b/b;->a:Lcom/anythink/myoffer/b/b;

    .line 18
    :cond_20
    sget-object v0, Lcom/anythink/myoffer/b/b;->a:Lcom/anythink/myoffer/b/b;

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .prologue
    .line 71
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS my_offer_info (topon_pl_id TEXT,offer_id TEXT,creative_id TEXT,title TEXT,desc TEXT,icon_url TEXT,image_url TEXT,endcard_image_url TEXT,adchoice_url TEXT,cta TEXT,video_url TEXT,click_type INTEGER,preview_url TEXT,deeplink_url TEXT,click_url TEXT,notice_url TEXT,video_start_tk_url TEXT,video_25_tk_url TEXT,video_50_tk_url TEXT,video_75_tk_url TEXT,video_end_tk_url TEXT,endcard_show_tk_url TEXT,endcard_close_tk_url TEXT,impression_tk_url TEXT,click_tk_url TEXT,pkg TEXT, cap INTEGER, pacing INTEGER, offer_type INTERGR, update_time INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string v0, "CREATE TABLE IF NOT EXISTS my_offer_cap_pacing (offer_id TEXT,offer_cap INTEGER,offer_pacing INTEGER,show_num INTEGER,show_time INTEGER,record_date INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/anythink/myoffer/b/b;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 77
    :goto_f
    return-void

    .line 75
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 81
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS \'CREATE TABLE IF NOT EXISTS my_offer_info (topon_pl_id TEXT,offer_id TEXT,creative_id TEXT,title TEXT,desc TEXT,icon_url TEXT,image_url TEXT,endcard_image_url TEXT,adchoice_url TEXT,cta TEXT,video_url TEXT,click_type INTEGER,preview_url TEXT,deeplink_url TEXT,click_url TEXT,notice_url TEXT,video_start_tk_url TEXT,video_25_tk_url TEXT,video_50_tk_url TEXT,video_75_tk_url TEXT,video_end_tk_url TEXT,endcard_show_tk_url TEXT,endcard_close_tk_url TEXT,impression_tk_url TEXT,click_tk_url TEXT,pkg TEXT, cap INTEGER, pacing INTEGER, offer_type INTERGR, update_time INTEGER )\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    const-string v0, "DROP TABLE IF EXISTS \'CREATE TABLE IF NOT EXISTS my_offer_cap_pacing (offer_id TEXT,offer_cap INTEGER,offer_pacing INTEGER,show_num INTEGER,show_time INTEGER,record_date INTEGER )\'"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 86
    :goto_a
    return-void

    .line 84
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method


# virtual methods
.method public final getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 25
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    .line 29
    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    goto :goto_5
.end method

.method public final declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .prologue
    .line 34
    monitor-enter p0

    const/4 v0, 0x0

    .line 36
    :try_start_2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8
    .catchall {:try_start_2 .. :try_end_5} :catchall_a

    move-result-object v0

    .line 40
    :goto_6
    monitor-exit p0

    return-object v0

    :catch_8
    move-exception v1

    goto :goto_6

    .line 34
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .prologue
    .line 49
    .line 1071
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS my_offer_info (topon_pl_id TEXT,offer_id TEXT,creative_id TEXT,title TEXT,desc TEXT,icon_url TEXT,image_url TEXT,endcard_image_url TEXT,adchoice_url TEXT,cta TEXT,video_url TEXT,click_type INTEGER,preview_url TEXT,deeplink_url TEXT,click_url TEXT,notice_url TEXT,video_start_tk_url TEXT,video_25_tk_url TEXT,video_50_tk_url TEXT,video_75_tk_url TEXT,video_end_tk_url TEXT,endcard_show_tk_url TEXT,endcard_close_tk_url TEXT,impression_tk_url TEXT,click_tk_url TEXT,pkg TEXT, cap INTEGER, pacing INTEGER, offer_type INTERGR, update_time INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1072
    const-string v0, "CREATE TABLE IF NOT EXISTS my_offer_cap_pacing (offer_id TEXT,offer_cap INTEGER,offer_pacing INTEGER,show_num INTEGER,show_time INTEGER,record_date INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1073
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/anythink/myoffer/b/b;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 1076
    :goto_f
    return-void

    .line 1075
    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .prologue
    .line 67
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 54
    :goto_0
    if-ge p2, p3, :cond_e

    .line 55
    packed-switch p2, :pswitch_data_10

    .line 54
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 57
    :pswitch_8
    const-string v0, "alter table my_offer_info add column click_mode INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_5

    .line 63
    :cond_e
    return-void

    .line 55
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
