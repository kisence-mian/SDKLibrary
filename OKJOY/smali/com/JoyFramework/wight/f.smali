.class public Lcom/JoyFramework/wight/f;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Lcom/JoyFramework/wight/f$a;

.field private d:Landroid/os/Handler;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/JoyFramework/wight/f$a;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    iput-object p1, p0, Lcom/JoyFramework/wight/f;->a:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/JoyFramework/wight/f;->c:Lcom/JoyFramework/wight/f$a;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/JoyFramework/wight/f$a;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 38
    iput-object p1, p0, Lcom/JoyFramework/wight/f;->a:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/JoyFramework/wight/f;->g:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/JoyFramework/wight/f;->c:Lcom/JoyFramework/wight/f$a;

    .line 41
    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 88
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/JoyFramework/wight/g;

    invoke-direct {v1, p0}, Lcom/JoyFramework/wight/g;-><init>(Lcom/JoyFramework/wight/f;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/JoyFramework/wight/f;->d:Landroid/os/Handler;

    .line 97
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/wight/f;)Z
    .registers 2

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/JoyFramework/wight/f;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/JoyFramework/wight/f;)Lcom/JoyFramework/wight/f$a;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->c:Lcom/JoyFramework/wight/f$a;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 66
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->d:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 67
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 68
    iput-object v1, p0, Lcom/JoyFramework/wight/f;->d:Landroid/os/Handler;

    .line 70
    :cond_f
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->c:Lcom/JoyFramework/wight/f$a;

    invoke-interface {v0}, Lcom/JoyFramework/wight/f$a;->a()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/f;->b:Z

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/JoyFramework/wight/f;->a:Landroid/content/Context;

    const-string v2, "k_dialog_auto_login_switch_account"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 104
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->c:Lcom/JoyFramework/wight/f$a;

    invoke-interface {v0}, Lcom/JoyFramework/wight/f$a;->a()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/f;->b:Z

    .line 107
    :cond_18
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/JoyFramework/wight/f;->a:Landroid/content/Context;

    const-string v2, "joy_dialog_auto_login_k"

    const-string v3, "layout"

    .line 47
    invoke-static {v1, v2, v3}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    invoke-virtual {p0, v1}, Lcom/JoyFramework/wight/f;->setContentView(Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->a:Landroid/content/Context;

    const-string v2, "k_dialog_auto_login_account"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/f;->e:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->a:Landroid/content/Context;

    const-string v2, "k_dialog_auto_login_switch_account"

    invoke-static {v0, v2}, Lcom/JoyFramework/d/as;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/JoyFramework/wight/f;->f:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 57
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d26\u53f7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/JoyFramework/wight/f;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u767b\u5f55\u4e2d..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_68
    invoke-direct {p0}, Lcom/JoyFramework/wight/f;->a()V

    .line 60
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 78
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->d:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 79
    iget-object v0, p0, Lcom/JoyFramework/wight/f;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    iput-object v1, p0, Lcom/JoyFramework/wight/f;->d:Landroid/os/Handler;

    .line 82
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/JoyFramework/wight/f;->b:Z

    .line 83
    return-void
.end method
