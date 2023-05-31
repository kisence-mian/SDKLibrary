.class public final Lcom/anythink/myoffer/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/b/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/anythink/myoffer/b/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/anythink/myoffer/b/a;->b:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Lcom/anythink/myoffer/c/a;Ljava/lang/String;)J
    .registers 10

    .prologue
    const-wide/16 v0, -0x1

    .line 58
    monitor-enter p0

    if-nez p2, :cond_9

    .line 59
    const-wide/16 v0, 0x0

    .line 108
    :cond_7
    :goto_7
    monitor-exit p0

    return-wide v0

    .line 61
    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/anythink/myoffer/b/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/myoffer/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 65
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 66
    const-string v3, "topon_pl_id"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "offer_id"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v3, "creative_id"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "title"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v3, "desc"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "icon_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, "image_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v3, "endcard_image_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v3, "adchoice_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "cta"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v3, "video_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "click_type"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v3, "preview_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v3, "deeplink_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "click_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "notice_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v3, "video_start_tk_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "video_25_tk_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "video_50_tk_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "video_75_tk_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "video_end_tk_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v3, "endcard_show_tk_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->v()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v3, "endcard_close_tk_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v3, "impression_tk_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v3, "click_tk_url"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v3, "pkg"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v3, "cap"

    .line 1332
    iget v4, p2, Lcom/anythink/myoffer/c/a;->a:I

    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v3, "pacing"

    .line 1340
    iget-wide v4, p2, Lcom/anythink/myoffer/c/a;->b:J

    .line 93
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    const-string v3, "offer_type"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->B()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v3, "update_time"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->A()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v3, "click_mode"

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/anythink/myoffer/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_178

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "offer_id = \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/myoffer/c/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND topon_pl_id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    const-string v4, "my_offer_info"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_7

    .line 104
    :cond_178
    const-string v3, "my_offer_info"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_17e} :catch_184
    .catchall {:try_start_9 .. :try_end_17e} :catchall_181

    move-result-wide v0

    goto/16 :goto_7

    .line 58
    :catchall_181
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :catch_184
    move-exception v2

    goto/16 :goto_7
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/myoffer/b/a;
    .registers 2

    .prologue
    .line 25
    sget-object v0, Lcom/anythink/myoffer/b/a;->a:Lcom/anythink/myoffer/b/a;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/anythink/myoffer/b/a;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/myoffer/b/a;->a:Lcom/anythink/myoffer/b/a;

    .line 28
    :cond_b
    sget-object v0, Lcom/anythink/myoffer/b/a;->a:Lcom/anythink/myoffer/b/a;

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/anythink/myoffer/c/a;
    .registers 5

    .prologue
    .line 263
    new-instance v0, Lcom/anythink/myoffer/c/a;

    invoke-direct {v0}, Lcom/anythink/myoffer/c/a;-><init>()V

    .line 264
    const-string v1, "offer_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->a(Ljava/lang/String;)V

    .line 265
    const-string v1, "creative_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->b(Ljava/lang/String;)V

    .line 266
    const-string v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->c(Ljava/lang/String;)V

    .line 267
    const-string v1, "desc"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->d(Ljava/lang/String;)V

    .line 268
    const-string v1, "icon_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->e(Ljava/lang/String;)V

    .line 269
    const-string v1, "image_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->f(Ljava/lang/String;)V

    .line 270
    const-string v1, "endcard_image_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->g(Ljava/lang/String;)V

    .line 271
    const-string v1, "adchoice_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->h(Ljava/lang/String;)V

    .line 272
    const-string v1, "cta"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->i(Ljava/lang/String;)V

    .line 273
    const-string v1, "video_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->j(Ljava/lang/String;)V

    .line 274
    const-string v1, "click_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->b(I)V

    .line 275
    const-string v1, "preview_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->k(Ljava/lang/String;)V

    .line 276
    const-string v1, "deeplink_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->l(Ljava/lang/String;)V

    .line 277
    const-string v1, "click_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->m(Ljava/lang/String;)V

    .line 278
    const-string v1, "notice_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->n(Ljava/lang/String;)V

    .line 279
    const-string v1, "pkg"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->x(Ljava/lang/String;)V

    .line 281
    const-string v1, "video_start_tk_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->o(Ljava/lang/String;)V

    .line 282
    const-string v1, "video_25_tk_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->p(Ljava/lang/String;)V

    .line 283
    const-string v1, "video_50_tk_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->q(Ljava/lang/String;)V

    .line 284
    const-string v1, "video_75_tk_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->r(Ljava/lang/String;)V

    .line 285
    const-string v1, "video_end_tk_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->s(Ljava/lang/String;)V

    .line 286
    const-string v1, "endcard_show_tk_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->t(Ljava/lang/String;)V

    .line 287
    const-string v1, "endcard_close_tk_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->u(Ljava/lang/String;)V

    .line 289
    const-string v1, "impression_tk_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->v(Ljava/lang/String;)V

    .line 290
    const-string v1, "click_tk_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->w(Ljava/lang/String;)V

    .line 291
    const-string v1, "update_time"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/anythink/myoffer/c/a;->a(J)V

    .line 293
    const-string v1, "cap"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2336
    iput v1, v0, Lcom/anythink/myoffer/c/a;->a:I

    .line 294
    const-string v1, "pacing"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2344
    iput-wide v2, v0, Lcom/anythink/myoffer/c/a;->b:J

    .line 295
    const-string v1, "offer_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->c(I)V

    .line 296
    const-string v1, "click_mode"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/c/a;->a(I)V

    .line 297
    return-object v0
