.class final Lcom/mintegral/msdk/base/webview/ProgressBar$1;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/webview/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/webview/ProgressBar;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/webview/ProgressBar;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mintegral/msdk/base/webview/ProgressBar$1;->a:Lcom/mintegral/msdk/base/webview/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mintegral/msdk/base/webview/ProgressBar$1;->a:Lcom/mintegral/msdk/base/webview/ProgressBar;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/webview/ProgressBar;->invalidate()V

    .line 62
    return-void
.end method
