.class final Lcom/mintegral/msdk/base/common/e/b$14;
.super Lcom/mintegral/msdk/base/common/e/d/b;
.source "ReportController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/common/e/b;->c(Ljava/lang/String;)V
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
    .line 295
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/e/b$14;->a:Lcom/mintegral/msdk/base/common/e/b;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/e/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 303
    sget-object v0, Lcom/mintegral/msdk/base/common/e/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportPB onFailed msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 298
    sget-object v0, Lcom/mintegral/msdk/base/common/e/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportPB success data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method
