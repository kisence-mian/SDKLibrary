.class Lcom/kwad/sdk/core/request/e$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/request/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/request/e$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/request/e$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;)V
    .registers 3
    .param p1    # Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/kwad/sdk/core/request/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdConfigData$AdConfigs;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method
