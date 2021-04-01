.class Lcom/JoyFramework/module/point/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/JoyFramework/module/point/c;


# direct methods
.method constructor <init>(Lcom/JoyFramework/module/point/c;)V
    .registers 2

    .prologue
    .line 492
    iput-object p1, p0, Lcom/JoyFramework/module/point/j;->a:Lcom/JoyFramework/module/point/c;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 495
    iget-object v0, p0, Lcom/JoyFramework/module/point/j;->a:Lcom/JoyFramework/module/point/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/JoyFramework/module/point/c;->setVisibility(I)V

    .line 496
    return-void
.end method
