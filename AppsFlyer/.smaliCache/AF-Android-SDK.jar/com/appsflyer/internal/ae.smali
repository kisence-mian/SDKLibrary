.class final Lcom/appsflyer/internal/ae;
.super Lcom/appsflyer/internal/av;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/av<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "E3F9E1E0CF99D0E56A055BA65E241B3399F7CEA524326B0CDD6EC1327ED0FDC1"

    aput-object v2, v0, v1

    const-string v1, "com.facebook.katana.provider.AttributionIdProvider"

    invoke-direct {p0, p1, v1, v0}, Lcom/appsflyer/internal/av;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private values()Ljava/lang/String;
    .registers 10

    .line 26
    nop

    .line 28
    const/4 v0, 0x0

    :try_start_2
    const-string v1, "aid"

    .line 29
    iget-object v2, p0, Lcom/appsflyer/internal/av;->values:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "content://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/appsflyer/internal/av;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 29
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_4a

    .line 35
    if-eqz v2, :cond_44

    :try_start_2e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 36
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_42

    .line 38
    if-eqz v2, :cond_41

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_41
    return-object v0

    .line 38
    :catchall_42
    move-exception v0

    goto :goto_4d

    :cond_44
    if-eqz v2, :cond_49

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_49
    return-object v0

    .line 38
    :catchall_4a
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4d
    if-eqz v2, :cond_52

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 39
    :cond_52
    throw v0
.end method


# virtual methods
.method public final synthetic AFInAppEventType()Ljava/lang/Object;
    .registers 3

    .line 10
    nop

    .line 2020
    nop

    .line 2038
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/appsflyer/internal/av;->AFInAppEventParameterName:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2021
    invoke-super {p0}, Lcom/appsflyer/internal/av;->AFInAppEventType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    return-object v0
.end method

.method public final AFKeystoreWrapper()Ljava/lang/String;
    .registers 3

    .line 20
    nop

    .line 1038
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/appsflyer/internal/av;->AFInAppEventParameterName:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    invoke-super {p0}, Lcom/appsflyer/internal/av;->AFInAppEventType()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic valueOf()Ljava/lang/Object;
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/appsflyer/internal/ae;->values()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
