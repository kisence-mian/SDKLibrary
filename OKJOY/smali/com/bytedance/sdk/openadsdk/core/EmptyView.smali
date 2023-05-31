.class public Lcom/bytedance/sdk/openadsdk/core/EmptyView;
.super Landroid/view/View;
.source "EmptyView.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

.field private d:Landroid/view/View;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private final i:Landroid/os/Handler;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->i:Landroid/os/Handler;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d:Landroid/view/View;

    .line 54
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    if-eqz v0, :cond_12

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;->a()V

    .line 89
    :cond_12
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    if-eqz v0, :cond_12

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;->b()V

    .line 95
    :cond_12
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 142
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->b:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    if-eqz v0, :cond_a

    .line 147
    :cond_9
    :goto_9
    return-void

    .line 145
    :cond_a
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9
.end method

.method private e()V
    .registers 3

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    if-nez v0, :cond_5

    .line 155
    :goto_4
    return-void

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->e:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/c;)V

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->f:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/c;)V

    .line 126
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 10

    .prologue
    const/16 v7, 0x14

    const/4 v6, 0x2

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5e

    .line 202
    :cond_b
    :goto_b
    return-void

    .line 179
    :pswitch_c
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    if-eqz v0, :cond_b

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d:Landroid/view/View;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->h:I

    invoke-static {v0, v7, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 181
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->e()V

    .line 182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->i:Landroid/os/Handler;

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    if-eqz v0, :cond_b

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;->a(Landroid/view/View;)V

    goto :goto_b

    .line 188
    :cond_2e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->i:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 194
    :pswitch_34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d:Landroid/view/View;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->h:I

    invoke-static {v1, v7, v2}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_50

    if-nez v0, :cond_56

    .line 196
    :cond_50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->i:Landroid/os/Handler;

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 197
    :cond_56
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->g:Z

    if-nez v0, :cond_b

    .line 198
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    goto :goto_b

    .line 177
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_34
    .end packed-switch
.end method

.method public a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/r;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 131
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_a

    .line 135
    :cond_1d
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 72
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->g:Z

    .line 75
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->b()V

    .line 76
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 100
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->e()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->g:Z

    .line 102
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c()V

    .line 105
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 82
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->b()V

    .line 83
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 112
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c()V

    .line 113
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    if-eqz v0, :cond_c

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;->a(Z)V

    .line 67
    :cond_c
    return-void
.end method

.method public setAdType(I)V
    .registers 2

    .prologue
    .line 172
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->h:I

    .line 173
    return-void
.end method

.method public setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    .line 169
    return-void
.end method

.method public setNeedCheckingShow(Z)V
    .registers 3

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->b:Z

    .line 159
    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    if-eqz v0, :cond_c

    .line 161
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->e()V

    .line 165
    :cond_b
    :goto_b
    return-void

    .line 162
    :cond_c
    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    if-nez v0, :cond_b

    .line 163
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d()V

    goto :goto_b
.end method

.method public setRefClickViews(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->e:Ljava/util/List;

    .line 117
    return-void
.end method

.method public setRefCreativeViews(Ljava/util/List;)V
    .registers 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->f:Ljava/util/List;

    .line 121
    return-void
.end method
