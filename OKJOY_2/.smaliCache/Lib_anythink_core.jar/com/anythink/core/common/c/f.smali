.class public Lcom/anythink/core/common/c/f;
.super Lcom/anythink/core/common/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/c/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/c/a<",
        "Lcom/anythink/core/common/d/x;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Lcom/anythink/core/common/c/f;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/c/b;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/anythink/core/common/c/a;-><init>(Lcom/anythink/core/common/c/b;)V

    .line 24
    const-class p1, Lcom/anythink/core/common/c/f;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/c/f;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/f;
    .registers 2

    .line 33
    sget-object v0, Lcom/anythink/core/common/c/f;->c:Lcom/anythink/core/common/c/f;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/anythink/core/common/c/f;

    invoke-direct {v0, p0}, Lcom/anythink/core/common/c/f;-><init>(Lcom/anythink/core/common/c/b;)V

    sput-object v0, Lcom/anythink/core/common/c/f;->c:Lcom/anythink/core/common/c/f;

    .line 36
    :cond_b
    sget-object p0, Lcom/anythink/core/common/c/f;->c:Lcom/anythink/core/common/c/f;

    return-object p0
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/x;
    .registers 9

    .line 219
    if-eqz p0, :cond_bd

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_bd

    .line 220
    new-instance v0, Lcom/anythink/core/common/d/x;

    invoke-direct {v0}, Lcom/anythink/core/common/d/x;-><init>()V

    .line 221
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/anythink/core/common/d/x;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 222
    :goto_14
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 224
    const-string v1, "format"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/anythink/core/common/d/x;->a:I

    .line 225
    const-string v1, "placement_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/x;->b:Ljava/lang/String;

    .line 227
    new-instance v1, Lcom/anythink/core/common/d/x$a;

    invoke-direct {v1}, Lcom/anythink/core/common/d/x$a;-><init>()V

    .line 228
    const-string v2, "adsource_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/d/x$a;->a:Ljava/lang/String;

    .line 229
    const-string v2, "hour_time"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/d/x$a;->b:Ljava/lang/String;

    .line 230
    const-string v2, "date_time"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/common/d/x$a;->c:Ljava/lang/String;

    .line 233
    iget-object v2, v1, Lcom/anythink/core/common/d/x$a;->b:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_67

    .line 234
    iput v3, v1, Lcom/anythink/core/common/d/x$a;->e:I

    goto :goto_73

    .line 236
    :cond_67
    const-string v2, "hour_imp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/d/x$a;->e:I

    .line 238
    :goto_73
    iget v2, v0, Lcom/anythink/core/common/d/x;->d:I

    iget v4, v1, Lcom/anythink/core/common/d/x$a;->e:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/anythink/core/common/d/x;->d:I

    .line 241
    iget-object v2, v1, Lcom/anythink/core/common/d/x$a;->c:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 242
    iput v3, v1, Lcom/anythink/core/common/d/x$a;->d:I

    goto :goto_91

    .line 244
    :cond_85
    const-string v2, "date_imp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/d/x$a;->d:I

    .line 246
    :goto_91
    iget v2, v0, Lcom/anythink/core/common/d/x;->c:I

    iget v3, v1, Lcom/anythink/core/common/d/x$a;->d:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/anythink/core/common/d/x;->c:I

    .line 249
    const-string v2, "show_time"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/d/x$a;->f:J

    .line 250
    iget-wide v2, v1, Lcom/anythink/core/common/d/x$a;->f:J

    iget-wide v4, v0, Lcom/anythink/core/common/d/x;->e:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_b0

    .line 251
    iget-wide v2, v1, Lcom/anythink/core/common/d/x$a;->f:J

    iput-wide v2, v0, Lcom/anythink/core/common/d/x;->e:J

    .line 254
    :cond_b0
    iget-object v2, v0, Lcom/anythink/core/common/d/x;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lcom/anythink/core/common/d/x$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    goto/16 :goto_14

    .line 256
    :cond_b9
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 257
    return-object v0

    .line 259
    :cond_bd
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/x$a;
    .registers 5

    .line 271
    if-eqz p0, :cond_70

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_70

    .line 272
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 273
    new-instance v0, Lcom/anythink/core/common/d/x$a;

    invoke-direct {v0}, Lcom/anythink/core/common/d/x$a;-><init>()V

    .line 274
    const-string v1, "adsource_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/x$a;->a:Ljava/lang/String;

    .line 275
    const-string v1, "hour_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/x$a;->b:Ljava/lang/String;

    .line 276
    const-string v1, "date_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/x$a;->c:Ljava/lang/String;

    .line 279
    iget-object v1, v0, Lcom/anythink/core/common/d/x$a;->b:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_40

    .line 280
    iput v1, v0, Lcom/anythink/core/common/d/x$a;->e:I

    goto :goto_4c

    .line 282
    :cond_40
    const-string p2, "hour_imp"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, v0, Lcom/anythink/core/common/d/x$a;->e:I

    .line 286
    :goto_4c
    iget-object p2, v0, Lcom/anythink/core/common/d/x$a;->c:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_57

    .line 287
    iput v1, v0, Lcom/anythink/core/common/d/x$a;->d:I

    goto :goto_63

    .line 289
    :cond_57
    const-string p1, "date_imp"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, v0, Lcom/anythink/core/common/d/x$a;->d:I

    .line 293
    :goto_63
    const-string p1, "show_time"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    iput-wide p0, v0, Lcom/anythink/core/common/d/x$a;->f:J

    .line 294
    return-object v0

    .line 296
    :cond_70
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 6

    .line 196
    nop

    .line 197
    invoke-virtual {p0}, Lcom/anythink/core/common/c/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "SELECT adsource_id FROM placement_ad_impression WHERE adsource_id=? GROUP BY adsource_id"

    invoke-virtual {v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 198
    if-eqz p1, :cond_1d

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1d

    .line 199
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 200
    return v1

    .line 202
    :cond_1d
    if-eqz p1, :cond_22

    .line 203
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_22
    return v3
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/String;Lcom/anythink/core/common/d/x$a;)J
    .registers 11

    monitor-enter p0

    .line 165
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/core/common/c/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_b2

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_b0

    if-nez p3, :cond_d

    goto/16 :goto_b0

    .line 169
    :cond_d
    :try_start_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 170
    const-string v3, "format"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string p1, "placement_id"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string p1, "adsource_id"

    iget-object p2, p3, Lcom/anythink/core/common/d/x$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string p1, "hour_time"

    iget-object p2, p3, Lcom/anythink/core/common/d/x$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string p1, "hour_imp"

    iget p2, p3, Lcom/anythink/core/common/d/x$a;->e:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string p1, "date_time"

    iget-object p2, p3, Lcom/anythink/core/common/d/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string p1, "date_imp"

    iget p2, p3, Lcom/anythink/core/common/d/x$a;->d:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string p1, "show_time"

    iget-wide v3, p3, Lcom/anythink/core/common/d/x$a;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    iget-object p1, p3, Lcom/anythink/core/common/d/x$a;->a:Ljava/lang/String;

    .line 2196
    const-string p2, "SELECT adsource_id FROM placement_ad_impression WHERE adsource_id=? GROUP BY adsource_id"

    .line 2197
    invoke-virtual {p0}, Lcom/anythink/core/common/c/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2198
    if-eqz p1, :cond_75

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_75

    .line 2199
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2200
    move p1, v4

    goto :goto_7b

    .line 2202
    :cond_75
    if-eqz p1, :cond_7a

    .line 2203
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2205
    :cond_7a
    move p1, v6

    .line 179
    :goto_7b
    if-eqz p1, :cond_99

    .line 180
    iget-object p1, p0, Lcom/anythink/core/common/c/f;->b:Ljava/lang/String;

    const-string p2, "existsByTime--update"

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string p1, "adsource_id = ? "

    .line 182
    invoke-virtual {p0}, Lcom/anythink/core/common/c/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v3, "placement_ad_impression"

    new-array v4, v4, [Ljava/lang/String;

    iget-object p3, p3, Lcom/anythink/core/common/d/x$a;->a:Ljava/lang/String;

    aput-object p3, v4, v6

    invoke-virtual {p2, v3, v0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_96} :catch_ad
    .catchall {:try_start_d .. :try_end_96} :catchall_b2

    int-to-long p1, p1

    monitor-exit p0

    return-wide p1

    .line 184
    :cond_99
    :try_start_99
    iget-object p1, p0, Lcom/anythink/core/common/c/f;->b:Ljava/lang/String;

    const-string p2, "existsByTime--insert"

    invoke-static {p1, p2}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/anythink/core/common/c/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "placement_ad_impression"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_ab} :catch_ad
    .catchall {:try_start_99 .. :try_end_ab} :catchall_b2

    monitor-exit p0

    return-wide p1

    .line 187
    :catch_ad
    move-exception p1

    .line 192
    monitor-exit p0

    return-wide v1

    .line 166
    :cond_b0
    :goto_b0
    monitor-exit p0

    return-wide v1

    .line 164
    :catchall_b2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/x$a;
    .registers 7

    monitor-enter p0

    .line 138
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM placement_ad_impression WHERE adsource_id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\' AND placement_id=\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_c9

    .line 140
    nop

    .line 142
    const/4 p2, 0x0

    :try_start_22
    invoke-virtual {p0}, Lcom/anythink/core/common/c/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2a} :catch_c2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_2a} :catch_b0
    .catchall {:try_start_22 .. :try_end_2a} :catchall_ab

    .line 143
    nop

    .line 1271
    if-eqz p1, :cond_a2

    :try_start_2d
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a2

    .line 1272
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1273
    new-instance v0, Lcom/anythink/core/common/d/x$a;

    invoke-direct {v0}, Lcom/anythink/core/common/d/x$a;-><init>()V

    .line 1274
    const-string v1, "adsource_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/x$a;->a:Ljava/lang/String;

    .line 1275
    const-string v1, "hour_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/x$a;->b:Ljava/lang/String;

    .line 1276
    const-string v1, "date_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/common/d/x$a;->c:Ljava/lang/String;

    .line 1279
    iget-object v1, v0, Lcom/anythink/core/common/d/x$a;->b:Ljava/lang/String;

    invoke-static {v1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v1, 0x0

    if-nez p4, :cond_6b

    .line 1280
    iput v1, v0, Lcom/anythink/core/common/d/x$a;->e:I

    goto :goto_77

    .line 1282
    :cond_6b
    const-string p4, "hour_imp"

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    iput p4, v0, Lcom/anythink/core/common/d/x$a;->e:I

    .line 1286
    :goto_77
    iget-object p4, v0, Lcom/anythink/core/common/d/x$a;->c:Ljava/lang/String;

    invoke-static {p4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_82

    .line 1287
    iput v1, v0, Lcom/anythink/core/common/d/x$a;->d:I

    goto :goto_8e

    .line 1289
    :cond_82
    const-string p3, "date_imp"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    iput p3, v0, Lcom/anythink/core/common/d/x$a;->d:I

    .line 1293
    :goto_8e
    const-string p3, "show_time"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    iput-wide p3, v0, Lcom/anythink/core/common/d/x$a;->f:J
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_9a} :catch_a0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2d .. :try_end_9a} :catch_9e
    .catchall {:try_start_2d .. :try_end_9a} :catchall_9c

    .line 1294
    move-object p2, v0

    goto :goto_a3

    .line 151
    :catchall_9c
    move-exception p3

    goto :goto_ad

    .line 149
    :catch_9e
    move-exception p3

    goto :goto_b2

    .line 145
    :catch_a0
    move-exception p3

    goto :goto_c4

    .line 1296
    :cond_a2
    nop

    .line 144
    :goto_a3
    nop

    .line 156
    if-eqz p1, :cond_a9

    .line 157
    :try_start_a6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_c9

    .line 144
    :cond_a9
    monitor-exit p0

    return-object p2

    .line 151
    :catchall_ab
    move-exception p1

    move-object p1, p2

    .line 156
    :goto_ad
    if-eqz p1, :cond_c7

    .line 157
    goto :goto_c6

    .line 149
    :catch_b0
    move-exception p1

    move-object p1, p2

    .line 150
    :goto_b2
    :try_start_b2
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_bb

    .line 156
    if-eqz p1, :cond_c7

    .line 157
    :goto_b7
    :try_start_b7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_c7

    .line 156
    :catchall_bb
    move-exception p2

    if-eqz p1, :cond_c1

    .line 157
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_c1
    throw p2
    :try_end_c2
    .catchall {:try_start_b7 .. :try_end_c2} :catchall_c9

    .line 145
    :catch_c2
    move-exception p1

    move-object p1, p2

    .line 156
    :goto_c4
    if-eqz p1, :cond_c7

    .line 157
    :goto_c6
    goto :goto_b7

    .line 160
    :cond_c7
    :goto_c7
    monitor-exit p0

    return-object p2

    .line 137
    :catchall_c9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/x;
    .registers 6

    monitor-enter p0

    .line 112
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM placement_ad_impression WHERE placement_id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_50

    .line 114
    nop

    .line 116
    const/4 v0, 0x0

    :try_start_18
    invoke-virtual {p0}, Lcom/anythink/core/common/c/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_20} :catch_49
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_20} :catch_37
    .catchall {:try_start_18 .. :try_end_20} :catchall_32

    .line 117
    :try_start_20
    invoke-static {p1, p2, p3}, Lcom/anythink/core/common/c/f;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/x;

    move-result-object p2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_24} :catch_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_24} :catch_2e
    .catchall {:try_start_20 .. :try_end_24} :catchall_2c

    .line 118
    nop

    .line 130
    if-eqz p1, :cond_2a

    .line 131
    :try_start_27
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_50

    .line 118
    :cond_2a
    monitor-exit p0

    return-object p2

    .line 125
    :catchall_2c
    move-exception p2

    goto :goto_34

    .line 123
    :catch_2e
    move-exception p2

    goto :goto_39

    .line 119
    :catch_30
    move-exception p2

    goto :goto_4b

    .line 125
    :catchall_32
    move-exception p1

    move-object p1, v0

    .line 130
    :goto_34
    if-eqz p1, :cond_4e

    .line 131
    goto :goto_4d

    .line 123
    :catch_37
    move-exception p1

    move-object p1, v0

    .line 124
    :goto_39
    :try_start_39
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_42

    .line 130
    if-eqz p1, :cond_4e

    .line 131
    :goto_3e
    :try_start_3e
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4e

    .line 130
    :catchall_42
    move-exception p2

    if-eqz p1, :cond_48

    .line 131
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_48
    throw p2
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_50

    .line 119
    :catch_49
    move-exception p1

    move-object p1, v0

    .line 130
    :goto_4b
    if-eqz p1, :cond_4e

    .line 131
    :goto_4d
    goto :goto_3e

    .line 134
    :cond_4e
    :goto_4e
    monitor-exit p0

    return-object v0

    .line 111
    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/d/x;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 41
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM placement_ad_impression WHERE format=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_115

    .line 45
    nop

    .line 47
    const/4 v1, 0x0

    :try_start_1d
    invoke-virtual {p0}, Lcom/anythink/core/common/c/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_fa

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_fa

    .line 49
    :goto_2d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_e9

    .line 50
    const-string p1, "placement_id"

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/common/d/x;

    .line 53
    if-nez v2, :cond_62

    .line 54
    new-instance v2, Lcom/anythink/core/common/d/x;

    invoke-direct {v2}, Lcom/anythink/core/common/d/x;-><init>()V

    .line 55
    iput-object p1, v2, Lcom/anythink/core/common/d/x;->b:Ljava/lang/String;

    .line 56
    const-string v3, "format"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/anythink/core/common/d/x;->a:I

    .line 57
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, v2, Lcom/anythink/core/common/d/x;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_62
    new-instance p1, Lcom/anythink/core/common/d/x$a;

    invoke-direct {p1}, Lcom/anythink/core/common/d/x$a;-><init>()V

    .line 62
    const-string v3, "adsource_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/anythink/core/common/d/x$a;->a:Ljava/lang/String;

    .line 63
    const-string v3, "hour_time"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/anythink/core/common/d/x$a;->b:Ljava/lang/String;

    .line 64
    const-string v3, "date_time"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/anythink/core/common/d/x$a;->c:Ljava/lang/String;

    .line 67
    iget-object v3, p1, Lcom/anythink/core/common/d/x$a;->b:Ljava/lang/String;

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_97

    .line 68
    iput v4, p1, Lcom/anythink/core/common/d/x$a;->e:I

    goto :goto_a3

    .line 70
    :cond_97
    const-string v3, "hour_imp"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p1, Lcom/anythink/core/common/d/x$a;->e:I

    .line 72
    :goto_a3
    iget v3, v2, Lcom/anythink/core/common/d/x;->d:I

    iget v5, p1, Lcom/anythink/core/common/d/x$a;->e:I

    add-int/2addr v3, v5

    iput v3, v2, Lcom/anythink/core/common/d/x;->d:I

    .line 75
    iget-object v3, p1, Lcom/anythink/core/common/d/x$a;->c:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b5

    .line 76
    iput v4, p1, Lcom/anythink/core/common/d/x$a;->d:I

    goto :goto_c1

    .line 78
    :cond_b5
    const-string v3, "date_imp"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p1, Lcom/anythink/core/common/d/x$a;->d:I

    .line 80
    :goto_c1
    iget v3, v2, Lcom/anythink/core/common/d/x;->c:I

    iget v4, p1, Lcom/anythink/core/common/d/x$a;->d:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/anythink/core/common/d/x;->c:I

    .line 83
    const-string v3, "show_time"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/anythink/core/common/d/x$a;->f:J

    .line 84
    iget-wide v3, p1, Lcom/anythink/core/common/d/x$a;->f:J

    iget-wide v5, v2, Lcom/anythink/core/common/d/x;->e:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_e0

    .line 85
    iget-wide v3, p1, Lcom/anythink/core/common/d/x$a;->f:J

    iput-wide v3, v2, Lcom/anythink/core/common/d/x;->e:J

    .line 88
    :cond_e0
    iget-object v2, v2, Lcom/anythink/core/common/d/x;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/anythink/core/common/d/x$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    goto/16 :goto_2d

    .line 90
    :cond_e9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_ec} :catch_f8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_ec} :catch_f6
    .catchall {:try_start_1d .. :try_end_ec} :catchall_f4

    .line 91
    nop

    .line 104
    if-eqz v1, :cond_f2

    .line 105
    :try_start_ef
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_115

    .line 91
    :cond_f2
    monitor-exit p0

    return-object v0

    .line 99
    :catchall_f4
    move-exception p1

    goto :goto_fd

    .line 97
    :catch_f6
    move-exception p1

    goto :goto_103

    .line 93
    :catch_f8
    move-exception p1

    goto :goto_110

    .line 104
    :cond_fa
    if-eqz v1, :cond_113

    .line 105
    goto :goto_112

    .line 104
    :goto_fd
    if-eqz v1, :cond_113

    .line 105
    :goto_ff
    :try_start_ff
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_115

    goto :goto_113

    .line 98
    :goto_103
    :try_start_103
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_109

    .line 104
    if-eqz v1, :cond_113

    .line 105
    goto :goto_112

    .line 104
    :catchall_109
    move-exception p1

    if-eqz v1, :cond_10f

    .line 105
    :try_start_10c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_10f
    throw p1
    :try_end_110
    .catchall {:try_start_10c .. :try_end_110} :catchall_115

    .line 104
    :goto_110
    if-eqz v1, :cond_113

    .line 105
    :goto_112
    goto :goto_ff

    .line 108
    :cond_113
    :goto_113
    monitor-exit p0

    return-object v0

    .line 40
    :catchall_115
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .line 306
    monitor-enter p0

    .line 308
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "date_time!=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-virtual {p0}, Lcom/anythink/core/common/c/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_2b
    .catchall {:try_start_1 .. :try_end_1a} :catchall_29

    if-nez v0, :cond_1e

    .line 310
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_29

    return-void

    .line 312
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/anythink/core/common/c/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "placement_ad_impression"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_2b
    .catchall {:try_start_1e .. :try_end_28} :catchall_29

    .line 314
    goto :goto_2c

    .line 315
    :catchall_29
    move-exception p1

    goto :goto_2e

    .line 313
    :catch_2b
    move-exception p1

    .line 315
    :goto_2c
    :try_start_2c
    monitor-exit p0

    return-void

    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_29

    throw p1
.end method
