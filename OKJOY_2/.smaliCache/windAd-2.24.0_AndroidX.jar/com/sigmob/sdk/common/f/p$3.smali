.class final enum Lcom/sigmob/sdk/common/f/p$3;
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

    invoke-virtual {p3}, Lcom/sigmob/sdk/common/f/q;->b()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/j;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :cond_a
    new-instance p1, Lcom/sigmob/sdk/common/c/b;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support Show Sigmob Browser "

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

    const-string v0, "HTTP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "HTTPS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method
