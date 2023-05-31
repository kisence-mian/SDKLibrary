.class public Lcom/ss/android/downloadlib/activity/TTDelegateActivity;
.super Landroid/app/Activity;
.source "TTDelegateActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# instance fields
.field protected a:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string v1, "open_url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 73
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    :cond_28
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v1, "permission_id_key"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "permission_content_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 63
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    :cond_2d
    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 92
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 94
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 174
    invoke-static {p0}, Lcom/ss/android/downloadlib/e/g;->a(Landroid/app/Activity;)V

    .line 189
    :goto_9
    return-void

    .line 178
    :cond_a
    :try_start_a
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 179
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 181
    const-string v0, "open_url"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_29
    .catchall {:try_start_a .. :try_end_25} :catchall_31

    .line 187
    invoke-static {p0}, Lcom/ss/android/downloadlib/e/g;->a(Landroid/app/Activity;)V

    goto :goto_9

    .line 184
    :catch_29
    move-exception v0

    .line 185
    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_31

    .line 187
    invoke-static {p0}, Lcom/ss/android/downloadlib/e/g;->a(Landroid/app/Activity;)V

    goto :goto_9

    :catchall_31
    move-exception v0

    invoke-static {p0}, Lcom/ss/android/downloadlib/e/g;->a(Landroid/app/Activity;)V

    throw v0
.end method

.method private b(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    array-length v0, p2

    if-gtz v0, :cond_f

    .line 142
    :cond_b
    invoke-static {p0}, Lcom/ss/android/downloadlib/e/g;->a(Landroid/app/Activity;)V

    .line 170
    :goto_e
    return-void

    .line 145
    :cond_f
    new-instance v0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$1;-><init>(Lcom/ss/android/downloadlib/activity/TTDelegateActivity;Ljava/lang/String;)V

    .line 161
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_27

    .line 163
    :try_start_1a
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->f()Lcom/ss/android/a/a/a/g;

    move-result-object v1

    invoke-interface {v1, p0, p2, v0}, Lcom/ss/android/a/a/a/g;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/ss/android/a/a/a/n;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_22

    goto :goto_e

    .line 164
    :catch_22
    move-exception v1

    .line 165
    invoke-interface {v0}, Lcom/ss/android/a/a/a/n;->a()V

    goto :goto_e

    .line 168
    :cond_27
    invoke-interface {v0}, Lcom/ss/android/a/a/a/n;->a()V

    goto :goto_e
.end method


# virtual methods
.method protected a()V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    if-nez v0, :cond_5

    .line 138
    :goto_4
    return-void

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 121
    packed-switch v0, :pswitch_data_38

    .line 132
    invoke-static {p0}, Lcom/ss/android/downloadlib/e/g;->a(Landroid/app/Activity;)V

    .line 135
    :goto_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    goto :goto_4

    .line 123
    :pswitch_18
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "permission_id_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v2, "permission_content_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-direct {p0, v0, v1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_14

    .line 128
    :pswitch_2c
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    const-string v1, "open_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b(Ljava/lang/String;)V

    goto :goto_14

    .line 121
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_18
        :pswitch_2c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-direct {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->b()V

    .line 81
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    .line 82
    invoke-static {p0}, Lcom/ss/android/downloadlib/a/j;->b(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->setIntent(Landroid/content/Intent;)V

    .line 100
    iput-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a:Landroid/content/Intent;

    .line 101
    invoke-static {p0}, Lcom/ss/android/downloadlib/a/j;->b(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 113
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->f()Lcom/ss/android/a/a/a/g;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/ss/android/a/a/a/g;->a(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 114
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a()V

    .line 108
    return-void
.end method
