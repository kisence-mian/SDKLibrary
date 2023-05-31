.class public Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;
.super Landroid/app/Dialog;
.source "MTGAlertDialog.java"


# instance fields
.field private a:Lcom/mintegral/msdk/videocommon/dialog/a;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mintegral/msdk/videocommon/dialog/a;)V
    .registers 9

    .prologue
    const/16 v5, 0x400

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->requestWindowFeature(I)Z

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "mintegral_video_common_alertview"

    const-string v2, "layout"

    invoke-static {p1, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    iput-object p2, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->a:Lcom/mintegral/msdk/videocommon/dialog/a;

    .line 42
    if-eqz v1, :cond_63

    .line 43
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setContentView(Landroid/view/View;)V

    .line 45
    :try_start_23
    const-string v0, "mintegral_video_common_alertview_titleview"

    const-string v2, "id"

    invoke-static {p1, v0, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->b:Landroid/widget/TextView;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_33} :catch_9f

    .line 50
    :goto_33
    :try_start_33
    const-string v0, "mintegral_video_common_alertview_contentview"

    const-string v2, "id"

    invoke-static {p1, v0, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->c:Landroid/widget/TextView;

    .line 51
    const-string v0, "mintegral_video_common_alertview_confirm_button"

    const-string v2, "id"

    invoke-static {p1, v0, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->d:Landroid/widget/Button;

    .line 52
    const-string v0, "mintegral_video_common_alertview_cancel_button"

    const-string v2, "id"

    invoke-static {p1, v0, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->e:Landroid/widget/Button;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_63} :catch_aa

    .line 57
    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->e:Landroid/widget/Button;

    if-eqz v0, :cond_71

    .line 58
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->e:Landroid/widget/Button;

    new-instance v1, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog$1;

    invoke-direct {v1, p0, p2}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog$1;-><init>(Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;Lcom/mintegral/msdk/videocommon/dialog/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_71
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->d:Landroid/widget/Button;

    if-eqz v0, :cond_7f

    .line 70
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->d:Landroid/widget/Button;

    new-instance v1, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog$2;-><init>(Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;Lcom/mintegral/msdk/videocommon/dialog/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_7f
    invoke-virtual {p0, v3}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setCancelable(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_9e

    .line 85
    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 86
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 88
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 90
    :cond_9e
    return-void

    .line 46
    :catch_9f
    move-exception v0

    .line 47
    const-string v2, "MTGAlertDialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 53
    :catch_aa
    move-exception v0

    .line 54
    const-string v1, "MTGAlertDialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setContent(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p3}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p4}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setCancelText(Ljava/lang/String;)V

    .line 127
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->a:Lcom/mintegral/msdk/videocommon/dialog/a;

    if-eqz v0, :cond_7

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->a:Lcom/mintegral/msdk/videocommon/dialog/a;

    .line 96
    :cond_7
    return-void
.end method

.method public makePlayableAlertView()V
    .registers 5

    .prologue
    .line 217
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_25

    .line 219
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->ba()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    :goto_24
    return-void

    .line 1226
    :cond_25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1228
    const-string v0, "\u786e\u8ba4\u5173\u95ed\uff1f"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 1229
    const-string v0, "\u5173\u95ed\u540e\u60a8\u5c06\u4e0d\u4f1a\u83b7\u5f97\u4efb\u4f55\u5956\u52b1\u5662~ "

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setContent(Ljava/lang/String;)V

    .line 1230
    const-string v0, "\u786e\u8ba4\u5173\u95ed"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 1231
    const-string v0, "\u7ee7\u7eed\u8bd5\u73a9"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setCancelText(Ljava/lang/String;)V

    goto :goto_24

    .line 1233
    :cond_50
    const-string v0, "Confirm to close? "

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 1234
    const-string v0, "You will not be rewarded after closing the window"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setContent(Ljava/lang/String;)V

    .line 1235
    const-string v0, "Close it"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 1236
    const-string v0, "Continue"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setCancelText(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public makeRVAlertView(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mintegral_ConfirmTitle"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mintegral_ConfirmContent"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Mintegral_CancelText"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-static {v0, v1, v4}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Mintegral_ConfirmText"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v4, v5}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v4

    .line 137
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_fc

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_fc

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_fc

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_fc

    .line 138
    if-eqz v4, :cond_b1

    .line 139
    invoke-virtual {v4}, Lcom/mintegral/msdk/c/a;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/mintegral/msdk/c/a;->aX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/mintegral/msdk/c/a;->aY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/mintegral/msdk/c/a;->aZ()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :goto_b0
    return-void

    .line 1201
    :cond_b1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e7

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 1203
    const-string v0, "\u786e\u8ba4\u5173\u95ed\uff1f"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 1204
    const-string v0, "\u5173\u95ed\u540e\u60a8\u5c06\u4e0d\u4f1a\u83b7\u5f97\u4efb\u4f55\u5956\u52b1\u5662~ "

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setContent(Ljava/lang/String;)V

    .line 1205
    const-string v0, "\u786e\u8ba4\u5173\u95ed"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 1206
    const-string v0, "\u7ee7\u7eed\u89c2\u770b"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setCancelText(Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_db} :catch_dc

    goto :goto_b0

    .line 195
    :catch_dc
    move-exception v0

    .line 196
    const-string v1, "MTGAlertDialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0

    .line 1208
    :cond_e7
    :try_start_e7
    const-string v0, "Confirm to close? "

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 1209
    const-string v0, "You will not be rewarded after closing the window"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setContent(Ljava/lang/String;)V

    .line 1210
    const-string v0, "Close it"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 1211
    const-string v0, "Continue"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setCancelText(Ljava/lang/String;)V

    goto :goto_b0

    .line 145
    :cond_fc
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_110

    .line 147
    if-eqz v4, :cond_139

    .line 148
    invoke-virtual {v4}, Lcom/mintegral/msdk/c/a;->aW()Ljava/lang/String;

    move-result-object v3

    .line 158
    :cond_110
    :goto_110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11c

    .line 159
    if-eqz v4, :cond_153

    .line 160
    invoke-virtual {v4}, Lcom/mintegral/msdk/c/a;->aX()Ljava/lang/String;

    move-result-object v2

    .line 170
    :cond_11c
    :goto_11c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_128

    .line 171
    if-eqz v4, :cond_16d

    .line 172
    invoke-virtual {v4}, Lcom/mintegral/msdk/c/a;->aY()Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_128
    :goto_128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_134

    .line 183
    if-eqz v4, :cond_187

    .line 184
    invoke-virtual {v4}, Lcom/mintegral/msdk/c/a;->aZ()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_134
    :goto_134
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b0

    .line 150
    :cond_139
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14d

    const-string v6, "zh"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14d

    .line 151
    const-string v6, "\u786e\u8ba4\u5173\u95ed\uff1f"

    invoke-virtual {p0, v6}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setTitle(Ljava/lang/String;)V

    goto :goto_110

    .line 153
    :cond_14d
    const-string v6, "Confirm to close? "

    invoke-virtual {p0, v6}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setTitle(Ljava/lang/String;)V

    goto :goto_110

    .line 162
    :cond_153
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_167

    const-string v6, "zh"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_167

    .line 163
    const-string v6, "\u5173\u95ed\u540e\u60a8\u5c06\u4e0d\u4f1a\u83b7\u5f97\u4efb\u4f55\u5956\u52b1\u5662~ "

    invoke-virtual {p0, v6}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setContent(Ljava/lang/String;)V

    goto :goto_11c

    .line 165
    :cond_167
    const-string v6, "You will not be rewarded after closing the window"

    invoke-virtual {p0, v6}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setContent(Ljava/lang/String;)V

    goto :goto_11c

    .line 174
    :cond_16d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_181

    const-string v6, "zh"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_181

    .line 175
    const-string v6, "\u786e\u8ba4\u5173\u95ed"

    invoke-virtual {p0, v6}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setConfirmText(Ljava/lang/String;)V

    goto :goto_128

    .line 177
    :cond_181
    const-string v6, "Close it"

    invoke-virtual {p0, v6}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setConfirmText(Ljava/lang/String;)V

    goto :goto_128

    .line 186
    :cond_187
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19b

    const-string v4, "zh"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19b

    .line 187
    const-string v4, "\u7ee7\u7eed\u89c2\u770b"

    invoke-virtual {p0, v4}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setCancelText(Ljava/lang/String;)V

    goto :goto_134

    .line 189
    :cond_19b
    const-string v4, "Continue"

    invoke-virtual {p0, v4}, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->setCancelText(Ljava/lang/String;)V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_1a0} :catch_dc

    goto :goto_134
.end method

.method public setCancelText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->e:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_9
    return-void
.end method

.method public setConfirmText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->d:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_9
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/dialog/MTGAlertDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_9
    return-void
.end method
