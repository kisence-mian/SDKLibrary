.class Lcom/sigmob/sdk/mraid/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/MraidWebView;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/d;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/d;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/d$3;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d$3;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/d;)Lcom/sigmob/sdk/mraid/f;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/d$3;->a:Lcom/sigmob/sdk/mraid/d;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/d;->a(Lcom/sigmob/sdk/mraid/d;)Lcom/sigmob/sdk/mraid/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/mraid/f;->a(Z)V

    :cond_11
    return-void
.end method