.end method

.method private declared-synchronized b()V
    .registers 5

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/myoffer/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/myoffer/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_21
    .catchall {:try_start_1 .. :try_end_a} :catchall_23

    move-result-object v0

    if-nez v0, :cond_f

    .line 39
    :goto_d
    monitor-exit p0

    return-void

    .line 36
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/anythink/myoffer/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/myoffer/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "my_offer_info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_21
    .catchall {:try_start_f .. :try_end_20} :catchall_23

    goto :goto_d

    .line 39
    :catch_21
    move-exception v0

    goto :goto_d

    .line 33
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT offer_id FROM my_offer_info WHERE offer_id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND topon_pl_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/anythink/myoffer/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_3d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3d

    .line 144
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_44

    .line 145
    const/4 v0, 0x1

    .line 150
    :goto_3b
    monitor-exit p0

    return v0

    .line 147
    :cond_3d
    if-eqz v0, :cond_42

    .line 148
    :try_start_3f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_44

    .line 150
    :cond_42
    const/4 v0, 0x0

    goto :goto_3b

    .line 140
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/myoffer/c/a;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 162
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " WHERE topon_pl_id = \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND offer_id = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v2, "SELECT * FROM my_offer_info"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_62

    move-result-object v0

    .line 166
    :try_start_2b
    iget-object v2, p0, Lcom/anythink/myoffer/b/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/myoffer/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_39} :catch_5a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_39} :catch_65
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_39} :catch_70
    .catchall {:try_start_2b .. :try_end_39} :catchall_78

    move-result-object v2

    .line 168
    if-eqz v2, :cond_53

    :try_start_3c
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_53

    .line 169
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 170
    invoke-static {v2}, Lcom/anythink/myoffer/b/a;->a(Landroid/database/Cursor;)Lcom/anythink/myoffer/c/a;

    move-result-object v0

    .line 172
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4c} :catch_86
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3c .. :try_end_4c} :catch_84
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_4c} :catch_82
    .catchall {:try_start_3c .. :try_end_4c} :catchall_80

    .line 182
    if-eqz v2, :cond_51

    .line 183
    :try_start_4e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_62

    .line 186
    :cond_51
    :goto_51
    monitor-exit p0

    return-object v0

    .line 182
    :cond_53
    if-eqz v2, :cond_58

    .line 183
    :try_start_55
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_58
    :goto_58
    move-object v0, v1

    .line 186
    goto :goto_51

    .line 182
    :catch_5a
    move-exception v0

    move-object v0, v1

    :goto_5c
    if-eqz v0, :cond_58

    .line 183
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_62

    goto :goto_58

    .line 162
    :catchall_62
    move-exception v0

    monitor-exit p0

    throw v0

    .line 178
    :catch_65
    move-exception v0

    move-object v2, v1

    :goto_67
    :try_start_67
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_80

    .line 182
    if-eqz v2, :cond_58

    .line 183
    :try_start_6c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_58

    .line 182
    :catch_70
    move-exception v0

    move-object v2, v1

    :goto_72
    if-eqz v2, :cond_58

    .line 183
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_58

    .line 182
    :catchall_78
    move-exception v0

    move-object v2, v1

    :goto_7a
    if-eqz v2, :cond_7f

    .line 183
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7f
    throw v0
    :try_end_80
    .catchall {:try_start_6c .. :try_end_80} :catchall_62

    .line 182
    :catchall_80
    move-exception v0

    goto :goto_7a

    :catch_82
    move-exception v0

    goto :goto_72

    .line 178
    :catch_84
    move-exception v0

    goto :goto_67

    .line 182
    :catch_86
    move-exception v0

    move-object v0, v2

    goto :goto_5c
