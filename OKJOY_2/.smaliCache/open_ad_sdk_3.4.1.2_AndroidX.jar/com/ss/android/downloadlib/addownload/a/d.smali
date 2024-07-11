.class public Lcom/ss/android/downloadlib/addownload/a/d;
.super Landroid/app/Dialog;
.source "SelectOperationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/a/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/ss/android/downloadlib/addownload/a/c;

.field private e:Z

.field private f:Landroid/app/Activity;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/downloadlib/addownload/a/c;)V
    .registers 8

    .line 35
    sget v0, Lcom/ss/android/downloadlib/R$style;->ttdownloader_translucent_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/a/d;->f:Landroid/app/Activity;

    .line 37
    iput-object p6, p0, Lcom/ss/android/downloadlib/addownload/a/d;->d:Lcom/ss/android/downloadlib/addownload/a/c;

    .line 38
    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/a/d;->g:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/a/d;->h:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/a/d;->i:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p5}, Lcom/ss/android/downloadlib/addownload/a/d;->setCanceledOnTouchOutside(Z)V

    .line 42
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->d()V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/a/d;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->e()V

    return-void
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/addownload/a/d;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->f()V

    return-void
.end method

.method private d()V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/a/d;->setContentView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->a:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->b:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/ss/android/downloadlib/R$id;->message_tv:I

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/a/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->c:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 53
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_47
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 56
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/a/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_56
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 59
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/a/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_65
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/a/d$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/a/d$1;-><init>(Lcom/ss/android/downloadlib/addownload/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/a/d$2;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/a/d$2;-><init>(Lcom/ss/android/downloadlib/addownload/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method private e()V
    .registers 2

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->e:Z

    .line 92
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->dismiss()V

    .line 93
    return-void
.end method

.method private f()V
    .registers 1

    .line 96
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/a/d;->dismiss()V

    .line 97
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 77
    sget v0, Lcom/ss/android/downloadlib/R$layout;->ttdownloader_dialog_select_operation:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 82
    sget v0, Lcom/ss/android/downloadlib/R$id;->confirm_tv:I

    return v0
.end method

.method public c()I
    .registers 2

    .line 87
    sget v0, Lcom/ss/android/downloadlib/R$id;->cancel_tv:I

    return v0
.end method

.method public dismiss()V
    .registers 2

    .line 101
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 102
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    .line 103
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 105
    :cond_10
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->e:Z

    if-eqz v0, :cond_1a

    .line 106
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->d:Lcom/ss/android/downloadlib/addownload/a/c;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/a/c;->a()V

    goto :goto_1f

    .line 108
    :cond_1a
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/d;->d:Lcom/ss/android/downloadlib/addownload/a/c;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/a/c;->b()V

    .line 110
    :goto_1f
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 114
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 115
    const/4 p1, 0x1

    return p1

    .line 117
    :cond_9
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
