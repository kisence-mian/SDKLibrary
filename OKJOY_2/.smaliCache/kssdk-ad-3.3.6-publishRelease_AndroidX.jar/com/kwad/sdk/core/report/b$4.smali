.class final Lcom/kwad/sdk/core/report/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/report/b;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/response/model/AdTemplate;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/report/b$4;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/report/b$4;->a:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadFilePath:Ljava/lang/String;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/kwad/sdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
