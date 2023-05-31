.class public Lcom/bytedance/tea/crash/b/b/b;
.super Lcom/bytedance/tea/crash/b/b/a;
.source "DuplicateLogDAO.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/tea/crash/b/b/a",
        "<",
        "Lcom/bytedance/tea/crash/b/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    const-string v0, "duplicatelog"

    invoke-direct {p0, v0}, Lcom/bytedance/tea/crash/b/b/a;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected a(Lcom/bytedance/tea/crash/b/a/a;)Landroid/content/ContentValues;
    .registers 6

    .prologue
    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    const-string v1, "path"

    iget-object v2, p1, Lcom/bytedance/tea/crash/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "insert_time"

    iget-wide v2, p1, Lcom/bytedance/tea/crash/b/a/a;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .registers 3

    .prologue
    .line 19
    check-cast p1, Lcom/bytedance/tea/crash/b/a/a;

    invoke-virtual {p0, p1}, Lcom/bytedance/tea/crash/b/b/b;->a(Lcom/bytedance/tea/crash/b/a/a;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    const-string v1, "path"

    const-string v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "insert_time"

    const-string v2, "INTEGER"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "ext1"

    const-string v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "ext2"

    const-string v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/tea/crash/b/a/a;)V
    .registers 5

    .prologue
    .line 61
    if-eqz p2, :cond_a

    iget-object v0, p2, Lcom/bytedance/tea/crash/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/tea/crash/b/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 73
    :cond_a
    :goto_a
    return-void

    .line 64
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/bytedance/tea/crash/b/b/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    .line 67
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/tea/crash/b/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in (select "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/tea/crash/b/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " order by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "insert_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " desc limit 1000 offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_68} :catch_69

    goto :goto_a

    .line 70
    :catch_69
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public bridge synthetic a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 19
    check-cast p2, Lcom/bytedance/tea/crash/b/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/tea/crash/b/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/tea/crash/b/a/a;)V

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 45
    if-eqz p1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    move v0, v9

    .line 56
    :goto_b
    return v0

    .line 50
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/bytedance/tea/crash/b/b/b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "path=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_2a

    move-result v1

    .line 52
    :try_start_23
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_32

    .line 56
    :goto_26
    if-lez v1, :cond_30

    move v0, v8

    goto :goto_b

    .line 53
    :catch_2a
    move-exception v0

    move v1, v9

    .line 54
    :goto_2c
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    goto :goto_26

    :cond_30
    move v0, v9

    .line 56
    goto :goto_b

    .line 53
    :catch_32
    move-exception v0

    goto :goto_2c
.end method
