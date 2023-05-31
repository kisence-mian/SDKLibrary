.class Lcom/JoyFramework/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 4

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/JoyFramework/c/j;->c:Lcom/JoyFramework/c/e;

    iput-object p2, p0, Lcom/JoyFramework/c/j;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/JoyFramework/c/j;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/JoyFramework/c/j;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1157
    iget-object v0, p0, Lcom/JoyFramework/c/j;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/JoyFramework/c/j;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1158
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 1163
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 1152
    return-void
.end method
