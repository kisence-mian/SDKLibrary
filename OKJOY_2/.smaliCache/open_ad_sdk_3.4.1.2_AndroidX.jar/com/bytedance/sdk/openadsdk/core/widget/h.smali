.class public Lcom/bytedance/sdk/openadsdk/core/widget/h;
.super Ljava/lang/Object;
.source "VideoTrafficTipLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/h$a;,
        Lcom/bytedance/sdk/openadsdk/core/widget/h$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

.field private e:Lcom/bytedance/sdk/openadsdk/core/widget/h$b;

.field private f:Z

.field private g:Lcom/bytedance/sdk/openadsdk/core/d/t;

.field private h:Landroid/view/ViewStub;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->f:Z

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;Z)V
    .registers 5

    .line 64
    if-eqz p1, :cond_54

    if-eqz p2, :cond_54

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->h:Landroid/view/ViewStub;

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a:Landroid/view/View;

    if-eqz v0, :cond_13

    goto :goto_54

    .line 67
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->h:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 68
    const-string v0, "tt_video_traffic_tip_layout"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a:Landroid/view/View;

    .line 69
    const-string v0, "tt_video_traffic_tip_tv"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->b:Landroid/widget/TextView;

    .line 70
    const-string v0, "tt_video_traffic_continue_play_btn"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 71
    if-eqz p3, :cond_4b

    .line 72
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 73
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/widget/h$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/h$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/h;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_53

    .line 85
    :cond_4b
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 88
    :goto_53
    return-void

    .line 65
    :cond_54
    :goto_54
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/t;Z)V
    .registers 7

    .line 172
    if-eqz p1, :cond_96

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a:Landroid/view/View;

    if-eqz v0, :cond_96

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->c:Landroid/content/Context;

    if-nez v1, :cond_c

    goto/16 :goto_96

    .line 175
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 176
    return-void

    .line 178
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->e:Lcom/bytedance/sdk/openadsdk/core/widget/h$b;

    if-eqz v0, :cond_1a

    .line 179
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/h$b;->j()V

    .line 181
    :cond_1a
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->d()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v2

    .line 182
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 184
    const-string v0, "tt_video_bytesize"

    const-string v1, "tt_video_without_wifi_tips"

    if-eqz p2, :cond_5e

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->c:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->c:Landroid/content/Context;

    .line 186
    const-string v1, "tt_video_bytesize_MB"

    invoke-static {p2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->c:Landroid/content/Context;

    .line 187
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7b

    .line 189
    :cond_5e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->c:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->c:Landroid/content/Context;

    .line 190
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 193
    :goto_7b
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 194
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->b:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 196
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a:Landroid/view/View;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->d(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a:Landroid/view/View;

    if-eqz p1, :cond_95

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 199
    :cond_95
    return-void

    .line 173
    :cond_96
    :goto_96
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/widget/h;)V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->c()V

    return-void
.end method

.method private a(I)Z
    .registers 5

    .line 129
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    .line 130
    return v0

    .line 132
    :cond_8
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->f:Z

    if-nez p1, :cond_2e

    .line 133
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->e:Lcom/bytedance/sdk/openadsdk/core/widget/h$b;

    if-eqz p1, :cond_27

    .line 134
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/h$b;->h()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_20

    .line 135
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    invoke-interface {p1, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V

    .line 137
    :cond_20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/widget/h$a;->a:Lcom/bytedance/sdk/openadsdk/core/widget/h$a;

    invoke-interface {p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;->a(Lcom/bytedance/sdk/openadsdk/core/widget/h$a;Ljava/lang/String;)V

    .line 139
    :cond_27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->g:Lcom/bytedance/sdk/openadsdk/core/d/t;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/t;Z)V

    .line 140
    const/4 p1, 0x0

    return p1

    .line 142
    :cond_2e
    return v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/widget/h;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    return-object p0
.end method

.method private b()V
    .registers 2

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->g:Lcom/bytedance/sdk/openadsdk/core/d/t;

    .line 97
    return-void
.end method

.method private c()V
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->c:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 147
    return-void

    .line 149
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->d()V

    .line 150
    return-void
.end method

.method private d()V
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 166
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_9
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)V
    .registers 6

    .line 55
    if-eqz p1, :cond_31

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_31

    .line 56
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->i:Landroid/view/View;

    .line 57
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->c:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "tt_video_traffic_tip"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    const-string v0, "tt_video_traffic_tip_layout_viewStub"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->h:Landroid/view/ViewStub;

    .line 61
    :cond_31
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;Lcom/bytedance/sdk/openadsdk/core/widget/h$b;)V
    .registers 3

    .line 91
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->e:Lcom/bytedance/sdk/openadsdk/core/widget/h$b;

    .line 92
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;

    .line 93
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 154
    if-eqz p1, :cond_5

    .line 155
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->b()V

    .line 157
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->d()V

    .line 158
    return-void
.end method

.method public a()Z
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a:Landroid/view/View;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/core/d/t;Z)Z
    .registers 7

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->c:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    if-nez p2, :cond_8

    goto :goto_18

    .line 110
    :cond_8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->i:Landroid/view/View;

    invoke-direct {p0, v0, v2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 111
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/h;->g:Lcom/bytedance/sdk/openadsdk/core/d/t;

    .line 113
    packed-switch p1, :pswitch_data_1a

    .line 118
    return v1

    .line 116
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/h;->a(I)Z

    move-result p1

    return p1

    .line 108
    :cond_18
    :goto_18
    return v1

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method
