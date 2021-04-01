.class public Lcom/anythink/core/b/b/f;
.super Lcom/anythink/core/b/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/b/b/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/b/b/a",
        "<",
        "Lcom/anythink/core/b/c/k;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Lcom/anythink/core/b/b/f;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/anythink/core/b/b/b;)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/anythink/core/b/b/a;-><init>(Lcom/anythink/core/b/b/b;)V

    .line 17
    const-class v0, Lcom/anythink/core/b/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/b/f;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static a(Lcom/anythink/core/b/b/b;)Lcom/anythink/core/b/b/f;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Lcom/anythink/core/b/b/f;->c:Lcom/anythink/core/b/b/f;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcom/anythink/core/b/b/f;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/b/f;-><init>(Lcom/anythink/core/b/b/b;)V

    sput-object v0, Lcom/anythink/core/b/b/f;->c:Lcom/anythink/core/b/b/f;

    .line 29
    :cond_b
    sget-object v0, Lcom/anythink/core/b/b/f;->c:Lcom/anythink/core/b/b/f;

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/k;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 212
    if-eqz p0, :cond_bd

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_bd

    .line 213
    new-instance v0, Lcom/anythink/core/b/c/k;

    invoke-direct {v0}, Lcom/anythink/core/b/c/k;-><init>()V

    .line 214
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/anythink/core/b/c/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 215
    :goto_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 217
    const-string v1, "format"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/anythink/core/b/c/k;->a:I

    .line 218
    const-string v1, "placement_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/b/c/k;->b:Ljava/lang/String;

    .line 220
    new-instance v1, Lcom/anythink/core/b/c/k$a;

    invoke-direct {v1}, Lcom/anythink/core/b/c/k$a;-><init>()V

    .line 221
    const-string v2, "adsource_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/b/c/k$a;->a:Ljava/lang/String;

    .line 222
    const-string v2, "hour_time"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/b/c/k$a;->b:Ljava/lang/String;

    .line 223
    const-string v2, "date_time"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/core/b/c/k$a;->c:Ljava/lang/String;

    .line 226
    iget-object v2, v1, Lcom/anythink/core/b/c/k$a;->b:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9f

    .line 227
    iput v6, v1, Lcom/anythink/core/b/c/k$a;->e:I

    .line 231
    :goto_66
    iget v2, v0, Lcom/anythink/core/b/c/k;->d:I

    iget v3, v1, Lcom/anythink/core/b/c/k$a;->e:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/anythink/core/b/c/k;->d:I

    .line 234
    iget-object v2, v1, Lcom/anythink/core/b/c/k$a;->c:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ac

    .line 235
    iput v6, v1, Lcom/anythink/core/b/c/k$a;->d:I

    .line 239
    :goto_77
    iget v2, v0, Lcom/anythink/core/b/c/k;->c:I

    iget v3, v1, Lcom/anythink/core/b/c/k$a;->d:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/anythink/core/b/c/k;->c:I

    .line 242
    const-string v2, "show_time"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/b/c/k$a;->f:J

    .line 243
    iget-wide v2, v1, Lcom/anythink/core/b/c/k$a;->f:J

    iget-wide v4, v0, Lcom/anythink/core/b/c/k;->e:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_96

    .line 244
    iget-wide v2, v1, Lcom/anythink/core/b/c/k$a;->f:J

    iput-wide v2, v0, Lcom/anythink/core/b/c/k;->e:J

    .line 247
    :cond_96
    iget-object v2, v0, Lcom/anythink/core/b/c/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v1, Lcom/anythink/core/b/c/k$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    .line 229
    :cond_9f
    const-string v2, "hour_imp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/anythink/core/b/c/k$a;->e:I

    goto :goto_66

    .line 237
    :cond_ac
    const-string v2, "date_imp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/anythink/core/b/c/k$a;->d:I

    goto :goto_77

    .line 249
    :cond_b9
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 252
    :goto_bc
    return-object v0

    :cond_bd
    const/4 v0, 0x0

    goto :goto_bc
.end method

