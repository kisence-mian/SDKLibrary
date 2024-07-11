.class Lcom/sigmob/sdk/common/a/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/common/a/a;

.field private final b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:[Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/sigmob/sdk/common/a/a$a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/common/a/a;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/a/a$a;)V
    .registers 11

    iput-object p1, p0, Lcom/sigmob/sdk/common/a/a$c;->a:Lcom/sigmob/sdk/common/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/common/a/a$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/common/a/a$c;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/common/a/a$c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/common/a/a$c;->e:[Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/common/a/a$c;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/sigmob/sdk/common/a/a$c;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/sigmob/sdk/common/a/a$c;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/sigmob/sdk/common/a/a$c;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/sigmob/sdk/common/a/a$c;->j:Lcom/sigmob/sdk/common/a/a$a;

    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_5a

    aget-object v5, v1, v4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_60

    goto :goto_57

    :pswitch_26
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    :pswitch_32
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_54

    :pswitch_3b
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_54

    :pswitch_48
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_54
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_57
    :pswitch_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_5a
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5e
    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_57
        :pswitch_48
        :pswitch_3b
        :pswitch_32
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/sigmob/sdk/common/a/c;->a()Lcom/sigmob/sdk/common/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/common/a/a$c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/common/a/a$c;->c:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/common/a/a$c;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/sigmob/sdk/common/a/a$c;->e:[Ljava/lang/String;

    iget-object v7, p0, Lcom/sigmob/sdk/common/a/a$c;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/sigmob/sdk/common/a/a$c;->g:Ljava/lang/String;

    iget-object v9, p0, Lcom/sigmob/sdk/common/a/a$c;->h:Ljava/lang/String;

    iget-object v10, p0, Lcom/sigmob/sdk/common/a/a$c;->i:Ljava/lang/String;

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sigmob/sdk/common/a/a$c;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/a/a$c;->j:Lcom/sigmob/sdk/common/a/a$a;

    if-eqz v2, :cond_28

    invoke-interface {v2, v1}, Lcom/sigmob/sdk/common/a/a$a;->a(Ljava/util/List;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2b

    :cond_28
    if-eqz v0, :cond_41

    goto :goto_3e

    :catchall_2b
    move-exception v1

    :try_start_2c
    iget-object v2, p0, Lcom/sigmob/sdk/common/a/a$c;->j:Lcom/sigmob/sdk/common/a/a$a;

    if-eqz v2, :cond_3c

    new-instance v3, Ljava/lang/Error;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/sigmob/sdk/common/a/a$a;->a(Ljava/lang/Error;)V
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_42

    :cond_3c
    if-eqz v0, :cond_41

    :goto_3e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_41
    return-void

    :catchall_42
    move-exception v1

    if-eqz v0, :cond_48

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_48
    throw v1
.end method
