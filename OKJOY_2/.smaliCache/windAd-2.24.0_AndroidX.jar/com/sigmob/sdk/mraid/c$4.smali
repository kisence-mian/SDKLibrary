.class Lcom/sigmob/sdk/mraid/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/mraid/c;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/c;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/mraid/c;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/c$4;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$4;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->e(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/c$e;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/c$4;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/c;->e(Lcom/sigmob/sdk/mraid/c;)Lcom/sigmob/sdk/mraid/c$e;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/c$4;->a:Lcom/sigmob/sdk/mraid/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/c;->f(Lcom/sigmob/sdk/mraid/c;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/mraid/c$e;->a(Z)V

    :cond_17
    return-void
.end method
