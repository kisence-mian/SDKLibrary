.class Lcom/sigmob/sdk/mraid/h$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/h;->a(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h$5;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$5;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->e(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/n;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$5;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->e(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/n;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$5;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->f(Lcom/sigmob/sdk/mraid/h;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/mraid/n;->a(Z)V

    :cond_17
    return-void
.end method
