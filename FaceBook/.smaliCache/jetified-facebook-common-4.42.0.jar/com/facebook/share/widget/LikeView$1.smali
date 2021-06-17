.class Lcom/facebook/share/widget/LikeView$1;
.super Ljava/lang/Object;
.source "LikeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/LikeView;->initializeLikeButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/LikeView;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/LikeView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/share/widget/LikeView;

    .line 533
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView$1;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 536
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$1;->this$0:Lcom/facebook/share/widget/LikeView;

    # invokes: Lcom/facebook/share/widget/LikeView;->toggleLike()V
    invoke-static {v0}, Lcom/facebook/share/widget/LikeView;->access$300(Lcom/facebook/share/widget/LikeView;)V

    .line 537
    return-void
.end method
