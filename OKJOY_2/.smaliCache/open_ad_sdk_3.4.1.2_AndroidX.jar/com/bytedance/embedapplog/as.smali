.class public Lcom/bytedance/embedapplog/as;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/as$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/embedapplog/aq;",
            ">;"
        }
    .end annotation
.end field

.field private static b:I

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private final g:Lcom/bytedance/embedapplog/z;

.field private final h:Lcom/bytedance/embedapplog/aa;

.field private final i:Lcom/bytedance/embedapplog/as$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/bytedance/embedapplog/as;->b:I

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/bytedance/embedapplog/az;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "event_name"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " =?  AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "monitor_status"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "=?"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/embedapplog/as;->c:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lcom/bytedance/embedapplog/az;->h:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " SET "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "monitor_num"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " =? WHERE "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =? AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/embedapplog/as;->d:Ljava/lang/String;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bytedance/embedapplog/az;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<? ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "local_time_ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " LIMIT ?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/embedapplog/as;->e:Ljava/lang/String;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/bytedance/embedapplog/az;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/embedapplog/as;->f:Ljava/lang/String;

    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/bytedance/embedapplog/as;->a:Ljava/util/HashMap;

    .line 113
    new-instance v1, Lcom/bytedance/embedapplog/ay;

    invoke-direct {v1}, Lcom/bytedance/embedapplog/ay;-><init>()V

    invoke-static {v1}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 114
    new-instance v1, Lcom/bytedance/embedapplog/at;

    invoke-direct {v1}, Lcom/bytedance/embedapplog/at;-><init>()V

    invoke-static {v1}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 115
    new-instance v1, Lcom/bytedance/embedapplog/av;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Lcom/bytedance/embedapplog/av;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 116
    new-instance v0, Lcom/bytedance/embedapplog/aw;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/aw;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 117
    new-instance v0, Lcom/bytedance/embedapplog/ba;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/ba;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 118
    new-instance v0, Lcom/bytedance/embedapplog/ax;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/ax;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 119
    new-instance v0, Lcom/bytedance/embedapplog/au;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/bytedance/embedapplog/au;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 120
    new-instance v0, Lcom/bytedance/embedapplog/az;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/az;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aq;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/bytedance/embedapplog/aa;Lcom/bytedance/embedapplog/z;)V
    .registers 8

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/bytedance/embedapplog/as$a;

    const-string v1, "bd_embed_tea_agent.db"

    const/4 v2, 0x0

    const/16 v3, 0x1d

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/bytedance/embedapplog/as$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/as;->i:Lcom/bytedance/embedapplog/as$a;

    .line 101
    iput-object p2, p0, Lcom/bytedance/embedapplog/as;->h:Lcom/bytedance/embedapplog/aa;

    .line 102
    iput-object p3, p0, Lcom/bytedance/embedapplog/as;->g:Lcom/bytedance/embedapplog/z;

    .line 103
    return-void
.end method

.method private a([Lcom/bytedance/embedapplog/aq;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I
    .registers 9

    .line 277
    const/4 v0, 0x0

    .line 278
    :goto_1
    if-ge v0, p2, :cond_a

    .line 279
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    aput-object v2, p5, v0

    move v0, v1

    goto :goto_1

    .line 282
    :cond_a
    const/16 p2, 0xc8

    .line 283
    :cond_c
    :goto_c
    if-lez p2, :cond_25

    array-length v1, p1

    if-ge v0, v1, :cond_25

    .line 284
    aget-object v1, p1, v0

    invoke-direct {p0, p3, v1, p4, p2}, Lcom/bytedance/embedapplog/as;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/embedapplog/aq;Ljava/lang/String;I)Lorg/json/JSONArray;

    move-result-object v1

    aput-object v1, p5, v0

    .line 286
    aget-object v1, p5, v0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    sub-int/2addr p2, v1

    .line 287
    if-lez p2, :cond_c

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 291
    :cond_25
    return v0
.end method

.method private a(JI)Ljava/lang/String;
    .registers 6

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE pack SET _fail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " WHERE "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "local_time_ms"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bytedance/embedapplog/aq;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/aq;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " WHERE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' ORDER BY "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "local_time_ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " LIMIT "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bytedance/embedapplog/aq;Ljava/lang/String;J)Ljava/lang/String;
    .registers 7

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/aq;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " WHERE "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "=\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "local_time_ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "<="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/embedapplog/aq;Ljava/lang/String;I)Lorg/json/JSONArray;
    .registers 14

    .line 295
    const-string v0, ", "

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 296
    nop

    .line 297
    nop

    .line 299
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_c
    invoke-direct {p0, p2, p3, p4}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aq;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_64

    move-wide v5, v2

    .line 300
    :cond_15
    :goto_15
    :try_start_15
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 301
    invoke-virtual {p2, p4}, Lcom/bytedance/embedapplog/aq;->a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/aq;

    .line 302
    sget-boolean v7, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v7, :cond_40

    .line 303
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queryEvnetInner, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    :cond_40
    invoke-virtual {p2}, Lcom/bytedance/embedapplog/aq;->f()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 307
    iget-wide v7, p2, Lcom/bytedance/embedapplog/aq;->a:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_15

    .line 308
    iget-wide v5, p2, Lcom/bytedance/embedapplog/aq;->a:J

    goto :goto_15

    .line 312
    :cond_50
    cmp-long v2, v5, v2

    if-lez v2, :cond_5b

    .line 313
    invoke-direct {p0, p2, p3, v5, v6}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aq;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_15 .. :try_end_5b} :catchall_61

    .line 318
    :cond_5b
    if-eqz p4, :cond_6f

    .line 319
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    goto :goto_6f

    .line 315
    :catchall_61
    move-exception p1

    move-wide v2, v5

    goto :goto_66

    :catchall_64
    move-exception p1

    move-object p4, v4

    .line 316
    :goto_66
    :try_start_66
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_9a

    .line 318
    if-eqz p4, :cond_6e

    .line 319
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_6e
    move-wide v5, v2

    :cond_6f
    :goto_6f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryEvent, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    return-object v1

    .line 318
    :catchall_9a
    move-exception p1

    if-eqz p4, :cond_a0

    .line 319
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    :cond_a0
    throw p1
