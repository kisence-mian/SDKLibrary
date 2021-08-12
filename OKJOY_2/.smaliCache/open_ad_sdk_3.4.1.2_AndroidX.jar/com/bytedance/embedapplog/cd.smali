.class final Lcom/bytedance/embedapplog/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/cf;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .registers 3

    .line 15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public b(Landroid/content/Context;)Lcom/bytedance/embedapplog/cf$a;
    .registers 7

    .line 22
    const-string v0, "content://cn.nubia.identity/identity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 24
    const/4 v1, 0x0

    :try_start_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9} :catch_60

    const/16 v3, 0x11

    const-string v4, "getOAID"

    if-le v2, v3, :cond_2c

    .line 25
    :try_start_f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    .line 26
    if-nez p1, :cond_1a

    .line 27
    return-object v1

    .line 29
    :cond_1a
    invoke-virtual {p1, v4, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 30
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_28

    .line 31
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_2b

    .line 33
    :cond_28
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    .line 35
    :goto_2b
    goto :goto_34

    .line 36
    :cond_2c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v0, v4, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 38
    :goto_34
    if-nez v0, :cond_37

    .line 39
    return-object v1

    .line 41
    :cond_37
    const-string p1, "code"

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 42
    if-nez p1, :cond_4e

    .line 43
    new-instance p1, Lcom/bytedance/embedapplog/cf$a;

    invoke-direct {p1}, Lcom/bytedance/embedapplog/cf$a;-><init>()V

    .line 44
    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/cf$a;->b:Ljava/lang/String;

    .line 45
    return-object p1

    .line 47
    :cond_4e
    const-string p1, "message"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 49
    sget-object v0, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_5f} :catch_60

    .line 51
    :cond_5f
    return-object v1

    .line 52
    :catch_60
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    return-object v1
.end method
