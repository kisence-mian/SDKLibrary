.class public Lcom/kwad/sdk/core/f/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/core/f/a/e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 8

    const-string v0, "NubiaDeviceIDHelper"

    const-string v1, ""

    :try_start_4
    const-string v2, "content://cn.nubia.identity/identity"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_71

    const/16 v4, 0x11

    const-string v5, "getOAID"

    const/4 v6, 0x0

    if-le v3, v4, :cond_2f

    :try_start_13
    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v6}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_2b

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_39

    :cond_2b
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_39

    :cond_2f
    iget-object v3, p0, Lcom/kwad/sdk/core/f/a/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    :goto_39
    if-eqz v3, :cond_7a

    const-string v2, "code"

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4a

    const-string v2, "id"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4a
    const-string v2, "message"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOAID oaid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "faledMsg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_70} :catch_71

    goto :goto_7a

    :catch_71
    move-exception v2

    const-string v3, "getOAID fail"

    invoke-static {v0, v3}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_7a
    :goto_7a
    return-object v1
.end method