.end method

.method private a(Lcom/bytedance/embedapplog/aw;Lcom/bytedance/embedapplog/ba;Lcom/bytedance/embedapplog/ay;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;
    .registers 16

    .line 330
    const-string v0, ", "

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/embedapplog/aw;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 331
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 332
    nop

    .line 333
    nop

    .line 335
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :try_start_14
    const-string v8, "SELECT * FROM page WHERE session_id=? LIMIT 500"

    invoke-virtual {p4, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_68

    .line 336
    nop

    .line 337
    :goto_1b
    :try_start_1b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_59

    .line 338
    invoke-virtual {p3, v8}, Lcom/bytedance/embedapplog/ay;->a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/aq;

    .line 339
    sget-boolean v4, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v4, :cond_46

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryPageInner, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 342
    :cond_46
    invoke-virtual {p3}, Lcom/bytedance/embedapplog/ay;->i()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 344
    invoke-virtual {p3}, Lcom/bytedance/embedapplog/ay;->f()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_57

    .line 346
    :cond_54
    iget-wide v9, p3, Lcom/bytedance/embedapplog/ay;->h:J

    add-long/2addr v6, v9

    .line 348
    :goto_57
    move v4, v1

    goto :goto_1b

    .line 351
    :cond_59
    if-eqz v4, :cond_60

    .line 352
    const-string p3, "DELETE FROM page WHERE session_id=?"

    invoke-virtual {p4, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_1b .. :try_end_60} :catchall_66

    .line 357
    :cond_60
    if-eqz v8, :cond_70

    .line 358
    :goto_62
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_70

    .line 354
    :catchall_66
    move-exception p3

    goto :goto_6a

    :catchall_68
    move-exception p3

    move-object v8, v5

    .line 355
    :goto_6a
    :try_start_6a
    invoke-static {p3}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_c5

    .line 357
    if-eqz v8, :cond_70

    .line 358
    goto :goto_62

    .line 362
    :cond_70
    :goto_70
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-lez p3, :cond_9e

    .line 364
    const-wide/16 p3, 0x3e8

    cmp-long v1, v6, p3

    if-lez v1, :cond_7d

    goto :goto_7e

    :cond_7d
    move-wide v6, p3

    .line 365
    :goto_7e
    iput-wide v6, p2, Lcom/bytedance/embedapplog/ba;->h:J

    .line 366
    iget-object v1, p1, Lcom/bytedance/embedapplog/aw;->c:Ljava/lang/String;

    iput-object v1, p2, Lcom/bytedance/embedapplog/ba;->c:Ljava/lang/String;

    .line 367
    iget-wide v1, p1, Lcom/bytedance/embedapplog/aw;->a:J

    iput-wide v1, p2, Lcom/bytedance/embedapplog/ba;->a:J

    .line 368
    iget-wide v1, p1, Lcom/bytedance/embedapplog/aw;->a:J

    add-long/2addr v1, v6

    div-long/2addr v1, p3

    iput-wide v1, p2, Lcom/bytedance/embedapplog/ba;->i:J

    .line 369
    iget-object p3, p0, Lcom/bytedance/embedapplog/as;->g:Lcom/bytedance/embedapplog/z;

    invoke-static {p3}, Lcom/bytedance/embedapplog/q;->a(Lcom/bytedance/embedapplog/z;)J

    move-result-wide p3

    iput-wide p3, p2, Lcom/bytedance/embedapplog/ba;->b:J

    .line 370
    iget-object p3, p1, Lcom/bytedance/embedapplog/aw;->e:Ljava/lang/String;

    iput-object p3, p2, Lcom/bytedance/embedapplog/ba;->e:Ljava/lang/String;

    .line 371
    iget-object p1, p1, Lcom/bytedance/embedapplog/aw;->f:Ljava/lang/String;

    iput-object p1, p2, Lcom/bytedance/embedapplog/ba;->f:Ljava/lang/String;

    .line 373
    :cond_9e
    sget-boolean p1, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz p1, :cond_c4

    .line 374
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "queryPage, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    :cond_c4
    return-object v3

    .line 357
    :catchall_c5
    move-exception p1

    if-eqz v8, :cond_cb

    .line 358
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_cb
    throw p1
.end method

.method private static a(Lcom/bytedance/embedapplog/aq;)V
    .registers 3

    .line 108
    sget-object v0, Lcom/bytedance/embedapplog/as;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/aq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method private a(Lcom/bytedance/embedapplog/ax;Ljava/util/HashMap;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/ax;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 528
    return-void
.end method

.method private a(Lcom/bytedance/embedapplog/aw;Z)Z
    .registers 3

    .line 176
    iget-boolean p1, p1, Lcom/bytedance/embedapplog/aw;->k:Z

    if-nez p1, :cond_8

    if-eqz p2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/ax;",
            ">;"
        }
    .end annotation

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    sget-object v1, Lcom/bytedance/embedapplog/as;->a:Ljava/util/HashMap;

    const-string v2, "pack"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/ax;

    .line 383
    nop

    .line 384
    nop

    .line 386
    const/4 v2, 0x0

    :try_start_12
    iget-object v3, p0, Lcom/bytedance/embedapplog/as;->i:Lcom/bytedance/embedapplog/as$a;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/as$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 387
    const-string v4, "SELECT * FROM pack ORDER BY local_time_ms DESC,_full DESC LIMIT 2"

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_36

    .line 388
    :goto_1e
    :try_start_1e
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 389
    invoke-virtual {v1}, Lcom/bytedance/embedapplog/ax;->g()Lcom/bytedance/embedapplog/aq;

    move-result-object v1

    check-cast v1, Lcom/bytedance/embedapplog/ax;

    .line 390
    invoke-virtual {v1, v3}, Lcom/bytedance/embedapplog/ax;->a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/aq;

    .line 391
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_34

    goto :goto_1e

    .line 396
    :cond_31
    if-eqz v3, :cond_40

    .line 397
    goto :goto_3d

    .line 393
    :catchall_34
    move-exception v1

    goto :goto_38

    :catchall_36
    move-exception v1

    move-object v3, v2

    .line 394
    :goto_38
    :try_start_38
    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_65

    .line 396
    if-eqz v3, :cond_40

    .line 397
    :goto_3d
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryPack, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    return-object v0

    .line 396
    :catchall_65
    move-exception v0

    if-eqz v3, :cond_6b

    .line 397
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6b
    throw v0
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/aq;",
            ">;)V"
        }
    .end annotation

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    nop

    .line 534
    :try_start_1c
    iget-object v0, p0, Lcom/bytedance/embedapplog/as;->i:Lcom/bytedance/embedapplog/as$a;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/as$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_4e

    .line 535
    :try_start_22
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 536
    nop

    .line 537
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/embedapplog/aq;

    .line 538
    invoke-virtual {v4}, Lcom/bytedance/embedapplog/aq;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3}, Lcom/bytedance/embedapplog/aq;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v5, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 539
    goto :goto_2b

    .line 540
    :cond_43
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catchall {:try_start_22 .. :try_end_46} :catchall_4c

    .line 546
    if-eqz v0, :cond_69

    .line 547
    :try_start_48
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_64

    goto :goto_69

    .line 541
    :catchall_4c
    move-exception v1

    goto :goto_52

    :catchall_4e
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 542
    :goto_52
    :try_start_52
    sget v2, Lcom/bytedance/embedapplog/as;->b:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr v2, p1

    sput v2, Lcom/bytedance/embedapplog/as;->b:I

    .line 543
    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_6b

    .line 546
    if-eqz v0, :cond_69

    .line 547
    :try_start_60
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_69

    .line 549
    :catchall_64
    move-exception p1

    .line 550
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 552
    goto :goto_6a

    .line 551
    :cond_69
    :goto_69
    nop

    .line 553
    :goto_6a
    return-void

    .line 545
    :catchall_6b
    move-exception p1

    .line 546
    if-eqz v0, :cond_77

    .line 547
    :try_start_6e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_77

    .line 549
    :catchall_72
    move-exception v0

    .line 550
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_78

    .line 551
    :cond_77
    :goto_77
    nop

    :goto_78
    throw p1
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/ax;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/ax;",
            ">;)V"
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResult, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 409
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 411
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 413
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 415
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 416
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6b

    .line 417
    move v8, v7

    :goto_45
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_6b

    .line 418
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bytedance/embedapplog/ax;

    iget v9, v9, Lcom/bytedance/embedapplog/ax;->i:I

    if-nez v9, :cond_5f

    .line 420
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bytedance/embedapplog/ax;

    invoke-direct {p0, v9, v0, v6}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/ax;Ljava/util/HashMap;Z)V

    goto :goto_68

    .line 423
    :cond_5f
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bytedance/embedapplog/ax;

    invoke-direct {p0, v9, v4, v7}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/ax;Ljava/util/HashMap;Z)V

    .line 417
    :goto_68
    add-int/lit8 v8, v8, 0x1

    goto :goto_45

    .line 427
    :cond_6b
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 428
    :goto_6f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 429
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/embedapplog/ax;

    .line 430
    iget v8, v4, Lcom/bytedance/embedapplog/ax;->i:I

    if-nez v8, :cond_9f

    .line 432
    iget v8, v4, Lcom/bytedance/embedapplog/ax;->j:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 433
    if-nez v8, :cond_9b

    .line 434
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 435
    iget v9, v4, Lcom/bytedance/embedapplog/ax;->j:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_9b
    invoke-direct {p0, v4, v8, v7}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/ax;Ljava/util/HashMap;Z)V

    .line 438
    goto :goto_b6

    :cond_9f
    iget v8, v4, Lcom/bytedance/embedapplog/ax;->i:I

    add-int/2addr v8, v6

    int-to-long v8, v8

    const-wide/16 v10, 0x5

    cmp-long v8, v8, v10

    if-lez v8, :cond_b3

    .line 440
    invoke-direct {p0, v4, v3, v7}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/ax;Ljava/util/HashMap;Z)V

    .line 441
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_b6

    .line 445
    :cond_b3
    invoke-direct {p0, v4, v5, v7}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/ax;Ljava/util/HashMap;Z)V

    .line 447
    :goto_b6
    goto :goto_6f

    .line 448
    :cond_b7
    nop

    .line 450
    :try_start_b8
    iget-object v0, p0, Lcom/bytedance/embedapplog/as;->i:Lcom/bytedance/embedapplog/as$a;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/as$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 451
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 452
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/ax;

    .line 453
    const-string v2, "DELETE FROM pack WHERE local_time_ms=?"

    new-array v3, v6, [Ljava/lang/String;

    iget-wide v4, v0, Lcom/bytedance/embedapplog/ax;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    goto :goto_c5

    .line 455
    :cond_e1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_100

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/embedapplog/ax;

    .line 456
    iget-wide v2, p2, Lcom/bytedance/embedapplog/ax;->a:J

    iget v0, p2, Lcom/bytedance/embedapplog/ax;->i:I

    add-int/2addr v0, v6

    iput v0, p2, Lcom/bytedance/embedapplog/ax;->i:I

    invoke-direct {p0, v2, v3, v0}, Lcom/bytedance/embedapplog/as;->a(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 457
    goto :goto_e5

    .line 458
    :cond_100
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_103
    .catchall {:try_start_b8 .. :try_end_103} :catchall_109

    .line 463
    if-eqz v1, :cond_118

    .line 464
    :try_start_105
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_108} :catch_113

    goto :goto_118

    .line 459
    :catchall_109
    move-exception p1

    .line 460
    :try_start_10a
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_11a

    .line 463
    if-eqz v1, :cond_118

    .line 464
    :try_start_10f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_112} :catch_113

    goto :goto_118

    .line 466
    :catch_113
    move-exception p1

    .line 467
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 469
    goto :goto_119

    .line 468
    :cond_118
    :goto_118
    nop

    .line 470
    :goto_119
    return-void

    .line 462
    :catchall_11a
    move-exception p1

    .line 463
    if-eqz v1, :cond_126

    .line 464
    :try_start_11d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_120} :catch_121

    goto :goto_126

    .line 466
    :catch_121
    move-exception p2

    .line 467
    invoke-static {p2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_127

    .line 468
    :cond_126
    :goto_126
    nop

    :goto_127
    throw p1
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 50

    .line 180
    move-object/from16 v7, p0

    sget-object v0, Lcom/bytedance/embedapplog/as;->a:Ljava/util/HashMap;

    const-string v1, "launch"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/bytedance/embedapplog/aw;

    .line 181
    const-string v1, "terminate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/bytedance/embedapplog/ba;

    .line 182
    const-string v1, "page"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/bytedance/embedapplog/ay;

    .line 183
    const-string v1, "eventv3"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Lcom/bytedance/embedapplog/av;

    .line 184
    const-string v1, "event"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Lcom/bytedance/embedapplog/at;

    .line 185
    const-string v1, "event_misc"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Lcom/bytedance/embedapplog/au;

    .line 186
    const-string v12, "pack"

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/ax;

    .line 187
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 189
    nop

    .line 191
    nop

    .line 193
    const/4 v11, 0x0

    const/16 v29, 0x0

    :try_start_4f
    iget-object v2, v7, Lcom/bytedance/embedapplog/as;->i:Lcom/bytedance/embedapplog/as$a;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/as$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_55} :catch_26a
    .catchall {:try_start_4f .. :try_end_55} :catchall_264

    .line 194
    :try_start_55
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 195
    const-string v2, "SELECT * FROM launch ORDER BY local_time_ms DESC LIMIT 5"

    invoke-virtual {v9, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5e} :catch_260
    .catchall {:try_start_55 .. :try_end_5e} :catchall_25c

    .line 196
    nop

    .line 197
    const-wide/high16 v30, -0x8000000000000000L

    const-wide v32, 0x7fffffffffffffffL

    move-object v8, v1

    move-wide/from16 v4, v30

    move-wide/from16 v2, v32

    move-object/from16 v1, p1

    .line 198
    :goto_6d
    :try_start_6d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    move-object/from16 v34, v12

    if-eqz v6, :cond_212

    .line 199
    invoke-virtual {v15, v10}, Lcom/bytedance/embedapplog/aw;->a(Landroid/database/Cursor;)Lcom/bytedance/embedapplog/aq;

    .line 201
    iget-object v6, v15, Lcom/bytedance/embedapplog/aw;->c:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/embedapplog/k;->c()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 202
    move-object/from16 v12, v34

    const/4 v11, 0x0

    goto :goto_6d

    .line 205
    :cond_88
    iget-object v6, v15, Lcom/bytedance/embedapplog/aw;->i:Ljava/lang/String;

    iget-object v11, v7, Lcom/bytedance/embedapplog/as;->h:Lcom/bytedance/embedapplog/aa;

    invoke-virtual {v11}, Lcom/bytedance/embedapplog/aa;->d()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_94} :catch_255
    .catchall {:try_start_6d .. :try_end_94} :catchall_24d

    if-eqz v6, :cond_af

    :try_start_96
    iget v6, v15, Lcom/bytedance/embedapplog/aw;->h:I

    iget-object v11, v7, Lcom/bytedance/embedapplog/as;->h:Lcom/bytedance/embedapplog/aa;

    .line 206
    invoke-virtual {v11}, Lcom/bytedance/embedapplog/aa;->c()I

    move-result v11
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9e} :catch_aa
    .catchall {:try_start_96 .. :try_end_9e} :catchall_a4

    if-eq v6, v11, :cond_a1

    goto :goto_af

    :cond_a1
    move-object/from16 v36, v1

    goto :goto_c8

    .line 255
    :catchall_a4
    move-exception v0

    move-object v1, v0

    move-object v8, v9

    move-object v11, v10

    goto/16 :goto_287

    .line 251
    :catch_aa
    move-exception v0

    move-object v8, v9

    move-object v11, v10

    goto/16 :goto_26e

    .line 207
    :cond_af
    :goto_af
    nop

    .line 208
    :try_start_b0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 209
    invoke-static {v6, v1}, Lcom/bytedance/embedapplog/bp;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 210
    const-string v1, "app_version"

    iget-object v11, v15, Lcom/bytedance/embedapplog/aw;->i:Ljava/lang/String;

    invoke-virtual {v6, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v1, "version_code"

    iget v11, v15, Lcom/bytedance/embedapplog/aw;->h:I

    invoke-virtual {v6, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v36, v6

    .line 214
    :goto_c8
    move-object/from16 v37, v13

    iget-wide v12, v15, Lcom/bytedance/embedapplog/aw;->a:J
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_cc} :catch_255
    .catchall {:try_start_b0 .. :try_end_cc} :catchall_24d

    cmp-long v1, v12, v2

    if-gez v1, :cond_d5

    .line 215
    :try_start_d0
    iget-wide v1, v15, Lcom/bytedance/embedapplog/aw;->a:J
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d2} :catch_aa
    .catchall {:try_start_d0 .. :try_end_d2} :catchall_a4

    move-wide/from16 v39, v1

    goto :goto_d7

    .line 214
    :cond_d5
    move-wide/from16 v39, v2

    .line 217
    :goto_d7
    :try_start_d7
    iget-wide v1, v15, Lcom/bytedance/embedapplog/aw;->a:J
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_d9} :catch_255
    .catchall {:try_start_d7 .. :try_end_d9} :catchall_24d

    cmp-long v1, v1, v4

    if-lez v1, :cond_e2

    .line 218
    :try_start_dd
    iget-wide v1, v15, Lcom/bytedance/embedapplog/aw;->a:J
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_df} :catch_aa
    .catchall {:try_start_dd .. :try_end_df} :catchall_a4

    move-wide/from16 v41, v1

    goto :goto_e4

    .line 217
    :cond_e2
    move-wide/from16 v41, v4

    .line 221
    :goto_e4
    move-object/from16 v13, v37

    :try_start_e6
    invoke-direct {v7, v15, v14, v13, v9}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aw;Lcom/bytedance/embedapplog/ba;Lcom/bytedance/embedapplog/ay;Landroid/database/sqlite/SQLiteDatabase;)Lorg/json/JSONArray;

    move-result-object v37

    .line 223
    const/4 v12, 0x3

    new-array v11, v12, [Lcom/bytedance/embedapplog/aq;

    aput-object v27, v11, v29

    const/4 v1, 0x1

    aput-object v26, v11, v1

    const/4 v1, 0x2

    aput-object v28, v11, v1

    .line 224
    new-array v6, v12, [Lorg/json/JSONArray;

    .line 225
    const/4 v3, 0x0

    iget-object v5, v15, Lcom/bytedance/embedapplog/aw;->c:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v4, v9

    move-object/from16 v43, v6

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/embedapplog/as;->a([Lcom/bytedance/embedapplog/aq;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v1

    .line 227
    invoke-virtual/range {v37 .. v37}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_108} :catch_255
    .catchall {:try_start_e6 .. :try_end_108} :catchall_24d

    if-lez v2, :cond_135

    .line 228
    :try_start_10a
    iget-wide v2, v15, Lcom/bytedance/embedapplog/aw;->a:J

    const/16 v20, 0x0

    aget-object v23, v43, v29

    const/4 v4, 0x1

    aget-object v24, v43, v4

    const/4 v4, 0x2

    aget-object v25, v43, v4

    move-object/from16 v16, v0

    move-wide/from16 v17, v2

    move-object/from16 v19, v36

    move-object/from16 v21, v14

    move-object/from16 v22, v37

    invoke-virtual/range {v16 .. v25}, Lcom/bytedance/embedapplog/ax;->a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/aw;Lcom/bytedance/embedapplog/ba;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_123} :catch_aa
    .catchall {:try_start_10a .. :try_end_123} :catchall_a4

    move-object v2, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move-object/from16 v35, v11

    move-object/from16 v38, v13

    move-object/from16 v46, v14

    move-object v6, v15

    move-object/from16 v3, v34

    const/4 v4, 0x0

    const/16 v34, 0x1

    goto :goto_165

    .line 230
    :cond_135
    const/4 v2, 0x1

    :try_start_136
    iput-boolean v2, v15, Lcom/bytedance/embedapplog/aw;->j:Z

    .line 231
    iget-wide v3, v15, Lcom/bytedance/embedapplog/aw;->a:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v16, v43, v29

    aget-object v17, v43, v2

    const/16 v18, 0x2

    aget-object v19, v43, v18
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_144} :catch_255
    .catchall {:try_start_136 .. :try_end_144} :catchall_24d

    move-object v2, v8

    move-object v8, v0

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move-wide v9, v3

    move-object/from16 v35, v11

    const/4 v4, 0x0

    move-object/from16 v11, v36

    move-object/from16 v3, v34

    const/16 v34, 0x1

    move-object v12, v15

    move-object/from16 v38, v13

    move-object v13, v5

    move-object/from16 v46, v14

    move-object v14, v6

    move-object v6, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v19

    :try_start_162
    invoke-virtual/range {v8 .. v17}, Lcom/bytedance/embedapplog/ax;->a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/aw;Lcom/bytedance/embedapplog/ba;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 233
    :goto_165
    sget-boolean v5, Lcom/bytedance/embedapplog/bo;->b:Z
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_167} :catch_20e
    .catchall {:try_start_162 .. :try_end_167} :catchall_20a

    if-eqz v5, :cond_19d

    .line 234
    :try_start_169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packer launch, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v37 .. v37}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-gtz v8, :cond_17d

    move/from16 v12, v34

    goto :goto_17f

    :cond_17d
    move/from16 v12, v29

    :goto_17f
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", sid:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v6, Lcom/bytedance/embedapplog/aw;->c:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_196} :catch_20e
    .catchall {:try_start_169 .. :try_end_196} :catchall_197

    goto :goto_19d

    .line 255
    :catchall_197
    move-exception v0

    move-object v1, v0

    move-object/from16 v8, v44

    goto/16 :goto_252

    .line 237
    :cond_19d
    :goto_19d
    :try_start_19d
    invoke-virtual {v0, v2}, Lcom/bytedance/embedapplog/ax;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1a1} :catch_20e
    .catchall {:try_start_19d .. :try_end_1a1} :catchall_20a

    move-object/from16 v8, v44

    :try_start_1a3
    invoke-virtual {v8, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v5, v1

    move-object v9, v2

    .line 239
    :goto_1a8
    const/4 v10, 0x3

    if-ge v5, v10, :cond_1f2

    .line 240
    iget-object v11, v6, Lcom/bytedance/embedapplog/aw;->c:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object v12, v3

    move v3, v5

    move-object v13, v4

    move-object v4, v8

    move-object v5, v11

    move-object v11, v6

    move-object/from16 v6, v43

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/embedapplog/as;->a([Lcom/bytedance/embedapplog/aq;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v5

    .line 241
    aget-object v1, v43, v29

    if-nez v1, :cond_1cf

    aget-object v1, v43, v34

    if-nez v1, :cond_1cf

    const/4 v1, 0x2

    aget-object v2, v43, v1

    if-eqz v2, :cond_1cb

    goto :goto_1d0

    :cond_1cb
    move-object v6, v11

    move-object v3, v12

    move-object v4, v13

    goto :goto_1a8

    :cond_1cf
    const/4 v1, 0x2

    .line 242
    :goto_1d0
    iget-wide v2, v11, Lcom/bytedance/embedapplog/aw;->a:J

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aget-object v23, v43, v29

    aget-object v24, v43, v34

    aget-object v25, v43, v1

    move-object/from16 v16, v0

    move-wide/from16 v17, v2

    move-object/from16 v19, v36

    invoke-virtual/range {v16 .. v25}, Lcom/bytedance/embedapplog/ax;->a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/aw;Lcom/bytedance/embedapplog/ba;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 243
    invoke-virtual {v0, v9}, Lcom/bytedance/embedapplog/ax;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v8, v12, v13, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-object v6, v11

    move-object v3, v12

    move-object v4, v13

    goto :goto_1a8

    .line 246
    :cond_1f2
    move-object v12, v3

    move-object v13, v4

    move-object v11, v6

    move-object v15, v11

    move-object v11, v13

    move-object/from16 v1, v36

    move-object/from16 v13, v38

    move-wide/from16 v2, v39

    move-wide/from16 v4, v41

    move-object/from16 v10, v45

    move-object/from16 v14, v46

    move-object/from16 v47, v9

    move-object v9, v8

    move-object/from16 v8, v47

    goto/16 :goto_6d

    .line 255
    :catchall_20a
    move-exception v0

    move-object/from16 v8, v44

    goto :goto_251

    .line 251
    :catch_20e
    move-exception v0

    move-object/from16 v8, v44

    goto :goto_259

    .line 247
    :cond_212
    move-object v8, v9

    move-object/from16 v45, v10

    const/4 v1, 0x2

    const/16 v34, 0x1

    cmp-long v0, v2, v32

    if-eqz v0, :cond_233

    cmp-long v0, v4, v30

    if-eqz v0, :cond_233

    .line 248
    const-string v0, "DELETE FROM launch WHERE local_time_ms>=? AND local_time_ms<=?"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v29

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v34

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_233
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_236} :catch_24b
    .catchall {:try_start_1a3 .. :try_end_236} :catchall_249

    .line 255
    if-eqz v45, :cond_23b

    .line 256
    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_23b
    if-eqz v8, :cond_247

    .line 260
    :try_start_23d
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_240
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_240} :catch_241

    goto :goto_247

    .line 262
    :catch_241
    move-exception v0

    move-object v1, v0

    .line 263
    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 265
    goto :goto_248

    .line 264
    :cond_247
    :goto_247
    nop

    .line 266
    :goto_248
    return v34

    .line 255
    :catchall_249
    move-exception v0

    goto :goto_251

    .line 251
    :catch_24b
    move-exception v0

    goto :goto_259

    .line 255
    :catchall_24d
    move-exception v0

    move-object v8, v9

    move-object/from16 v45, v10

    :goto_251
    move-object v1, v0

    :goto_252
    move-object/from16 v11, v45

    goto :goto_287

    .line 251
    :catch_255
    move-exception v0

    move-object v8, v9

    move-object/from16 v45, v10

    :goto_259
    move-object/from16 v11, v45

    goto :goto_26e

    .line 255
    :catchall_25c
    move-exception v0

    move-object v8, v9

    move-object v13, v11

    goto :goto_286

    .line 251
    :catch_260
    move-exception v0

    move-object v8, v9

    move-object v13, v11

    goto :goto_26e

    .line 255
    :catchall_264
    move-exception v0

    move-object v13, v11

    move-object v1, v0

    move-object v8, v13

    move-object v11, v8

    goto :goto_287

    .line 251
    :catch_26a
    move-exception v0

    move-object v13, v11

    move-object v8, v13

    move-object v11, v8

    .line 252
    :goto_26e
    :try_start_26e
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V
    :try_end_271
    .catchall {:try_start_26e .. :try_end_271} :catchall_285

    .line 253
    nop

    .line 255
    if-eqz v11, :cond_277

    .line 256
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_277
    if-eqz v8, :cond_283

    .line 260
    :try_start_279
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_27c
    .catch Ljava/lang/Exception; {:try_start_279 .. :try_end_27c} :catch_27d

    goto :goto_283

    .line 262
    :catch_27d
    move-exception v0

    move-object v1, v0

    .line 263
    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_284

    .line 264
    :cond_283
    :goto_283
    nop

    .line 253
    :goto_284
    return v29

    .line 255
    :catchall_285
    move-exception v0

    :goto_286
    move-object v1, v0

    :goto_287
    if-eqz v11, :cond_28c

    .line 256
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_28c
    if-eqz v8, :cond_298

    .line 260
    :try_start_28e
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_28e .. :try_end_291} :catch_292

    goto :goto_298

    .line 262
    :catch_292
    move-exception v0

    move-object v2, v0

    .line 263
    invoke-static {v2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_299

    .line 264
    :cond_298
    :goto_298
    nop

    :goto_299
    throw v1
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/embedapplog/aw;Z)Z
    .registers 29

    .line 124
    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move/from16 v8, p3

    sget-object v1, Lcom/bytedance/embedapplog/as;->a:Ljava/util/HashMap;

    const-string v2, "eventv3"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/embedapplog/av;

    .line 125
    const-string v3, "event"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/embedapplog/at;

    .line 126
    const-string v4, "event_misc"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/embedapplog/au;

    .line 127
    const-string v9, "pack"

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/bytedance/embedapplog/ax;

    .line 128
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 129
    nop

    .line 131
    const/4 v13, 0x0

    const/16 v20, 0x0

    :try_start_32
    iget-object v1, v7, Lcom/bytedance/embedapplog/as;->i:Lcom/bytedance/embedapplog/as$a;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/as$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_38} :catch_1a6
    .catchall {:try_start_32 .. :try_end_38} :catchall_1a2

    .line 132
    :try_start_38
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 133
    const/4 v12, 0x3

    new-array v10, v12, [Lcom/bytedance/embedapplog/aq;

    aput-object v3, v10, v20

    const/4 v6, 0x1

    aput-object v2, v10, v6

    const/16 v21, 0x2

    aput-object v4, v10, v21

    .line 134
    new-array v5, v12, [Lorg/json/JSONArray;

    .line 135
    const/4 v3, 0x0

    iget-object v4, v0, Lcom/bytedance/embedapplog/aw;->c:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v16, v4

    move-object v4, v11

    move-object/from16 v22, v5

    move-object/from16 v5, v16

    move-object/from16 v23, v9

    move v9, v6

    move-object/from16 v6, v22

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/embedapplog/as;->a([Lcom/bytedance/embedapplog/aq;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v1

    .line 136
    aget-object v2, v22, v20
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_61} :catch_19e
    .catchall {:try_start_38 .. :try_end_61} :catchall_199

    if-eqz v2, :cond_75

    :try_start_63
    aget-object v2, v22, v20

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_69} :catch_71
    .catchall {:try_start_63 .. :try_end_69} :catchall_6c

    if-gtz v2, :cond_93

    goto :goto_75

    .line 161
    :catchall_6c
    move-exception v0

    move-object v1, v0

    move-object v13, v11

    goto/16 :goto_1bc

    .line 157
    :catch_71
    move-exception v0

    move-object v13, v11

    goto/16 :goto_1a8

    .line 136
    :cond_75
    :goto_75
    :try_start_75
    aget-object v2, v22, v9
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_77} :catch_19e
    .catchall {:try_start_75 .. :try_end_77} :catchall_199

    if-eqz v2, :cond_81

    :try_start_79
    aget-object v2, v22, v9

    .line 137
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7f} :catch_71
    .catchall {:try_start_79 .. :try_end_7f} :catchall_6c

    if-gtz v2, :cond_93

    :cond_81
    :try_start_81
    aget-object v2, v22, v21
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_83} :catch_19e
    .catchall {:try_start_81 .. :try_end_83} :catchall_199

    if-eqz v2, :cond_8d

    :try_start_85
    aget-object v2, v22, v21

    .line 138
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8b} :catch_71
    .catchall {:try_start_85 .. :try_end_8b} :catchall_6c

    if-gtz v2, :cond_93

    .line 139
    :cond_8d
    :try_start_8d
    invoke-direct {v7, v0, v8}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aw;Z)Z

    move-result v2
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_91} :catch_19e
    .catchall {:try_start_8d .. :try_end_91} :catchall_199

    if-eqz v2, :cond_101

    .line 140
    :cond_93
    :try_start_93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v7, v0, v8}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aw;Z)Z

    move-result v4

    if-eqz v4, :cond_9f

    move-object v4, v0

    goto :goto_a0

    :cond_9f
    move-object v4, v13

    :goto_a0
    const/4 v5, 0x0

    const/16 v16, 0x0

    aget-object v17, v22, v20

    aget-object v18, v22, v9

    aget-object v19, v22, v21
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a9} :catch_fc
    .catchall {:try_start_93 .. :try_end_a9} :catchall_f6

    move-object/from16 v24, v10

    move-object v10, v15

    move-object v6, v11

    move-wide v11, v2

    move-object v3, v13

    move-object/from16 v13, p1

    move-object v2, v14

    move-object v14, v4

    move-object v4, v15

    move-object v15, v5

    :try_start_b5
    invoke-virtual/range {v10 .. v19}, Lcom/bytedance/embedapplog/ax;->a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/aw;Lcom/bytedance/embedapplog/ba;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 142
    invoke-virtual {v4, v2}, Lcom/bytedance/embedapplog/ax;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v14

    move-object/from16 v15, v23

    invoke-virtual {v6, v15, v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 143
    sget-boolean v2, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz v2, :cond_ed

    invoke-direct {v7, v0, v8}, Lcom/bytedance/embedapplog/as;->a(Lcom/bytedance/embedapplog/aw;Z)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send launch, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/bytedance/embedapplog/aw;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", hadUI:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    :cond_ed
    iput-boolean v9, v0, Lcom/bytedance/embedapplog/aw;->k:Z
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_ef} :catch_f4
    .catchall {:try_start_b5 .. :try_end_ef} :catchall_f2

    move v5, v1

    move-object v8, v14

    goto :goto_10b

    .line 161
    :catchall_f2
    move-exception v0

    goto :goto_f8

    .line 157
    :catch_f4
    move-exception v0

    goto :goto_fe

    .line 161
    :catchall_f6
    move-exception v0

    move-object v6, v11

    :goto_f8
    move-object v1, v0

    move-object v13, v6

    goto/16 :goto_1bc

    .line 157
    :catch_fc
    move-exception v0

    move-object v6, v11

    :goto_fe
    move-object v13, v6

    goto/16 :goto_1a8

    .line 139
    :cond_101
    move-object/from16 v24, v10

    move-object v6, v11

    move-object v3, v13

    move-object v2, v14

    move-object v4, v15

    move-object/from16 v15, v23

    move v5, v1

    move-object v8, v2

    .line 149
    :goto_10b
    const/4 v14, 0x3

    if-ge v5, v14, :cond_182

    .line 150
    :try_start_10e
    iget-object v10, v0, Lcom/bytedance/embedapplog/aw;->c:Ljava/lang/String;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_110} :catch_17f
    .catchall {:try_start_10e .. :try_end_110} :catchall_17c

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object v13, v3

    move v3, v5

    move-object v11, v4

    move-object v4, v6

    move-object v5, v10

    move-object v12, v6

    move-object/from16 v6, v22

    :try_start_11c
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/embedapplog/as;->a([Lcom/bytedance/embedapplog/aq;ILandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Lorg/json/JSONArray;)I

    move-result v5

    .line 151
    aget-object v1, v22, v20
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_122} :catch_179
    .catchall {:try_start_11c .. :try_end_122} :catchall_176

    if-eqz v1, :cond_136

    :try_start_124
    aget-object v1, v22, v20

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_12a} :catch_132
    .catchall {:try_start_124 .. :try_end_12a} :catchall_12d

    if-gtz v1, :cond_142

    goto :goto_136

    .line 161
    :catchall_12d
    move-exception v0

    move-object v1, v0

    move-object v13, v12

    goto/16 :goto_1bc

    .line 157
    :catch_132
    move-exception v0

    move-object v13, v12

    goto/16 :goto_1a8

    .line 151
    :cond_136
    :goto_136
    :try_start_136
    aget-object v1, v22, v9

    if-eqz v1, :cond_16b

    aget-object v1, v22, v9

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_16b

    .line 152
    :cond_142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    aget-object v17, v22, v20

    aget-object v18, v22, v9

    aget-object v19, v22, v21
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_150} :catch_179
    .catchall {:try_start_136 .. :try_end_150} :catchall_176

    move-object v10, v11

    move-object v6, v11

    move-object v9, v12

    move-wide v11, v1

    move-object v1, v13

    move-object/from16 v13, p1

    move v2, v14

    move-object v14, v3

    move-object v3, v15

    move-object v15, v4

    :try_start_15b
    invoke-virtual/range {v10 .. v19}, Lcom/bytedance/embedapplog/ax;->a(JLorg/json/JSONObject;Lcom/bytedance/embedapplog/aw;Lcom/bytedance/embedapplog/ba;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 153
    invoke-virtual {v6, v8}, Lcom/bytedance/embedapplog/ax;->b(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v9, v3, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-object v15, v3

    move-object v4, v6

    move-object v6, v9

    const/4 v9, 0x1

    move-object v3, v1

    goto :goto_10b

    .line 151
    :cond_16b
    move-object v6, v11

    move-object v9, v12

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    .line 149
    move-object v15, v3

    move-object v4, v6

    move-object v6, v9

    const/4 v9, 0x1

    move-object v3, v1

    goto :goto_10b

    .line 161
    :catchall_176
    move-exception v0

    move-object v9, v12

    goto :goto_19b

    .line 157
    :catch_179
    move-exception v0

    move-object v9, v12

    goto :goto_1a0

    .line 161
    :catchall_17c
    move-exception v0

    move-object v9, v6

    goto :goto_19b

    .line 157
    :catch_17f
    move-exception v0

    move-object v9, v6

    goto :goto_1a0

    .line 156
    :cond_182
    move-object v9, v6

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_186} :catch_197
    .catchall {:try_start_15b .. :try_end_186} :catchall_195

    .line 162
    if-eqz v9, :cond_192

    .line 163
    :try_start_188
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_18b} :catch_18c

    goto :goto_192

    .line 165
    :catch_18c
    move-exception v0

    move-object v1, v0

    .line 166
    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 168
    goto :goto_193

    .line 167
    :cond_192
    :goto_192
    nop

    .line 169
    :goto_193
    const/4 v1, 0x1

    return v1

    .line 161
    :catchall_195
    move-exception v0

    goto :goto_19b

    .line 157
    :catch_197
    move-exception v0

    goto :goto_1a0

    .line 161
    :catchall_199
    move-exception v0

    move-object v9, v11

    :goto_19b
    move-object v1, v0

    move-object v13, v9

    goto :goto_1bc

    .line 157
    :catch_19e
    move-exception v0

    move-object v9, v11

    :goto_1a0
    move-object v13, v9

    goto :goto_1a8

    .line 161
    :catchall_1a2
    move-exception v0

    move-object v1, v13

    :goto_1a4
    move-object v1, v0

    goto :goto_1bc

    .line 157
    :catch_1a6
    move-exception v0

    move-object v1, v13

    .line 158
    :goto_1a8
    :try_start_1a8
    invoke-static {v0}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V
    :try_end_1ab
    .catchall {:try_start_1a8 .. :try_end_1ab} :catchall_1ba

    .line 159
    nop

    .line 162
    if-eqz v13, :cond_1b8

    .line 163
    :try_start_1ae
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1b1} :catch_1b2

    goto :goto_1b8

    .line 165
    :catch_1b2
    move-exception v0

    move-object v1, v0

    .line 166
    invoke-static {v1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_1b9

    .line 167
    :cond_1b8
    :goto_1b8
    nop

    .line 159
    :goto_1b9
    return v20

    .line 161
    :catchall_1ba
    move-exception v0

    goto :goto_1a4

    .line 162
    :goto_1bc
    if-eqz v13, :cond_1c8

    .line 163
    :try_start_1be
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1c1} :catch_1c2

    goto :goto_1c8

    .line 165
    :catch_1c2
    move-exception v0

    move-object v2, v0

    .line 166
    invoke-static {v2}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_1c9

    .line 167
    :cond_1c8
    :goto_1c8
    nop

    :goto_1c9
    throw v1
.end method
