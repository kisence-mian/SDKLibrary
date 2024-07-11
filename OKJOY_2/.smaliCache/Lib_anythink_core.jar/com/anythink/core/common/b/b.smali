.class public abstract Lcom/anythink/core/common/b/b;
.super Ljava/lang/Object;


# instance fields
.field isRefresh:Z

.field protected mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackingInfo:Lcom/anythink/core/common/d/d;

.field private mUnitgroupInfo:Lcom/anythink/core/c/c$b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTrackingInfo()Lcom/anythink/core/common/d/d;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/anythink/core/common/b/b;->mTrackingInfo:Lcom/anythink/core/common/d/d;

    return-object v0
.end method

.method public final getmUnitgroupInfo()Lcom/anythink/core/c/c$b;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/anythink/core/common/b/b;->mUnitgroupInfo:Lcom/anythink/core/c/c$b;

    return-object v0
.end method

.method public final isRefresh()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/anythink/core/common/b/b;->isRefresh:Z

    return v0
.end method

.method public final postOnMainThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 56
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public final refreshActivityContext(Landroid/app/Activity;)V
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/b;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 52
    return-void
.end method

.method public final setRefresh(Z)V
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/anythink/core/common/b/b;->isRefresh:Z

    .line 44
    return-void
.end method

.method public final setTrackingInfo(Lcom/anythink/core/common/d/d;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/anythink/core/common/b/b;->mTrackingInfo:Lcom/anythink/core/common/d/d;

    .line 28
    return-void
.end method

.method public final setmUnitgroupInfo(Lcom/anythink/core/c/c$b;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/anythink/core/common/b/b;->mUnitgroupInfo:Lcom/anythink/core/c/c$b;

    .line 40
    return-void
.end method
