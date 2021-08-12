.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;
.super Landroid/widget/FrameLayout;
.source "NativeVideoTsView.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;,
        Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;
    }
.end annotation


# instance fields
.field private A:Landroid/view/ViewStub;

.field private B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;

.field private final C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private D:Z

.field private E:Z

.field private F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final a:Landroid/content/Context;

.field protected final b:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field protected c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

.field protected d:Landroid/widget/FrameLayout;

.field protected e:Z

.field protected f:Landroid/widget/RelativeLayout;

.field protected g:Landroid/widget/ImageView;

.field protected h:Landroid/widget/ImageView;

.field protected i:Landroid/widget/ImageView;

.field protected j:Z

.field protected k:Ljava/lang/String;

.field protected l:I

.field m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field n:Z

.field public o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;

.field private p:Landroid/view/ViewGroup;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:J

.field private final x:Lcom/bytedance/sdk/openadsdk/utils/al;

.field private y:Z

.field private final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 4

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ZZ)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;ZZ)V
    .registers 14

    .line 183
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ZZLjava/lang/String;ZZ)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ZZ)V
    .registers 13

    .line 170
    const-string v5, "embeded_ad"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ZZLjava/lang/String;ZZ)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ZZLjava/lang/String;ZZ)V
    .registers 11

    .line 188
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    .line 63
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->e:Z

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->r:Z

    .line 67
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->s:Z

    .line 68
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->t:Z

    .line 74
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->u:Z

    .line 80
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->j:Z

    .line 81
    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->k:Ljava/lang/String;

    .line 82
    const/16 v2, 0x32

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->l:I

    .line 86
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->v:Z

    .line 89
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    .line 93
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->y:Z

    .line 95
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->z:Ljava/lang/String;

    .line 99
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->n:Z

    .line 481
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 637
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->D:Z

    .line 886
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 189
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->k:Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    .line 191
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 192
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->r:Z

    .line 193
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->u:Z

    .line 195
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->s:Z

    .line 196
    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->t:Z

    .line 199
    const-string p1, "NativeVideoAdView"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b()V

    .line 201
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->e()V

    .line 202
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .registers 9

    .line 266
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 267
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 268
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    const-string v4, "tt_native_video_layout"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 269
    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 270
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 271
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    .line 273
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 274
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 275
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    const-string v6, "tt_native_video_frame"

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 276
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 277
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 279
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->d:Landroid/widget/FrameLayout;

    .line 281
    new-instance v1, Landroid/view/ViewStub;

    invoke-direct {v1, p1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 282
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 283
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    const-string v3, "tt_native_video_img_cover_viewStub"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setId(I)V

    .line 284
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    const-string v3, "tt_native_video_img_cover_layout"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 285
    invoke-virtual {v1, p1}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 287
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->A:Landroid/view/ViewStub;

    .line 289
    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;)Landroid/view/ViewGroup;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private c(Z)V
    .registers 5

    .line 546
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v0, :cond_a

    goto/16 :goto_d8

    .line 551
    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q()Z

    move-result v0

    .line 552
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->r()V

    .line 554
    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->w()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 556
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVideoStatus---isFromDetailPage()="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff0cmNativeVideoController.isPlayComplete()="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->w()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NativeVideoAdView"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b(Z)V

    .line 558
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->d()V

    .line 559
    return-void

    .line 561
    :cond_4b
    if-eqz p1, :cond_b7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->w()Z

    move-result p1

    if-nez p1, :cond_b7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->t()Z

    move-result p1

    if-nez p1, :cond_b7

    .line 562
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object p1

    if-eqz p1, :cond_94

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result p1

    if-eqz p1, :cond_94

    .line 563
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    if-eqz p1, :cond_d7

    .line 564
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->z:Ljava/lang/String;

    const-string v1, "ALP-AL00"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    .line 566
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->k()V

    goto :goto_8c

    .line 568
    :cond_85
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g(Z)V

    .line 570
    :goto_8c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;

    if-eqz p1, :cond_d7

    .line 571
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;->c()V

    goto :goto_d7

    .line 576
    :cond_94
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    if-eqz p1, :cond_d7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object p1

    if-nez p1, :cond_d7

    .line 577
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_ad

    .line 578
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 580
    :cond_ad
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 581
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->m()V

    goto :goto_d7

    .line 585
    :cond_b7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object p1

    if-eqz p1, :cond_d7

    .line 586
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 587
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->h()V

    .line 589
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;

    if-eqz p1, :cond_d7

    .line 590
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;->e_()V

    .line 595
    :cond_d7
    :goto_d7
    return-void

    .line 547
    :cond_d8
    :goto_d8
    return-void
