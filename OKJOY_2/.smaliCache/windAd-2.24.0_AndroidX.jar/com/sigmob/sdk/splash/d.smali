.class public Lcom/sigmob/sdk/splash/d;
.super Lcom/sigmob/sdk/base/common/f;


# instance fields
.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/f;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sigmob/sdk/splash/d;->e:I

    return-void
.end method

.method public static b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/splash/d;
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/splash/d;

    invoke-direct {v0}, Lcom/sigmob/sdk/splash/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/splash/d;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string p1, "start"

    const/4 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    sget-object p1, Lcom/sigmob/sdk/base/common/a;->a:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p3, p1}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/common/f;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashAdSetting()Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object v0, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting;->show_duration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/splash/d;->e:I

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/SplashAdSetting;->enable_close_on_click:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sigmob/sdk/splash/d;->f:Z

    :cond_19
    return-void
.end method

.method public b(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

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

    invoke-static {p1, p2, p3}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    sget-object p1, Lcom/sigmob/sdk/base/common/a;->q:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p3, p1}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/splash/d;->e:I

    return v0
.end method

.method public d(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string p1, "skip"

    const/4 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/sigmob/sdk/base/common/s;->b(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    sget-object p1, Lcom/sigmob/sdk/base/common/a;->m:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p3, p1}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/splash/d;->f:Z

    return v0
.end method
