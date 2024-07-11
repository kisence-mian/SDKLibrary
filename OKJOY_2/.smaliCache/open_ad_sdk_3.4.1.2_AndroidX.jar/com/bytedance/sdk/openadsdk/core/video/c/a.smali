.class public abstract Lcom/bytedance/sdk/openadsdk/core/video/c/a;
.super Ljava/lang/Object;
.source "BaseVideoController.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private F:Z

.field private G:Z

.field private final H:Ljava/lang/Runnable;

.field private final I:Ljava/lang/Runnable;

.field private final J:Ljava/lang/Runnable;

.field private K:Z

.field private L:J

.field private final M:Landroid/content/BroadcastReceiver;

.field private N:I

.field private O:Z

.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field public c:J

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected e:J

.field protected f:J

.field protected g:Z

.field protected h:Z

.field public i:J

.field private j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

.field private final k:Landroid/view/ViewGroup;

.field private final l:Lcom/bytedance/sdk/openadsdk/utils/al;

.field private m:J

.field private n:J

.field private o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

.field private p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

.field private q:J

.field private r:J

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private final u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 9

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->m:J

    .line 81
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->n:J

    .line 84
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    .line 85
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    .line 90
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w:Z

    .line 91
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->x:Z

    .line 92
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Z

    .line 94
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:J

    .line 96
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:Z

    .line 97
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->B:Z

    .line 98
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C:Z

    .line 104
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Ljava/util/Map;

    .line 107
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:J

    .line 108
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    .line 110
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:Z

    .line 111
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Z

    .line 112
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F:Z

    .line 114
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G:Z

    .line 339
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->H:Ljava/lang/Runnable;

    .line 348
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    .line 379
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J:Ljava/lang/Runnable;

    .line 1161
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K:Z

    .line 1228
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M:Landroid/content/BroadcastReceiver;

    .line 1240
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:I

    .line 1259
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->O:Z

    .line 127
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:I

    .line 128
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    .line 129
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    .line 130
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 131
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E:I

    .line 133
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_7c

    move v2, v3

    :cond_7c
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u:Z

    .line 134
    return-void
.end method

.method private D()V
    .registers 6

    .line 358
    nop

    .line 360
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a()I

    move-result v0

    .line 361
    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_20

    .line 363
    :cond_c
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e

    .line 364
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->f(Ljava/lang/String;)I

    move-result v0

    goto :goto_2a

    .line 363
    :cond_1e
    const/4 v0, 0x5

    goto :goto_2a

    .line 362
    :cond_20
    :goto_20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->H()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 366
    :goto_2a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/al;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 368
    return-void
.end method

.method private E()V
    .registers 5

    .line 371
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F()V

    .line 372
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/al;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    return-void
.end method

.method private F()V
    .registers 3

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method private G()Z
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private H()V
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2c

    .line 454
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 455
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 456
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 457
    goto :goto_16

    .line 458
    :cond_26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 459
    return-void

    .line 452
    :cond_2c
    :goto_2c
    return-void
.end method

.method private I()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_30

    .line 679
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_30

    .line 680
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->M()Lcom/bytedance/sdk/openadsdk/core/d/l$a;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    move-result v0

    if-ne v0, v1, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v1, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    nop

    .line 678
    :goto_31
    return v1
.end method