.end method

.method private d()V
    .registers 4

    .line 131
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(JI)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;

    .line 133
    return-void
.end method

.method private e()V
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->addView(Landroid/view/View;)V

    .line 295
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->k()V

    .line 296
    return-void
.end method

.method private j()V
    .registers 4

    .line 313
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->t()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->i:Landroid/widget/ImageView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i;->t()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 316
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->l:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 317
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 318
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 319
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 322
    :cond_46
    return-void
.end method

.method private k()V
    .registers 10

    .line 326
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->d:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->k:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->v()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->s:Z

    iget-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->t:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;ZZZ)V

    iput-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 327
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->l()V

    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 337
    return-void
.end method

.method private l()V
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v0, :cond_5

    .line 395
    return-void

    .line 397
    :cond_5
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->e(Z)V

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;)V

    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V

    .line 400
    return-void
.end method

.method private m()V
    .registers 14

    .line 417
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v0, :cond_8

    .line 418
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->k()V

    goto :goto_19

    .line 420
    :cond_8
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->v()Z

    move-result v0

    if-nez v0, :cond_19

    .line 422
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f()V

    .line 426
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_be

    .line 427
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 428
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 429
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b()V

    .line 430
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h()Z

    move-result v0

    const-string v2, "NativeVideoAdView"

    if-eqz v0, :cond_88

    .line 431
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->f:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 432
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_44

    .line 433
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 435
    :cond_44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 436
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    .line 437
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->u()Z

    move-result v12

    .line 436
    invoke-interface/range {v3 .. v12}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    .line 438
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->d(Z)V

    goto :goto_be

    .line 440
    :cond_82
    const-string v0, "attachTask materialMeta.getVideo() is null !!"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    .line 444
    :cond_88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->w()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachTask-mNativeVideoController.isPlayComplete()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b(Z)V

    goto :goto_be

    .line 449
    :cond_b1
    const-string v0, "attachTask.......mRlImgCover.....VISIBLE"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->g()V

    .line 451
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 459
    :cond_be
    :goto_be
    return-void
.end method

.method private n()V
    .registers 2

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;

    .line 477
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->i()V

    .line 478
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->o()V

    .line 479
    return-void
.end method

.method private o()V
    .registers 3

    .line 484
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    .line 485
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 486
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_15

    .line 487
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Z)V

    .line 490
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 491
    return-void
.end method

.method private p()V
    .registers 5

    .line 516
    const/16 v0, 0x32

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;II)Z

    move-result v0

    .line 517
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c(Z)V

    .line 518
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 519
    return-void
.end method

