.class Lcom/sigmob/sdk/mraid/i$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/i;->k()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/i;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/i;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/i$6;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/sdk/mraid/MraidWebView;Lcom/sigmob/sdk/base/common/p;)V
    .registers 5

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$6;->a:Lcom/sigmob/sdk/mraid/i;

    if-eqz p2, :cond_7

    iput-object p2, p1, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    goto :goto_2d

    :cond_7
    new-instance p2, Lcom/sigmob/sdk/base/common/p;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$6;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->t(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/sigmob/sdk/base/common/p;-><init>(Landroid/content/Context;)V

    iput-object p2, p1, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$6;->a:Lcom/sigmob/sdk/mraid/i;

    iget-object p1, p1, Lcom/sigmob/sdk/mraid/i;->g:Lcom/sigmob/sdk/base/common/p;

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/i$6;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid/i;->u(Lcom/sigmob/sdk/mraid/i;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/i$6;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/i;->a(Lcom/sigmob/sdk/mraid/i;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/i$6;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/i;->s(Lcom/sigmob/sdk/mraid/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/sigmob/sdk/base/common/p;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :goto_2d
    return-void
.end method
