.class public Lcom/anythink/core/activity/component/PrivacyPolicyView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/activity/component/PrivacyPolicyView$a;
    }
.end annotation


# static fields
.field private static n:Ljava/lang/String;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/widget/LinearLayout;

.field c:Lcom/anythink/core/activity/component/LoadingView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/FrameLayout;

.field f:Landroid/webkit/WebView;

.field g:Landroid/widget/CheckBox;

.field h:Landroid/view/View;

.field i:Landroid/widget/TextView;

.field j:Z

.field k:Z

.field l:Ljava/lang/String;

.field m:Lcom/anythink/core/activity/component/PrivacyPolicyView$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const-class v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->j:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->k:Z

    .line 61
    nop

    .line 1066
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "privace_policy_layout"

    const-string v4, "layout"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1067
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "policy_content_view"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->a:Landroid/view/ViewGroup;

    .line 1069
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "policy_loading_view"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->b:Landroid/widget/LinearLayout;

    .line 1070
    new-instance v1, Lcom/anythink/core/activity/component/LoadingView;

    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/core/activity/component/LoadingView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->c:Lcom/anythink/core/activity/component/LoadingView;

    .line 1071
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v2, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1072
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1073
    iget-object v2, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->c:Lcom/anythink/core/activity/component/LoadingView;

    invoke-virtual {v2, v1}, Lcom/anythink/core/activity/component/LoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    .line 1076
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1077
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1078
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v2, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1079
    iget-object v2, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1081
    iget-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    const-string v2, "Page failed to load, please try again later."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    iget-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    const v2, -0x888889

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1083
    iget-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1085
    iget-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->c:Lcom/anythink/core/activity/component/LoadingView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1086
    iget-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1089
    iget-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->b:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/anythink/core/activity/component/PrivacyPolicyView$1;

    invoke-direct {v2, p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView$1;-><init>(Lcom/anythink/core/activity/component/PrivacyPolicyView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "policy_webview_area"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->e:Landroid/widget/FrameLayout;

    .line 1112
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    .line 1113
    iget-object v2, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->e:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1114
    nop

    .line 1139
    iget-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1140
    if-eqz v1, :cond_126

    .line 1141
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1142
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1143
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 1146
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1147
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 1148
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1149
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1150
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1151
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 1153
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 1154
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 1155
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 1163
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1164
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1165
    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1169
    :cond_126
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    new-instance v0, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;

    invoke-direct {v0, p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;-><init>(Lcom/anythink/core/activity/component/PrivacyPolicyView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1234
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    new-instance v0, Lcom/anythink/core/activity/component/PrivacyPolicyView$3;

    invoke-direct {v0, p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView$3;-><init>(Lcom/anythink/core/activity/component/PrivacyPolicyView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1116
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "policy_check_box"

    invoke-static {p1, v0, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->g:Landroid/widget/CheckBox;

    .line 1117
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "policy_agree_view"

    invoke-static {p1, v0, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->h:Landroid/view/View;

    .line 1118
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "policy_reject_view"

    invoke-static {p1, v0, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->i:Landroid/widget/TextView;

    .line 1120
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->h:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->i:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1123
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p1, v0}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result p1

    .line 1124
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1126
    const v1, -0xcd920c

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1131
    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1132
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->h:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1134
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->i:Landroid/widget/TextView;

    const-string v0, "<u>No,Thanks</u>"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 42
    sget-object v0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 42
    nop

    .line 2281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2282
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2283
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2284
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2285
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2286
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method private b()V
    .registers 7

    .line 66
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "privace_policy_layout"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_content_view"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->a:Landroid/view/ViewGroup;

    .line 69
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_loading_view"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->b:Landroid/widget/LinearLayout;

    .line 70
    new-instance v0, Lcom/anythink/core/activity/component/LoadingView;

    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/core/activity/component/LoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->c:Lcom/anythink/core/activity/component/LoadingView;

    .line 71
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v1, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73
    iget-object v3, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->c:Lcom/anythink/core/activity/component/LoadingView;

    invoke-virtual {v3, v0}, Lcom/anythink/core/activity/component/LoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    .line 76
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 78
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 79
    iget-object v3, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    const-string v3, "Page failed to load, please try again later."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    const v3, -0x888889

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->b:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->c:Lcom/anythink/core/activity/component/LoadingView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->b:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->b:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/anythink/core/activity/component/PrivacyPolicyView$1;

    invoke-direct {v3, p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView$1;-><init>(Lcom/anythink/core/activity/component/PrivacyPolicyView;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "policy_webview_area"

    invoke-static {v0, v3, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->e:Landroid/widget/FrameLayout;

    .line 112
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    .line 113
    iget-object v3, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->e:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    nop

    .line 2139
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 2140
    if-eqz v0, :cond_11e

    .line 2141
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 2142
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2143
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 2146
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 2147
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 2148
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2149
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 2150
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 2151
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 2153
    sget-object v3, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 2154
    sget-object v3, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 2155
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 2163
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 2164
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 2165
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 2169
    :cond_11e
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;

    invoke-direct {v1, p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;-><init>(Lcom/anythink/core/activity/component/PrivacyPolicyView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2234
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/activity/component/PrivacyPolicyView$3;

    invoke-direct {v1, p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView$3;-><init>(Lcom/anythink/core/activity/component/PrivacyPolicyView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 116
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_check_box"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->g:Landroid/widget/CheckBox;

    .line 117
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_agree_view"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->h:Landroid/view/View;

    .line 118
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "policy_reject_view"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->i:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;F)I

    move-result v0

    .line 124
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 126
    const v2, -0xcd920c

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 131
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 132
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->i:Landroid/widget/TextView;

    const-string v1, "<u>No,Thanks</u>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 284
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 285
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 287
    return-void
.end method

.method private c()V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_3d

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 142
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 143
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 149
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 150
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 151
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 153
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 154
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 155
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 169
    :cond_3d
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;

    invoke-direct {v1, p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView$2;-><init>(Lcom/anythink/core/activity/component/PrivacyPolicyView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 234
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/activity/component/PrivacyPolicyView$3;

    invoke-direct {v1, p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView$3;-><init>(Lcom/anythink/core/activity/component/PrivacyPolicyView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 244
    return-void
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 292
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->removeAllViews()V

    .line 294
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 295
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 298
    :cond_a
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_18

    .line 299
    iget-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 303
    :cond_18
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_2d

    .line 304
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 305
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 309
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_2e

    .line 316
    :cond_2d
    return-void

    .line 312
    :catchall_2e
    move-exception v0

    .line 318
    return-void
.end method

.method public loadPolicyUrl(Ljava/lang/String;)V
    .registers 5

    .line 250
    iget-boolean v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->k:Z

    if-eqz v0, :cond_5

    .line 251
    return-void

    .line 254
    :cond_5
    iput-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->l:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/g/h;->a(Landroid/content/Context;)Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_49

    .line 256
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->j:Z

    .line 257
    iget-object v2, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->c:Lcom/anythink/core/activity/component/LoadingView;

    invoke-virtual {v1}, Lcom/anythink/core/activity/component/LoadingView;->clearAnimation()V

    .line 259
    iget-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->c:Lcom/anythink/core/activity/component/LoadingView;

    invoke-virtual {v1}, Lcom/anythink/core/activity/component/LoadingView;->startAnimation()V

    .line 260
    iget-object v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iput-boolean p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->k:Z

    .line 262
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 263
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return-void

    .line 265
    :cond_41
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->f:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 268
    :cond_49
    iput-boolean v1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->j:Z

    .line 269
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->c:Lcom/anythink/core/activity/component/LoadingView;

    invoke-virtual {p1}, Lcom/anythink/core/activity/component/LoadingView;->clearAnimation()V

    .line 271
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 273
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->m:Lcom/anythink/core/activity/component/PrivacyPolicyView$a;

    if-eqz p1, :cond_66

    .line 274
    invoke-interface {p1}, Lcom/anythink/core/activity/component/PrivacyPolicyView$a;->onPageLoadFail()V

    .line 278
    :cond_66
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->h:Landroid/view/View;

    if-ne p1, v0, :cond_1b

    .line 329
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/core/api/ATSDK;->setGDPRUploadDataLevel(Landroid/content/Context;I)V

    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 331
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->m:Lcom/anythink/core/activity/component/PrivacyPolicyView$a;

    if-eqz p1, :cond_35

    .line 332
    invoke-interface {p1, v1}, Lcom/anythink/core/activity/component/PrivacyPolicyView$a;->onLevelSelect(I)V

    return-void

    .line 334
    :cond_1b
    iget-object v0, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->i:Landroid/widget/TextView;

    if-ne p1, v0, :cond_35

    .line 335
    invoke-virtual {p0}, Lcom/anythink/core/activity/component/PrivacyPolicyView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anythink/core/api/ATSDK;->setGDPRUploadDataLevel(Landroid/content/Context;I)V

    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 337
    iget-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->m:Lcom/anythink/core/activity/component/PrivacyPolicyView$a;

    if-eqz p1, :cond_35

    .line 338
    invoke-interface {p1, v1}, Lcom/anythink/core/activity/component/PrivacyPolicyView$a;->onLevelSelect(I)V

    .line 341
    :cond_35
    return-void
.end method

.method public setResultCallbackListener(Lcom/anythink/core/activity/component/PrivacyPolicyView$a;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/anythink/core/activity/component/PrivacyPolicyView;->m:Lcom/anythink/core/activity/component/PrivacyPolicyView$a;

    .line 324
    return-void
.end method
