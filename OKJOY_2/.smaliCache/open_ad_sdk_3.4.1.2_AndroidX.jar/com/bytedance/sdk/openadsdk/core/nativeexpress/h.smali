.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;
.source "FeedExpressBackupView.java"


# static fields
.field private static k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;


# instance fields
.field private l:I

.field private m:Landroid/view/View;

.field private n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field private o:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v2, 0x2

    const v3, 0x40418c63

    const/16 v4, 0x177

    const/16 v5, 0x7c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v3, 0x3

    const/high16 v5, 0x3fa00000    # 1.25f

    const/16 v6, 0x12c

    invoke-direct {v1, v3, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    const/4 v7, 0x1

    aput-object v1, v0, v7

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v7, 0x4

    const v8, 0x3fb3c679

    const/16 v9, 0x10b

    invoke-direct {v1, v7, v8, v4, v9}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/16 v3, 0xf

    invoke-direct {v1, v3, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;-><init>(IFII)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 175
    return-void
.end method

.method private b(I)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;
    .registers 8

    .line 159
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->k:[Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 161
    :try_start_5
    array-length v3, v0

    :goto_6
    if-ge v1, v3, :cond_14

    aget-object v4, v0, v1

    .line 162
    iget v5, v4, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:I
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_15

    if-ne v5, p1, :cond_11

    .line 163
    nop

    .line 164
    move-object v2, v4

    goto :goto_14

    .line 161
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 168
    :cond_14
    :goto_14
    goto :goto_16

    .line 167
    :catchall_15
    move-exception p1

    .line 169
    :goto_16
    return-object v2
.end method

.method private b()V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b(I)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    .line 98
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getExpectExpressHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    .line 101
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    if-gtz v1, :cond_34

    .line 102
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    .line 106
    :cond_34
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    if-gtz v1, :cond_48

    .line 107
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    int-to-float v1, v1

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:F

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    .line 111
    :cond_48
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    if-lez v0, :cond_77

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_77

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 113
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    .line 114
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    .line 117
    :cond_77
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 118
    if-nez v0, :cond_86

    .line 119
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 121
    :cond_86
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_99

    .line 124
    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 126
    :cond_99
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result v0

    .line 128
    const/16 v1, 0x9

    if-ne v0, v1, :cond_b2

    .line 129
    const-string v0, "draw_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->e:Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g()V

    .line 131
    return-void

    .line 133
    :cond_b2
    const-string v0, "embeded_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->e:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v0

    sparse-switch v0, :sswitch_data_da

    goto :goto_d8

    .line 151
    :sswitch_c0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->i()V

    .line 152
    goto :goto_d8

    .line 148
    :sswitch_c4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f()V

    .line 149
    goto :goto_d8

    .line 145
    :sswitch_c8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->h()V

    .line 146
    goto :goto_d8

    .line 142
    :sswitch_cc
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->d()V

    .line 143
    goto :goto_d8

    .line 139
    :sswitch_d0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->e()V

    .line 140
    goto :goto_d8

    .line 136
    :sswitch_d4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->c()V

    .line 137
    nop

    .line 156
    :goto_d8
    return-void

    nop

    :sswitch_data_da
    .sparse-switch
        0x2 -> :sswitch_d4
        0x3 -> :sswitch_d0
        0x4 -> :sswitch_cc
        0x5 -> :sswitch_c8
        0xf -> :sswitch_c4
        0x10 -> :sswitch_c0
    .end sparse-switch
.end method

.method private c()V
    .registers 8

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_img_small"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    .line 180
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_img"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 181
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_close"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 182
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_desc"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 183
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_title"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 185
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/widget/ImageView;)V

    .line 186
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {p0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 198
    return-void
.end method

.method private d()V
    .registers 15

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_img_group"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    .line 203
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_img_1"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 204
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_img_2"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 205
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_img_3"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 206
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_icon"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 207
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v7, "tt_bu_close"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 208
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v8, "tt_bu_desc"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 209
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v9, "tt_bu_title"

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 210
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v10, "tt_bu_download"

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 213
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v9

    .line 214
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v11

    .line 215
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Z()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v12

    .line 216
    iget-object v13, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v13

    invoke-virtual {v13, v9, v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    invoke-virtual {v0, v11, v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    invoke-virtual {v0, v12, v3}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 222
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11e

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_11e
    invoke-virtual {p0, p0, v10}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 237
    invoke-virtual {p0, v8, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 238
    return-void
.end method

.method private e()V
    .registers 10

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_horizontal"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    .line 244
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_img_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_img"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 250
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 251
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 252
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 253
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v8, "tt_bu_download"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 256
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 257
    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->g:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 259
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/widget/ImageView;)V

    .line 260
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_be

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_be
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 275
    invoke-virtual {p0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 276
    return-void
.end method

.method private f()V
    .registers 15

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_vertical"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    .line 282
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 283
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_img_container"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 285
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_video_container_inner"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 288
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_video_icon"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 289
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_close"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 290
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v7, "tt_bu_desc"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 291
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v8, "tt_bu_title"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 292
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v9, "tt_bu_video_name1"

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 293
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v10, "tt_bu_video_name2"

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 294
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v11, "tt_bu_download"

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 295
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v12, "tt_bu_video_score"

    invoke-static {v11, v12}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 296
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v13, "tt_bu_video_score_bar"

    invoke-static {v12, v13}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;

    .line 298
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v12}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v12

    iget-object v13, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 300
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$4;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v3

    if-eqz v3, :cond_106

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/b;->e()I

    move-result v3

    goto :goto_107

    :cond_106
    const/4 v3, 0x4

    .line 308
    :goto_107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v12, v2, [Ljava/lang/Object;

    int-to-float v13, v3

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v1

    const-string v13, "%.1f"

    invoke-static {v4, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {v11, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarEmptyNum(I)V

    .line 310
    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarFillNum(I)V

    .line 311
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageWidth(F)V

    .line 312
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImageHeight(F)V

    .line 313
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->setStarImagePadding(F)V

    .line 314
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/widget/TTRatingBar;->a()V

    .line 316
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getNameOrSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17b

    .line 322
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_17b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getVideoView()Landroid/view/View;

    move-result-object v3

    .line 327
    if-eqz v3, :cond_196

    .line 328
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    mul-int/lit8 v4, v4, 0x7b

    div-int/lit16 v4, v4, 0x177

    .line 329
    mul-int/lit8 v5, v4, 0x10

    div-int/lit8 v5, v5, 0x9

    .line 330
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 331
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    :cond_196
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 335
    invoke-virtual {p0, v9, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 336
    return-void
.end method

.method private g()V
    .registers 9

    .line 339
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_draw"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    .line 341
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 342
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_desc"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 343
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_title"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 344
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_download"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 346
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_76

    .line 350
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :cond_76
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getVideoView()Landroid/view/View;

    move-result-object v5

    .line 355
    if-eqz v5, :cond_88

    .line 356
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 357
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    :cond_88
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 361
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 362
    invoke-virtual {p0, v4, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 363
    return-void
.end method

.method private h()V
    .registers 10

    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_horizontal"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    .line 370
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 372
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_img_container"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 373
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 376
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 377
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 378
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v8, "tt_bu_download"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 380
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$5;

    invoke-direct {v7, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 391
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    :cond_a5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getVideoView()Landroid/view/View;

    move-result-object v3

    .line 396
    if-eqz v3, :cond_be

    .line 397
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 398
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->f:I

    mul-int/lit8 v7, v7, 0x9

    div-int/lit8 v7, v7, 0x10

    invoke-direct {v4, v5, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    :cond_be
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 402
    invoke-virtual {p0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 404
    return-void
.end method

.method private i()V
    .registers 10

    .line 407
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v2, "tt_backup_feed_vertical"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    .line 410
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_video_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 411
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v3, "tt_bu_img_container"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v4, "tt_bu_img"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 416
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v5, "tt_bu_close"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 417
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v6, "tt_bu_desc"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 418
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v7, "tt_bu_title"

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 419
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->m:Landroid/view/View;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a:Landroid/content/Context;

    const-string v8, "tt_bu_download"

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 421
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/widget/ImageView;)V

    .line 422
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b6

    .line 433
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->af()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_b6
    invoke-virtual {p0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 437
    invoke-virtual {p0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(Landroid/view/View;Z)V

    .line 438
    return-void
.end method


# virtual methods
.method protected a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V
    .registers 4

    .line 442
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v0, :cond_7

    .line 443
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V

    .line 445
    :cond_7
    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V
    .registers 6

    .line 79
    const-string v0, "FeedExpressBackupView"

    const-string v1, "show backup view"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->setBackgroundColor(I)V

    .line 81
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 82
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 83
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->o:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 85
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->l:I

    .line 86
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(I)V

    .line 88
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->b()V

    .line 89
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->n:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    return-void
.end method
