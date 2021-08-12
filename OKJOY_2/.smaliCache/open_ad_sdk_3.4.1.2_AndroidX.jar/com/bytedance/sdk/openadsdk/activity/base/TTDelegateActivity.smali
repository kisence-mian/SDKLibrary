.class public Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;
.super Landroid/app/Activity;
.source "TTDelegateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Landroid/app/AlertDialog;

.field private c:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

.field private d:Lcom/bytedance/sdk/openadsdk/core/widget/e;

.field private e:Lcom/bytedance/sdk/openadsdk/core/widget/d;

.field private f:Lcom/bytedance/sdk/openadsdk/core/widget/a;

.field private g:Lcom/bytedance/sdk/openadsdk/core/widget/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;)Lcom/bytedance/sdk/openadsdk/core/widget/b;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    return-object p0
.end method

.method private a()V
    .registers 4

    .line 216
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 218
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 219
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 220
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 4

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    const-string v1, "type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "materialmeta"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 195
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 197
    :cond_30
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    const-string v1, "type"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    const-string v1, "dialog_app_manage_model"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 170
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 172
    :cond_2a
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 8

    .line 672
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b:Landroid/app/AlertDialog;

    if-nez v0, :cond_1e

    .line 674
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    const-string v0, "Theme.Dialog.TTDownload"

    goto :goto_f

    .line 675
    :cond_d
    const-string v0, "Theme.Dialog.TTDownloadOld"

    :goto_f
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 676
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 677
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b:Landroid/app/AlertDialog;

    .line 680
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b:Landroid/app/AlertDialog;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 681
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b:Landroid/app/AlertDialog;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 682
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b:Landroid/app/AlertDialog;

    const/4 p2, -0x1

    const-string v0, "tt_label_ok"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 683
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b:Landroid/app/AlertDialog;

    const/4 p2, -0x2

    const-string p3, "tt_label_cancel"

    invoke-static {p0, p3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 684
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1, p5}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 686
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5a

    .line 687
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    .line 692
    :cond_5a
    goto :goto_5f

    .line 690
    :catch_5b
    move-exception p1

    .line 691
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 693
    :goto_5f
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v1, "app_download_url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string p0, "dialog_title_key"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string p0, "dialog_content_key"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 133
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 135
    :cond_33
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    const-string v1, "type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v1, "app_download_url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string p0, "dialog_title_key"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string p0, "dialog_content_key"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string p0, "dialog_btn_yes_key"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string p0, "dialog_btn_no_key"

    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 185
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 187
    :cond_3d
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    const-string v1, "type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    const-string v1, "app_download_url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string p0, "dialog_title_key"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string p0, "dialog_app_manage_model"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string p0, "dialog_app_manage_model_icon_url"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string p0, "dialog_app_detail_is_download_type"

    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 147
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 149
    :cond_3d
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    const-string v1, "type"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string v1, "app_download_url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string p0, "dialog_title_key"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string p0, "dialog_app_detail_is_download_type"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    const-string p0, "dialog_app_manage_model"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 160
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 162
    :cond_39
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    const-string v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v1, "permission_id_key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string p0, "permission_content_key"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 112
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$1;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$1;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 123
    :cond_32
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;)Lcom/bytedance/sdk/openadsdk/core/widget/a;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    return-object p0
.end method

