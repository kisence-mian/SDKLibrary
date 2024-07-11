.class public Lcom/ss/android/downloadlib/addownload/compliance/a;
.super Landroid/app/Dialog;
.source "AdLpAppInfoDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/ss/android/downloadlib/guide/install/ClipImageView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/app/Activity;

.field private final j:J

.field private k:J

.field private final l:Lcom/ss/android/downloadlib/addownload/b/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;J)V
    .registers 4

    .line 39
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->i:Landroid/app/Activity;

    .line 41
    iput-wide p2, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->j:J

    .line 42
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/c;->a()Lcom/ss/android/downloadlib/addownload/compliance/c;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/downloadlib/addownload/compliance/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/b/b;

    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->l:Lcom/ss/android/downloadlib/addownload/b/b;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/compliance/a;)J
    .registers 3

    .line 27
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->k:J

    return-wide v0
.end method

.method private a()V
    .registers 9

    .line 76
    sget v0, Lcom/ss/android/downloadlib/R$id;->tv_app_name:I

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->a:Landroid/widget/TextView;

    .line 77
    sget v0, Lcom/ss/android/downloadlib/R$id;->tv_app_version:I

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->b:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/ss/android/downloadlib/R$id;->tv_app_developer:I

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->c:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/ss/android/downloadlib/R$id;->tv_app_detail:I

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->d:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/ss/android/downloadlib/R$id;->tv_app_privacy:I

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->e:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/ss/android/downloadlib/R$id;->tv_give_up:I

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->f:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/ss/android/downloadlib/R$id;->iv_app_icon:I

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/guide/install/ClipImageView;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->g:Lcom/ss/android/downloadlib/guide/install/ClipImageView;

    .line 83
    sget v0, Lcom/ss/android/downloadlib/R$id;->ll_download:I

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->h:Landroid/widget/LinearLayout;

    .line 85
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->a:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->l:Lcom/ss/android/downloadlib/addownload/b/b;

    iget-object v3, v3, Lcom/ss/android/downloadlib/addownload/b/b;->e:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "--"

    aput-object v5, v2, v3

    invoke-static {v2}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7248\u672c\u53f7\uff1a"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/String;

    iget-object v7, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->l:Lcom/ss/android/downloadlib/addownload/b/b;

    iget-object v7, v7, Lcom/ss/android/downloadlib/addownload/b/b;->f:Ljava/lang/String;

    aput-object v7, v6, v4

    aput-object v5, v6, v3

    invoke-static {v6}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f00\u53d1\u8005\uff1a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->l:Lcom/ss/android/downloadlib/addownload/b/b;

    iget-object v5, v5, Lcom/ss/android/downloadlib/addownload/b/b;->g:Ljava/lang/String;

    aput-object v5, v1, v4

    const-string v4, "\u5e94\u7528\u4fe1\u606f\u6b63\u5728\u5b8c\u5584\u4e2d"

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->g:Lcom/ss/android/downloadlib/guide/install/ClipImageView;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/h/k;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->setRoundRadius(I)V

    .line 90
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->g:Lcom/ss/android/downloadlib/guide/install/ClipImageView;

    const-string v1, "#EBEBEB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/guide/install/ClipImageView;->setBackgroundColor(I)V

    .line 91
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/d;->a()Lcom/ss/android/downloadlib/addownload/compliance/d;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->j:J

    new-instance v3, Lcom/ss/android/downloadlib/addownload/compliance/a$2;

    invoke-direct {v3, p0}, Lcom/ss/android/downloadlib/addownload/compliance/a$2;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/a;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/compliance/d;->a(JLcom/ss/android/downloadlib/addownload/compliance/d$a;)V

    .line 103
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/compliance/a$3;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/a$3;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/compliance/a$4;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/a$4;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/compliance/a$5;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/a$5;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/compliance/a$6;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/a$6;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/addownload/compliance/a;)Lcom/ss/android/downloadlib/guide/install/ClipImageView;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->g:Lcom/ss/android/downloadlib/guide/install/ClipImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/ss/android/downloadlib/addownload/compliance/a;)Landroid/app/Activity;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->i:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic d(Lcom/ss/android/downloadlib/addownload/compliance/a;)J
    .registers 3

    .line 27
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->j:J

    return-wide v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 140
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 141
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 142
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 47
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->l:Lcom/ss/android/downloadlib/addownload/b/b;

    if-nez p1, :cond_b

    .line 50
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->dismiss()V

    .line 51
    return-void

    .line 54
    :cond_b
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/a;->requestWindowFeature(I)Z

    .line 55
    sget v0, Lcom/ss/android/downloadlib/R$layout;->ttdownloader_dialog_appinfo:I

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_1f

    .line 58
    sget v1, Lcom/ss/android/downloadlib/R$drawable;->ttdownloader_bg_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 60
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/a;->setCancelable(Z)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/a;->setCanceledOnTouchOutside(Z)V

    .line 63
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->l:Lcom/ss/android/downloadlib/addownload/b/b;

    iget-wide v0, p1, Lcom/ss/android/downloadlib/addownload/b/b;->b:J

    iput-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->k:J

    .line 64
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/compliance/a;->a()V

    .line 66
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/compliance/a;->k:J

    const-string p1, "lp_app_dialog_show"

    invoke-static {p1, v0, v1}, Lcom/ss/android/downloadlib/addownload/compliance/e;->b(Ljava/lang/String;J)V

    .line 67
    new-instance p1, Lcom/ss/android/downloadlib/addownload/compliance/a$1;

    invoke-direct {p1, p0}, Lcom/ss/android/downloadlib/addownload/compliance/a$1;-><init>(Lcom/ss/android/downloadlib/addownload/compliance/a;)V

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 73
    return-void
.end method