.method private J()V
    .registers 16

    .line 688
    const-string v0, ",videoWidth="

    const-string v1, "changeVideoSize"

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeVideoSize start.......mMaterialMeta.getAdSlot()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->p()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 690
    return-void

    .line 692
    :cond_27
    const-string v2, "changeVideoSize start check condition complete ... go .."

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;)[I

    move-result-object v2

    .line 695
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v3

    .line 697
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v4

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_48

    move v4, v7

    goto :goto_49

    :cond_48
    move v4, v6

    .line 698
    :goto_49
    nop

    .line 699
    aget v5, v2, v6

    int-to-float v9, v5

    .line 700
    aget v2, v2, v7

    int-to-float v10, v2

    .line 701
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    int-to-float v11, v2

    .line 702
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    int-to-float v12, v2

    .line 704
    if-eqz v4, :cond_6b

    .line 706
    cmpl-float v2, v11, v12

    if-lez v2, :cond_7a

    .line 707
    const-string v0, "\u6a2a\u8f6c\u7ad6\u5c4f\u5355\u72ec\u9002\u914d....."

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/4 v13, 0x1

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(FFFFZ)V

    .line 709
    return-void

    .line 713
    :cond_6b
    cmpg-float v2, v11, v12

    if-gez v2, :cond_7a

    .line 714
    const-string v0, "\u7ad6\u5c4f\u8f6c\u6a2a\u5355\u72ec\u9002\u914d....."

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(FFFFZ)V

    .line 716
    return-void

    .line 720
    :cond_7a
    div-float v2, v11, v12

    .line 721
    div-float v3, v9, v10

    .line 723
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screenHeight="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ",screenWidth="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "videoHeight="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u89c6\u9891\u5bbd\u9ad8\u6bd4,videoScale="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ",\u5c4f\u5e55\u5bbd\u9ad8\u6bd4.screenScale="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ",VERTICAL_SCALE(9:16)="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/high16 v8, 0x3f100000    # 0.5625f

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ",HORIZONTAL_SCALE(16:9) ="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v13, 0x3fe38e39

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v14, 0x41100000    # 9.0f

    if-eqz v4, :cond_10a

    .line 729
    cmpg-float v3, v3, v8

    if-gez v3, :cond_118

    cmpl-float v2, v2, v8

    if-nez v2, :cond_118

    .line 731
    nop

    .line 732
    mul-float/2addr v14, v10

    div-float v11, v14, v5

    .line 733
    move v6, v7

    move v12, v10

    goto :goto_118

    .line 737
    :cond_10a
    cmpl-float v3, v3, v13

    if-lez v3, :cond_118

    cmpl-float v2, v2, v13

    if-nez v2, :cond_118

    .line 739
    nop

    .line 740
    mul-float/2addr v14, v9

    div-float v12, v14, v5

    .line 741
    move v6, v7

    move v11, v9

    .line 745
    :cond_118
    :goto_118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9002\u914d\u540e\u5bbd\u9ad8\uff1avideoHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    if-nez v6, :cond_15b

    .line 749
    nop

    .line 750
    nop

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u5c4f\u5e55\u6bd4\u4f8b\u548c\u89c6\u9891\u6bd4\u4f8b\u76f8\u540c\uff0c\u4ee5\u53ca\u5176\u4ed6\u60c5\u51b5\u90fd\u6309\u7167\u5c4f\u5e55\u5bbd\u9ad8\u64ad\u653e\uff0cvideoHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\uff0cvideoWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15d

    .line 748
    :cond_15b
    move v9, v11

    move v10, v12

    .line 755
    :goto_15d
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v2, v9

    float-to-int v3, v10

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 756
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 758
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v4

    if-eqz v4, :cond_1a3

    .line 759
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v4

    instance-of v4, v4, Landroid/view/TextureView;

    if-eqz v4, :cond_181

    .line 760
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v4

    check-cast v4, Landroid/view/TextureView;

    invoke-virtual {v4, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_192

    .line 761
    :cond_181
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v4

    instance-of v4, v4, Landroid/view/SurfaceView;

    if-eqz v4, :cond_192

    .line 762
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    invoke-virtual {v4, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    :cond_192
    :goto_192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 768
    if-eqz v0, :cond_1a3

    .line 769
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 770
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 771
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    :cond_1a3
    const-string v0, "changeVideoSize .... complete ... end !!!"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a8
    .catchall {:try_start_4 .. :try_end_1a8} :catchall_1a9

    .line 777
    goto :goto_1af

    .line 775
    :catchall_1a9
    move-exception v0

    .line 776
    const-string v2, "changeSize error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 778
    :goto_1af
    return-void
.end method

.method private K()V
    .registers 12

    .line 785
    const-string v0, "changeVideoSize"

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v1, :cond_56

    .line 786
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v1, :cond_21

    goto :goto_56

    .line 789
    :cond_21
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v1

    const/16 v2, 0xf

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2d

    move v10, v3

    goto :goto_2e

    :cond_2d
    move v10, v4

    .line 790
    :goto_2e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;)[I

    move-result-object v1

    .line 791
    aget v2, v1, v4

    int-to-float v6, v2

    .line 792
    aget v1, v1, v3

    int-to-float v7, v1

    .line 794
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    .line 795
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    int-to-float v8, v2

    .line 796
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v9, v1

    .line 797
    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(FFFFZ)V

    .line 798
    const-string v1, "changeSize=end"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_2 .. :try_end_55} :catchall_57

    .line 801
    goto :goto_5d

    .line 787
    :cond_56
    :goto_56
    return-void

    .line 799
    :catchall_57
    move-exception v1

    .line 800
    const-string v2, "changeSize error"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 802
    :goto_5d
    return-void
.end method

.method private L()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;
    .registers 2

    .line 1082
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1083
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_13

    .line 1084
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    return-object v0

    .line 1087
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method private M()V
    .registers 3

    .line 1179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_1c

    .line 1180
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 1181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 1182
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 1183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    .line 1184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d()V

    .line 1186
    :cond_1c
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/a;J)J
    .registers 3

    .line 59
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->m:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    return-object p0
.end method

.method private a(FFFFZ)V
    .registers 9

    .line 815
    const-string v0, "changeVideoSize"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",screenHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",videoWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-lez v2, :cond_4b

    cmpg-float v2, p4, v1

    if-gtz v2, :cond_61

    .line 820
    :cond_4b
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/t;->c()I

    move-result p3

    int-to-float p3, p3

    .line 821
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p4

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/d/t;->b()I

    move-result p4

    int-to-float p4, p4

    .line 824
    :cond_61
    cmpg-float v2, p4, v1

    if-lez v2, :cond_c7

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_6a

    goto :goto_c7

    .line 828
    :cond_6a
    nop

    .line 830
    const/16 v1, 0xd

    if-eqz p5, :cond_86

    .line 831
    cmpg-float p2, p3, p4

    if-gez p2, :cond_74

    .line 832
    return-void

    .line 834
    :cond_74
    const-string p2, "\u7ad6\u5c4f\u6a21\u5f0f\u4e0b\u6309\u89c6\u9891\u5bbd\u5ea6\u8ba1\u7b97\u653e\u5927\u500d\u6570\u503c"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    mul-float/2addr p4, p1

    div-float/2addr p4, p3

    .line 839
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p1, p1

    float-to-int p3, p4

    invoke-direct {p2, p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 840
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 841
    goto :goto_9d

    .line 842
    :cond_86
    cmpl-float p1, p3, p4

    if-lez p1, :cond_8b

    .line 843
    return-void

    .line 846
    :cond_8b
    const-string p1, "\u6a2a\u5c4f\u6a21\u5f0f\u4e0b\u6309\u89c6\u9891\u9ad8\u5ea6\u8ba1\u7b97\u653e\u5927\u500d\u6570\u503c"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    mul-float/2addr p3, p2

    div-float/2addr p3, p4

    .line 851
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p3, p3

    float-to-int p2, p2

    invoke-direct {p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 852
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object p2, p1

    .line 855
    :goto_9d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object p1

    if-eqz p1, :cond_c6

    .line 856
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object p1

    instance-of p1, p1, Landroid/view/TextureView;

    if-eqz p1, :cond_b5

    .line 857
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c6

    .line 858
    :cond_b5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object p1

    instance-of p1, p1, Landroid/view/SurfaceView;

    if-eqz p1, :cond_c6

    .line 859
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_c6
    .catchall {:try_start_2 .. :try_end_c6} :catchall_c8

    .line 864
    :cond_c6
    :goto_c6
    goto :goto_ce

    .line 825
    :cond_c7
    :goto_c7
    return-void

    .line 862
    :catchall_c8
    move-exception p1

    .line 863
    const-string p2, "changeSize error"

    invoke-static {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 865
    :goto_ce
    return-void
.end method

.method private a(JJ)V
    .registers 7

    .line 933
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    .line 934
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    .line 935
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(JJ)V

    .line 936
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v0

    .line 937
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(I)V

    .line 939
    :try_start_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz v0, :cond_19

    .line 940
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->a(JJ)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    .line 944
    :cond_19
    goto :goto_22

    .line 942
    :catchall_1a
    move-exception p1

    .line 943
    const-string p2, "BaseVideoController"

    const-string p3, "onProgressUpdate error: "

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 945
    :goto_22
    return-void
.end method

.method private a(JZ)V
    .registers 5

    .line 1165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_5

    .line 1166
    return-void

    .line 1168
    :cond_5
    if-eqz p3, :cond_a

    .line 1169
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M()V

    .line 1171
    :cond_a
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(J)V

    .line 1172
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 10

    .line 118
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 119
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->e:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 121
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 122
    const-string v3, "tt_video_play_layout_for_live"

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v4, 0x1

    move-object v1, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    .line 123
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;)V

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/a;Landroid/content/Context;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    .line 433
    if-nez p1, :cond_3

    .line 434
    return-void

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->t:Z

    if-eqz v0, :cond_13

    .line 437
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_16

    .line 439
    :cond_13
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(Ljava/lang/Runnable;)V

    .line 441
    :goto_16
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_39

    .line 301
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;-><init>()V

    .line 302
    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_31

    .line 304
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 305
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Ljava/lang/String;

    .line 307
    :cond_21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Ljava/lang/String;

    .line 309
    :cond_31
    const/4 v1, 0x1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:I

    .line 310
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V

    .line 312
    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->m:J

    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5a

    .line 314
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d(I)V

    .line 315
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d(I)V

    .line 317
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Ljava/lang/Runnable;)V

    .line 337
    :cond_5a
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-object p0
.end method

.method private b(I)V
    .registers 8

    .line 399
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G()Z

    move-result p1

    if-nez p1, :cond_7

    .line 400
    return-void

    .line 402
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-nez p1, :cond_c

    .line 403
    return-void

    .line 405
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->n:J

    .line 408
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz p1, :cond_30

    .line 409
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    invoke-static {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->a(JI)V

    .line 413
    :cond_30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_42

    .line 414
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/ref/WeakReference;Z)V

    .line 417
    :cond_42
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w:Z

    if-nez p1, :cond_56

    .line 418
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b()V

    .line 419
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w:Z

    .line 420
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    invoke-direct {p0, v1, v2, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(JJ)V

    .line 421
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    .line 423
    :cond_56
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C:Z

    .line 424
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    .line 1243
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1244
    return-void

    .line 1246
    :cond_7
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result p1

    .line 1248
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:I

    if-ne v0, p1, :cond_10

    .line 1249
    return-void

    .line 1252
    :cond_10
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->B:Z

    if-nez v0, :cond_18

    .line 1253
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d(I)Z

    .line 1256
    :cond_18
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:I

    .line 1257
    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 3

    .line 444
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/ArrayList;

    .line 447
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    return-wide v0
.end method

.method private c(I)Z
    .registers 3

    .line 1175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(I)Z

    move-result p1

    return p1
.end method

.method private d(I)Z
    .registers 6

    .line 1208
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v0

    .line 1209
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v2, :cond_27

    if-eqz v0, :cond_27

    .line 1210
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h()V

    .line 1211
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:Z

    .line 1212
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->B:Z

    .line 1213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_32

    .line 1214
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ILcom/bytedance/sdk/openadsdk/core/d/t;Z)Z

    move-result p1

    return p1

    .line 1216
    :cond_27
    if-ne v0, v2, :cond_32

    .line 1217
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:Z

    .line 1218
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_32

    .line 1219
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q()V

    .line 1222
    :cond_32
    return v3
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Z

    return p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/utils/al;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Ljava/lang/Runnable;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->H:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E()V

    return-void
.end method

.method private g(Z)V
    .registers 2

    .line 1059
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K:Z

    .line 1060
    return-void
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    return-object p0
.end method


# virtual methods
.method public A()Z
    .registers 2

    .line 1158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected B()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1299
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Ljava/util/Map;

    if-eqz v1, :cond_29

    .line 1300
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1301
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    goto :goto_11

    .line 1305
    :cond_29
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(JLcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object v1

    .line 1306
    if-eqz v1, :cond_57

    .line 1307
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1308
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    goto :goto_3f

    .line 1311
    :cond_57
    return-object v0
.end method

.method protected C()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1316
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object v1

    .line 1317
    if-eqz v1, :cond_35

    .line 1318
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1319
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    goto :goto_1d

    .line 1322
    :cond_35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Ljava/util/Map;

    if-eqz v1, :cond_59

    .line 1323
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1324
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    goto :goto_41

    .line 1327
    :cond_59
    return-object v0
.end method

.method protected abstract a()I
.end method

.method public a(I)V
    .registers 5

    .line 986
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G()Z

    move-result v0

    if-nez v0, :cond_7

    .line 987
    return-void

    .line 990
    :cond_7
    if-eqz p1, :cond_10

    const/16 v0, 0x8

    if-ne p1, v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 991
    :goto_11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 992
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_1e

    .line 993
    return-void

    .line 995
    :cond_1e
    check-cast v1, Landroid/app/Activity;

    .line 998
    :try_start_20
    invoke-virtual {v1, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    .line 1000
    goto :goto_25

    .line 999
    :catchall_24
    move-exception p1

    .line 1001
    :goto_25
    const/16 p1, 0x400

    if-nez v0, :cond_31

    .line 1002
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_38

    .line 1004
    :cond_31
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 1007
    :goto_38
    return-void
.end method

.method protected abstract a(II)V
.end method

.method public a(J)V
    .registers 6

    .line 195
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    .line 196
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_9

    move-wide p1, v0

    :cond_9
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    .line 197
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 8

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_12b

    if-eqz p1, :cond_12b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_12b

    .line 578
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    goto/16 :goto_12b

    .line 581
    :cond_12
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_12c

    goto/16 :goto_12a

    .line 588
    :sswitch_1b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:J

    .line 590
    goto/16 :goto_12a

    .line 668
    :sswitch_23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->l()I

    move-result p1

    if-nez p1, :cond_32

    .line 669
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K()V

    goto/16 :goto_12a

    .line 671
    :cond_32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()V

    goto/16 :goto_12a

    .line 642
    :sswitch_37
    const/16 p1, 0x134

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(II)V

    .line 643
    goto/16 :goto_12a

    .line 659
    :sswitch_3e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 660
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_12a

    .line 661
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    goto/16 :goto_12a

    .line 622
    :sswitch_4e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz p1, :cond_57

    .line 623
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 625
    :cond_57
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u:Z

    if-nez p1, :cond_6d

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    if-nez p1, :cond_6d

    .line 626
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    .line 627
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f()V

    .line 628
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    .line 630
    :cond_6d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_12a

    .line 631
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    goto/16 :goto_12a

    .line 602
    :sswitch_76
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 603
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v3, 0x3

    if-eqz v0, :cond_9d

    .line 604
    if-eq p1, v3, :cond_91

    const/16 v4, 0x2be

    if-ne p1, v4, :cond_84

    goto :goto_91

    .line 608
    :cond_84
    const/16 v1, 0x2bd

    if-ne p1, v1, :cond_9d

    .line 609
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t()V

    .line 610
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->D()V

    .line 611
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F:Z

    goto :goto_9d

    .line 605
    :cond_91
    :goto_91
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 606
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 607
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F:Z

    .line 614
    :cond_9d
    :goto_9d
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u:Z

    if-eqz v0, :cond_12a

    if-ne p1, v3, :cond_12a

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    if-nez p1, :cond_12a

    .line 615
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    .line 616
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e()V

    .line 617
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    .line 618
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Z

    goto/16 :goto_12a

    .line 646
    :sswitch_b9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 647
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 648
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(II)V

    .line 650
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 651
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_ce

    .line 652
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 654
    :cond_ce
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz p1, :cond_12a

    .line 655
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->n:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    invoke-static {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->b(JI)V

    goto :goto_12a

    .line 592
    :sswitch_e0
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(I)V

    .line 593
    goto :goto_12a

    .line 635
    :sswitch_e6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_12a

    .line 636
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    .line 637
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_ff

    goto :goto_100

    :cond_ff
    move-wide v2, v0

    :goto_100
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    .line 638
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(JJ)V

    goto :goto_12a

    .line 595
    :sswitch_108
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_12a

    .line 596
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12a

    .line 597
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    .line 675
    :cond_12a
    :goto_12a
    return-void

    .line 579
    :cond_12b
    :goto_12b
    return-void

    :sswitch_data_12c
    .sparse-switch
        0x6c -> :sswitch_108
        0x6d -> :sswitch_e6
        0x12e -> :sswitch_e0
        0x12f -> :sswitch_b9
        0x130 -> :sswitch_76
        0x131 -> :sswitch_4e
        0x132 -> :sswitch_3e
        0x134 -> :sswitch_37
        0x137 -> :sswitch_23
        0x13a -> :sswitch_1b
    .end sparse-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V
    .registers 5

    .line 898
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p1, :cond_5

    .line 899
    return-void

    .line 901
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E()V

    .line 902
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(JZ)V

    .line 903
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;IZ)V
    .registers 8

    .line 917
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G()Z

    move-result p1

    if-nez p1, :cond_7

    .line 918
    return-void

    .line 920
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 921
    int-to-long p2, p2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    mul-long/2addr p2, v0

    long-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    const-string p3, "tt_video_progress_max"

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->l(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-long p1, p2

    .line 922
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_2d

    .line 923
    long-to-int p1, p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L:J

    goto :goto_2f

    .line 925
    :cond_2d
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L:J

    .line 927
    :goto_2f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_38

    .line 928
    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L:J

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(J)V

    .line 930
    :cond_38
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 1106
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->t:Z

    .line 1108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_8

    .line 1109
    return-void

    .line 1111
    :cond_8
    if-eqz v0, :cond_d

    .line 1112
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Z)V

    .line 1114
    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Landroid/graphics/SurfaceTexture;)V

    .line 1115
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->H()V

    .line 1116
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 1070
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->t:Z

    .line 1071
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_8

    .line 1072
    return-void

    .line 1074
    :cond_8
    if-eqz v0, :cond_d

    .line 1075
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Z)V

    .line 1077
    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Landroid/view/SurfaceHolder;)V

    .line 1078
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->H()V

    .line 1079
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;III)V
    .registers 6

    .line 1093
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 5

    .line 871
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_4c

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_4c

    .line 874
    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_23

    .line 875
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h()V

    .line 876
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 877
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    goto :goto_4b

    .line 879
    :cond_23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result p1

    if-nez p1, :cond_41

    .line 880
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_34

    .line 881
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Landroid/view/ViewGroup;)V

    .line 883
    :cond_34
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d(J)V

    .line 884
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_4b

    .line 885
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    goto :goto_4b

    .line 888
    :cond_41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k()V

    .line 889
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_4b

    .line 890
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 894
    :cond_4b
    :goto_4b
    return-void

    .line 872
    :cond_4c
    :goto_4c
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;Z)V
    .registers 4

    .line 1055
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V
    .registers 6

    .line 1020
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->x:Z

    if-eqz p1, :cond_7

    .line 1021
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h()V

    .line 1023
    :cond_7
    if-eqz p3, :cond_24

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->x:Z

    if-nez p1, :cond_24

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z()Z

    move-result p1

    if-nez p1, :cond_24

    .line 1024
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 1025
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p4, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZZ)V

    .line 1027
    :cond_24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 1028
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    .line 1029
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    goto :goto_3e

    .line 1031
    :cond_39
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    .line 1033
    :goto_3e
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V
    .registers 2

    .line 463
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    .line 464
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V
    .registers 2

    .line 468
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;)V
    .registers 3

    .line 394
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->D:Ljava/lang/ref/WeakReference;

    .line 395
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/h$a;Ljava/lang/String;)V
    .registers 3

    .line 1191
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/video/c/a$6;->a:[I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/h$a;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_20

    goto :goto_1e

    .line 1199
    :pswitch_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k()V

    .line 1200
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:Z

    .line 1201
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->B:Z

    goto :goto_1e

    .line 1196
    :pswitch_16
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Z)V

    .line 1197
    goto :goto_1e

    .line 1193
    :pswitch_1a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h()V

    .line 1194
    nop

    .line 1204
    :goto_1e
    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_16
        :pswitch_d
    .end packed-switch
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Ljava/util/Map;

    .line 296
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 567
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l()V

    .line 568
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JZ)Z"
        }
    .end annotation

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "video local url "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "BaseVideoController"

    invoke-static {p5, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p6, 0x0

    if-eqz p2, :cond_25

    .line 142
    const-string p1, "No video info"

    invoke-static {p5, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return p6

    .line 145
    :cond_25
    const-string p2, "http"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 p5, 0x1

    xor-int/2addr p2, p5

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:Z

    .line 146
    iput-boolean p9, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Z

    .line 147
    const-wide/16 v0, 0x0

    cmp-long p2, p7, v0

    if-lez p2, :cond_42

    .line 148
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    .line 149
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    cmp-long p2, v2, p7

    if-lez p2, :cond_40

    move-wide p7, v2

    :cond_40
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    .line 151
    :cond_42
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p2, :cond_5a

    .line 152
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 154
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d()V

    .line 155
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(II)V

    .line 156
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Landroid/view/ViewGroup;)V

    .line 160
    :cond_5a
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p2, :cond_67

    .line 161
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-direct {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    .line 164
    :cond_67
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->n:J

    .line 166
    :try_start_69
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6e

    .line 169
    nop

    .line 170
    return p5

    .line 167
    :catch_6e
    move-exception p1

    .line 168
    return p6
.end method

.method protected abstract b()V
.end method

.method public b(J)V
    .registers 3

    .line 220
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:J

    .line 221
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V
    .registers 3

    .line 907
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_7

    .line 908
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F()V

    .line 910
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_e

    .line 911
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    .line 913
    :cond_e
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 1120
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->t:Z

    .line 1121
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p2, :cond_a

    .line 1122
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Z)V

    .line 1124
    :cond_a
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 1097
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->t:Z

    .line 1098
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p2, :cond_a

    .line 1099
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Z)V

    .line 1101
    :cond_a
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 4

    .line 949
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V

    .line 950
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V
    .registers 5

    .line 954
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G()Z

    move-result p1

    if-nez p1, :cond_7

    .line 955
    return-void

    .line 957
    :cond_7
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g(Z)V

    .line 958
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_20

    .line 959
    const-string p1, "BaseVideoController"

    const-string p2, "context is not activity, not support this function."

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    return-void

    .line 962
    :cond_20
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_3d

    .line 963
    if-eqz p3, :cond_2a

    const/16 p1, 0x8

    goto :goto_2b

    :cond_2a
    move p1, p4

    :goto_2b
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(I)V

    .line 965
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_4e

    .line 966
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/view/ViewGroup;)V

    .line 967
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    goto :goto_4e

    .line 970
    :cond_3d
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(I)V

    .line 972
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_4e

    .line 973
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 974
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 978
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->D:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_59

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;

    goto :goto_5a

    :cond_59
    const/4 p1, 0x0

    .line 979
    :goto_5a
    if-eqz p1, :cond_61

    .line 980
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K:Z

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;->a(Z)V

    .line 982
    :cond_61
    return-void
