.class public Landroidx/core/app/DialogCompat;
.super Ljava/lang/Object;
.source "DialogCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static requireViewById(Landroid/app/Dialog;I)Landroid/view/View;
    .registers 5
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "id"    # I

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 58
    :cond_b
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_12

    .line 63
    return-object v0

    .line 60
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Dialog"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
