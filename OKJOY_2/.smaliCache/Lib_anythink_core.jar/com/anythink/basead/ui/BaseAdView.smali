.class public abstract Lcom/anythink/basead/ui/BaseAdView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field f:Lcom/anythink/core/common/d/i;

.field g:Lcom/anythink/core/common/d/h;

.field h:Lcom/anythink/basead/d/c;

.field i:Lcom/anythink/basead/a/b;

.field j:Z

.field k:Z

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;)V
    .registers 5

    .line 60
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/anythink/basead/ui/BaseAdView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;)V
    .registers 5

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/anythink/basead/ui/BaseAdView;->f:Lcom/anythink/core/common/d/i;

    .line 53
    iput-object p3, p0, Lcom/anythink/basead/ui/BaseAdView;->g:Lcom/anythink/core/common/d/h;

    .line 54
    iput-object p4, p0, Lcom/anythink/basead/ui/BaseAdView;->t:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->a()V

    .line 57
    return-void
.end method

.method private l()V
    .registers 6

    .line 158
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseAdView;->j:Z

    if-eqz v0, :cond_5

    .line 159
    return-void

    .line 161
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseAdView;->j:Z

    .line 163
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v0, Lcom/anythink/core/common/d/p;

    if-eqz v1, :cond_1e

    .line 164
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/basead/g/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v1, Lcom/anythink/core/common/d/p;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/g/a/b;->a(Lcom/anythink/core/common/d/p;)V

    goto :goto_3f

    .line 165
    :cond_1e
    instance-of v0, v0, Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_3f

    .line 166
    invoke-static {}, Lcom/anythink/basead/e/c/b;->a()Lcom/anythink/basead/e/c/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/anythink/basead/e/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseAdView;->g:Lcom/anythink/core/common/d/h;

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v4, v4, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/basead/e/c/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;)V

    .line 169
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->b()V

    .line 170
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(ILjava/lang/Runnable;)V
    .registers 5

    .line 136
    if-lez p1, :cond_e

    .line 137
    new-instance v0, Lcom/anythink/basead/d/c;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/anythink/basead/d/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseAdView;->h:Lcom/anythink/basead/d/c;

    goto :goto_19

    .line 139
    :cond_e
    new-instance p1, Lcom/anythink/basead/d/c;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/anythink/basead/d/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseAdView;->h:Lcom/anythink/basead/d/c;

    .line 142
    :goto_19
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseAdView;->h:Lcom/anythink/basead/d/c;

    new-instance v0, Lcom/anythink/basead/ui/BaseAdView$2;

    invoke-direct {v0, p0, p2}, Lcom/anythink/basead/ui/BaseAdView$2;-><init>(Lcom/anythink/basead/ui/BaseAdView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0, v0}, Lcom/anythink/basead/d/c;->a(Landroid/view/View;Lcom/anythink/basead/d/b;)V

    .line 151
    return-void
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .registers 3

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/anythink/basead/ui/BaseAdView;->a(ILjava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method protected abstract a(Z)V
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method protected d()V
    .registers 1

    .line 76
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    :pswitch_7
    goto :goto_42

    .line 200
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseAdView;->n:I

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseAdView;->o:I

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseAdView;->r:I

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseAdView;->s:I

    goto :goto_42

    .line 192
    :pswitch_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseAdView;->l:I

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseAdView;->m:I

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseAdView;->p:I

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseAdView;->q:I

    .line 197
    nop

    .line 208
    :goto_42
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_25
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected e()V
    .registers 1

    .line 79
    return-void
.end method

.method protected final declared-synchronized f()V
    .registers 6

    monitor-enter p0

    .line 82
    nop

    .line 1158
    :try_start_2
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseAdView;->j:Z

    if-nez v0, :cond_43

    .line 1161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseAdView;->j:Z

    .line 1163
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v1, v0, Lcom/anythink/core/common/d/p;

    if-eqz v1, :cond_1f

    .line 1164
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/basead/g/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v1, Lcom/anythink/core/common/d/p;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/g/a/b;->a(Lcom/anythink/core/common/d/p;)V

    goto :goto_40

    .line 1165
    :cond_1f
    instance-of v0, v0, Lcom/anythink/core/common/d/u;

    if-eqz v0, :cond_40

    .line 1166
    invoke-static {}, Lcom/anythink/basead/e/c/b;->a()Lcom/anythink/basead/e/c/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v2, v2, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v3, v3, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/anythink/basead/e/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseAdView;->g:Lcom/anythink/core/common/d/h;

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v4, v4, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/basead/e/c/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;)V

    .line 1169
    :cond_40
    :goto_40
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->b()V
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_45

    .line 83
    :cond_43
    monitor-exit p0

    return-void

    .line 81
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected g()V
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdView;->i:Lcom/anythink/basead/a/b;

    if-nez v0, :cond_13

    .line 88
    new-instance v0, Lcom/anythink/basead/a/b;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/anythink/basead/a/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseAdView;->i:Lcom/anythink/basead/a/b;

    .line 91
    :cond_13
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->k()Lcom/anythink/basead/c/b;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/h;->g:Lcom/anythink/basead/c/b;

    .line 94
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseAdView;->i:Lcom/anythink/basead/a/b;

    new-instance v2, Lcom/anythink/basead/ui/BaseAdView$1;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/BaseAdView$1;-><init>(Lcom/anythink/basead/ui/BaseAdView;)V

    invoke-virtual {v1, v0, v2}, Lcom/anythink/basead/a/b;->a(Lcom/anythink/basead/c/h;Lcom/anythink/basead/a/b$a;)V

    .line 112
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->c()V

    .line 113
    return-void
