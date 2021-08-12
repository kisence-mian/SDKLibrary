.class public Lcom/ss/android/downloadlib/activity/JumpKllkActivity;
.super Lcom/ss/android/downloadlib/activity/TTDelegateActivity;
.source "JumpKllkActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 7

    .line 17
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/JumpKllkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_9

    .line 18
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 21
    :cond_9
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/JumpKllkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "p"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/activity/JumpKllkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "id"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    cmp-long v3, v1, v3

    if-nez v3, :cond_2c

    .line 24
    :cond_29
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 26
    :cond_2c
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v3

    .line 27
    const-string v4, "ab"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 28
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3b

    move v5, v4

    :cond_3b
    invoke-static {p0, v0, v1, v2, v5}, Lcom/ss/android/downloadlib/h/h;->a(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 30
    if-eq v3, v4, :cond_43

    .line 31
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 33
    :cond_43
    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 37
    invoke-super {p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->onPause()V

    .line 38
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 39
    return-void
.end method
