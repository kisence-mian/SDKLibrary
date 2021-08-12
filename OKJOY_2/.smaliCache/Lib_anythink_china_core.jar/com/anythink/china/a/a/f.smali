.class public final Lcom/anythink/china/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/anythink/china/a/a/f;->a:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 7

    .line 25
    const-string v0, ""

    .line 28
    :try_start_2
    const-string v1, "content://cn.nubia.identity/identity"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 30
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_52
    .catchall {:try_start_2 .. :try_end_a} :catchall_4d

    const/16 v3, 0x11

    const-string v4, "getOAID"

    const/4 v5, 0x0

    if-le v2, v3, :cond_2f

    .line 31
    :try_start_11
    iget-object v2, p0, Lcom/anythink/china/a/a/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 32
    invoke-virtual {v1, v4, v5, v5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 33
    if-eqz v1, :cond_2e

    .line 34
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_2b

    .line 35
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_39

    .line 37
    :cond_2b
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 40
    :cond_2e
    goto :goto_39

    .line 41
    :cond_2f
    iget-object v2, p0, Lcom/anythink/china/a/a/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 44
    :goto_39
    nop

    .line 45
    const/4 v1, -0x1

    if-eqz v2, :cond_43

    .line 46
    const-string v3, "code"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 49
    :cond_43
    if-nez v1, :cond_4c

    .line 50
    const-string v1, "id"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4b} :catch_52
    .catchall {:try_start_11 .. :try_end_4b} :catchall_4d

    .line 51
    return-object v0

    .line 54
    :cond_4c
    return-object v0

    .line 58
    :catchall_4d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_57

    .line 56
    :catch_52
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    nop

    .line 61
    :goto_57
    return-object v0
.end method
