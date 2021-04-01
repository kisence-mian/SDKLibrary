.class Lcom/sigmob/sdk/base/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/a/a;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:[Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/sigmob/sdk/base/a/b;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/a/a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/a/b;)V
    .registers 11

    iput-object p1, p0, Lcom/sigmob/sdk/base/a/d;->a:Lcom/sigmob/sdk/base/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/base/a/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/a/d;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/a/d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/a/d;->e:[Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/base/a/d;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/sigmob/sdk/base/a/d;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/sigmob/sdk/base/a/d;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/sigmob/sdk/base/a/d;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/sigmob/sdk/base/a/d;->j:Lcom/sigmob/sdk/base/a/b;

    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    array-length v4, v2

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v4, :cond_60

    aget-object v5, v2, v0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_66

    :goto_25
    :pswitch_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :pswitch_28
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :pswitch_38
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :pswitch_48
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :pswitch_54
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_60
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_64
    return-object v1

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_25
        :pswitch_28
        :pswitch_38
        :pswitch_48
        :pswitch_54
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v9, 0x0

    :try_start_1
    invoke-static {}, Lcom/sigmob/sdk/base/a/l;->a()Lcom/sigmob/sdk/base/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/l;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/d;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/a/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/a/d;->e:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/a/d;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/sigmob/sdk/base/a/d;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/sigmob/sdk/base/a/d;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/sigmob/sdk/base/a/d;->i:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_30
    .catchall {:try_start_1 .. :try_end_1c} :catchall_4a

    move-result-object v1

    :try_start_1d
    invoke-direct {p0, v1}, Lcom/sigmob/sdk/base/a/d;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/d;->j:Lcom/sigmob/sdk/base/a/b;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/d;->j:Lcom/sigmob/sdk/base/a/b;

    invoke-interface {v2, v0}, Lcom/sigmob/sdk/base/a/b;->a(Ljava/util/List;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_2a} :catch_54
    .catchall {:try_start_1d .. :try_end_2a} :catchall_51

    :cond_2a
    if-eqz v1, :cond_2f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2f
    :goto_2f
    return-void

    :catch_30
    move-exception v0

    move-object v1, v9

    :goto_32
    :try_start_32
    iget-object v2, p0, Lcom/sigmob/sdk/base/a/d;->j:Lcom/sigmob/sdk/base/a/b;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/d;->j:Lcom/sigmob/sdk/base/a/b;

    new-instance v3, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/sigmob/sdk/base/a/b;->a(Ljava/lang/Error;)V
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_51

    :cond_44
    if-eqz v1, :cond_2f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2f

    :catchall_4a
    move-exception v0

    :goto_4b
    if-eqz v9, :cond_50

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_50
    throw v0

    :catchall_51
    move-exception v0

    move-object v9, v1

    goto :goto_4b

    :catch_54
    move-exception v0

    goto :goto_32
.end method
