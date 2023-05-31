.class final Lcom/mintegral/msdk/base/common/e/b$3;
.super Lcom/mintegral/msdk/base/common/e/d/b;
.source "ReportController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/mintegral/msdk/base/common/e/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/common/e/b;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 438
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/e/b$3;->b:Lcom/mintegral/msdk/base/common/e/b;

    iput-object p2, p0, Lcom/mintegral/msdk/base/common/e/b$3;->a:Ljava/io/File;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/e/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 448
    sget-object v0, Lcom/mintegral/msdk/base/common/e/b;->a:Ljava/lang/String;

    const-string v1, "report failed exception"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 441
    sget-object v0, Lcom/mintegral/msdk/base/common/e/b;->a:Ljava/lang/String;

    const-string v1, "report success exception"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/b$3;->a:Ljava/io/File;

    if-eqz v0, :cond_10

    .line 443
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/e/b$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 445
    :cond_10
    return-void
.end method
