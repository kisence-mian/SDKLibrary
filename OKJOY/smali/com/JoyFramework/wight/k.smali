.class public Lcom/JoyFramework/wight/k;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/k$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/View;

.field private e:Lcom/JoyFramework/wight/k$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/JoyFramework/wight/k$a;)V
    .registers 7

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object p1, p0, Lcom/JoyFramework/wight/k;->c:Landroid/content/Context;

    .line 26
    iput-object p3, p0, Lcom/JoyFramework/wight/k;->e:Lcom/JoyFramework/wight/k$a;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "joy_dialog_exit"

    const-string v2, "layout"

    .line 28
    invoke-static {p1, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/wight/k;->d:Landroid/view/View;

    .line 30
    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 4

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 75
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/JoyFramework/wight/k;->e:Lcom/JoyFramework/wight/k$a;

    invoke-interface {v0, p1}, Lcom/JoyFramework/wight/k$a;->a(Landroid/view/View;)V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lcom/JoyFramework/wight/k;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/k;->setContentView(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/JoyFramework/wight/k;->c:Landroid/content/Context;

    const-string v1, "dialog_exit"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/k;->a:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/JoyFramework/wight/k;->c:Landroid/content/Context;

    const-string v1, "dialog_cancel"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/k;->b:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/JoyFramework/wight/k;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/JoyFramework/wight/k;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/JoyFramework/wight/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 50
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 72
    return-void
.end method
