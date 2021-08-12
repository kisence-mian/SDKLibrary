.class public Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;
.super Landroid/app/Activity;
.source "JumpUnknownSourceActivity.java"


# instance fields
.field private a:Lcom/ss/android/socialbase/appdownloader/c/k;

.field private b:Landroid/content/Intent;

.field private c:Landroid/content/Intent;

.field private d:I

.field private e:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)Landroid/content/Intent;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->c:Landroid/content/Intent;

    return-object p0
.end method

.method private a()V
    .registers 4

    .line 55
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 57
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    return-void
.end method

.method static synthetic b(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->d:I

    return p0
.end method

.method private b()V
    .registers 7

    .line 85
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->b:Landroid/content/Intent;

    if-nez v0, :cond_9

    goto :goto_7c

    .line 101
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->a()Lcom/ss/android/socialbase/appdownloader/c/c;

    move-result-object v0

    .line 102
    const/4 v1, 0x0

    .line 103
    if-eqz v0, :cond_18

    .line 104
    invoke-interface {v0, p0}, Lcom/ss/android/socialbase/appdownloader/c/c;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v1

    .line 106
    :cond_18
    if-nez v1, :cond_1f

    .line 107
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/d/a;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/appdownloader/d/a;-><init>(Landroid/content/Context;)V

    .line 109
    :cond_1f
    const-string v0, "tt_appdownloader_tip"

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 110
    const-string v2, "tt_appdownloader_label_ok"

    invoke-static {p0, v2}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 111
    const-string v3, "tt_appdownloader_label_cancel"

    invoke-static {p0, v3}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 113
    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->e:Lorg/json/JSONObject;

    const-string v5, "jump_unknown_source_tips"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 115
    const-string v4, "tt_appdownloader_jump_unknown_source_tips"

    invoke-static {p0, v4}, Lcom/ss/android/socialbase/appdownloader/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 116
    invoke-virtual {p0, v4}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 118
    :cond_49
    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(I)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v0

    new-instance v4, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;

    invoke-direct {v4, p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;-><init>(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)V

    .line 119
    invoke-interface {v0, v2, v4}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$2;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$2;-><init>(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)V

    .line 131
    invoke-interface {v0, v3, v2}, Lcom/ss/android/socialbase/appdownloader/c/l;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$1;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$1;-><init>(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)V

    .line 141
    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/ss/android/socialbase/appdownloader/c/l;

    move-result-object v0

    const/4 v2, 0x0

    .line 151
    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/appdownloader/c/l;->a(Z)Lcom/ss/android/socialbase/appdownloader/c/l;

    .line 152
    invoke-interface {v1}, Lcom/ss/android/socialbase/appdownloader/c/l;->a()Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_76} :catch_77

    .line 155
    goto :goto_7b

    .line 153
    :catch_77
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    :goto_7b
    return-void

    .line 86
    :cond_7c
    :goto_7c
    return-void
.end method

.method static synthetic c(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)Lorg/json/JSONObject;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->e:Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a()V

    .line 47
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/h;->a()Lcom/ss/android/socialbase/appdownloader/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ss/android/socialbase/appdownloader/h;->a(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)V

    .line 48
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->setIntent(Landroid/content/Intent;)V

    .line 40
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/h;->a()Lcom/ss/android/socialbase/appdownloader/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ss/android/socialbase/appdownloader/h;->a(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)V

    .line 41
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->b:Landroid/content/Intent;

    .line 66
    if-eqz v0, :cond_30

    .line 67
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->c:Landroid/content/Intent;

    .line 68
    const/4 v1, -0x1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->d:I

    .line 70
    :try_start_1e
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "config"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->e:Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_2b} :catch_2c

    .line 73
    goto :goto_30

    .line 71
    :catch_2c
    move-exception v0

    .line 72
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 76
    :cond_30
    :goto_30
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->b()V

    .line 77
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/k;->b()Z

    move-result v0

    if-nez v0, :cond_43

    .line 78
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/k;->a()V

    goto :goto_4a

    .line 79
    :cond_43
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/k;

    if-nez v0, :cond_4a

    .line 80
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->finish()V

    .line 82
    :cond_4a
    :goto_4a
    return-void
.end method
