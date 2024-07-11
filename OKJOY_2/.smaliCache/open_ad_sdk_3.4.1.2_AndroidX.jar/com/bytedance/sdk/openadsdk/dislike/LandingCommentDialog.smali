.class public Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;
.super Landroid/widget/FrameLayout;
.source "LandingCommentDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private g:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 5

    .line 39
    const-string v0, "quick_option_dialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 41
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)Landroid/widget/EditText;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->c:Landroid/widget/EditText;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->setClickable(Z)V

    .line 47
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)V

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const-string v1, "#80000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->setBackgroundColor(I)V

    .line 55
    const-string v1, "tt_dislike_comment_layout"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a:Landroid/view/View;

    .line 59
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 61
    const/16 v1, 0x50

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 68
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->c()V

    .line 69
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->f:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;

    return-object p0
.end method

.method private c()V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_comment_content"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->c:Landroid/widget/EditText;

    .line 101
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->setEditTextInputSpace(Landroid/widget/EditText;)V

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_comment_commit"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->d:Landroid/widget/TextView;

    .line 105
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$2;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_comment_close"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->b:Landroid/widget/ImageView;

    .line 126
    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$3;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_comment_number"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->e:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$4;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)Landroid/widget/TextView;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;)Landroid/widget/TextView;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public static setEditTextInputSpace(Landroid/widget/EditText;)V
    .registers 4

    .line 177
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$5;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$5;-><init>()V

    .line 189
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x1f4

    invoke-direct {v0, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 190
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 72
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 74
    if-eqz v0, :cond_1f

    .line 75
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 77
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;

    if-eqz v0, :cond_26

    .line 78
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;->b(Landroid/view/View;)V

    .line 80
    :cond_26
    return-void
.end method

.method public b()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_d

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->addView(Landroid/view/View;)V

    .line 91
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;

    if-eqz v0, :cond_18

    .line 93
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;->a(Landroid/view/View;)V

    .line 95
    :cond_18
    return-void
.end method

.method public setCallback(Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog;->g:Lcom/bytedance/sdk/openadsdk/dislike/LandingCommentDialog$a;

    .line 174
    return-void
.end method
