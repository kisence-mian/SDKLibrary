.class final Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView$1;
.super Ljava/lang/Object;
.source "WindVaneWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView$1;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView$1;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->destroy()V

    .line 149
    return-void
.end method