.method private static b(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/k$a;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 264
    if-eqz p0, :cond_70

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_70

    .line 265
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 266
    new-instance v0, Lcom/anythink/core/b/c/k$a;

    invoke-direct {v0}, Lcom/anythink/core/b/c/k$a;-><init>()V

    .line 267
    const-string v1, "adsource_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/b/c/k$a;->a:Ljava/lang/String;

    .line 268
    const-string v1, "hour_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/b/c/k$a;->b:Ljava/lang/String;

    .line 269
    const-string v1, "date_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/core/b/c/k$a;->c:Ljava/lang/String;

    .line 272
    iget-object v1, v0, Lcom/anythink/core/b/c/k$a;->b:Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 273
    iput v2, v0, Lcom/anythink/core/b/c/k$a;->e:I

    .line 279
    :goto_3f
    iget-object v1, v0, Lcom/anythink/core/b/c/k$a;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 280
    iput v2, v0, Lcom/anythink/core/b/c/k$a;->d:I

    .line 286
    :goto_49
    const-string v1, "show_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/anythink/core/b/c/k$a;->f:J

    .line 289
    :goto_55
    return-object v0

    .line 275
    :cond_56
    const-string v1, "hour_imp"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/anythink/core/b/c/k$a;->e:I

    goto :goto_3f

    .line 282
    :cond_63
    const-string v1, "date_imp"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/anythink/core/b/c/k$a;->d:I

    goto :goto_49

    .line 289
    :cond_70
    const/4 v0, 0x0

    goto :goto_55
.end method

.method private b(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    const-string v2, "SELECT adsource_id FROM placement_ad_impression WHERE adsource_id=? GROUP BY adsource_id"

    .line 190
    invoke-virtual {p0}, Lcom/anythink/core/b/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 191
    if-eqz v2, :cond_1c

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1c

    .line 192
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 198
    :goto_1b
    return v0

    .line 195
    :cond_1c
    if-eqz v2, :cond_21

    .line 196
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_21
    move v0, v1

    .line 198
    goto :goto_1b
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/String;Lcom/anythink/core/b/c/k$a;)J
    .registers 14

    .prologue
    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 158
    monitor-enter p0

    :try_start_5
    invoke-virtual {p0}, Lcom/anythink/core/b/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b0

    move-result-object v4

    if-eqz v4, :cond_d

    if-nez p3, :cond_f

    .line 185
    :cond_d
    :goto_d
    monitor-exit p0

    return-wide v0

    .line 162
    :cond_f
    :try_start_f
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 163
    const-string v5, "format"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v5, "placement_id"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v5, "adsource_id"

    iget-object v6, p3, Lcom/anythink/core/b/c/k$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v5, "hour_time"

    iget-object v6, p3, Lcom/anythink/core/b/c/k$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v5, "hour_imp"

    iget v6, p3, Lcom/anythink/core/b/c/k$a;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v5, "date_time"

    iget-object v6, p3, Lcom/anythink/core/b/c/k$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v5, "date_imp"

    iget v6, p3, Lcom/anythink/core/b/c/k$a;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v5, "show_time"

    iget-wide v6, p3, Lcom/anythink/core/b/c/k$a;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    iget-object v5, p3, Lcom/anythink/core/b/c/k$a;->a:Ljava/lang/String;

    .line 2189
    const-string v6, "SELECT adsource_id FROM placement_ad_impression WHERE adsource_id=? GROUP BY adsource_id"

    .line 2190
    invoke-virtual {p0}, Lcom/anythink/core/b/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v7, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2191
    if-eqz v5, :cond_95

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_95

    .line 2192
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 172
    :goto_75
    if-eqz v2, :cond_9c

    .line 173
    iget-object v2, p0, Lcom/anythink/core/b/b/f;->b:Ljava/lang/String;

    const-string v3, "existsByTime--update"

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "adsource_id = ? "

    .line 175
    invoke-virtual {p0}, Lcom/anythink/core/b/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v5, "placement_ad_impression"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p3, Lcom/anythink/core/b/c/k$a;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v4, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_d

    .line 2195
    :cond_95
    if-eqz v5, :cond_9a

    .line 2196
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_9a
    move v2, v3

    .line 2198
    goto :goto_75

    .line 177
    :cond_9c
    iget-object v2, p0, Lcom/anythink/core/b/b/f;->b:Ljava/lang/String;

    const-string v3, "existsByTime--insert"

    invoke-static {v2, v3}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/anythink/core/b/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "placement_ad_impression"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_ad} :catch_b3
    .catchall {:try_start_f .. :try_end_ad} :catchall_b0

    move-result-wide v0

    goto/16 :goto_d

    .line 158
    :catchall_b0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :catch_b3
    move-exception v2

    goto/16 :goto_d
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/k$a;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 131
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM placement_ad_impression WHERE adsource_id=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND placement_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_b4

    move-result-object v0

    .line 135
    :try_start_21
    invoke-virtual {p0}, Lcom/anythink/core/b/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_29} :catch_d0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_29} :catch_cd
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_29} :catch_b9
    .catchall {:try_start_21 .. :try_end_29} :catchall_c1

    move-result-object v2

    .line 1264
    if-eqz v2, :cond_b7

    :try_start_2c
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b7

    .line 1265
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1266
    new-instance v0, Lcom/anythink/core/b/c/k$a;

    invoke-direct {v0}, Lcom/anythink/core/b/c/k$a;-><init>()V

    .line 1267
    const-string v3, "adsource_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/anythink/core/b/c/k$a;->a:Ljava/lang/String;

    .line 1268
    const-string v3, "hour_time"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/anythink/core/b/c/k$a;->b:Ljava/lang/String;

    .line 1269
    const-string v3, "date_time"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/anythink/core/b/c/k$a;->c:Ljava/lang/String;

    .line 1272
    iget-object v3, v0, Lcom/anythink/core/b/c/k$a;->b:Ljava/lang/String;

    invoke-static {v3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_87

    .line 1273
    const/4 v3, 0x0

    iput v3, v0, Lcom/anythink/core/b/c/k$a;->e:I

    .line 1279
    :goto_69
    iget-object v3, v0, Lcom/anythink/core/b/c/k$a;->c:Ljava/lang/String;

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 1280
    const/4 v3, 0x0

    iput v3, v0, Lcom/anythink/core/b/c/k$a;->d:I

    .line 1286
    :goto_74
    const-string v3, "show_time"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/anythink/core/b/c/k$a;->f:J
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_80} :catch_94
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2c .. :try_end_80} :catch_aa
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_80} :catch_cb
    .catchall {:try_start_2c .. :try_end_80} :catchall_c9

    .line 149
    :goto_80
    if-eqz v2, :cond_85

    .line 150
    :try_start_82
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_b4

    .line 153
    :cond_85
    :goto_85
    monitor-exit p0

    return-object v0

    .line 1275
    :cond_87
    :try_start_87
    const-string v3, "hour_imp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/anythink/core/b/c/k$a;->e:I
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_93} :catch_94
    .catch Ljava/lang/OutOfMemoryError; {:try_start_87 .. :try_end_93} :catch_aa
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_93} :catch_cb
    .catchall {:try_start_87 .. :try_end_93} :catchall_c9

    goto :goto_69

    .line 149
    :catch_94
    move-exception v0

    move-object v0, v2

    :goto_96
    if-eqz v0, :cond_9b

    .line 150
    :try_start_98
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_b4

    :cond_9b
    :goto_9b
    move-object v0, v1

    .line 153
    goto :goto_85

    .line 1282
    :cond_9d
    :try_start_9d
    const-string v3, "date_imp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/anythink/core/b/c/k$a;->d:I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a9} :catch_94
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9d .. :try_end_a9} :catch_aa
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_a9} :catch_cb
    .catchall {:try_start_9d .. :try_end_a9} :catchall_c9

    goto :goto_74

    .line 143
    :catch_aa
    move-exception v0

    :goto_ab
    :try_start_ab
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_c9

    .line 149
    if-eqz v2, :cond_9b

    .line 150
    :try_start_b0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_b4

    goto :goto_9b

    .line 131
    :catchall_b4
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b7
    move-object v0, v1

    .line 1289
    goto :goto_80

    .line 149
    :catch_b9
    move-exception v0

    move-object v2, v1

    :goto_bb
    if-eqz v2, :cond_9b

    .line 150
    :try_start_bd
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_9b

    .line 149
    :catchall_c1
    move-exception v0

    move-object v2, v1

    :goto_c3
    if-eqz v2, :cond_c8

    .line 150
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c8
    throw v0
    :try_end_c9
    .catchall {:try_start_bd .. :try_end_c9} :catchall_b4

    .line 149
    :catchall_c9
    move-exception v0

    goto :goto_c3

    :catch_cb
    move-exception v0

    goto :goto_bb

    .line 143
    :catch_cd
    move-exception v0

    move-object v2, v1

    goto :goto_ab

    .line 149
    :catch_d0
    move-exception v0

    move-object v0, v1

    goto :goto_96
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/k;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 105
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM placement_ad_impression WHERE placement_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_33

    move-result-object v1

    .line 109
    :try_start_17
    invoke-virtual {p0}, Lcom/anythink/core/b/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_2b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_1f} :catch_36
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1f} :catch_41
    .catchall {:try_start_17 .. :try_end_1f} :catchall_49

    move-result-object v1

    .line 110
    :try_start_20
    invoke-static {v1, p2, p3}, Lcom/anythink/core/b/b/f;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/k;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_59
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_23} :catch_57
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_55
    .catchall {:try_start_20 .. :try_end_23} :catchall_53

    move-result-object v0

    .line 123
    if-eqz v1, :cond_29

    .line 124
    :try_start_26
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_33

    .line 127
    :cond_29
    :goto_29
    monitor-exit p0

    return-object v0

    .line 123
    :catch_2b
    move-exception v1

    move-object v1, v0

    :goto_2d
    if-eqz v1, :cond_29

    .line 124
    :try_start_2f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_29

    .line 105
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :catch_36
    move-exception v1

    move-object v1, v0

    :goto_38
    :try_start_38
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_53

    .line 123
    if-eqz v1, :cond_29

    .line 124
    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_29

    .line 123
    :catch_41
    move-exception v1

    move-object v1, v0

    :goto_43
    if-eqz v1, :cond_29

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_29

    .line 123
    :catchall_49
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_4d
    if-eqz v1, :cond_52

    .line 124
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_52
    throw v0
    :try_end_53
    .catchall {:try_start_3d .. :try_end_53} :catchall_33

    .line 123
    :catchall_53
    move-exception v0

    goto :goto_4d

    :catch_55
    move-exception v2

    goto :goto_43

    .line 117
    :catch_57
    move-exception v2

    goto :goto_38

    .line 123
    :catch_59
    move-exception v2

    goto :goto_2d