.end method

.method protected final h()V
    .registers 4

    .line 116
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseAdView;->k:Z

    if-eqz v0, :cond_5

    .line 117
    return-void

    .line 119
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseAdView;->k:Z

    .line 121
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v0, v0, Lcom/anythink/core/common/d/t;

    if-eqz v0, :cond_21

    .line 122
    invoke-static {}, Lcom/anythink/basead/e/b/a;->a()Lcom/anythink/basead/e/b/a;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/anythink/basead/e/b/a;->a()Lcom/anythink/basead/e/b/a;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseAdView;->f:Lcom/anythink/core/common/d/i;

    invoke-static {v1}, Lcom/anythink/basead/e/b/a;->a(Lcom/anythink/core/common/d/i;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/basead/e/b/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 126
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdView;->g:Lcom/anythink/core/common/d/h;

    instance-of v0, v0, Lcom/anythink/core/common/d/f;

    if-eqz v0, :cond_46

    .line 127
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/b/e;->a(Ljava/lang/String;I)V

    .line 128
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseAdView;->g:Lcom/anythink/core/common/d/h;

    check-cast v1, Lcom/anythink/core/common/d/f;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_21 .. :try_end_46} :catchall_47

    .line 132
    :cond_46
    return-void

    .line 130
    :catchall_47
    move-exception v0

    .line 133
    return-void
.end method

.method protected i()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdView;->i:Lcom/anythink/basead/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 175
    invoke-virtual {v0}, Lcom/anythink/basead/a/b;->a()V

    .line 176
    iput-object v1, p0, Lcom/anythink/basead/ui/BaseAdView;->i:Lcom/anythink/basead/a/b;

    .line 179
    :cond_a
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseAdView;->h:Lcom/anythink/basead/d/c;

    if-eqz v0, :cond_13

    .line 180
    invoke-virtual {v0}, Lcom/anythink/basead/d/c;->b()V

    .line 181
    iput-object v1, p0, Lcom/anythink/basead/ui/BaseAdView;->h:Lcom/anythink/basead/d/c;

    .line 184
    :cond_13
    iput-object v1, p0, Lcom/anythink/basead/ui/BaseAdView;->f:Lcom/anythink/core/common/d/i;

    .line 185
    iput-object v1, p0, Lcom/anythink/basead/ui/BaseAdView;->g:Lcom/anythink/core/common/d/h;

    .line 186
    return-void
.end method

.method protected j()Lcom/anythink/basead/c/h;
    .registers 4

    .line 212
    new-instance v0, Lcom/anythink/basead/c/h;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v1, v1, Lcom/anythink/core/common/d/i;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/anythink/basead/c/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/h;->e:I

    .line 214
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseAdView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/anythink/basead/c/h;->f:I

    .line 215
    return-object v0
.end method

.method protected final k()Lcom/anythink/basead/c/b;
    .registers 3

    .line 219
    new-instance v0, Lcom/anythink/basead/c/b;

    invoke-direct {v0}, Lcom/anythink/basead/c/b;-><init>()V

    .line 220
    iget v1, p0, Lcom/anythink/basead/ui/BaseAdView;->l:I

    iput v1, v0, Lcom/anythink/basead/c/b;->a:I

    .line 221
    iget v1, p0, Lcom/anythink/basead/ui/BaseAdView;->m:I

    iput v1, v0, Lcom/anythink/basead/c/b;->b:I

    .line 222
    iget v1, p0, Lcom/anythink/basead/ui/BaseAdView;->n:I

    iput v1, v0, Lcom/anythink/basead/c/b;->c:I

    .line 223
    iget v1, p0, Lcom/anythink/basead/ui/BaseAdView;->o:I

    iput v1, v0, Lcom/anythink/basead/c/b;->d:I

    .line 225
    iget v1, p0, Lcom/anythink/basead/ui/BaseAdView;->p:I

    iput v1, v0, Lcom/anythink/basead/c/b;->e:I

    .line 226
    iget v1, p0, Lcom/anythink/basead/ui/BaseAdView;->q:I

    iput v1, v0, Lcom/anythink/basead/c/b;->f:I

    .line 227
    iget v1, p0, Lcom/anythink/basead/ui/BaseAdView;->r:I

    iput v1, v0, Lcom/anythink/basead/c/b;->g:I

    .line 228
    iget v1, p0, Lcom/anythink/basead/ui/BaseAdView;->s:I

    iput v1, v0, Lcom/anythink/basead/c/b;->h:I

    .line 230
    return-object v0
.end method