.method private b()V
    .registers 11

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    if-nez v0, :cond_5

    .line 272
    return-void

    .line 274
    :cond_5
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v3, "app_download_url"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v4, "app_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_c6

    .line 277
    const-string v3, "dialog_app_detail_is_download_type"

    const-string v4, "dialog_content_key"

    const-string v5, "dialog_app_manage_model"

    const-string v6, "dialog_title_key"

    packed-switch v0, :pswitch_data_cc

    .line 328
    :try_start_26
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    goto/16 :goto_c5

    .line 324
    :pswitch_2b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->c(Ljava/lang/String;)V

    .line 326
    goto/16 :goto_c5

    .line 318
    :pswitch_36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 321
    invoke-direct {p0, v0, v1, v4, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 322
    goto/16 :goto_c5

    .line 303
    :pswitch_4d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    if-eqz v0, :cond_c5

    .line 304
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 306
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v4, "dialog_app_manage_model_icon_url"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 307
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 309
    move-object v4, p0

    move-object v6, v1

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 310
    goto :goto_c5

    .line 313
    :pswitch_6f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "materialmeta"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->d(Ljava/lang/String;)V

    .line 315
    goto :goto_c5

    .line 296
    :pswitch_7b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 298
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v2, "dialog_btn_yes_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v2, "dialog_btn_no_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 300
    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    goto :goto_c5

    .line 291
    :pswitch_9d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "permission_id_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v2, "permission_content_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 294
    goto :goto_c5

    .line 282
    :pswitch_b1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-direct {p0, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    goto :goto_c5

    .line 288
    :pswitch_c1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->c()V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_c4} :catch_c6

    .line 289
    nop

    .line 333
    :cond_c5
    :goto_c5
    :pswitch_c5
    goto :goto_ca

    .line 331
    :catch_c6
    move-exception v0

    .line 332
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    .line 334
    :goto_ca
    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_c1
        :pswitch_b1
        :pswitch_9d
        :pswitch_7b
        :pswitch_6f
        :pswitch_4d
        :pswitch_36
        :pswitch_2b
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    if-eqz v0, :cond_7

    .line 434
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->dismiss()V

    .line 436
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    .line 437
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$9;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$9;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Lcom/bytedance/sdk/openadsdk/core/widget/b$a;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    .line 445
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->show()V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    .line 447
    goto :goto_1d

    .line 446
    :catchall_1c
    move-exception p1

    .line 448
    :goto_1d
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 596
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p2, "tt_tip"

    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_c
    move-object v1, p2

    .line 597
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_15

    const-string p3, ""

    :cond_15
    move-object v2, p3

    .line 599
    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$3;

    invoke-direct {v3, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$4;

    invoke-direct {v4, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;)V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$5;

    invoke-direct {v5, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 618
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 528
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 529
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 532
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->d:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    if-nez v0, :cond_34

    .line 533
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;-><init>(Landroid/content/Context;)V

    .line 534
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/e;

    move-result-object p2

    .line 535
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/e;

    move-result-object p2

    .line 536
    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/e;

    move-result-object p2

    .line 537
    invoke-virtual {p2, p5}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/e;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$14;

    invoke-direct {p3, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$14;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Lcom/bytedance/sdk/openadsdk/core/widget/e$a;)Lcom/bytedance/sdk/openadsdk/core/widget/e;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$13;

    invoke-direct {p3, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$13;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/bytedance/sdk/openadsdk/core/widget/e;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->d:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    .line 559
    :cond_34
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->d:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->isShowing()Z

    move-result p1

    if-nez p1, :cond_41

    .line 560
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->d:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->show()V

    .line 561
    :cond_41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->d:Lcom/bytedance/sdk/openadsdk/core/widget/e;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b:Landroid/app/AlertDialog;

    .line 562
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    .line 341
    nop

    .line 342
    nop

    .line 343
    nop

    .line 344
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_61

    const-string v1, ""

    if-nez v0, :cond_2a

    .line 345
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/c;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_2a

    .line 348
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->c()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;->g()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 352
    move-object v0, p3

    goto :goto_2c

    .line 357
    :cond_2a
    move-object v0, v1

    move-object v2, v0

    :cond_2c
    :goto_2c
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->e:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    if-eqz v3, :cond_37

    .line 358
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->isShowing()Z

    move-result v3

    .line 359
    if-eqz v3, :cond_37

    .line 360
    return-void

    .line 363
    :cond_37
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;-><init>(Landroid/content/Context;)V

    .line 364
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/d;

    move-result-object v0

    .line 365
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/d;

    move-result-object v0

    .line 366
    invoke-virtual {v0, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/d;

    move-result-object p4

    .line 367
    invoke-virtual {p4, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/d;

    move-result-object p4

    new-instance v6, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$7;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 368
    invoke-virtual {p4, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/d$a;)Lcom/bytedance/sdk/openadsdk/core/widget/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->e:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    .line 391
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->show()V
    :try_end_60
    .catchall {:try_start_b .. :try_end_60} :catchall_61

    .line 393
    goto :goto_62

    .line 392
    :catchall_61
    move-exception p1

    .line 394
    :goto_62
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    if-eqz v0, :cond_b

    .line 400
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->isShowing()Z

    move-result v0

    .line 401
    if-eqz v0, :cond_b

    .line 402
    return-void

    .line 405
    :cond_b
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    .line 406
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/a;

    move-result-object p3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$8;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a$a;)Lcom/bytedance/sdk/openadsdk/core/widget/a;

    .line 425
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Z)V

    .line 426
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->show()V
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    .line 428
    goto :goto_2a

    .line 427
    :catchall_29
    move-exception p1

    .line 429
    :goto_2a
    return-void
.end method

.method private b(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .line 565
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    if-eqz p2, :cond_2f

    array-length v0, p2

    if-gtz v0, :cond_c

    goto :goto_2f

    .line 570
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_24

    .line 572
    :try_start_12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a()Lcom/bytedance/sdk/openadsdk/core/f/d;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_1f

    goto :goto_23

    .line 586
    :catch_1f
    move-exception p1

    .line 587
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    .line 588
    :goto_23
    goto :goto_2e

    .line 590
    :cond_24
    const-string p1, "TT_AD_SDK"

    const-string p2, "\u5df2\u7ecf\u6709\u6743\u9650"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    .line 593
    :goto_2e
    return-void

    .line 566
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    .line 567
    return-void
.end method

.method private c()V
    .registers 5

    .line 621
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_54

    .line 623
    :try_start_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 624
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseLocation()Z

    move-result v1

    .line 625
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUsePhoneState()Z

    move-result v2

    .line 626
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v0

    .line 627
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 628
    if-eqz v1, :cond_2b

    .line 629
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_2b
    if-eqz v2, :cond_32

    .line 633
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_32
    if-eqz v0, :cond_39

    .line 636
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_39
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 639
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 640
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a()Lcom/bytedance/sdk/openadsdk/core/f/d;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/e;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4e} :catch_4f

    goto :goto_53

    .line 659
    :catch_4f
    move-exception v0

    .line 660
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    .line 661
    :goto_53
    goto :goto_5e

    .line 663
    :cond_54
    const-string v0, "TT_AD_SDK"

    const-string v1, "\u5df2\u7ecf\u6709Read phone state\u6743\u9650"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    .line 666
    :goto_5e
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 3

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    if-eqz v0, :cond_7

    .line 453
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->dismiss()V

    .line 455
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    .line 456
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$10;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$10;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->a(Lcom/bytedance/sdk/openadsdk/core/widget/b$a;)Lcom/bytedance/sdk/openadsdk/core/widget/b;

    .line 462
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->show()V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    .line 464
    goto :goto_1d

    .line 463
    :catchall_1c
    move-exception p1

    .line 465
    :goto_1d
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    if-eqz v0, :cond_7

    .line 471
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->dismiss()V

    .line 473
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    .line 474
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/a;

    move-result-object p3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$11;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a$a;)Lcom/bytedance/sdk/openadsdk/core/widget/a;

    .line 494
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Z)V

    .line 495
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->show()V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    .line 497
    goto :goto_26

    .line 496
    :catchall_25
    move-exception p1

    .line 498
    :goto_26
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 3

    .line 500
    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->c:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    if-nez v0, :cond_23

    .line 502
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    .line 503
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/dislike/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->c:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    .line 504
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$12;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$12;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;)V

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdDislike;->setDislikeInteractionCallback(Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_1e} :catch_1f

    .line 520
    goto :goto_23

    .line 518
    :catch_1f
    move-exception p1

    .line 519
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 522
    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->c:Lcom/bytedance/sdk/openadsdk/TTAdDislike;

    if-eqz p1, :cond_2b

    .line 523
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdDislike;->showDislikeDialog(I)V

    .line 525
    :cond_2b
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a()V

    .line 203
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;

    .line 205
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_15

    .line 206
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Landroid/content/Context;)V

    .line 208
    :cond_15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Landroid/app/Activity;)V

    .line 209
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 254
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->e:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->e:Lcom/bytedance/sdk/openadsdk/core/widget/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/d;->dismiss()V

    .line 257
    :cond_1e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 258
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->dismiss()V

    .line 260
    :cond_2d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->g:Lcom/bytedance/sdk/openadsdk/core/widget/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/b;->dismiss()V
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3d

    .line 265
    :cond_3c
    goto :goto_3e

    .line 263
    :catchall_3d
    move-exception v0

    .line 266
    :goto_3e
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 267
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 226
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    .line 227
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Landroid/content/Context;)V

    .line 231
    :cond_c
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->setIntent(Landroid/content/Intent;)V

    .line 232
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a:Landroid/content/Intent;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_12

    .line 234
    goto :goto_13

    .line 233
    :catchall_12
    move-exception p1

    .line 235
    :goto_13
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 708
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a()Lcom/bytedance/sdk/openadsdk/core/f/d;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/app/Activity;[Ljava/lang/String;[I)V

    .line 709
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$a;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity$a;-><init>()V

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 710
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->finish()V

    .line 711
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 240
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_c

    .line 243
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->b()V

    .line 245
    :cond_c
    return-void
.end method
