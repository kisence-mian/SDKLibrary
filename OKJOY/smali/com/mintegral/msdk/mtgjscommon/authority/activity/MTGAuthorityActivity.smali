.class public Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;
.super Landroid/app/Activity;
.source "MTGAuthorityActivity.java"


# static fields
.field public static final TIMEOUT:J = 0x2710L

.field private static f:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/widget/LinearLayout;

.field c:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;

.field d:Landroid/widget/LinearLayout$LayoutParams;

.field e:Landroid/os/Handler;

.field private g:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

.field private h:Landroid/app/AlertDialog;

.field private i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-string v0, "MTGAuthorityActivity"

    sput-object v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->g:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->a:Ljava/lang/String;

    .line 194
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$2;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$2;-><init>(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->i:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;)Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->g:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static isHttpUrl(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 182
    const-string v0, "(((https|http)?://)?([a-z0-9]+[.])|(www.))\\w+[.|\\/]([a-z0-9]{0,})?[[.]([a-z0-9]{0,})]+((/[\\S&&[^,;\u4e00-\u9fa5]]+)+)?([.][a-z0-9]{0,}+|/?)"

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 188
    if-eqz v0, :cond_19

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_19
    return v0
.end method


# virtual methods
.method public dismissLoadingDialog()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 235
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 237
    :cond_11
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->f:Ljava/lang/String;

    const-string v1, "MTGAuthorityActivity  onCreate"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->showLoadingDialog()V

    .line 1061
    :try_start_d
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1062
    if-nez v0, :cond_25

    .line 1063
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1065
    :cond_25
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->a:Ljava/lang/String;

    .line 1066
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->e:Landroid/os/Handler;

    .line 1067
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_91

    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1068
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->a:Ljava/lang/String;

    .line 1107
    new-instance v1, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->g:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 1108
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->i:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1109
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->g:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    new-instance v2, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;

    invoke-direct {v2, p0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$1;-><init>(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;)V

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V

    .line 1159
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->g:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->g:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 1068
    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->g:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 1072
    :goto_67
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b:Landroid/widget/LinearLayout;

    .line 1073
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 1074
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->c:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;

    .line 1075
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->g:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-nez v0, :cond_9a

    .line 1076
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->c:Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityCustomView;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    :goto_8b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->setContentView(Landroid/view/View;)V

    .line 1083
    :goto_90
    return-void

    .line 1070
    :cond_91
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->dismissLoadingDialog()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_94} :catch_95

    goto :goto_67

    .line 1082
    :catch_95
    move-exception v0

    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->finish()V

    goto :goto_90

    .line 1078
    :cond_9a
    :try_start_9a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->g:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_a3} :catch_95

    goto :goto_8b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 94
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public showLoadingDialog()V
    .registers 4

    .prologue
    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->h:Landroid/app/AlertDialog;

    if-nez v0, :cond_f

    .line 209
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->h:Landroid/app/AlertDialog;

    .line 211
    :cond_f
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->h:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 213
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->h:Landroid/app/AlertDialog;

    new-instance v1, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$3;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity$3;-><init>(Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 221
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 222
    const-string v0, "loading_alert"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 223
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_50

    .line 225
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->h:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->h:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    .line 231
    :cond_50
    :goto_50
    return-void

    .line 229
    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50
.end method

.method public webviewshow(Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V
    .registers 4

    .prologue
    .line 169
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/authority/activity/MTGAuthorityActivity;->f:Ljava/lang/String;

    const-string v1, "webviewshow"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    const-string v0, "webviewshow"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 174
    :goto_11
    return-void

    .line 172
    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method
