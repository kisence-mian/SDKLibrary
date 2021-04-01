.class public Lcom/anythink/core/activity/a/b;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/activity/a/b$a;
    }
.end annotation


# static fields
.field private static n:Ljava/lang/String;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/widget/LinearLayout;

.field c:Lcom/anythink/core/activity/a/a;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/FrameLayout;

.field f:Landroid/webkit/WebView;

.field g:Landroid/widget/CheckBox;

.field h:Landroid/view/View;

.field i:Landroid/widget/TextView;

.field j:Z

.field k:Z

.field l:Ljava/lang/String;

.field m:Lcom/anythink/core/activity/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/anythink/core/activity/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/activity/a/b;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/high16 v6, 0x41f00000    # 30.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v4, p0, Lcom/anythink/core/activity/a/b;->j:Z

    .line 54
    iput-boolean v5, p0, Lcom/anythink/core/activity/a/b;->k:Z

    .line 1063
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "privace_policy_layout"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1064
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_content_view"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->a:Landroid/view/ViewGroup;

    .line 1066
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_loading_view"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->b:Landroid/widget/LinearLayout;

    .line 1067
    new-instance v0, Lcom/anythink/core/activity/a/a;

    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/core/activity/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->c:Lcom/anythink/core/activity/a/a;

    .line 1068
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1069
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1070
    iget-object v1, p0, Lcom/anythink/core/activity/a/b;->c:Lcom/anythink/core/activity/a/a;

    invoke-virtual {v1, v0}, Lcom/anythink/core/activity/a/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1072
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    .line 1073
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1074
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1075
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1076
    iget-object v1, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1078
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    const-string v1, "Page failed to load, please try again later."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    const v1, -0x888889

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1080
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1082
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/anythink/core/activity/a/b;->c:Lcom/anythink/core/activity/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1083
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1086
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/anythink/core/activity/a/b$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/activity/a/b$1;-><init>(Lcom/anythink/core/activity/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_webview_area"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->e:Landroid/widget/FrameLayout;

    .line 1109
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    .line 1110
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1136
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1137
    if-eqz v0, :cond_12a

    .line 1138
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1139
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1140
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 1143
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1144
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 1145
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1146
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1147
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1148
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 1150
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 1151
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 1152
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 1160
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1161
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1162
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1166
    :cond_12a
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/activity/a/b$2;

    invoke-direct {v1, p0}, Lcom/anythink/core/activity/a/b$2;-><init>(Lcom/anythink/core/activity/a/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1231
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/activity/a/b$3;

    invoke-direct {v1, p0}, Lcom/anythink/core/activity/a/b$3;-><init>(Lcom/anythink/core/activity/a/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1113
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_check_box"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->g:Landroid/widget/CheckBox;

    .line 1114
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_agree_view"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->h:Landroid/view/View;

    .line 1115
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_reject_view"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->i:Landroid/widget/TextView;

    .line 1117
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1118
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;F)I

    move-result v0

    .line 1121
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1123
    const v2, -0xcd920c

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1128
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1129
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1131
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->i:Landroid/widget/TextView;

    const-string v1, "<u>No,Thanks</u>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 39
    .line 2278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2279
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2280
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2281
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2282
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2283
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/anythink/core/activity/a/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 279
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 282
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 284
    return-void
.end method

.method private c()V
    .registers 10

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/high16 v6, 0x41f00000    # 30.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 63
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "privace_policy_layout"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_content_view"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->a:Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_loading_view"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->b:Landroid/widget/LinearLayout;

    .line 67
    new-instance v0, Lcom/anythink/core/activity/a/a;

    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/core/activity/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->c:Lcom/anythink/core/activity/a/a;

    .line 68
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 70
    iget-object v1, p0, Lcom/anythink/core/activity/a/b;->c:Lcom/anythink/core/activity/a/a;

    invoke-virtual {v1, v0}, Lcom/anythink/core/activity/a/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    .line 73
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 75
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 76
    iget-object v1, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    const-string v1, "Page failed to load, please try again later."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    const v1, -0x888889

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 82
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/anythink/core/activity/a/b;->c:Lcom/anythink/core/activity/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/anythink/core/activity/a/b$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/activity/a/b$1;-><init>(Lcom/anythink/core/activity/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_webview_area"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->e:Landroid/widget/FrameLayout;

    .line 109
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    .line 110
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2136
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 2137
    if-eqz v0, :cond_123

    .line 2138
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 2139
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2140
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 2143
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 2144
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 2145
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2146
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 2147
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 2148
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 2150
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 2151
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 2152
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 2160
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 2161
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 2162
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 2166
    :cond_123
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/activity/a/b$2;

    invoke-direct {v1, p0}, Lcom/anythink/core/activity/a/b$2;-><init>(Lcom/anythink/core/activity/a/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2231
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/activity/a/b$3;

    invoke-direct {v1, p0}, Lcom/anythink/core/activity/a/b$3;-><init>(Lcom/anythink/core/activity/a/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 113
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_check_box"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->g:Landroid/widget/CheckBox;

    .line 114
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_agree_view"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->h:Landroid/view/View;

    .line 115
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_reject_view"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/a/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->i:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;F)I

    move-result v0

    .line 121
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 123
    const v2, -0xcd920c

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 128
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 129
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->i:Landroid/widget/TextView;

    const-string v1, "<u>No,Thanks</u>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 136
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_3d

    .line 138
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 140
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 143
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 144
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 145
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 150
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 151
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 152
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 160
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 161
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 162
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 166
    :cond_3d
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/activity/a/b$2;

    invoke-direct {v1, p0}, Lcom/anythink/core/activity/a/b$2;-><init>(Lcom/anythink/core/activity/a/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 231
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/activity/a/b$3;

    invoke-direct {v1, p0}, Lcom/anythink/core/activity/a/b$3;-><init>(Lcom/anythink/core/activity/a/b;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 241
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 289
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->removeAllViews()V

    .line 291
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 292
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 295
    :cond_c
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1c

    .line 296
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 297
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 300
    :cond_1c
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_33

    .line 301
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 302
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 306
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_34

    .line 315
    :cond_33
    :goto_33
    return-void

    :catch_34
    move-exception v0

    goto :goto_33
.end method

.method public final a(Lcom/anythink/core/activity/a/b$a;)V
    .registers 2

    .prologue
    .line 320
    iput-object p1, p0, Lcom/anythink/core/activity/a/b;->m:Lcom/anythink/core/activity/a/b$a;

    .line 321
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 247
    iget-boolean v0, p0, Lcom/anythink/core/activity/a/b;->k:Z

    if-eqz v0, :cond_9

    .line 275
    :cond_8
    :goto_8
    return-void

    .line 251
    :cond_9
    iput-object p1, p0, Lcom/anythink/core/activity/a/b;->l:Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/g/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 253
    iput-boolean v2, p0, Lcom/anythink/core/activity/a/b;->j:Z

    .line 254
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->c:Lcom/anythink/core/activity/a/a;

    invoke-virtual {v0}, Lcom/anythink/core/activity/a/a;->clearAnimation()V

    .line 256
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->c:Lcom/anythink/core/activity/a/a;

    invoke-virtual {v0}, Lcom/anythink/core/activity/a/a;->a()V

    .line 257
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iput-boolean v2, p0, Lcom/anythink/core/activity/a/b;->k:Z

    .line 259
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 260
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_8

    .line 262
    :cond_41
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->f:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/anythink/core/activity/a/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_8

    .line 265
    :cond_49
    iput-boolean v1, p0, Lcom/anythink/core/activity/a/b;->j:Z

    .line 266
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->c:Lcom/anythink/core/activity/a/a;

    invoke-virtual {v0}, Lcom/anythink/core/activity/a/a;->clearAnimation()V

    .line 268
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->m:Lcom/anythink/core/activity/a/b$a;

    if-eqz v0, :cond_8

    .line 271
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->m:Lcom/anythink/core/activity/a/b$a;

    invoke-interface {v0}, Lcom/anythink/core/activity/a/b$a;->onPageLoadFail()V

    goto :goto_8
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 325
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->h:Landroid/view/View;

    if-ne p1, v0, :cond_1e

    .line 326
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/anythink/core/api/ATSDK;->setGDPRUploadDataLevel(Landroid/content/Context;I)V

    .line 327
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->m:Lcom/anythink/core/activity/a/b$a;

    if-eqz v0, :cond_1d

    .line 329
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->m:Lcom/anythink/core/activity/a/b$a;

    invoke-interface {v0, v1}, Lcom/anythink/core/activity/a/b$a;->onLevelSelect(I)V

    .line 338
    :cond_1d
    :goto_1d
    return-void

    .line 331
    :cond_1e
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->i:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1d

    .line 332
    invoke-virtual {p0}, Lcom/anythink/core/activity/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/anythink/core/api/ATSDK;->setGDPRUploadDataLevel(Landroid/content/Context;I)V

    .line 333
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->m:Lcom/anythink/core/activity/a/b$a;

    if-eqz v0, :cond_1d

    .line 335
    iget-object v0, p0, Lcom/anythink/core/activity/a/b;->m:Lcom/anythink/core/activity/a/b$a;

    invoke-interface {v0, v2}, Lcom/anythink/core/activity/a/b$a;->onLevelSelect(I)V

    goto :goto_1d
.end method
