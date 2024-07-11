.class public abstract Lokjoy/r/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lokjoy/r/a;
    .registers 2

    .line 1
    const-string v0, "EMUI"

    invoke-static {v0}, Lokjoy/a/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    new-instance v0, Lokjoy/r/b;

    invoke-direct {v0, p0}, Lokjoy/r/b;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_e
    nop

    .line 3
    const-string v0, "OPPO"

    invoke-static {v0}, Lokjoy/a/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4
    new-instance v0, Lokjoy/r/c;

    invoke-direct {v0, p0}, Lokjoy/r/c;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_1d
    nop

    .line 5
    const-string v0, "VIVO"

    invoke-static {v0}, Lokjoy/a/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 6
    new-instance v0, Lokjoy/r/e;

    invoke-direct {v0, p0}, Lokjoy/r/e;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_2c
    nop

    .line 7
    const-string v0, "MIUI"

    invoke-static {v0}, Lokjoy/a/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 8
    new-instance v0, Lokjoy/r/f;

    invoke-direct {v0, p0}, Lokjoy/r/f;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_3b
    new-instance v0, Lokjoy/r/d;

    invoke-direct {v0, p0}, Lokjoy/r/d;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()[I
.end method

.method public b()Landroid/graphics/Rect;
    .registers 9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lokjoy/r/a;->a()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x2

    aget v5, v1, v5

    const/4 v6, 0x3

    aget v1, v1, v6

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v4

    sub-int/2addr v6, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    sub-int/2addr v3, v5

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    const/4 v0, 0x1

    return v0
.end method
