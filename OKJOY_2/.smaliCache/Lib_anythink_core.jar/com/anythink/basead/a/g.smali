.class public final Lcom/anythink/basead/a/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "play.google.com"

.field public static final b:Ljava/lang/String; = "market.android.com"

.field public static final c:Ljava/lang/String; = "details?"

.field public static final d:Ljava/lang/String; = "market"

.field public static final e:Ljava/lang/String; = "market://"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 44
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 45
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    const p1, 0x10008000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 51
    return-void

    .line 50
    :catch_15
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5

    .line 28
    invoke-static {p1}, Lcom/anythink/basead/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 29
    invoke-static {p1}, Lcom/anythink/basead/a/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p0, p1, p2}, Lcom/anythink/basead/a/g;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 33
    :cond_f
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_26

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 36
    invoke-static {p0, p1, p2}, Lcom/anythink/basead/a/g;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 39
    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    .line 62
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 63
    return v0

    .line 65
    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 66
    if-eqz p0, :cond_31

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_31

    .line 69
    :cond_15
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "play.google.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 70
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string v1, "market.android.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_32

    if-eqz p0, :cond_2e

    goto :goto_2f

    .line 69
    :cond_2e
    return v0

    .line 70
    :cond_2f
    :goto_2f
    const/4 p0, 0x1

    return p0

    .line 67
    :cond_31
    :goto_31
    return v0

    .line 71
    :catchall_32
    move-exception p0

    .line 73
    return v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 84
    :try_start_0
    const-string v0, "details?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 85
    const-string v0, "market://"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-object p0

    .line 87
    :catchall_15
    move-exception p0

    .line 92
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 6

    .line 103
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    .line 105
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_20

    .line 107
    :cond_16
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 111
    :goto_20
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_2a

    .line 124
    nop

    .line 125
    return v2

    .line 113
    :catchall_2a
    move-exception p1

    .line 114
    if-eqz p2, :cond_39

    .line 115
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    new-instance p2, Lcom/anythink/basead/a/g$1;

    invoke-direct {p2, p0}, Lcom/anythink/basead/a/g$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 123
    :cond_39
    const/4 p0, 0x0

    return p0
.end method
