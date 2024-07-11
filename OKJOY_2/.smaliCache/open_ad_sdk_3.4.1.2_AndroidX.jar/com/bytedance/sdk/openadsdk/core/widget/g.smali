.class public Lcom/bytedance/sdk/openadsdk/core/widget/g;
.super Ljava/lang/Object;
.source "VideoOnTouchLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/g$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/widget/g$a;

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
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/g$a;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b:Z

    .line 38
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->c:Z

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->h:Z

    .line 49
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->i:Z

    .line 62
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/g$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/g;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->j:Landroid/view/View$OnTouchListener;

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g$a;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/g;F)F
    .registers 2

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->d:F

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/g;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->f:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Lcom/bytedance/sdk/openadsdk/core/widget/g$a;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a:Lcom/bytedance/sdk/openadsdk/core/widget/g$a;

    return-object p0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_46

    .line 143
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v0

    .line 144
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->d(Landroid/content/Context;)I

    move-result v2

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 149
    int-to-float v0, v0

    const v4, 0x3c23d70a    # 0.01f

    mul-float v5, v0, v4

    cmpg-float v5, v3, v5

    if-lez v5, :cond_44

    const v5, 0x3f7d70a4    # 0.99f

    mul-float/2addr v0, v5

    cmpl-float v0, v3, v0

    if-gez v0, :cond_44

    int-to-float v0, v2

    mul-float/2addr v4, v0

    cmpg-float v2, p1, v4

    if-lez v2, :cond_44

    mul-float/2addr v0, v5

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_45

    :cond_44
    const/4 v1, 0x1

    :cond_45
    return v1

    .line 152
    :cond_46
    return v1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/g;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/g;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/g;Z)Z
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/g;F)F
    .registers 2

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->e:F

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/g;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->g:I

    return p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/g;Z)Z
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/widget/g;Z)Z
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->i:Z

    return p1
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->k:Z

    return p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/widget/g;)F
    .registers 1

    .line 26
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->d:F

    return p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/widget/g;)F
    .registers 1

    .line 26
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->e:F

    return p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->i:Z

    return p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/widget/g;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->f:I

    return p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/widget/g;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->g:I

    return p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/widget/g;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->h:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3

    .line 52
    if-eqz p1, :cond_7

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->j:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    :cond_7
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 58
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/g;->c:Z

    .line 59
    return-void
.end method
