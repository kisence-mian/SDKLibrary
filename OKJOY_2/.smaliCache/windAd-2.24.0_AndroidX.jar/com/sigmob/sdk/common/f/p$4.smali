.class final enum Lcom/sigmob/sdk/common/f/p$4;
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

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/sigmob/sdk/common/f/q;->a()Lcom/sigmob/sdk/common/f/q$c;

    move-result-object p3

    const-string p4, "download"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_14

    invoke-interface {p3}, Lcom/sigmob/sdk/common/f/q$c;->a()V

    goto :goto_2b

    :cond_14
    const-string p4, "close"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_20

    invoke-interface {p3}, Lcom/sigmob/sdk/common/f/q$c;->b()V

    goto :goto_2b

    :cond_20
    const-string p4, "failLoad"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-interface {p3}, Lcom/sigmob/sdk/common/f/q$c;->c()V

    :goto_2b
    return-void

    :cond_2c
    new-instance p1, Lcom/sigmob/sdk/common/c/b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not handle Sigmob Scheme url: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sigmob/sdk/common/c/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/net/Uri;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sigmobAd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
