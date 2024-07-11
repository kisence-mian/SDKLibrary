.class Lcom/sigmob/sdk/mraid/i$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/c$e;


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

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/i$4;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$4;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->o(Lcom/sigmob/sdk/mraid/i;)V

    goto :goto_d

    :cond_8
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/i$4;->a:Lcom/sigmob/sdk/mraid/i;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/i;->p(Lcom/sigmob/sdk/mraid/i;)V

    :goto_d
    return-void
.end method
