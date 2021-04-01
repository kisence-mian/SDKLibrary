.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$8;
.super Lcom/mintegral/msdk/mtgjscommon/b/a;
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
    .line 2930
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$8;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-direct {p0}, Lcom/mintegral/msdk/mtgjscommon/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 2939
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mintegral/msdk/mtgjscommon/b/a;->a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2940
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$8;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Z)Z

    .line 2941
    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2933
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/mtgjscommon/b/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2934
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$8;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->c(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Z)Z

    .line 2935
    return-void
.end method
