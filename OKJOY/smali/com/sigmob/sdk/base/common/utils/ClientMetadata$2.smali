.class Lcom/sigmob/sdk/base/common/utils/ClientMetadata$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b(Landroid/content/Context;)I
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/utils/ClientMetadata;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/ClientMetadata$2;->this$0:Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/supplier/IdSupplier;)V
    .registers 5

    invoke-static {p2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Lcom/bun/supplier/IdSupplier;)Lcom/bun/supplier/IdSupplier;

    if-eqz p2, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msa is supported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    :goto_1b
    return-void

    :cond_1c
    const-string v0, "can\'t get msa device id "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_1b
.end method
