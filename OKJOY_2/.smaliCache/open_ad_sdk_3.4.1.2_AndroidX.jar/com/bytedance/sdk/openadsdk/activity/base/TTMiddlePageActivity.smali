.class public Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;
.super Landroid/app/Activity;
.source "TTMiddlePageActivity.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field private c:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private d:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private e:Lcom/bytedance/sdk/openadsdk/core/a/b;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->f:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 6

    .line 158
    const/4 v0, 0x0

    if-eqz p1, :cond_33

    if-nez p0, :cond_6

    goto :goto_33

    .line 161
    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aA()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    move v1, v2

    goto :goto_10

    :cond_f
    move v1, v0

    .line 162
    :goto_10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->N()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v3

    .line 163
    if-eqz v1, :cond_32

    if-nez v3, :cond_19

    goto :goto_32

    .line 166
    :cond_19
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const-string v1, "middle_page_material_meta"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 170
    return v2

    .line 164
    :cond_32
    :goto_32
    return v0

    .line 159
    :cond_33
    :goto_33
    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;)Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->f:Z

    return p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->f:Z

    return p1
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 5

    .line 188
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 189
    return v0

    .line 191
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aA()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v0

    .line 192
    :goto_f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->N()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object p0

    .line 193
    if-eqz v1, :cond_19

    if-nez p0, :cond_18

    goto :goto_19

    .line 196
    :cond_18
    return v3

    .line 194
    :cond_19
    :goto_19
    return v0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 5

    .line 139
    if-eqz p1, :cond_56

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_56

    .line 142
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 144
    const/4 v1, 0x0

    .line 146
    :try_start_2f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->i(Landroid/content/Context;)F

    move-result v1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_38

    .line 148
    goto :goto_39

    .line 147
    :catchall_38
    move-exception v2

    .line 149
    :goto_39
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->d(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    invoke-static {p0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 150
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 151
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    .line 152
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 154
    return-object p1

    .line 140
    :cond_56
    :goto_56
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 4

    .line 174
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 175
    return v0

    .line 177
    :cond_4
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 178
    return v0

    .line 180
    :cond_b
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const-string v1, "middle_page_material_meta"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 184
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;)Lcom/bytedance/sdk/openadsdk/core/a/b;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->e:Lcom/bytedance/sdk/openadsdk/core/a/b;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const-string p1, "tt_activity_middle_page"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 46
    if-eqz p1, :cond_39

    .line 47
    const-string v0, "middle_page_material_meta"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    :try_start_18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 51
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 52
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p1, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_34} :catch_35

    .line 55
    goto :goto_39

    .line 53
    :catch_35
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    if-nez p1, :cond_41

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->finish()V

    .line 59
    return-void

    .line 61
    :cond_41
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    move-result-object p1

    .line 62
    if-nez p1, :cond_4b

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->finish()V

    .line 64
    return-void

    .line 66
    :cond_4b
    const-string v0, "tt_middle_page_layout"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->a:Landroid/widget/LinearLayout;

    .line 67
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;

    if-eqz v0, :cond_67

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;

    .line 69
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressVideoView;->getClickListener()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->e:Lcom/bytedance/sdk/openadsdk/core/a/b;

    goto :goto_75

    .line 70
    :cond_67
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_75

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 72
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getClickListener()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->e:Lcom/bytedance/sdk/openadsdk/core/a/b;

    goto :goto_76

    .line 70
    :cond_75
    :goto_75
    nop

    .line 74
    :goto_76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_93

    .line 75
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aA()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_93

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_93

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 80
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/x;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_93

    .line 82
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 85
    :cond_93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setCanInterruptVideoPlay(Z)V

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 122
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->render()V

    .line 123
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 129
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->b:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    .line 132
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_10

    .line 133
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 136
    :cond_10
    return-void
.end method
