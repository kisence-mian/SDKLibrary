.class public abstract Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;
.super Landroid/widget/FrameLayout;
.source "BackupView.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field protected c:Lcom/bytedance/sdk/openadsdk/dislike/b;

.field protected d:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field protected e:Ljava/lang/String;

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:Z

.field protected j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const-string p1, "embeded_ad"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->e:Ljava/lang/String;

    .line 44
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->i:Z

    .line 45
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->j:Z

    .line 49
    const-string p1, "tt_express_backup_fl_tag_26"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->setTag(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method private b()Z
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->d:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_8

    .line 100
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->show()V

    goto :goto_15

    .line 101
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->c:Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-eqz v0, :cond_10

    .line 102
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/dislike/b;->showDislikeDialog()V

    goto :goto_15

    .line 104
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTDelegateActivity;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 106
    :goto_15
    return-void
.end method

.method protected a(I)V
    .registers 4

    .line 215
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->h:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->j:Z

    .line 217
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->c(I)I

    move-result p1

    .line 219
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1b

    .line 220
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->i:Z

    goto :goto_3e

    .line 221
    :cond_1b
    const/4 v0, 0x1

    if-ne v0, p1, :cond_29

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 222
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->i:Z

    goto :goto_3e

    .line 223
    :cond_29
    const/4 v1, 0x2

    if-ne v1, p1, :cond_3e

    .line 224
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 225
    :cond_3c
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->i:Z

    .line 228
    :cond_3e
    :goto_3e
    return-void
.end method

.method protected abstract a(ILcom/bytedance/sdk/openadsdk/core/d/j;)V
.end method

.method protected a(Landroid/view/View;)V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_23

    if-nez p1, :cond_d

    goto :goto_23

    .line 232
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->i:Z

    if-eqz v0, :cond_1e

    .line 233
    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->a(Landroid/view/View;Z)V

    goto :goto_22

    .line 235
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->a(Landroid/view/View;Z)V

    .line 237
    :goto_22
    return-void

    .line 231
    :cond_23
    :goto_23
    return-void
.end method

.method protected a(Landroid/view/View;Z)V
    .registers 7

    .line 156
    if-nez p1, :cond_3

    .line 157
    return-void

    .line 160
    :cond_3
    if-eqz p2, :cond_15

    .line 161
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->e:Ljava/lang/String;

    .line 162
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    goto :goto_24

    .line 164
    :cond_15
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/a/b;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->e:Ljava/lang/String;

    .line 165
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 167
    :goto_24
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;)V

    .line 175
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;)V

    .line 176
    return-void
.end method

.method protected getDescription()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_26
    const-string v0, ""

    return-object v0
.end method

.method protected getNameOrSource()Ljava/lang/String;
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v1, ""

    if-nez v0, :cond_7

    .line 110
    return-object v1

    .line 112
    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_3b
    return-object v1
.end method

.method public getRealHeight()F
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->a:Landroid/content/Context;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->g:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getRealWidth()F
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->a:Landroid/content/Context;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->f:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 64
    const-string v0, "tt_express_backup_fl_tag_26"

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :cond_49
    const-string v0, ""

    return-object v0
.end method

.method protected getVideoView()Landroid/view/View;
    .registers 9

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->a:Landroid/content/Context;

    if-nez v0, :cond_a

    goto :goto_4b

    .line 180
    :cond_a
    nop

    .line 181
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 183
    :try_start_11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->e:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;ZZ)V

    .line 184
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V

    .line 197
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->i:Z

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 198
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->j:Z

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsQuiet(Z)V
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_32

    .line 201
    goto :goto_36

    .line 199
    :catchall_32
    move-exception v0

    .line 200
    move-object v0, v1

    goto :goto_36

    .line 181
    :cond_35
    move-object v0, v1

    .line 203
    :goto_36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b()Z

    move-result v2

    if-eqz v2, :cond_4a

    if-eqz v0, :cond_4a

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(JZZ)Z

    move-result v2

    if-nez v2, :cond_49

    goto :goto_4a

    .line 206
    :cond_49
    return-object v0

    .line 204
    :cond_4a
    :goto_4a
    return-object v1

    .line 179
    :cond_4b
    :goto_4b
    return-object v1
.end method

.method public setDislikeInner(Lcom/bytedance/sdk/openadsdk/TTAdDislike;)V
    .registers 3

    .line 78
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/dislike/b;

    if-eqz v0, :cond_8

    .line 82
    check-cast p1, Lcom/bytedance/sdk/openadsdk/dislike/b;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->c:Lcom/bytedance/sdk/openadsdk/dislike/b;

    .line 84
    :cond_8
    return-void
.end method

.method public setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .registers 3

    .line 92
    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_9

    .line 93
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 95
    :cond_9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->d:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 96
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2

    .line 69
    const-string p1, "tt_express_backup_fl_tag_26"

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
