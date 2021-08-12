.class Lcom/sigmob/sdk/base/common/q$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/q;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/q;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/q;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/q$5;->a:Lcom/sigmob/sdk/base/common/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/q$5;->a:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/q;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/h;->a()V

    return-void
.end method
