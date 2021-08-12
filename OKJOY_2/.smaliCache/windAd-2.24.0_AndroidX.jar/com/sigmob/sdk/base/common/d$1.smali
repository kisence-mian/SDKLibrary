.class final Lcom/sigmob/sdk/base/common/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/d;->d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/d$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/d$1;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/d;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method
