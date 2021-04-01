.class final Lcom/mintegral/msdk/base/common/e/b$7;
.super Lcom/mintegral/msdk/base/common/e/d/b;
.source "ReportController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/common/e/b;->a(IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/common/e/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/common/e/b;)V
    .registers 2

    .prologue
    .line 750
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/e/b$7;->a:Lcom/mintegral/msdk/base/common/e/b;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/e/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 758
    const-string v0, ""

    const-string v1, "reportDownloadMethod REPORT FAILED"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 753
    const-string v0, ""

    const-string v1, "reportDownloadMethod REPORT SUCCESS"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    return-void
.end method