.method private q()Z
    .registers 5

    .line 523
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 524
    return v1

    .line 527
    :cond_8
    const-string v0, "sp_multi_native_video_data"

    const-string v2, "key_video_isfromvideodetailpage"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 528
    const-string v3, "key_video_is_from_detail_page"

    invoke-static {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 529
    if-nez v0, :cond_1a

    if-eqz v2, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method private r()V
    .registers 5

    .line 536
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 537
    return-void

    .line 540
    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "sp_multi_native_video_data"

    const-string v3, "key_video_isfromvideodetailpage"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 541
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "key_video_is_from_detail_page"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 543
    return-void
.end method

.method private s()V
    .registers 12

    .line 682
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    const-string v1, "key_video_is_update_flag"

    const/4 v2, 0x0

    const-string v3, "sp_multi_native_video_data"

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->v()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v2

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    .line 683
    :goto_19
    if-eqz v0, :cond_1c

    return-void

    .line 684
    :cond_1c
    const-string v0, "key_native_video_complete"

    invoke-static {v3, v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 685
    const-wide/16 v4, -0x1

    const-string v6, "key_video_current_play_position"

    invoke-static {v3, v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 686
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->p()J

    move-result-wide v6

    const-string v8, "key_video_total_play_duration"

    invoke-static {v3, v8, v6, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    .line 687
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->s()J

    move-result-wide v8

    const-string v10, "key_video_duration"

    invoke-static {v3, v10, v8, v9}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 688
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->d(Z)V

    .line 689
    if-eqz v0, :cond_4f

    .line 690
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v10, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(J)V

    goto :goto_54

    .line 692
    :cond_4f
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v10, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(J)V

    .line 694
    :goto_54
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v10, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->b(J)V

    .line 695
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v10, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->c(J)V

    .line 698
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResumeFeedNativeVideoControllerData-isComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",totalPlayDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiProcess"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method private t()Z
    .registers 3

    .line 757
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v0

    .line 758
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->c(I)I

    move-result v0

    .line 760
    const/4 v1, 0x2

    if-ne v1, v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method private u()Z
    .registers 2

    .line 764
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->e:Z

    return v0
.end method

.method private v()Z
    .registers 2

    .line 775
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->r:Z

    return v0
.end method

.method private w()V
    .registers 2

    .line 957
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->f(Landroid/view/View;)V

    .line 958
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->f(Landroid/view/View;)V

    .line 959
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 143
    return-void
.end method

.method public a(I)V
    .registers 2

    .line 798
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b()V

    .line 799
    return-void
.end method

.method public a(JI)V
    .registers 4

    .line 125
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;

    if-eqz p1, :cond_7

    .line 126
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;->d()V

    .line 128
    :cond_7
    return-void
.end method

.method public a(JJ)V
    .registers 6

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;

    if-eqz v0, :cond_7

    .line 153
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;->a(JJ)V

    .line 155
    :cond_7
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 2

    .line 503
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_c

    goto :goto_a

    .line 505
    :pswitch_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p()V

    .line 506
    nop

    .line 510
    :goto_a
    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method protected a(Z)V
    .registers 5

    .line 889
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h:Landroid/widget/ImageView;

    if-nez v0, :cond_68

    .line 890
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h:Landroid/widget/ImageView;

    .line 891
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->t()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 892
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h:Landroid/widget/ImageView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i;->t()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_36

    .line 894
    :cond_27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h:Landroid/widget/ImageView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_new_play_video"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 896
    :goto_36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 897
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->l:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 898
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 899
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 900
    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 901
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 902
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 903
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    :cond_68
    if-eqz p1, :cond_71

    .line 906
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_78

    .line 908
    :cond_71
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 912
    :goto_78
    return-void
.end method

.method public a(JZZ)Z
    .registers 19

    .line 357
    move-object v0, p0

    move-wide v11, p1

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 358
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v1, :cond_23

    .line 359
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->d:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->k:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->s:Z

    iget-boolean v8, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->t:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;ZZ)V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 360
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->l()V

    .line 362
    :cond_23
    iput-wide v11, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->w:J

    .line 364
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->v()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 365
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v1, v13}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->b(Z)V

    .line 366
    nop

    .line 367
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_6a

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 368
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    .line 369
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->u()Z

    move-result v10

    .line 368
    move-wide v8, p1

    invoke-interface/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    move-result v1

    goto :goto_6b

    .line 372
    :cond_6a
    move v1, v13

    :goto_6b
    const-wide/16 v2, 0x0

    cmp-long v4, v11, v2

    if-lez v4, :cond_75

    if-nez p3, :cond_75

    if-eqz p4, :cond_7d

    :cond_75
    if-lez v4, :cond_af

    if-eqz p3, :cond_af

    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->u:Z

    if-nez v4, :cond_af

    .line 374
    :cond_7d
    nop

    .line 375
    nop

    .line 376
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v4, :cond_90

    .line 377
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->p()J

    move-result-wide v2

    .line 378
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->r()I

    move-result v13

    move-wide v8, v2

    move v10, v13

    goto :goto_92

    .line 376
    :cond_90
    move-wide v8, v2

    move v10, v13

    .line 381
    :goto_92
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->o()J

    move-result-wide v3

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object v11

    .line 382
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->k:Ljava/lang/String;

    const-string v7, "feed_continue"

    invoke-static/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 387
    :cond_af
    return v1

    .line 389
    :cond_b0
    const/4 v1, 0x1

    return v1
.end method

.method protected b()V
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 206
    return-void

    .line 208
    :cond_5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v0

    .line 209
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->c(I)I

    move-result v1

    .line 211
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_76

    goto :goto_41

    .line 222
    :pswitch_1b
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->n:Z

    goto :goto_41

    .line 213
    :pswitch_1e
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    .line 214
    goto :goto_41

    .line 219
    :pswitch_21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_34

    :cond_32
    move v1, v2

    goto :goto_35

    :cond_34
    :goto_34
    move v1, v3

    :goto_35
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    .line 220
    goto :goto_41

    .line 216
    :pswitch_38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    .line 217
    nop

    .line 226
    :goto_41
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->r:Z

    if-nez v1, :cond_50

    .line 227
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->e:Z

    goto :goto_52

    .line 230
    :cond_50
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->e:Z

    .line 234
    :goto_52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->k:Ljava/lang/String;

    const-string v1, "splash_ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 235
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    .line 236
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->e:Z

    .line 238
    :cond_60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_69

    .line 239
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->e(Z)V

    .line 242
    :cond_69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->k:Ljava/lang/String;

    const-string v1, "feed_video_middle_page"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 243
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    .line 247
    :cond_75
    return-void

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_38
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method protected b(I)V
    .registers 19

    .line 802
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_f

    .line 803
    return-void

    .line 805
    :cond_f
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_5a

    .line 806
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result v2

    if-eqz v2, :cond_38

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    .line 807
    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c(Z)V

    .line 808
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v1, :cond_34

    .line 809
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 811
    :cond_34
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(Z)V

    .line 812
    return-void

    .line 813
    :cond_38
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result v2

    if-eqz v2, :cond_5a

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5a

    .line 816
    iput-boolean v6, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    .line 817
    invoke-direct {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c(Z)V

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b()V

    .line 819
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v1, :cond_56

    .line 820
    invoke-virtual {v1, v6, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 822
    :cond_56
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(Z)V

    .line 823
    return-void

    .line 826
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h()Z

    move-result v1

    if-nez v1, :cond_ba

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_ba

    .line 827
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 829
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_a9

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    if-eqz v1, :cond_a9

    .line 830
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->w()V

    .line 831
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    .line 832
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v13

    iget-wide v14, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->w:J

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->u()Z

    move-result v16

    .line 831
    invoke-interface/range {v7 .. v16}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    goto :goto_b0

    .line 834
    :cond_a9
    const-string v1, "NativeVideoAdView"

    const-string v2, "attachTask materialMeta.getVideo() is null !!"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    :goto_b0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v1, :cond_b7

    .line 837
    invoke-virtual {v1, v6, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 839
    :cond_b7
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(Z)V

    .line 841
    :cond_ba
    return-void
.end method

.method public b(JI)V
    .registers 4

    .line 138
    return-void
.end method

.method public b(Z)V
    .registers 6

    .line 920
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_3a

    .line 921
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->d(Z)V

    .line 922
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->v()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    move-result-object p1

    .line 923
    if-eqz p1, :cond_3a

    .line 924
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 925
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->s()Landroid/view/View;

    move-result-object v0

    .line 926
    if-eqz v0, :cond_3a

    .line 927
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 928
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 929
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 931
    :cond_27
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 932
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->addView(Landroid/view/View;)V

    .line 933
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/ref/WeakReference;Z)V

    .line 937
    :cond_3a
    return-void
.end method

.method protected c()V
    .registers 16

    .line 844
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_b

    .line 845
    return-void

    .line 847
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_50

    .line 848
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 849
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c(Z)V

    .line 850
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_2d

    .line 851
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 853
    :cond_2d
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(Z)V

    .line 854
    return-void

    .line 855
    :cond_31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 858
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    .line 859
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c(Z)V

    .line 860
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b()V

    .line 861
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_4c

    .line 862
    invoke-virtual {v0, v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 864
    :cond_4c
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(Z)V

    .line 865
    return-void

    .line 868
    :cond_50
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h()Z

    move-result v0

    if-nez v0, :cond_b0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b0

    .line 869
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 871
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_9f

    .line 872
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->w()V

    .line 873
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    .line 874
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v11

    iget-wide v12, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->w:J

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->u()Z

    move-result v14

    .line 873
    invoke-interface/range {v5 .. v14}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    goto :goto_a6

    .line 876
    :cond_9f
    const-string v0, "NativeVideoAdView"

    const-string v5, "attachTask materialMeta.getVideo() is null !!"

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :goto_a6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_ad

    .line 879
    invoke-virtual {v0, v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendEmptyMessageDelayed(IJ)Z

    .line 881
    :cond_ad
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(Z)V

    .line 883
    :cond_b0
    return-void
.end method

.method public f()V
    .registers 3

    .line 786
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;

    if-eqz v0, :cond_e

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->E:Z

    if-nez v1, :cond_e

    .line 787
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->E:Z

    .line 788
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;->d_()V

    .line 790
    :cond_e
    return-void
.end method

.method public g()V
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->A:Landroid/view/ViewStub;

    if-eqz v0, :cond_76

    .line 300
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_17

    goto :goto_76

    .line 302
    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->A:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->f:Landroid/widget/RelativeLayout;

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    const-string v1, "tt_native_video_img_id"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->g:Landroid/widget/ImageView;

    .line 304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    const-string v1, "tt_native_video_play"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->i:Landroid/widget/ImageView;

    .line 305
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->j:Z

    if-eqz v1, :cond_49

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 306
    :cond_49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 307
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 309
    :cond_72
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->j()V

    .line 310
    return-void

    .line 301
    :cond_76
    :goto_76
    return-void
.end method

.method public getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;
    .registers 2

    .line 708
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    return-object v0
.end method

.method public h()Z
    .registers 2

    .line 712
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    return v0
.end method

.method public i()V
    .registers 3

    .line 940
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_27

    .line 941
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->v()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    move-result-object v0

    .line 942
    if-eqz v0, :cond_27

    .line 943
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 944
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->s()Landroid/view/View;

    move-result-object v0

    .line 945
    if-eqz v0, :cond_27

    .line 946
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 947
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 948
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 949
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 954
    :cond_27
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 404
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 405
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->m()V

    .line 406
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 463
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 464
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->n()V

    .line 465
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .registers 1

    .line 410
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishTemporaryDetach()V

    .line 413
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->m()V

    .line 414
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 251
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->r:Z

    if-nez v0, :cond_27

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;

    if-eqz v1, :cond_27

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_27

    .line 252
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->w()Z

    move-result v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->s()J

    move-result-wide v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 253
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->p()J

    move-result-wide v5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->n()J

    move-result-wide v7

    iget-boolean v9, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    .line 252
    invoke-interface/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;->a(ZJJJZ)V

    .line 255
    :cond_27
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onStartTemporaryDetach()V
    .registers 1

    .line 469
    invoke-super {p0}, Landroid/widget/FrameLayout;->onStartTemporaryDetach()V

    .line 472
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->n()V

    .line 473
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5

    .line 599
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 600
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->s()V

    .line 601
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_28

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->w()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 602
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->r()V

    .line 603
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->f:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 604
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b(Z)V

    .line 605
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->d()V

    .line 606
    return-void

    .line 609
    :cond_28
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b()V

    .line 611
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->v()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_66

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_66

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->t()Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_66

    .line 627
    :cond_43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_65

    .line 628
    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_5d

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->w()Z

    move-result p1

    if-nez p1, :cond_5d

    .line 629
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_65

    .line 631
    :cond_5d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 632
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c(Z)V

    .line 635
    :cond_65
    :goto_65
    return-void

    .line 612
    :cond_66
    :goto_66
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h()Z

    move-result v0

    if-nez v0, :cond_98

    .line 614
    if-nez p1, :cond_8d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_8d

    .line 616
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 617
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 618
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeMessages(I)V

    .line 619
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c(Z)V

    goto :goto_98

    .line 620
    :cond_8d
    if-eqz p1, :cond_98

    .line 621
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 624
    :cond_98
    :goto_98
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 16

    .line 641
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 642
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->s()V

    .line 644
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->D:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 645
    if-nez p1, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->D:Z

    .line 647
    :cond_13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q()Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->w()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 648
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->r()V

    .line 650
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->f:Landroid/widget/RelativeLayout;

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 651
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b(Z)V

    .line 652
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->d()V

    .line 653
    return-void

    .line 656
    :cond_34
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b()V

    .line 658
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->v()Z

    move-result v0

    if-nez v0, :cond_b3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->h()Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_b3

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->t()Z

    move-result v0

    if-nez v0, :cond_b3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_52

    goto :goto_b3

    .line 661
    :cond_52
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->v:Z

    if-eqz v4, :cond_92

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-eqz v0, :cond_92

    .line 662
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    .line 663
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v10

    iget-wide v11, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->w:J

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->u()Z

    move-result v13

    .line 662
    invoke-interface/range {v4 .. v13}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    .line 664
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->v:Z

    .line 665
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    goto :goto_99

    .line 667
    :cond_92
    const-string v0, "NativeVideoAdView"

    const-string v1, "attachTask materialMeta.getVideo() is null !!"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :goto_99
    if-nez p1, :cond_b2

    .line 671
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz p1, :cond_b2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_b2

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->w()Z

    move-result p1

    if-nez p1, :cond_b2

    .line 672
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->x:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 675
    :cond_b2
    return-void

    .line 659
    :cond_b3
    :goto_b3
    return-void
.end method

.method public setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;

    .line 121
    return-void
.end method

.method public setDrawVideoListener(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_9

    .line 108
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V

    .line 110
    :cond_9
    return-void
.end method

.method public setIsAutoPlay(Z)V
    .registers 5

    .line 716
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->y:Z

    if-nez v0, :cond_81

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_a

    goto/16 :goto_81

    .line 720
    :cond_a
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v0

    .line 721
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->c(I)I

    move-result v0

    .line 723
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    const/4 v2, 0x4

    if-eq v0, v2, :cond_39

    .line 725
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 726
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->t()Z

    move-result v0

    if-nez v0, :cond_39

    .line 727
    move p1, v1

    goto :goto_39

    .line 729
    :cond_30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 730
    move p1, v1

    .line 734
    :cond_39
    :goto_39
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    .line 736
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_42

    .line 737
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->e(Z)V

    .line 740
    :cond_42
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->q:Z

    if-nez p1, :cond_76

    .line 741
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->g()V

    .line 742
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->f:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_7d

    .line 743
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 744
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 745
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_7d

    .line 747
    :cond_6e
    const-string p1, "NativeVideoAdView"

    const-string v0, "attachTask materialMeta.getVideo() is null !!"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 751
    :cond_76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->f:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;I)V

    .line 753
    :cond_7d
    :goto_7d
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->y:Z

    .line 754
    return-void

    .line 717
    :cond_81
    :goto_81
    return-void
.end method

.method public setIsQuiet(Z)V
    .registers 3

    .line 768
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->e:Z

    .line 769
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_9

    .line 770
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->c(Z)V

    .line 772
    :cond_9
    return-void
.end method

.method public setNativeVideoAdListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_7

    .line 352
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V

    .line 354
    :cond_7
    return-void
.end method

.method public setNativeVideoController(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V
    .registers 2

    .line 704
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 705
    return-void
.end method

.method public setNeedNativeVideoPlayBtnVisible(Z)V
    .registers 2

    .line 793
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->j:Z

    .line 794
    return-void
.end method

.method public setVideoAdClickListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_9

    .line 114
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V

    .line 116
    :cond_9
    return-void
.end method

.method public setVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;)V
    .registers 2

    .line 779
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->B:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;

    .line 780
    return-void
.end method

.method public setVideoAdLoadListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->c:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_7

    .line 346
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V

    .line 348
    :cond_7
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 495
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 496
    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    const/16 v0, 0x8

    if-ne p1, v0, :cond_d

    .line 497
    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->o()V

    .line 499
    :cond_d
    return-void
.end method
