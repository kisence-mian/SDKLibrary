.class public Lcom/bytedance/sdk/openadsdk/core/j;
.super Ljava/lang/Object;
.source "H5AdInteractionManager.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private c:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

.field private e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

.field private f:Landroid/view/View;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/view/View;Ljava/lang/String;)V
    .registers 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "rewarded_video"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j;->g:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j;->a:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/j;->f:Landroid/view/View;

    .line 39
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_22

    .line 40
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result p3

    .line 41
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/j;->g:Ljava/lang/String;

    .line 42
    goto :goto_24

    .line 43
    :cond_22
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/j;->g:Ljava/lang/String;

    .line 46
    :goto_24
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result p3

    const/4 p4, 0x4

    if-ne p3, p4, :cond_33

    .line 47
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/j;->g:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/j;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 50
    :cond_33
    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/j;->g:Ljava/lang/String;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p3, p1, p2, p4, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/j;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    .line 51
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/j;->f:Landroid/view/View;

    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 52
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/j;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/j;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 54
    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/j;->g:Ljava/lang/String;

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p3, p1, p2, p4, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/j;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    .line 55
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j;->f:Landroid/view/View;

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;)V

    .line 56
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/j;->c:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 57
    return-void
.end method


# virtual methods
.method public a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V
    .registers 10

    .line 67
    const/4 v0, -0x1

    if-eq p1, v0, :cond_30

    if-nez p2, :cond_6

    goto :goto_30

    .line 70
    :cond_6
    iget v3, p2, Lcom/bytedance/sdk/openadsdk/core/d/j;->a:I

    .line 71
    iget v4, p2, Lcom/bytedance/sdk/openadsdk/core/d/j;->b:I

    .line 72
    iget v5, p2, Lcom/bytedance/sdk/openadsdk/core/d/j;->c:I

    .line 73
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/d/j;->d:I

    .line 74
    packed-switch p1, :pswitch_data_32

    goto :goto_2f

    .line 82
    :pswitch_12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    if-eqz p1, :cond_2f

    .line 83
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 84
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/j;->f:Landroid/view/View;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;IIII)V

    goto :goto_2f

    .line 76
    :pswitch_21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    if-eqz p1, :cond_2f

    .line 77
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 78
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/j;->f:Landroid/view/View;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;IIII)V

    .line 92
    :cond_2f
    :goto_2f
    return-void

    .line 68
    :cond_30
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_21
        :pswitch_12
    .end packed-switch
.end method
