.class final enum Lcom/sigmob/sdk/common/f/p$5;
.super Lcom/sigmob/sdk/common/f/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/f/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/common/f/p;-><init>(Ljava/lang/String;IZLcom/sigmob/sdk/common/f/p$1;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/common/f/q;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    const-string p4, "intent"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_37

    :try_start_c
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p3, p4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/sigmob/sdk/common/f/j;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_19

    goto :goto_3a

    :catchall_19
    move-exception p1

    new-instance p1, Lcom/sigmob/sdk/common/c/b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Intent uri had invalid syntax: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sigmob/sdk/common/c/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/j;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_3a
    return-void
.end method

.method public a(Landroid/net/Uri;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
