.class public Lcom/sigmob/sdk/splash/d;
.super Lcom/sigmob/sdk/base/common/m;


# instance fields
.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/m;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/sigmob/sdk/splash/d;->k:I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 12

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_10

    const-string v1, "sub_category"

    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_id"

    invoke-interface {v6, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "5"

    const/4 v3, 0x2

    move-object v1, p3

    move-object v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/splash/d;
    .registers 2

    new-instance v0, Lcom/sigmob/sdk/splash/d;

    invoke-direct {v0}, Lcom/sigmob/sdk/splash/d;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/splash/d;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 7

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->h:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/sigmob/sdk/splash/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->a:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p3, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/sigmob/sdk/base/common/m;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashAdSetting()Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;->show_duration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/splash/d;->k:I

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/SplashAdSetting;->enable_close_on_click:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sigmob/sdk/splash/d;->l:Z

    :cond_19
    return-void
.end method

.method public b(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->c:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p3, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public c(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 7

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->z:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/sigmob/sdk/splash/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->q:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p3, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public d(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 7

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x0

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->o:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdslot_id()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/sigmob/sdk/splash/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->m:Lcom/sigmob/sdk/base/common/a;

    invoke-static {p3, v0}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/a;)V

    return-void
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/splash/d;->k:I

    return v0
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/splash/d;->l:Z

    return v0
.end method
