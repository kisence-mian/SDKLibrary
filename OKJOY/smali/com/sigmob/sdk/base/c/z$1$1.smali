.class Lcom/sigmob/sdk/base/c/z$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/c/z$1;->a(Lcom/sigmob/volley/n;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/c/z$1;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/c/z$1;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/c/z$1$1;->a:Lcom/sigmob/sdk/base/c/z$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/z$1$1;->a:Lcom/sigmob/sdk/base/c/z$1;

    iget-object v0, v0, Lcom/sigmob/sdk/base/c/z$1;->d:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/j;->d()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Z)V

    return-void
.end method
