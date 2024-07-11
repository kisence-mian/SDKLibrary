.class public Lcom/sigmob/sdk/a/c;
.super Lcom/sigmob/sdk/base/common/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/f;-><init>()V

    return-void
.end method

.method public static b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/a/c;
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/a/c;

    invoke-direct {v0}, Lcom/sigmob/sdk/a/c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string p1, "start"

    const/4 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    sget-object p1, Lcom/sigmob/sdk/base/common/a;->a:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p3, p1}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/common/f;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public b(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string p1, "click"

    const/4 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    sget-object p1, Lcom/sigmob/sdk/base/common/a;->c:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p3, p1}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public c(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string p1, "close"

    const/4 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method
