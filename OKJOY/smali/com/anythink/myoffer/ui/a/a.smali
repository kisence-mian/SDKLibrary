.class public final Lcom/anythink/myoffer/ui/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 11
    new-instance v1, Lcom/anythink/myoffer/ui/a/a$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/anythink/myoffer/ui/a/a$1;-><init>(Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method
