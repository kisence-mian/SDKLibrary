.class public Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final a:Ljava/lang/String; = "RefreshListView"


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/animation/Animation;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/JoyFramework/wight/PullToRefresh/a;

.field private p:Z

.field private q:Landroid/view/View;

.field private r:I

.field private s:Z

.field private t:Landroid/content/Context;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->f:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->g:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->h:I

    .line 34
    iput v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->i:I

    .line 47
    iput-boolean v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->s:Z

    .line 54
    iput-object p1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->t:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->d()V

    .line 56
    invoke-direct {p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->c()V

    .line 57
    invoke-virtual {p0, p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 58
    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->t:Landroid/content/Context;

    const-string v2, "joy_listview_footer"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->q:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->t:Landroid/content/Context;

    const-string v2, "tv_listview_footer_text"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->u:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->t:Landroid/content/Context;

    const-string v2, "pb_listview_header"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->v:Landroid/widget/ProgressBar;

    .line 66
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->q:Landroid/view/View;

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 67
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->r:I

    .line 68
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->q:Landroid/view/View;

    iget v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->r:I

    neg-int v1, v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 69
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->q:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->addFooterView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method private d()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->t:Landroid/content/Context;

    const-string v2, "joy_listview_header"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->e:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->t:Landroid/content/Context;

    const-string v2, "iv_listview_header_arrow"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->l:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->t:Landroid/content/Context;

    const-string v2, "tv_listview_header_state"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->m:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->t:Landroid/content/Context;

    const-string v2, "tv_listview_header_last_update_time"

    invoke-static {v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->n:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9996\u6b21\u52a0\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->e:Landroid/view/View;

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 84
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->d:I

    .line 85
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->e:Landroid/view/View;

    iget v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->d:I

    neg-int v1, v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 86
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 87
    invoke-direct {p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->e()V

    .line 88
    return-void
.end method

.method private e()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x3e8

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 98
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->j:Landroid/view/animation/Animation;

    .line 99
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 100
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 102
    new-instance v5, Landroid/view/animation/RotateAnimation;

    const/high16 v7, -0x3c4c0000    # -360.0f

    move v6, v2

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->k:Landroid/view/animation/Animation;

    .line 103
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 104
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 105
    return-void
.end method

.method private f()V
    .registers 3

    .prologue
    .line 160
    iget v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->i:I

    packed-switch v0, :pswitch_data_38

    .line 177
    :goto_5
    return-void

    .line 162
    :pswitch_6
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->m:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 166
    :pswitch_15
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->m:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 170
    :pswitch_24
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 171
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->m:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 160
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_6
        :pswitch_15
        :pswitch_24
    .end packed-switch
.end method

.method private getLastUpdateTime()Ljava/lang/String;
    .registers 5

    .prologue
    .line 92
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->e:Landroid/view/View;

    iget v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->d:I

    neg-int v1, v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 222
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->m:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u6b21\u52a0\u8f7d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iput v3, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->i:I

    .line 226
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->q:Landroid/view/View;

    iget v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->r:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 230
    iput-boolean v2, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->s:Z

    .line 231
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->u:Landroid/widget/TextView;

    const-string v1, "\u51c6\u5907\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 234
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 204
    iput p2, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->b:I

    .line 206
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v1, p4, -0x1

    if-ne v0, v1, :cond_14

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->p:Z

    .line 208
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->q:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 212
    :goto_13
    return-void

    .line 210
    :cond_14
    iput-boolean v2, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->p:Z

    goto :goto_13
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 183
    if-eqz p2, :cond_6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_32

    .line 185
    :cond_6
    iget-boolean v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->p:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->s:Z

    if-nez v0, :cond_32

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->s:Z

    .line 189
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->u:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 192
    invoke-virtual {p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->setSelection(I)V

    .line 194
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->o:Lcom/JoyFramework/wight/PullToRefresh/a;

    if-eqz v0, :cond_32

    .line 195
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->o:Lcom/JoyFramework/wight/PullToRefresh/a;

    invoke-interface {v0}, Lcom/JoyFramework/wight/PullToRefresh/a;->d()V

    .line 199
    :cond_32
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_70

    .line 155
    :cond_9
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_d
    return v0

    .line 111
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->c:I

    goto :goto_9

    .line 114
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 116
    iget v2, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->c:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 118
    iget v2, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->d:I

    neg-int v2, v2

    add-int/2addr v1, v2

    .line 120
    iget v2, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->b:I

    if-nez v2, :cond_9

    iget v2, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->d:I

    neg-int v2, v2

    if-ge v2, v1, :cond_9

    .line 121
    if-lez v1, :cond_3e

    iget v2, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->i:I

    if-nez v2, :cond_3e

    .line 123
    iput v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->i:I

    .line 124
    invoke-direct {p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->f()V

    .line 131
    :cond_38
    :goto_38
    iget-object v2, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->e:Landroid/view/View;

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_d

    .line 125
    :cond_3e
    if-gez v1, :cond_38

    iget v2, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->i:I

    if-ne v2, v0, :cond_38

    .line 127
    iput v3, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->i:I

    .line 128
    invoke-direct {p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->f()V

    goto :goto_38

    .line 137
    :pswitch_4a
    iget v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->i:I

    if-ne v1, v0, :cond_63

    .line 139
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->e:Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 141
    const/4 v0, 0x2

    iput v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->i:I

    .line 142
    invoke-direct {p0}, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->f()V

    .line 144
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->o:Lcom/JoyFramework/wight/PullToRefresh/a;

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->o:Lcom/JoyFramework/wight/PullToRefresh/a;

    invoke-interface {v0}, Lcom/JoyFramework/wight/PullToRefresh/a;->c()V

    goto :goto_9

    .line 147
    :cond_63
    iget v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->i:I

    if-nez v0, :cond_9

    .line 149
    iget-object v0, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->e:Landroid/view/View;

    iget v1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->d:I

    neg-int v1, v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9

    .line 109
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_e
        :pswitch_4a
        :pswitch_16
    .end packed-switch
.end method

.method public setOnRefreshListener(Lcom/JoyFramework/wight/PullToRefresh/a;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/JoyFramework/wight/PullToRefresh/RefreshListView;->o:Lcom/JoyFramework/wight/PullToRefresh/a;

    .line 217
    return-void
.end method
