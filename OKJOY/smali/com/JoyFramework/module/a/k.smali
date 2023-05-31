.class public Lcom/JoyFramework/module/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/module/a/k$a;
    }
.end annotation


# instance fields
.field public a:Lcom/JoyFramework/wight/ab;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/JoyFramework/module/a/k;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/JoyFramework/module/a/k;->b:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 65
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/JoyFramework/module/a/k$a;)V
    .registers 9

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x41f00000    # 30.0f

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 61
    :goto_9
    return-void

    .line 35
    :cond_a
    new-instance v0, Lcom/JoyFramework/wight/ab;

    iget-object v1, p0, Lcom/JoyFramework/module/a/k;->b:Landroid/content/Context;

    const-string v2, "\u516c\u544a"

    new-instance v3, Lcom/JoyFramework/module/a/l;

    invoke-direct {v3, p0, p2}, Lcom/JoyFramework/module/a/l;-><init>(Lcom/JoyFramework/module/a/k;Lcom/JoyFramework/module/a/k$a;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/JoyFramework/wight/ab;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/JoyFramework/wight/ab$a;)V

    iput-object v0, p0, Lcom/JoyFramework/module/a/k;->a:Lcom/JoyFramework/wight/ab;

    .line 43
    iget-object v0, p0, Lcom/JoyFramework/module/a/k;->b:Landroid/content/Context;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/JoyFramework/module/a/k;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/JoyFramework/module/a/k;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 44
    iget-object v0, p0, Lcom/JoyFramework/module/a/k;->a:Lcom/JoyFramework/wight/ab;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ab;->show()V

    .line 46
    :cond_33
    iget-object v0, p0, Lcom/JoyFramework/module/a/k;->a:Lcom/JoyFramework/wight/ab;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/ab;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 50
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 54
    iget-object v2, p0, Lcom/JoyFramework/module/a/k;->b:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/JoyFramework/module/a/k;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 55
    iget-object v2, p0, Lcom/JoyFramework/module/a/k;->b:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/JoyFramework/module/a/k;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 60
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    goto :goto_9
.end method