.end method

.method public final declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/b/c/k;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 34
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM placement_ad_impression WHERE format=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_f1

    move-result-object v2

    .line 40
    :try_start_1c
    invoke-virtual {p0}, Lcom/anythink/core/b/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_129
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_24} :catch_126
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_24} :catch_123
    .catchall {:try_start_1c .. :try_end_24} :catchall_118

    move-result-object v2

    .line 41
    if-eqz v2, :cond_112

    :try_start_27
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_112

    .line 42
    :goto_2d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_108

    .line 43
    const-string v0, "placement_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/k;

    .line 46
    if-nez v0, :cond_62

    .line 47
    new-instance v0, Lcom/anythink/core/b/c/k;

    invoke-direct {v0}, Lcom/anythink/core/b/c/k;-><init>()V

    .line 48
    iput-object v3, v0, Lcom/anythink/core/b/c/k;->b:Ljava/lang/String;

    .line 49
    const-string v4, "format"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v0, Lcom/anythink/core/b/c/k;->a:I

    .line 50
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, v0, Lcom/anythink/core/b/c/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_62
    new-instance v3, Lcom/anythink/core/b/c/k$a;

    invoke-direct {v3}, Lcom/anythink/core/b/c/k$a;-><init>()V

    .line 55
    const-string v4, "adsource_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/b/c/k$a;->a:Ljava/lang/String;

    .line 56
    const-string v4, "hour_time"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/b/c/k$a;->b:Ljava/lang/String;

    .line 57
    const-string v4, "date_time"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/anythink/core/b/c/k$a;->c:Ljava/lang/String;

    .line 60
    iget-object v4, v3, Lcom/anythink/core/b/c/k$a;->b:Ljava/lang/String;

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_da

    .line 61
    const/4 v4, 0x0

    iput v4, v3, Lcom/anythink/core/b/c/k$a;->e:I

    .line 65
    :goto_96
    iget v4, v0, Lcom/anythink/core/b/c/k;->d:I

    iget v5, v3, Lcom/anythink/core/b/c/k$a;->e:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/anythink/core/b/c/k;->d:I

    .line 68
    iget-object v4, v3, Lcom/anythink/core/b/c/k$a;->c:Ljava/lang/String;

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f4

    .line 69
    const/4 v4, 0x0

    iput v4, v3, Lcom/anythink/core/b/c/k$a;->d:I

    .line 73
    :goto_a8
    iget v4, v0, Lcom/anythink/core/b/c/k;->c:I

    iget v5, v3, Lcom/anythink/core/b/c/k$a;->d:I

    add-int/2addr v4, v5

    iput v4, v0, Lcom/anythink/core/b/c/k;->c:I

    .line 76
    const-string v4, "show_time"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/anythink/core/b/c/k$a;->f:J

    .line 77
    iget-wide v4, v3, Lcom/anythink/core/b/c/k$a;->f:J

    iget-wide v6, v0, Lcom/anythink/core/b/c/k;->e:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_c7

    .line 78
    iget-wide v4, v3, Lcom/anythink/core/b/c/k$a;->f:J

    iput-wide v4, v0, Lcom/anythink/core/b/c/k;->e:J

    .line 81
    :cond_c7
    iget-object v0, v0, Lcom/anythink/core/b/c/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v3, Lcom/anythink/core/b/c/k$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_ce} :catch_d0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_ce} :catch_e7
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_ce} :catch_101
    .catchall {:try_start_27 .. :try_end_ce} :catchall_121

    goto/16 :goto_2d

    .line 97
    :catch_d0
    move-exception v0

    move-object v0, v2

    :goto_d2
    if-eqz v0, :cond_d7

    .line 98
    :try_start_d4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_f1

    :cond_d7
    :goto_d7
    move-object v0, v1

    .line 101
    :goto_d8
    monitor-exit p0

    return-object v0

    .line 63
    :cond_da
    :try_start_da
    const-string v4, "hour_imp"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/anythink/core/b/c/k$a;->e:I
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e6} :catch_d0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_da .. :try_end_e6} :catch_e7
    .catch Ljava/lang/Throwable; {:try_start_da .. :try_end_e6} :catch_101
    .catchall {:try_start_da .. :try_end_e6} :catchall_121

    goto :goto_96

    .line 91
    :catch_e7
    move-exception v0

    :goto_e8
    :try_start_e8
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_121

    .line 97
    if-eqz v2, :cond_d7

    .line 98
    :try_start_ed
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_f1

    goto :goto_d7

    .line 34
    :catchall_f1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :cond_f4
    :try_start_f4
    const-string v4, "date_imp"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lcom/anythink/core/b/c/k$a;->d:I
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_100} :catch_d0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f4 .. :try_end_100} :catch_e7
    .catch Ljava/lang/Throwable; {:try_start_f4 .. :try_end_100} :catch_101
    .catchall {:try_start_f4 .. :try_end_100} :catchall_121

    goto :goto_a8

    .line 97
    :catch_101
    move-exception v0

    :goto_102
    if-eqz v2, :cond_d7

    .line 98
    :try_start_104
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_f1

    goto :goto_d7

    .line 83
    :cond_108
    :try_start_108
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_d0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_108 .. :try_end_10b} :catch_e7
    .catch Ljava/lang/Throwable; {:try_start_108 .. :try_end_10b} :catch_101
    .catchall {:try_start_108 .. :try_end_10b} :catchall_121

    .line 97
    if-eqz v2, :cond_110

    .line 98
    :try_start_10d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_110
    move-object v0, v1

    .line 84
    goto :goto_d8

    .line 97
    :cond_112
    if-eqz v2, :cond_d7

    .line 98
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_d7

    .line 97
    :catchall_118
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_11b
    if-eqz v2, :cond_120

    .line 98
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_120
    throw v0
    :try_end_121
    .catchall {:try_start_10d .. :try_end_121} :catchall_f1

    .line 97
    :catchall_121
    move-exception v0

    goto :goto_11b

    :catch_123
    move-exception v2

    move-object v2, v0

    goto :goto_102

    .line 91
    :catch_126
    move-exception v2

    move-object v2, v0

    goto :goto_e8

    .line 97
    :catch_129
    move-exception v2

    goto :goto_d2
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 299
    monitor-enter p0

    .line 301
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "date_time!=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Lcom/anythink/core/b/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_2d
    .catchall {:try_start_1 .. :try_end_19} :catchall_2a

    move-result-object v1

    if-nez v1, :cond_1e

    .line 303
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_2a

    .line 308
    :goto_1d
    return-void

    .line 305
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/anythink/core/b/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "placement_ad_impression"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_2d
    .catchall {:try_start_1e .. :try_end_28} :catchall_2a

    .line 308
    :goto_28
    :try_start_28
    monitor-exit p0

    goto :goto_1d

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v0

    :catch_2d
    move-exception v0

    goto :goto_28
.end method
