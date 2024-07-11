.class final Lcom/anythink/network/ks/KSATInitManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/network/ks/KSATInitManager$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/anythink/network/ks/KSATInitManager$a;

.field final synthetic d:Lcom/anythink/network/ks/KSATInitManager;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATInitManager;Landroid/content/Context;Ljava/lang/String;Lcom/anythink/network/ks/KSATInitManager$a;)V
    .registers 5

    .line 61
    iput-object p1, p0, Lcom/anythink/network/ks/KSATInitManager$1;->d:Lcom/anythink/network/ks/KSATInitManager;

    iput-object p2, p0, Lcom/anythink/network/ks/KSATInitManager$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/ks/KSATInitManager$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/network/ks/KSATInitManager$1;->c:Lcom/anythink/network/ks/KSATInitManager$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInitManager$1;->a:Landroid/content/Context;

    new-instance v1, Lcom/kwad/sdk/api/SdkConfig$Builder;

    invoke-direct {v1}, Lcom/kwad/sdk/api/SdkConfig$Builder;-><init>()V

    iget-object v2, p0, Lcom/anythink/network/ks/KSATInitManager$1;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {v1, v2}, Lcom/kwad/sdk/api/SdkConfig$Builder;->appId(Ljava/lang/String;)Lcom/kwad/sdk/api/SdkConfig$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->build()Lcom/kwad/sdk/api/SdkConfig;

    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/kwad/sdk/api/KsAdSDK;->init(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)Z

    .line 69
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInitManager$1;->d:Lcom/anythink/network/ks/KSATInitManager;

    iget-object v1, p0, Lcom/anythink/network/ks/KSATInitManager$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/network/ks/KSATInitManager;->a(Lcom/anythink/network/ks/KSATInitManager;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/anythink/network/ks/KSATInitManager$1;->c:Lcom/anythink/network/ks/KSATInitManager$a;

    if-eqz v0, :cond_22

    .line 72
    invoke-interface {v0}, Lcom/anythink/network/ks/KSATInitManager$a;->onFinish()V

    .line 74
    :cond_22
    return-void
.end method
