.class public final Lcom/anythink/china/a/a/k;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/china/a/a/k;->c:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/china/a/a/k;->a:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/anythink/china/a/a/k;->b:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 9

    .line 24
    nop

    .line 27
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 28
    iget-object v1, p0, Lcom/anythink/china/a/a/k;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 29
    if-eqz v1, :cond_35

    .line 30
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 31
    const-string v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_28
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_31
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2c

    goto :goto_35

    .line 39
    :catchall_2c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    .line 37
    :catch_31
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :cond_35
    :goto_35
    nop

    .line 42
    :goto_36
    return-object v0
.end method