.end method

.method public final declared-synchronized a()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/myoffer/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 195
    monitor-enter p0

    :try_start_2
    const-string v0, " group by offer_id"

    .line 196
    const-string v2, "SELECT * FROM my_offer_info"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_4b

    move-result-object v0

    .line 199
    :try_start_e
    iget-object v2, p0, Lcom/anythink/myoffer/b/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/myoffer/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_75
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_1c} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1c} :catch_5f
    .catchall {:try_start_e .. :try_end_1c} :catchall_67

    move-result-object v2

    .line 201
    if-eqz v2, :cond_4e

    :try_start_1f
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4e

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    :goto_2a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 204
    invoke-static {v2}, Lcom/anythink/myoffer/b/a;->a(Landroid/database/Cursor;)Lcom/anythink/myoffer/c/a;

    move-result-object v3

    .line 205
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_37} :catch_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_37} :catch_73
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_37} :catch_71
    .catchall {:try_start_1f .. :try_end_37} :catchall_6f

    goto :goto_2a

    .line 219
    :catch_38
    move-exception v0

    move-object v0, v2

    :goto_3a
    if-eqz v0, :cond_3f

    .line 220
    :try_start_3c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    :cond_3f
    :goto_3f
    move-object v0, v1

    .line 223
    :cond_40
    :goto_40
    monitor-exit p0

    return-object v0

    .line 209
    :cond_42
    :try_start_42
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_42 .. :try_end_45} :catch_73
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_71
    .catchall {:try_start_42 .. :try_end_45} :catchall_6f

    .line 219
    if-eqz v2, :cond_40

    .line 220
    :try_start_47
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_40

    .line 195
    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 219
    :cond_4e
    if-eqz v2, :cond_3f

    .line 220
    :try_start_50
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4b

    goto :goto_3f

    .line 215
    :catch_54
    move-exception v0

    move-object v2, v1

    :goto_56
    :try_start_56
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_6f

    .line 219
    if-eqz v2, :cond_3f

    .line 220
    :try_start_5b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3f

    .line 219
    :catch_5f
    move-exception v0

    move-object v2, v1

    :goto_61
    if-eqz v2, :cond_3f

    .line 220
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3f

    .line 219
    :catchall_67
    move-exception v0

    move-object v2, v1

    :goto_69
    if-eqz v2, :cond_6e

    .line 220
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6e
    throw v0
    :try_end_6f
    .catchall {:try_start_5b .. :try_end_6f} :catchall_4b

    .line 219
    :catchall_6f
    move-exception v0

    goto :goto_69

    :catch_71
    move-exception v0

    goto :goto_61

    .line 215
    :catch_73
    move-exception v0

    goto :goto_56

    .line 219
    :catch_75
    move-exception v0

    move-object v0, v1

    goto :goto_3a
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_3b

    .line 45
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "topon_pl_id = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/anythink/myoffer/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_3e
    .catchall {:try_start_2 .. :try_end_20} :catchall_38

    move-result-object v1

    if-nez v1, :cond_26

    .line 47
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_38

    .line 52
    :goto_24
    monitor-exit p0

    return-void

    .line 49
    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/anythink/myoffer/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "my_offer_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_36} :catch_3e
    .catchall {:try_start_26 .. :try_end_36} :catchall_38

    .line 52
    :goto_36
    :try_start_36
    monitor-exit p0

    goto :goto_24

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 43
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3e
    move-exception v0

    goto :goto_36
