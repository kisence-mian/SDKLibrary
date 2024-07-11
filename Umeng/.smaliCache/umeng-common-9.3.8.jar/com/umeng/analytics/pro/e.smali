.class Lcom/umeng/analytics/pro/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "UMDBCreater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/e$a;
    }
.end annotation


# static fields
.field private static b:Landroid/content/Context;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/e;->b:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 6

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p2, "ua.db"

    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 26
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/e;->a:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/e;->a()V

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 7

    .line 55
    new-instance v0, Lcom/umeng/analytics/pro/b;

    invoke-direct {v0, p1, p2}, Lcom/umeng/analytics/pro/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/umeng/analytics/pro/e;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/umeng/analytics/pro/e$1;)V
    .registers 7

    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/umeng/analytics/pro/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;
    .registers 2

    .line 39
    sget-object v0, Lcom/umeng/analytics/pro/e;->b:Landroid/content/Context;

    if-nez v0, :cond_a

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/e;->b:Landroid/content/Context;

    .line 42
    :cond_a
    invoke-static {}, Lcom/umeng/analytics/pro/e$a;->a()Lcom/umeng/analytics/pro/e;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 110
    :try_start_0
    const-string v0, "create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER, __av TEXT, __vc TEXT)"

    iput-object v0, p0, Lcom/umeng/analytics/pro/e;->a:Ljava/lang/String;

    .line 120
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_7} :catch_8

    .line 125
    goto :goto_9

    .line 121
    :catch_8
    move-exception p1

    .line 126
    :goto_9
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5

    .line 250
    nop

    .line 253
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 254
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_17} :catch_18

    .line 259
    goto :goto_19

    .line 255
    :catch_18
    move-exception p1

    .line 260
    :goto_19
    return-void
.end method

.method static synthetic b()Landroid/content/Context;
    .registers 1

    .line 24
    sget-object v0, Lcom/umeng/analytics/pro/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 130
    :try_start_0
    const-string v0, "create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER, __av TEXT, __vc TEXT)"

    iput-object v0, p0, Lcom/umeng/analytics/pro/e;->a:Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_7} :catch_8

    .line 146
    goto :goto_9

    .line 142
    :catch_8
    move-exception p1

    .line 147
    :goto_9
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 151
    :try_start_0
    const-string v0, "create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)"

    iput-object v0, p0, Lcom/umeng/analytics/pro/e;->a:Ljava/lang/String;

    .line 168
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_7} :catch_8

    .line 173
    goto :goto_9

    .line 169
    :catch_8
    move-exception p1

    .line 174
    :goto_9
    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 178
    :try_start_0
    const-string v0, "create table if not exists __is(id INTEGER primary key autoincrement, __ii TEXT unique, __e TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)"

    iput-object v0, p0, Lcom/umeng/analytics/pro/e;->a:Ljava/lang/String;

    .line 186
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_7} :catch_8

    .line 191
    goto :goto_9

    .line 187
    :catch_8
    move-exception p1

    .line 193
    :goto_9
    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    .line 218
    const-string v0, "__sd"

    const-string v1, "__av"

    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "__vc"

    const-string v4, "TEXT"

    if-nez v2, :cond_1e

    .line 220
    const-string v2, "__sp"

    invoke-static {p1, v0, v2, v4}, Lcom/umeng/analytics/pro/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "__pp"

    invoke-static {p1, v0, v2, v4}, Lcom/umeng/analytics/pro/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {p1, v0, v1, v4}, Lcom/umeng/analytics/pro/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {p1, v0, v3, v4}, Lcom/umeng/analytics/pro/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_1e
    const-string v0, "__et"

    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 228
    invoke-static {p1, v0, v1, v4}, Lcom/umeng/analytics/pro/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {p1, v0, v3, v4}, Lcom/umeng/analytics/pro/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_2c
    const-string v0, "__er"

    invoke-static {p1, v0, v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 234
    invoke-static {p1, v0, v1, v4}, Lcom/umeng/analytics/pro/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {p1, v0, v3, v4}, Lcom/umeng/analytics/pro/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_3a
    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 242
    const-string v0, "__sd"

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 243
    const-string v0, "__et"

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 244
    const-string v0, "__er"

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/e;->a()V

    .line 247
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 65
    nop

    .line 67
    :try_start_1
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 68
    const-string v1, "__sd"

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 69
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/e;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    :cond_10
    const-string v1, "__is"

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 72
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/e;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    :cond_1b
    const-string v1, "__et"

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 75
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    :cond_26
    const-string v1, "__er"

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 78
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    .line 82
    :cond_31
    goto :goto_33

    .line 81
    :catch_32
    move-exception v0

    .line 83
    :goto_33
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 89
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 90
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/e;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/e;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/e;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_12} :catch_22
    .catchall {:try_start_0 .. :try_end_12} :catchall_18

    .line 101
    if-eqz p1, :cond_21

    .line 102
    :try_start_14
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_21

    .line 98
    :catchall_18
    move-exception v0

    .line 101
    if-eqz p1, :cond_21

    .line 102
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1f

    goto :goto_21

    .line 104
    :catchall_1f
    move-exception p1

    .line 105
    goto :goto_2e

    .line 104
    :cond_21
    :goto_21
    goto :goto_2e

    .line 95
    :catch_22
    move-exception v0

    .line 97
    :try_start_23
    sget-object v0, Lcom/umeng/analytics/pro/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2f

    .line 101
    if-eqz p1, :cond_21

    .line 102
    :try_start_2a
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_1f

    goto :goto_21

    .line 106
    :goto_2e
    return-void

    .line 100
    :catchall_2f
    move-exception v0

    .line 101
    if-eqz p1, :cond_37

    .line 102
    :try_start_32
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_37

    .line 104
    :catchall_36
    move-exception p1

    :cond_37
    :goto_37
    goto :goto_39

    :goto_38
    throw v0

    :goto_39
    goto :goto_38
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 198
    if-le p3, p2, :cond_12

    .line 199
    const/4 p3, 0x1

    if-ne p2, p3, :cond_12

    .line 202
    :try_start_5
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/e;->e(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_9

    .line 210
    goto :goto_12

    .line 203
    :catch_9
    move-exception p2

    .line 205
    :try_start_a
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/e;->e(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    .line 209
    goto :goto_12

    .line 206
    :catch_e
    move-exception p2

    .line 208
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/e;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 213
    :cond_12
    :goto_12
    return-void
.end method
