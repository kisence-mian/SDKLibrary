.class public Lcom/bytedance/tea/crash/b/b/b;
.super Lcom/bytedance/tea/crash/b/b/a;
.source "DuplicateLogDAO.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/tea/crash/b/b/a<",
        "Lcom/bytedance/tea/crash/b/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    const-string v0, "duplicatelog"

    invoke-direct {p0, v0}, Lcom/bytedance/tea/crash/b/b/a;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected a(Lcom/bytedance/tea/crash/b/a/a;)Landroid/content/ContentValues;
    .registers 5

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    iget-object v1, p1, Lcom/bytedance/tea/crash/b/a/a;->a:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-wide v1, p1, Lcom/bytedance/tea/crash/b/a/a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "insert_time"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .registers 2

    .line 19
    check-cast p1, Lcom/bytedance/tea/crash/b/a/a;

    invoke-virtual {p0, p1}, Lcom/bytedance/tea/crash/b/b/b;->a(Lcom/bytedance/tea/crash/b/a/a;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method protected a()Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    const-string v1, "path"

    const-string v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "insert_time"

    const-string v3, "INTEGER"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "ext1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "ext2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/tea/crash/b/a/a;)V
    .registers 5

    .line 61
    const-string v0, "_id"

    if-eqz p2, :cond_6c

    iget-object v1, p2, Lcom/bytedance/tea/crash/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/tea/crash/b/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6c

    .line 64
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/bytedance/tea/crash/b/b/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V

    .line 67
    :try_start_10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/tea/crash/b/b/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " where "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " in (select "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/tea/crash/b/b/b;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " order by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "insert_time"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " desc limit 1000 offset "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x1f4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_66} :catch_67

    .line 72
    goto :goto_6b

    .line 70
    :catch_67
    move-exception p1

    .line 71
    invoke-static {p1}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 73
    :goto_6b
    return-void

    .line 62
    :cond_6c
    :goto_6c
    return-void
.end method

.method public bridge synthetic a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 3

    .line 19
    check-cast p2, Lcom/bytedance/tea/crash/b/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/tea/crash/b/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/tea/crash/b/a/a;)V

    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 13

    .line 45
    const/4 v0, 0x0

    if-eqz p1, :cond_30

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_30

    .line 48
    :cond_a
    nop

    .line 50
    const/4 v1, 0x1

    :try_start_c
    iget-object v3, p0, Lcom/bytedance/tea/crash/b/b/b;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "path=?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object p2, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_27

    .line 52
    :try_start_21
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    .line 55
    goto :goto_2c

    .line 53
    :catch_25
    move-exception p1

    goto :goto_29

    :catch_27
    move-exception p1

    move p2, v0

    .line 54
    :goto_29
    invoke-static {p1}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 56
    :goto_2c
    if-lez p2, :cond_2f

    move v0, v1

    :cond_2f
    return v0

    .line 46
    :cond_30
    :goto_30
    return v0
.end method
