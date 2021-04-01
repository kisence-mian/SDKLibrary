.class public abstract Lcom/mintegral/msdk/video/module/MintegralBaseView;
.super Landroid/widget/RelativeLayout;
.source "MintegralBaseView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MintegralBaseView"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field protected c:Landroid/view/LayoutInflater;

.field protected d:I

.field protected e:Lcom/mintegral/msdk/video/module/a/a;

.field protected f:Z

.field protected g:F

.field protected h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->d:I

    .line 45
    new-instance v0, Lcom/mintegral/msdk/video/module/a/a/f;

    invoke-direct {v0}, Lcom/mintegral/msdk/video/module/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->e:Lcom/mintegral/msdk/video/module/a/a;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->f:Z

    .line 58
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->a:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->c:Landroid/view/LayoutInflater;

    .line 60
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 237
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 239
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_66

    .line 240
    :try_start_a
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->x:Ljava/lang/String;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->g:F

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->y:Ljava/lang/String;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->h:F

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->A:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_36} :catch_61

    .line 245
    :try_start_36
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->d:I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_46} :catch_5c
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_46} :catch_61

    .line 249
    :goto_46
    :try_start_46
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->B:Ljava/lang/String;

    iget v2, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->C:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->c(Landroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 254
    :goto_5b
    return-object v0

    .line 247
    :catch_5c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_60} :catch_61

    goto :goto_46

    .line 252
    :catch_61
    move-exception v1

    :goto_62
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5b

    :catch_66
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_62
.end method

.method public defaultShow()V
    .registers 3

    .prologue
    .line 148
    const-string v0, "MintegralBaseView"

    const-string v1, "defaultShow"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public findColor(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "color"

    invoke-static {v0, p1, v1}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findDrawable(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    invoke-static {v0, p1, v1}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findID(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findLayout(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCampaign()Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method public getParentLinearLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 214
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_b

    .line 215
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 217
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getParentRelativeLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 3

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 207
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_b

    .line 208
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 210
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public isLandscape()Z
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public varargs isNotNULL([Landroid/view/View;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 103
    .line 104
    if-eqz p1, :cond_13

    .line 105
    array-length v4, p1

    move v2, v0

    move v1, v0

    :goto_6
    if-ge v2, v4, :cond_12

    aget-object v1, p1, v2

    .line 106
    if-eqz v1, :cond_13

    .line 107
    const/4 v3, 0x1

    .line 105
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_6

    :cond_12
    move v0, v1

    .line 114
    :cond_13
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .prologue
    .line 65
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->d:I

    .line 66
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 67
    const-string v0, "MintegralBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigurationChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->g:F

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->h:F

    .line 228
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSelfConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .prologue
    .line 71
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->d:I

    .line 72
    const-string v0, "MintegralBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSelfConfigurationChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public setCampaign(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->b:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 84
    return-void
.end method

.method public setLayoutCenter(II)V
    .registers 6

    .prologue
    const/16 v2, -0x3e7

    .line 156
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->getParentRelativeLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->getParentLinearLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 158
    if-eqz v0, :cond_1d

    .line 159
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    if-eq p1, v2, :cond_15

    .line 161
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 163
    :cond_15
    if-eq p2, v2, :cond_19

    .line 164
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 166
    :cond_19
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :cond_1c
    :goto_1c
    return-void

    .line 167
    :cond_1d
    if-eqz v1, :cond_1c

    .line 168
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 169
    if-eq p1, v2, :cond_27

    .line 170
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 172
    :cond_27
    if-eq p2, v2, :cond_2b

    .line 173
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 175
    :cond_2b
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1c
.end method

.method public setLayoutParam(IIII)V
    .registers 8

    .prologue
    const/16 v2, -0x3e7

    .line 180
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->getParentRelativeLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->getParentLinearLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 182
    if-eqz v0, :cond_1c

    .line 183
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 184
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 185
    if-eq p3, v2, :cond_14

    .line 186
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 188
    :cond_14
    if-eq p4, v2, :cond_18

    .line 189
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 191
    :cond_18
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :cond_1b
    :goto_1b
    return-void

    .line 192
    :cond_1c
    if-eqz v1, :cond_1b

    .line 193
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 194
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 195
    if-eq p3, v2, :cond_26

    .line 196
    iput p3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 198
    :cond_26
    if-eq p4, v2, :cond_2a

    .line 199
    iput p4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 201
    :cond_2a
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1b
.end method

.method public setMatchParent()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 118
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 119
    if-nez v0, :cond_10

    .line 120
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    :goto_f
    return-void

    .line 123
    :cond_10
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 124
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_f
.end method

.method public setNotifyListener(Lcom/mintegral/msdk/video/module/a/a;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralBaseView;->e:Lcom/mintegral/msdk/video/module/a/a;

    .line 77
    return-void
.end method

.method public setWrapContent()V
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 128
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 129
    if-nez v0, :cond_10

    .line 130
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 131
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    :goto_f
    return-void

    .line 133
    :cond_10
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_f
.end method