.end method

.method public b(Z)V
    .registers 3

    .line 201
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->x:Z

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Z)V

    .line 203
    return-void
.end method

.method protected abstract c()V
.end method

.method public c(J)V
    .registers 3

    .line 228
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    .line 229
    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 3

    .line 1011
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_7

    .line 1012
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g()V

    .line 1014
    :cond_7
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Z)V

    .line 1016
    return-void
.end method

.method public c(Z)V
    .registers 3

    .line 246
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Z

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_9

    .line 248
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Z)V

    .line 250
    :cond_9
    return-void
.end method

.method protected abstract d()V
.end method

.method public d(J)V
    .registers 6

    .line 523
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    .line 524
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_9

    move-wide p1, v0

    :cond_9
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    .line 525
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_12

    .line 526
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 528
    :cond_12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_22

    .line 529
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Z

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ZJZ)V

    .line 530
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E()V

    .line 534
    :cond_22
    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 4

    .line 1037
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_16

    .line 1038
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g(Z)V

    .line 1039
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_12

    .line 1040
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 1042
    :cond_12
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(I)V

    goto :goto_19

    .line 1044
    :cond_16
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Z)V

    .line 1046
    :goto_19
    return-void
.end method

.method public d(Z)V
    .registers 2

    .line 264
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C:Z

    .line 265
    return-void
