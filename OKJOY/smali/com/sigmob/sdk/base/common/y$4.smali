.class Lcom/sigmob/sdk/base/common/y$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/y;->l()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/y;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/y;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/y$4;->a:Lcom/sigmob/sdk/base/common/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/y$4;->a:Lcom/sigmob/sdk/base/common/y;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/y;->g()Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    return-void
.end method
