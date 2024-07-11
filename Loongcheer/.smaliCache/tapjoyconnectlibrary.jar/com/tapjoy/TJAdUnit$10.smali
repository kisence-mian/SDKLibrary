.class final Lcom/tapjoy/TJAdUnit$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJAdUnit;->clearVideo(Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

.field final synthetic c:Lcom/tapjoy/TJAdUnit;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJAdUnit;ZLcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .registers 4

    .line 807
    iput-object p1, p0, Lcom/tapjoy/TJAdUnit$10;->c:Lcom/tapjoy/TJAdUnit;

    iput-boolean p2, p0, Lcom/tapjoy/TJAdUnit$10;->a:Z

    iput-object p3, p0, Lcom/tapjoy/TJAdUnit$10;->b:Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 810
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$10;->c:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    iget-boolean v1, p0, Lcom/tapjoy/TJAdUnit$10;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_c

    :cond_b
    const/4 v1, 0x4

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 812
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$10;->c:Lcom/tapjoy/TJAdUnit;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 813
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$10;->c:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0, v2}, Lcom/tapjoy/TJAdUnit;->c(Lcom/tapjoy/TJAdUnit;Z)Z

    .line 814
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$10;->c:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0, v2}, Lcom/tapjoy/TJAdUnit;->d(Lcom/tapjoy/TJAdUnit;Z)Z

    .line 815
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$10;->c:Lcom/tapjoy/TJAdUnit;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->o(Lcom/tapjoy/TJAdUnit;)I

    .line 816
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit$10;->b:Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;->onComplete(Z)V

    .line 817
    return-void
.end method