.end method

.method protected abstract e()V
.end method

.method public e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 4

    .line 1050
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;Z)V

    .line 1051
    return-void
.end method

.method public e(Z)V
    .registers 2

    .line 275
    return-void
.end method

.method protected abstract f()V
.end method

.method public f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 3

    .line 1066
    return-void
.end method

.method public f(Z)V
    .registers 2

    .line 284
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G:Z

    .line 285
    return-void
.end method

.method public g()V
    .registers 3

    .line 1142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_c

    .line 1143
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    .line 1144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 1147
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_13

    .line 1148
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u()V

    .line 1150
    :cond_13
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d(J)V

    .line 1151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_1f

    .line 1152
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->m()V

    .line 1154
    :cond_1f
    return-void
.end method

.method public h()V
    .registers 3

    .line 474
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->i:J

    .line 475
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_d

    .line 476
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b()V

    .line 478
    :cond_d
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    if-eqz v0, :cond_18

    .line 479
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c()V

    .line 482
    :cond_18
    return-void
.end method

.method public i()V
    .registers 2

    .line 489
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_7

    .line 490
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b()V

    .line 492
    :cond_7
    return-void
.end method

.method public j()V
    .registers 2

    .line 1292
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_7

    .line 1293
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->d()V

    .line 1295
    :cond_7
    return-void
