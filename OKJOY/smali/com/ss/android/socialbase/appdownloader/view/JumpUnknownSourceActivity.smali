.class public Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;
.super Landroid/app/Activity;
.source "JumpUnknownSourceActivity.java"


# instance fields
.field private a:Lcom/ss/android/socialbase/appdownloader/c/j;

.field private b:Landroid/content/Intent;

.field private c:Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)Landroid/content/Intent;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->c:Landroid/content/Intent;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 52
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    return-void
.end method

.method static synthetic b(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method private b()V
    .registers 7

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/j;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->b:Landroid/content/Intent;

    if-nez v0, :cond_9

    .line 146
    :cond_8
    :goto_8
    return-void

    .line 94
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/d;->a()Lcom/ss/android/socialbase/appdownloader/c/c;

    move-result-object v1

    .line 95
    const/4 v0, 0x0

    .line 96
    if-eqz v1, :cond_18

    .line 97
    invoke-interface {v1, p0}, Lcom/ss/android/socialbase/appdownloader/c/c;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v0

    .line 99
    :cond_18
    if-nez v0, :cond_7d

    .line 100
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d/a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/appdownloader/d/a;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .line 102
    :goto_20
    const-string v0, "appdownloader_tip"

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/appdownloader/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 103
    const-string v0, "appdownloader_label_ok"

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/appdownloader/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 104
    const-string v0, "appdownloader_label_cancel"

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/appdownloader/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 106
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->d:Lorg/json/JSONObject;

    const-string v5, "jump_unknown_source_tips"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 108
    const-string v0, "appdownloader_jump_unknown_source_tips"

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/appdownloader/k;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_4a
    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/appdownloader/c/k;->a(I)Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/appdownloader/c/k;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$3;-><init>(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)V

    .line 112
    invoke-interface {v0, v3, v2}, Lcom/ss/android/socialbase/appdownloader/c/k;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$2;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$2;-><init>(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)V

    .line 121
    invoke-interface {v0, v4, v2}, Lcom/ss/android/socialbase/appdownloader/c/k;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v0

    new-instance v2, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$1;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity$1;-><init>(Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;)V

    .line 130
    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/appdownloader/c/k;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/ss/android/socialbase/appdownloader/c/k;

    move-result-object v0

    const/4 v2, 0x0

    .line 139
    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/appdownloader/c/k;->a(Z)Lcom/ss/android/socialbase/appdownloader/c/k;

    .line 140
    invoke-interface {v1}, Lcom/ss/android/socialbase/appdownloader/c/k;->a()Lcom/ss/android/socialbase/appdownloader/c/j;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/j;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_77} :catch_78

    goto :goto_8

    .line 141
    :catch_78
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_7d
    move-object v1, v0

    goto :goto_20
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a()V

    .line 43
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->setIntent(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->b:Landroid/content/Intent;

    .line 61
    if-eqz v1, :cond_22

    .line 62
    const-string v0, "intent"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->c:Landroid/content/Intent;

    .line 64
    :try_start_15
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "config"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->d:Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_22} :catch_37

    .line 69
    :cond_22
    :goto_22
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->b()V

    .line 70
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/j;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/j;->b()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 71
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/appdownloader/c/j;->a()V

    .line 75
    :cond_36
    :goto_36
    return-void

    .line 65
    :catch_37
    move-exception v0

    .line 66
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_22

    .line 72
    :cond_3c
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->a:Lcom/ss/android/socialbase/appdownloader/c/j;

    if-nez v0, :cond_36

    .line 73
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;->finish()V

    goto :goto_36
.end method
