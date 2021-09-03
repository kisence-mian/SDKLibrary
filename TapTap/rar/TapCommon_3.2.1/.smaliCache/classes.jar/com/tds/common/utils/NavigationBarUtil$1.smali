.class final Lcom/tds/common/utils/NavigationBarUtil$1;
.super Ljava/lang/Object;
.source "NavigationBarUtil.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/utils/NavigationBarUtil;->hideNavigationBar(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/tds/common/utils/NavigationBarUtil$1;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 20
    const/16 v0, 0x706

    .line 28
    .local v0, "uiOptions":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_b

    .line 29
    or-int/lit16 v0, v0, 0x1000

    goto :goto_d

    .line 31
    :cond_b
    or-int/lit8 v0, v0, 0x1

    .line 33
    :goto_d
    iget-object v1, p0, Lcom/tds/common/utils/NavigationBarUtil$1;->val$window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 34
    return-void
.end method
