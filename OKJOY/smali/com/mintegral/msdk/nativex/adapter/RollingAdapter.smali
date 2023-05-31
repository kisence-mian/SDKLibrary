.class public Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "RollingAdapter.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mintegral/msdk/nativex/view/MTGNativeRollView$a;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;->a:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;->b:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;->a:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/nativex/view/MTGNativeRollView$a;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;->c:Lcom/mintegral/msdk/nativex/view/MTGNativeRollView$a;

    .line 26
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;->c:Lcom/mintegral/msdk/nativex/view/MTGNativeRollView$a;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 47
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;->c:Lcom/mintegral/msdk/nativex/view/MTGNativeRollView$a;

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/mintegral/msdk/nativex/view/MTGNativeRollView$a;->a()Landroid/view/View;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_26

    .line 49
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/adapter/RollingAdapter;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 55
    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 41
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
