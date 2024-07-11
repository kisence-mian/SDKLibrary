.class final Lcom/anythink/core/common/g/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/g/h;->a(Landroid/view/View;)Landroid/view/View$OnSystemUiVisibilityChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/anythink/core/common/g/h$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .registers 3

    .line 165
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_b

    .line 166
    iget-object p1, p0, Lcom/anythink/core/common/g/h$1;->a:Landroid/view/View;

    .line 1174
    const/16 v0, 0x1306

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 168
    :cond_b
    return-void
.end method
