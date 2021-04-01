.class public Lcom/mintegral/msdk/out/LoadingActivity;
.super Landroid/app/Activity;
.source "LoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/out/LoadingActivity$OnLoadingDialogCallback;
    }
.end annotation


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/graphics/Bitmap;

.field private e:Ljava/lang/String;

.field private f:Lcom/mintegral/msdk/base/common/c/c;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Lcom/mintegral/msdk/out/LoadingActivity$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/out/LoadingActivity$1;-><init>(Lcom/mintegral/msdk/out/LoadingActivity;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->f:Lcom/mintegral/msdk/base/common/c/c;

    .line 50
    new-instance v0, Lcom/mintegral/msdk/out/LoadingActivity$2;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/out/LoadingActivity$2;-><init>(Lcom/mintegral/msdk/out/LoadingActivity;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/out/LoadingActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->d:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/out/LoadingActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->c:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/mintegral/msdk/out/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "icon_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 107
    invoke-virtual {p0}, Lcom/mintegral/msdk/out/LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "icon_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->e:Ljava/lang/String;

    .line 1114
    :cond_1d
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->b:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_e9

    .line 1115
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->b:Landroid/widget/RelativeLayout;

    .line 1116
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->h:Landroid/widget/RelativeLayout;

    .line 1117
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p0, v0}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v0

    .line 1118
    iget-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1121
    invoke-virtual {p0}, Lcom/mintegral/msdk/out/LoadingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "mintegral_native_bg_loading_camera"

    const-string v2, "drawable"

    .line 1122
    invoke-virtual {p0}, Lcom/mintegral/msdk/out/LoadingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1121
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1124
    iget-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1125
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1128
    const/high16 v1, 0x430c0000    # 140.0f

    invoke-static {p0, v1}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v1

    .line 1129
    const/high16 v2, 0x41fc0000    # 31.5f

    invoke-static {p0, v2}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v2

    .line 1130
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1131
    iget-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1132
    new-instance v0, Lcom/mintegral/msdk/widget/MTGImageView;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/widget/MTGImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->c:Landroid/widget/ImageView;

    .line 1133
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/k;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 1134
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1135
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_98

    .line 1136
    invoke-virtual {p0}, Lcom/mintegral/msdk/out/LoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/out/LoadingActivity;->f:Lcom/mintegral/msdk/base/common/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    .line 1139
    :cond_98
    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {p0, v0}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;F)I

    move-result v0

    .line 1140
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1141
    const/16 v0, 0xd

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1142
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->h:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mintegral/msdk/out/LoadingActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1145
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 1146
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1147
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1148
    const-string v1, "Relax while loading...."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1151
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/mintegral/msdk/out/LoadingActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1152
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1153
    iget-object v2, p0, Lcom/mintegral/msdk/out/LoadingActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1154
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->h:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1158
    :cond_e9
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->b:Landroid/widget/RelativeLayout;

    .line 109
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/out/LoadingActivity;->setContentView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_a

    .line 81
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/out/LoadingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 84
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    :cond_13
    iput-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->c:Landroid/widget/ImageView;

    .line 87
    iput-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->b:Landroid/widget/RelativeLayout;

    .line 88
    iput-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->f:Lcom/mintegral/msdk/base/common/c/c;

    .line 89
    iput-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->g:Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_24

    .line 91
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_24
    iput-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->h:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_34

    .line 96
    iput-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->d:Landroid/graphics/Bitmap;

    .line 99
    :cond_34
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 101
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    const-string v1, "ExitApp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->a:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_16

    .line 73
    iget-object v1, p0, Lcom/mintegral/msdk/out/LoadingActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mintegral/msdk/out/LoadingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    :cond_16
    return-void
.end method