.end method

.method public final declared-synchronized a(Ljava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/myoffer/c/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_37

    .line 118
    if-eqz p1, :cond_a

    :try_start_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 119
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_34

    .line 135
    :goto_b
    monitor-exit p0

    return-void

    .line 122
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/anythink/myoffer/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/myoffer/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_34

    move-result-object v1

    .line 124
    :try_start_17
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/c/a;

    .line 126
    invoke-direct {p0, v1, v0, p2}, Lcom/anythink/myoffer/b/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/anythink/myoffer/c/a;Ljava/lang/String;)J
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2d} :catch_2e
    .catchall {:try_start_17 .. :try_end_2d} :catchall_41

    goto :goto_1e

    .line 133
    :catch_2e
    move-exception v0

    :try_start_2f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 135
    :goto_32
    monitor-exit p0

    goto :goto_b

    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_34

    :try_start_36
    throw v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 117
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_2e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_41

    .line 133
    :try_start_3d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_32

    :catchall_41
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_34
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/myoffer/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 231
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " where topon_pl_id=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v2, "SELECT * FROM my_offer_info"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_5e

    move-result-object v0

    .line 235
    :try_start_21
    iget-object v2, p0, Lcom/anythink/myoffer/b/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/myoffer/b/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/myoffer/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2f} :catch_88
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_2f} :catch_67
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2f} :catch_72
    .catchall {:try_start_21 .. :try_end_2f} :catchall_7a

    move-result-object v2

    .line 237
    if-eqz v2, :cond_61

    :try_start_32
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_61

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    :goto_3d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 240
    invoke-static {v2}, Lcom/anythink/myoffer/b/a;->a(Landroid/database/Cursor;)Lcom/anythink/myoffer/c/a;

    move-result-object v3

    .line 241
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4a} :catch_4b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32 .. :try_end_4a} :catch_86
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_4a} :catch_84
    .catchall {:try_start_32 .. :try_end_4a} :catchall_82

    goto :goto_3d

    .line 255
    :catch_4b
    move-exception v0

    move-object v0, v2

    :goto_4d
    if-eqz v0, :cond_52

    .line 256
    :try_start_4f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5e

    :cond_52
    :goto_52
    move-object v0, v1

    .line 259
    :cond_53
    :goto_53
    monitor-exit p0

    return-object v0

    .line 245
    :cond_55
    :try_start_55
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_4b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_55 .. :try_end_58} :catch_86
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_84
    .catchall {:try_start_55 .. :try_end_58} :catchall_82

    .line 255
    if-eqz v2, :cond_53

    .line 256
    :try_start_5a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_53

    .line 231
    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 255
    :cond_61
    if-eqz v2, :cond_52

    .line 256
    :try_start_63
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_5e

    goto :goto_52

    .line 251
    :catch_67
    move-exception v0

    move-object v2, v1

    :goto_69
    :try_start_69
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_82

    .line 255
    if-eqz v2, :cond_52

    .line 256
    :try_start_6e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_52

    .line 255
    :catch_72
    move-exception v0

    move-object v2, v1

    :goto_74
    if-eqz v2, :cond_52

    .line 256
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_52

    .line 255
    :catchall_7a
    move-exception v0

    move-object v2, v1

    :goto_7c
    if-eqz v2, :cond_81

    .line 256
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_81
    throw v0
    :try_end_82
    .catchall {:try_start_6e .. :try_end_82} :catchall_5e

    .line 255
    :catchall_82
    move-exception v0

    goto :goto_7c

    :catch_84
    move-exception v0

    goto :goto_74

    .line 251
    :catch_86
    move-exception v0

    goto :goto_69

    .line 255
    :catch_88
    move-exception v0

    move-object v0, v1

    goto :goto_4d
.end method
