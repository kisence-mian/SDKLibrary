.class Lcom/kwad/sdk/core/report/ReportNetwork$1;
.super Lcom/kwad/sdk/core/network/BaseResultData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/report/n;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwad/sdk/core/report/n;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/report/n;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/report/ReportNetwork$1;->this$0:Lcom/kwad/sdk/core/report/n;

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/BaseResultData;-><init>()V

    return-void
.end method


# virtual methods
.method public parseJson(Lorg/json/JSONObject;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/network/BaseResultData;->parseJson(Lorg/json/JSONObject;)V

    return-void
.end method
