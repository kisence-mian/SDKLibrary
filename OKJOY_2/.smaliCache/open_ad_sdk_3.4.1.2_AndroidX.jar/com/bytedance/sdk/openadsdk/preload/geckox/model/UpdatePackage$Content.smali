.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;
.super Ljava/lang/Object;
.source "UpdatePackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Content"
.end annotation


# instance fields
.field private fullPackage:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "package"
    .end annotation
.end field

.field private patch:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "patch"
    .end annotation
.end field

.field private strategy:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "strategies"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->fullPackage:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    return-object p0
.end method

.method static synthetic access$002(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->fullPackage:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    return-object p1
.end method

.method static synthetic access$100(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->patch:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    return-object p0
.end method

.method static synthetic access$102(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->patch:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Package;

    return-object p1
.end method

.method static synthetic access$200(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;
    .registers 1

    .line 282
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->strategy:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;

    return-object p0
.end method

.method static synthetic access$202(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;)Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Content;->strategy:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage$Strategy;

    return-object p1
.end method
