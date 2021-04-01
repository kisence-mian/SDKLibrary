.class public Lcom/bytedance/sdk/openadsdk/core/widget/d;
.super Ljava/lang/Object;
.source "VideoOnTouchLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

.field private b:Z

.field private c:Z

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private final j:Landroid/view/View$OnTouchListener;

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/d$a;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b:Z

    .line 38
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->h:Z

    .line 49
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->i:Z

    .line 62
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->j:Landroid/view/View$OnTouchListener;

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F
    .registers 2

    .prologue
    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->d:F

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/d;I)I
    .registers 2

    .prologue
    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->f:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Lcom/bytedance/sdk/openadsdk/core/widget/d$a;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a:Lcom/bytedance/sdk/openadsdk/core/widget/d$a;

    return-object v0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    const v7, 0x3f7d70a4    # 0.99f

    const v6, 0x3c23d70a    # 0.01f

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_46

    .line 143
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v1

    .line 144
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ai;->d(Landroid/content/Context;)I

    move-result v2

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 149
    int-to-float v5, v1

    mul-float/2addr v5, v6

    cmpg-float v5, v3, v5

    if-lez v5, :cond_45

    int-to-float v1, v1

    mul-float/2addr v1, v7

    cmpl-float v1, v3, v1

    if-gez v1, :cond_45

    int-to-float v1, v2

    mul-float/2addr v1, v6

    cmpg-float v1, v4, v1

    if-lez v1, :cond_45

    int-to-float v1, v2

    mul-float/2addr v1, v7

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_46

    :cond_45
    const/4 v0, 0x1

    .line 152
    :cond_46
    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/d;Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z
    .registers 2

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/d;F)F
    .registers 2

    .prologue
    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->e:F

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/d;I)I
    .registers 2

    .prologue
    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:I

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z
    .registers 2

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/widget/d;Z)Z
    .registers 2

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->i:Z

    return p1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/widget/d;)F
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->d:F

    return v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/widget/d;)F
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->e:F

    return v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/widget/d;)I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->f:I

    return v0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/widget/d;)I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->g:I

    return v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/widget/d;)Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->h:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 52
    if-eqz p1, :cond_7

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->j:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    :cond_7
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c:Z

    .line 59
    return-void
.end method
