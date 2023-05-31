.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$17;
.super Ljava/lang/Object;
.source "MTGMediaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;->r()Landroid/view/View;
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
    .line 1981
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$17;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$17;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->exitFullScreen()V

    .line 1985
    return-void
.end method