.end method

.method public k()V
    .registers 6

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_11

    .line 497
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 498
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q()V

    .line 499
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u()V

    .line 502
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_22

    .line 503
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ZJZ)V

    .line 504
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E()V

    .line 507
    :cond_22
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    if-eqz v0, :cond_2d

    .line 508
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d()V

    .line 510
    :cond_2d
    return-void
.end method

.method public l()V
    .registers 4

    .line 539
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 540
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c()V

    .line 541
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    .line 544
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_11

    .line 545
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g()V

    .line 547
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_29

    .line 548
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 550
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 551
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F()V

    .line 556
    :cond_29
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    .line 563
    return-void
.end method

.method public m()V
    .registers 1

    .line 572
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l()V

    .line 573
    return-void
.end method

.method public n()J
    .registers 3

    .line 190
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    return-wide v0
.end method

.method public o()J
    .registers 3

    .line 233
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->n()J

    move-result-wide v0

    :goto_11
    return-wide v0
.end method

.method public p()J
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_e

    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->o()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:J

    add-long/2addr v0, v2

    :goto_e
    return-wide v0
.end method

.method public q()J
    .registers 5

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_e

    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->p()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:J

    add-long/2addr v0, v2

    :goto_e
    return-wide v0
.end method

.method public r()I
    .registers 5

    .line 290
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public s()J
    .registers 3

    .line 224
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    return-wide v0
.end method

.method public t()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:Z

    return v0
.end method

.method public u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-object v0
.end method

.method public v()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    return-object v0
.end method

.method public w()Z
    .registers 2

    .line 259
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C:Z

    return v0
.end method

.method public x()Z
    .registers 2

    .line 279
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F:Z

    return v0
.end method

.method public y()V
    .registers 2

    .line 516
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    if-eqz v0, :cond_b

    .line 517
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d()V

    .line 519
    :cond_b
    return-void
.end method

.method public z()Z
    .registers 2

    .line 1136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->l()Z

    move-result v0

    return v0
.end method
