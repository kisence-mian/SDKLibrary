.class public Lcom/kwad/sdk/core/f/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/f/a/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 11

    const-string v0, "VivoDeviceIDHelper"

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/h;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4d

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    const-string v3, "value"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOAID oaid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_41} :catch_44
    .catchall {:try_start_5 .. :try_end_41} :catchall_42

    goto :goto_4d

    :catchall_42
    move-exception v0

    goto :goto_51

    :catch_44
    move-exception v3

    :try_start_45
    const-string v4, "getOAID fail"

    invoke-static {v0, v4}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_42

    :cond_4d
    :goto_4d
    invoke-static {v2}, Lcom/kwad/sdk/utils/s;->a(Landroid/database/Cursor;)V

    return-object v1

    :goto_51
    invoke-static {v2}, Lcom/kwad/sdk/utils/s;->a(Landroid/database/Cursor;)V

    throw v0
.end method
