.class public Lcom/bytedance/sdk/openadsdk/core/i;
.super Ljava/lang/Object;
.source "H5AdInteractionManager.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private c:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

.field private e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

.field private f:Landroid/view/View;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Landroid/view/View;)V
    .registers 7

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "rewarded_video"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->g:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->a:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/i;->f:Landroid/view/View;

    .line 33
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Ljava/lang/String;)I

    move-result v0

    .line 34
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->g:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 40
    :cond_30
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 44
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 47
    return-void
.end method


# virtual methods
.method public a(ILcom/bytedance/sdk/openadsdk/core/d/i;)V
    .registers 9

    .prologue
    .line 57
    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    if-nez p2, :cond_6

    .line 82
    :cond_5
    :goto_5
    return-void

    .line 60
    :cond_6
    iget v2, p2, Lcom/bytedance/sdk/openadsdk/core/d/i;->a:I

    .line 61
    iget v3, p2, Lcom/bytedance/sdk/openadsdk/core/d/i;->b:I

    .line 62
    iget v4, p2, Lcom/bytedance/sdk/openadsdk/core/d/i;->c:I

    .line 63
    iget v5, p2, Lcom/bytedance/sdk/openadsdk/core/d/i;->d:I

    .line 64
    packed-switch p1, :pswitch_data_34

    goto :goto_5

    .line 66
    :pswitch_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    if-eqz v0, :cond_5

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/i;)V

    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->f:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;IIII)V

    goto :goto_5

    .line 72
    :pswitch_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    if-eqz v0, :cond_5

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/i;)V

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i;->f:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;IIII)V

    goto :goto_5

    .line 64
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_12
        :pswitch_23
    .end packed-switch
.end method
