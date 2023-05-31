.class final enum Lcom/sigmob/sdk/base/common/utils/ab$1;
.super Lcom/sigmob/sdk/base/common/utils/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/utils/ab;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/sdk/base/common/utils/ab;-><init>(Ljava/lang/String;IZLcom/sigmob/sdk/base/common/utils/ab$1;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/net/Uri;Lcom/sigmob/sdk/base/common/utils/ac;Ljava/lang/String;)V
    .registers 6

    const-string v0, "Link to about page ignored."

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/net/Uri;)Z
    .registers 4

    const-string v0, "about"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
