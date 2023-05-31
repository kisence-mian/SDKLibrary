.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$b;
.super Ljava/lang/Object;
.source "MTGMediaView.java"

# interfaces
.implements Lcom/mintegral/msdk/nativex/listener/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mintegral/msdk/nativex/view/MTGMediaView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 3

    .prologue
    .line 3051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3052
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$b;->a:Ljava/lang/ref/WeakReference;

    .line 3053
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 3057
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    .line 3058
    if-eqz v0, :cond_d

    .line 3059
    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->N(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 3061
    :cond_d
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 3089
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    .line 3090
    if-eqz v0, :cond_d

    .line 3091
    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Ljava/lang/String;)V

    .line 3093
    :cond_d
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 3065
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    .line 3066
    if-eqz v0, :cond_d

    .line 3067
    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->O(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 3069
    :cond_d
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 3073
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    .line 3074
    if-eqz v0, :cond_d

    .line 3075
    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->P(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 3077
    :cond_d
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 3081
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    .line 3082
    if-eqz v0, :cond_d

    .line 3083
    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->Q(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 3085
    :cond_d
    return-void
.end method
