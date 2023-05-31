.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$13;
.super Lcom/mintegral/msdk/widget/a;
.source "MTGMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;->j()V
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
    .line 1118
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$13;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-direct {p0}, Lcom/mintegral/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$13;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->l(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 1122
    const-string v0, "MTGMediaView"

    const-string v1, "CLICK WEBVIEW LAYOUT "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    return-void
.end method
