.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$7;
.super Lcom/mintegral/msdk/nativex/listener/b;
.source "MTGMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 2

    .prologue
    .line 2924
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$7;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-direct {p0}, Lcom/mintegral/msdk/nativex/listener/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$7;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->exitFullScreen()V

    .line 2928
    return-void
.end method
