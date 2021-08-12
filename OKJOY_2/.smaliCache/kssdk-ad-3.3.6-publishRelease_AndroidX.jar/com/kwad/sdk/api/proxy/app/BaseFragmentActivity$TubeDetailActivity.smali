.class public Lcom/kwad/sdk/api/proxy/app/BaseFragmentActivity$TubeDetailActivity;
.super Lcom/kwad/sdk/api/proxy/app/BaseFragmentActivity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/proxy/app/BaseFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TubeDetailActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/api/proxy/app/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDelegate(Landroid/content/Context;)Lcom/kwad/sdk/api/proxy/IFragmentActivityProxy;
    .registers 4

    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v0

    const-class v1, Lcom/kwad/sdk/api/proxy/app/BaseFragmentActivity$TubeDetailActivity;

    invoke-virtual {v0, p1, v1, p0}, Lcom/kwad/sdk/api/loader/Loader;->newComponentProxy(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;)Lcom/kwad/sdk/api/proxy/IComponentProxy;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/api/proxy/IFragmentActivityProxy;

    return-object p1
.end method
