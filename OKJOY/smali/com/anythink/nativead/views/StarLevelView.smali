.class public Lcom/anythink/nativead/views/StarLevelView;
.super Landroid/widget/ImageView;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/nativead/views/StarLevelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object p1, p0, Lcom/anythink/nativead/views/StarLevelView;->a:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/nativead/views/StarLevelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput-object p1, p0, Lcom/anythink/nativead/views/StarLevelView;->a:Landroid/content/Context;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput-object p1, p0, Lcom/anythink/nativead/views/StarLevelView;->a:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public setState(Z)V
    .registers 5

    .prologue
    .line 28
    if-eqz p1, :cond_12

    .line 29
    invoke-virtual {p0}, Lcom/anythink/nativead/views/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "plugin_splash_star"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/views/StarLevelView;->setImageResource(I)V

    .line 33
    :goto_11
    return-void

    .line 31
    :cond_12
    invoke-virtual {p0}, Lcom/anythink/nativead/views/StarLevelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "plugin_splash_star_gray"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/views/StarLevelView;->setImageResource(I)V

    goto :goto_11
.end method
