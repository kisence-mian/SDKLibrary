.class final Lcom/tapjoy/TJAdUnit$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJAdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .registers 2

    .line 769
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$9;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 772
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$9;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->i(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$9;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoProgress(I)V

    .line 773
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$9;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->m(Lcom/tapjoy/TJAdUnit;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit$9;->a:Lcom/tapjoy/TJAdUnit;

    invoke-static {v1}, Lcom/tapjoy/TJAdUnit;->j(Lcom/tapjoy/TJAdUnit;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 774
    return-void
.end method
