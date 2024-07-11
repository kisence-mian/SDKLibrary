.class final Lcom/kwad/sdk/core/report/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/report/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/report/g;->c(Lcom/kwad/sdk/core/report/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kwad/sdk/core/report/h<",
        "Lcom/kwad/sdk/core/report/ReportAction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/report/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/report/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/report/g$2;->a:Lcom/kwad/sdk/core/report/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/kwad/sdk/core/report/d;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/report/g$2;->b()Lcom/kwad/sdk/core/report/ReportAction;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/kwad/sdk/core/report/ReportAction;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/report/g$2;->a:Lcom/kwad/sdk/core/report/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/report/ReportAction;->a(Lcom/kwad/sdk/core/report/a;)Lcom/kwad/sdk/core/report/ReportAction;

    move-result-object v0

    return-object v0
.end method
