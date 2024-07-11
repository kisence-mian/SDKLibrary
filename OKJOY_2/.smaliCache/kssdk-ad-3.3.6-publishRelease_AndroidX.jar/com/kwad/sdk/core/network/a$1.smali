.class Lcom/kwad/sdk/core/network/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/core/network/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/network/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/network/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/network/a$1;->a:Lcom/kwad/sdk/core/network/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/network/a$1;->a:Lcom/kwad/sdk/core/network/a;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/network/a;->d()V

    return-void
.end method
