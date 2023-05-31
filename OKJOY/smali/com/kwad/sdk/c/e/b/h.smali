.class public Lcom/kwad/sdk/c/e/b/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/c/e/b/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 10

    const/4 v6, 0x0

    const-string v7, ""

    :try_start_3
    const-string v0, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/kwad/sdk/c/e/b/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_4d
    .catchall {:try_start_3 .. :try_end_16} :catchall_61

    move-result-object v1

    if-eqz v1, :cond_79

    :try_start_19
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_6e
    .catchall {:try_start_19 .. :try_end_28} :catchall_77

    move-result-object v2

    const-string v0, "VivoDeviceIDHelper"

    :try_start_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOAID oaid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_41} :catch_72
    .catchall {:try_start_2b .. :try_end_41} :catchall_77

    move-object v0, v2

    :goto_42
    if-eqz v1, :cond_47

    :try_start_44
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    :cond_47
    :goto_47
    return-object v0

    :catch_48
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    :catch_4d
    move-exception v0

    move-object v2, v0

    move-object v1, v6

    move-object v0, v7

    :goto_51
    :try_start_51
    const-string v3, "VivoDeviceIDHelper"

    const-string v4, "getOAID fail"

    invoke-static {v3, v4}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_77

    if-eqz v1, :cond_47

    :try_start_5d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_48

    goto :goto_47

    :catchall_61
    move-exception v0

    move-object v1, v6

    :goto_63
    if-eqz v1, :cond_68

    :try_start_65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    :cond_68
    :goto_68
    throw v0

    :catch_69
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68

    :catch_6e
    move-exception v0

    move-object v2, v0

    move-object v0, v7

    goto :goto_51

    :catch_72
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    goto :goto_51

    :catchall_77
    move-exception v0

    goto :goto_63

    :cond_79
    move-object v0, v7

    goto :goto_42
.end method
