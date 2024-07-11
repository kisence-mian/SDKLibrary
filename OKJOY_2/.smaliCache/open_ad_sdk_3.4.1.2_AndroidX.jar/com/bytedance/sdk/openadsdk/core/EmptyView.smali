.class public Lcom/bytedance/sdk/openadsdk/core/EmptyView;
.super Landroid/view/View;
.source "EmptyView.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


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

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:I

.field private final j:Landroid/os/Handler;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->j:Landroid/os/Handler;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_27

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->e:Ljava/lang/ref/WeakReference;

    .line 60
    :cond_27
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d:Landroid/view/View;

    .line 61
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
.end method

.method private b()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    if-eqz v0, :cond_10

    .line 94
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;->a()V

    .line 96
    :cond_10
    return-void
.end method

.method private c()V
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    if-eqz v0, :cond_10

    .line 100
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;->b()V

    .line 102
    :cond_10
    return-void
.end method

.method private d()V
    .registers 3

    .line 149
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->b:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    if-eqz v0, :cond_9

    goto :goto_12

    .line 152
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    .line 153
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    return-void

    .line 150
    :cond_12
    :goto_12
    return-void
.end method

.method private e()V
    .registers 3

    .line 157
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    if-nez v0, :cond_5

    .line 158
    return-void

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    .line 162
    return-void
.end method

.method private f()Z
    .registers 8

    .line 212
    nop

    .line 213
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a()Z

    move-result v0

    .line 214
    nop

    .line 215
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->e:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    .line 216
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 217
    if-nez v1, :cond_1a

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 218
    :cond_1a
    move v1, v3

    goto :goto_1d

    .line 222
    :cond_1c
    move v1, v2

    :goto_1d
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d:Landroid/view/View;

    const/16 v5, 0x14

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->i:I

    invoke-static {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 223
    move v2, v3

    .line 226
    :cond_2a
    if-nez v0, :cond_2d

    .line 227
    move v2, v3

    .line 230
    :cond_2d
    if-nez v0, :cond_34

    if-nez v1, :cond_32

    goto :goto_34

    :cond_32
    move v3, v2

    goto :goto_35

    .line 231
    :cond_34
    :goto_34
    nop

    .line 233
    :goto_35
    return v3
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/c;)V

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->g:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/c;)V

    .line 133
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 8

    .line 184
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    packed-switch p1, :pswitch_data_46

    goto :goto_45

    .line 201
    :pswitch_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->f()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 202
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_45

    .line 203
    :cond_16
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->h:Z

    if-nez p1, :cond_45

    .line 205
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    goto :goto_45

    .line 186
    :pswitch_1e
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    if-eqz p1, :cond_45

    .line 187
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d:Landroid/view/View;

    const/16 v4, 0x14

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->i:I

    invoke-static {p1, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 188
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->e()V

    .line 189
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 190
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    if-eqz p1, :cond_45

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;->a(Landroid/view/View;)V

    goto :goto_45

    .line 195
    :cond_40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 209
    :cond_45
    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_a
    .end packed-switch
.end method

.method public a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/a/c;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/s;->b(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 138
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 140
    goto :goto_a

    .line 142
    :cond_1d
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 78
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 79
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->h:Z

    .line 82
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->b()V

    .line 83
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 106
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 107
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->e()V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->h:Z

    .line 109
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c()V

    .line 112
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 1

    .line 87
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 89
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->b()V

    .line 90
    return-void
.end method

.method public onStartTemporaryDetach()V
    .registers 1

    .line 116
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 119
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c()V

    .line 120
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 70
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    if-eqz v0, :cond_a

    .line 72
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;->a(Z)V

    .line 74
    :cond_a
    return-void
.end method

.method public setAdType(I)V
    .registers 2

    .line 179
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->i:I

    .line 180
    return-void
.end method

.method public setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->c:Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;

    .line 176
    return-void
.end method

.method public setNeedCheckingShow(Z)V
    .registers 3

    .line 165
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->b:Z

    .line 166
    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    if-eqz v0, :cond_c

    .line 168
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->e()V

    goto :goto_15

    .line 169
    :cond_c
    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a:Z

    if-nez p1, :cond_15

    .line 170
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d()V

    .line 172
    :cond_15
    :goto_15
    return-void
.end method

.method public setRefClickViews(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->f:Ljava/util/List;

    .line 124
    return-void
.end method

.method public setRefCreativeViews(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->g:Ljava/util/List;

    .line 128
    return-void
.end method
