.class Lcom/sigmob/sdk/mraid/x$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/x;->k()Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/x;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/x;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/x$5;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$5;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->o(Lcom/sigmob/sdk/mraid/x;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/x$5;->a:Lcom/sigmob/sdk/mraid/x;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/x;->p(Lcom/sigmob/sdk/mraid/x;)V

    goto :goto_7
.end method
