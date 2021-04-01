.class public abstract Lcom/bytedance/sdk/openadsdk/core/video/b/a;
.super Ljava/lang/Object;
.source "BaseVideoController.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;",
            ">;"
        }
    .end annotation
.end field

.field private D:I

.field private E:Z

.field private F:Z

.field private final G:Ljava/lang/Runnable;

.field private final H:Ljava/lang/Runnable;

.field private final I:Ljava/lang/Runnable;

.field private J:Z

.field private K:J

.field private final L:Landroid/content/BroadcastReceiver;

.field private M:I

.field private N:Z

.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field public c:J

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected e:J

.field protected f:J

.field protected g:Z

.field public h:J

.field private i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

.field private final j:Landroid/view/ViewGroup;

.field private final k:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private l:J

.field private m:J

.field private n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

.field private o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

.field private p:J

.field private q:J

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private final t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:J

.field private z:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 10

    .prologue
    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    .line 80
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    .line 81
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    .line 84
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    .line 85
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    .line 89
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->u:Z

    .line 90
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->v:Z

    .line 91
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->w:Z

    .line 92
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->x:Z

    .line 94
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->y:J

    .line 96
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->z:Z

    .line 97
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->A:Z

    .line 98
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->B:Z

    .line 104
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Ljava/util/Map;

    .line 107
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e:J

    .line 108
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:J

    .line 110
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->g:Z

    .line 111
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->E:Z

    .line 113
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->F:Z

    .line 338
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->G:Ljava/lang/Runnable;

    .line 347
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/b/a$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->H:Ljava/lang/Runnable;

    .line 378
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/b/a$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->I:Ljava/lang/Runnable;

    .line 1148
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->J:Z

    .line 1215
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/b/a$5;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->L:Landroid/content/BroadcastReceiver;

    .line 1227
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->M:I

    .line 1246
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->N:Z

    .line 126
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->M:I

    .line 127
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Landroid/view/ViewGroup;

    .line 128
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    .line 129
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 130
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Landroid/content/Context;)V

    .line 131
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->D:I

    .line 132
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_7e

    :goto_7b
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t:Z

    .line 133
    return-void

    :cond_7e
    move v0, v1

    .line 132
    goto :goto_7b
.end method

.method private C()V
    .registers 7

    .prologue
    .line 357
    const/4 v0, 0x5

    .line 359
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a()I

    move-result v1

    .line 360
    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    .line 361
    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->S()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 365
    :cond_15
    :goto_15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->H:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 366
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->H:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    return-void

    .line 362
    :cond_25
    const/4 v2, 0x3

    if-ne v1, v2, :cond_15

    .line 363
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->D:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->f(Ljava/lang/String;)I

    move-result v0

    goto :goto_15
.end method

.method private D()V
    .registers 5

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->E()V

    .line 371
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->I:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    return-void
.end method

.method private E()V
    .registers 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method

.method private F()Z
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private G()V
    .registers 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 458
    :cond_c
    :goto_c
    return-void

    .line 453
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 454
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 455
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_18

    .line 457
    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_c
.end method

.method private H()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 676
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    .line 677
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 678
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->h()I

    move-result v1

    if-ne v1, v0, :cond_34

    .line 676
    :cond_33
    :goto_33
    return v0

    .line 678
    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private I()V
    .registers 13

    .prologue
    .line 686
    :try_start_0
    const-string v0, "changeVideoSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeVideoSize start.......mMaterialMeta.getAdSlot()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->j()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->H()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 776
    :goto_24
    return-void

    .line 690
    :cond_25
    const-string v0, "changeVideoSize"

    const-string v1, "changeVideoSize start check condition complete ... go .."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/content/Context;)[I

    move-result-object v2

    .line 693
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a()Landroid/media/MediaPlayer;

    move-result-object v4

    .line 695
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_75

    const/4 v0, 0x1

    move v5, v0

    .line 696
    :goto_46
    const/4 v0, 0x0

    .line 697
    const/4 v1, 0x0

    aget v1, v2, v1

    int-to-float v1, v1

    .line 698
    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    .line 699
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    int-to-float v3, v3

    .line 700
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    int-to-float v4, v4

    .line 702
    if-eqz v5, :cond_78

    .line 704
    cmpl-float v6, v3, v4

    if-lez v6, :cond_89

    .line 705
    const-string v0, "changeVideoSize"

    const-string v5, "\u6a2a\u8f6c\u7ad6\u5c4f\u5355\u72ec\u9002\u914d....."

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(FFFFZ)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_24

    .line 773
    :catch_6c
    move-exception v0

    .line 774
    const-string v1, "changeVideoSize"

    const-string v2, "changeSize error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24

    .line 695
    :cond_75
    const/4 v0, 0x0

    move v5, v0

    goto :goto_46

    .line 711
    :cond_78
    cmpg-float v6, v3, v4

    if-gez v6, :cond_89

    .line 712
    :try_start_7c
    const-string v0, "changeVideoSize"

    const-string v5, "\u7ad6\u5c4f\u8f6c\u6a2a\u5355\u72ec\u9002\u914d....."

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(FFFFZ)V

    goto :goto_24

    .line 718
    :cond_89
    div-float v6, v3, v4

    .line 719
    div-float v7, v1, v2

    .line 721
    const-string v8, "changeVideoSize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "screenHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",screenWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v8, "changeVideoSize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "videoHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",videoWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v8, "changeVideoSize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u89c6\u9891\u5bbd\u9ad8\u6bd4,videoScale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\u5c4f\u5e55\u5bbd\u9ad8\u6bd4.screenScale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",VERTICAL_SCALE(9:16)="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/high16 v10, 0x3f100000    # 0.5625f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",HORIZONTAL_SCALE(16:9) ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x3fe38e39

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    if-eqz v5, :cond_1a9

    .line 727
    const/high16 v5, 0x3f100000    # 0.5625f

    cmpg-float v5, v7, v5

    if-gez v5, :cond_1da

    const/high16 v5, 0x3f100000    # 0.5625f

    cmpl-float v5, v6, v5

    if-nez v5, :cond_1da

    .line 730
    const/high16 v0, 0x41100000    # 9.0f

    mul-float/2addr v0, v2

    const/high16 v3, 0x41800000    # 16.0f

    div-float v3, v0, v3

    .line 731
    const/4 v0, 0x1

    move v4, v0

    move v0, v2

    .line 743
    :goto_124
    const-string v5, "changeVideoSize"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u9002\u914d\u540e\u5bbd\u9ad8\uff1avideoHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",videoWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    if-nez v4, :cond_1d7

    .line 749
    const-string v0, "changeVideoSize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u5c4f\u5e55\u6bd4\u4f8b\u548c\u89c6\u9891\u6bd4\u4f8b\u76f8\u540c\uff0c\u4ee5\u53ca\u5176\u4ed6\u60c5\u51b5\u90fd\u6309\u7167\u5c4f\u5e55\u5bbd\u9ad8\u64ad\u653e\uff0cvideoHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0cvideoWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :goto_16a
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v0, v1

    float-to-int v4, v2

    invoke-direct {v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 754
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 756
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    if-eqz v0, :cond_1a0

    .line 757
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_1c5

    .line 758
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    :cond_18d
    :goto_18d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 766
    if-eqz v0, :cond_1a0

    .line 767
    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 768
    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 769
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    :cond_1a0
    const-string v0, "changeVideoSize"

    const-string v1, "changeVideoSize .... complete ... end !!!"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 735
    :cond_1a9
    const v5, 0x3fe38e39

    cmpl-float v5, v7, v5

    if-lez v5, :cond_1da

    const v5, 0x3fe38e39

    cmpl-float v5, v6, v5

    if-nez v5, :cond_1da

    .line 738
    const/high16 v0, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    const/high16 v3, 0x41800000    # 16.0f

    div-float v4, v0, v3

    .line 739
    const/4 v0, 0x1

    move v3, v1

    move v11, v4

    move v4, v0

    move v0, v11

    goto/16 :goto_124

    .line 759
    :cond_1c5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_18d

    .line 760
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1d6
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_1d6} :catch_6c

    goto :goto_18d

    :cond_1d7
    move v2, v0

    move v1, v3

    goto :goto_16a

    :cond_1da
    move v11, v4

    move v4, v0

    move v0, v11

    goto/16 :goto_124
.end method

.method private J()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 783
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    .line 784
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v1, :cond_25

    .line 800
    :cond_24
    :goto_24
    return-void

    .line 787
    :cond_25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_64

    .line 788
    :goto_2f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->b(Landroid/content/Context;)[I

    move-result-object v0

    .line 789
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    .line 790
    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v2, v0

    .line 792
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 793
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    int-to-float v3, v3

    .line 794
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    .line 795
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(FFFFZ)V

    .line 796
    const-string v0, "changeVideoSize"

    const-string v1, "changeSize=end"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5a} :catch_5b

    goto :goto_24

    .line 797
    :catch_5b
    move-exception v0

    .line 798
    const-string v1, "changeVideoSize"

    const-string v2, "changeSize error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24

    :cond_64
    move v5, v0

    .line 787
    goto :goto_2f
.end method

.method private K()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;
    .registers 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1079
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_17

    .line 1080
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    .line 1083
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private L()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_1e

    .line 1167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 1168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 1169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 1170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    .line 1171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d()V

    .line 1173
    :cond_1e
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;J)J
    .registers 4

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    return-object v0
.end method

.method private a(FFFFZ)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 813
    :try_start_1
    const-string v0, "changeVideoSize"

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

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v0, "changeVideoSize"

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

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    cmpg-float v0, p3, v3

    if-lez v0, :cond_4d

    cmpg-float v0, p4, v3

    if-gtz v0, :cond_63

    .line 818
    :cond_4d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->b()I

    move-result v0

    int-to-float p3, v0

    .line 819
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->a()I

    move-result v0

    int-to-float p4, v0

    .line 822
    :cond_63
    cmpg-float v0, p4, v3

    if-lez v0, :cond_6b

    cmpg-float v0, p3, v3

    if-gtz v0, :cond_6c

    .line 863
    :cond_6b
    :goto_6b
    return-void

    .line 828
    :cond_6c
    if-eqz p5, :cond_ab

    .line 829
    cmpg-float v0, p3, p4

    if-ltz v0, :cond_6b

    .line 832
    const-string v0, "changeVideoSize"

    const-string v1, "\u7ad6\u5c4f\u6a21\u5f0f\u4e0b\u6309\u89c6\u9891\u5bbd\u5ea6\u8ba1\u7b97\u653e\u5927\u500d\u6570\u503c"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    mul-float v0, p4, p1

    div-float v1, v0, p3

    .line 837
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v2, p1

    float-to-int v1, v1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 838
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v1, v0

    .line 853
    :goto_8a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 854
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_c8

    .line 855
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a1} :catch_a2

    goto :goto_6b

    .line 860
    :catch_a2
    move-exception v0

    .line 861
    const-string v1, "changeVideoSize"

    const-string v2, "changeSize error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6b

    .line 840
    :cond_ab
    cmpl-float v0, p3, p4

    if-gtz v0, :cond_6b

    .line 844
    :try_start_af
    const-string v0, "changeVideoSize"

    const-string v1, "\u6a2a\u5c4f\u6a21\u5f0f\u4e0b\u6309\u89c6\u9891\u9ad8\u5ea6\u8ba1\u7b97\u653e\u5927\u500d\u6570\u503c"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    mul-float v0, p3, p2

    div-float v1, v0, p4

    .line 849
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v1, v1

    float-to-int v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 850
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v1, v0

    goto :goto_8a

    .line 856
    :cond_c8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_6b

    .line 857
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_d9} :catch_a2

    goto :goto_6b
.end method

.method private a(JJ)V
    .registers 8

    .prologue
    .line 931
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    .line 932
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    .line 933
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(JJ)V

    .line 934
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v0

    .line 935
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(I)V

    .line 937
    :try_start_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz v0, :cond_1b

    .line 938
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->a(JJ)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1b} :catch_1c

    .line 943
    :cond_1b
    :goto_1b
    return-void

    .line 940
    :catch_1c
    move-exception v0

    .line 941
    const-string v1, "BaseVideoController"

    const-string v2, "onProgressUpdate error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method private a(JZ)V
    .registers 5

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_5

    .line 1159
    :goto_4
    return-void

    .line 1155
    :cond_5
    if-eqz p3, :cond_a

    .line 1156
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->L()V

    .line 1158
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(J)V

    goto :goto_4
.end method

.method private a(Landroid/content/Context;)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 117
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 118
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->e:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 120
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "tt_video_play_layout_for_live"

    .line 121
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;)V

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 432
    if-nez p1, :cond_3

    .line 440
    :goto_2
    return-void

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s:Z

    if-eqz v0, :cond_13

    .line 436
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 438
    :cond_13
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_3b

    .line 300
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;-><init>()V

    .line 301
    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a:Ljava/lang/String;

    .line 302
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_33

    .line 303
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 304
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->d:Ljava/lang/String;

    .line 306
    :cond_23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->b:Ljava/lang/String;

    .line 308
    :cond_33
    const/4 v1, 0x1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->c:I

    .line 309
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/a;)V

    .line 311
    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 313
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d(I)V

    .line 314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d(I)V

    .line 316
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Ljava/lang/Runnable;)V

    .line 336
    :cond_5c
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    return-object v0
.end method

.method private b(I)V
    .registers 11

    .prologue
    const/4 v8, 0x1

    .line 398
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->F()Z

    move-result v0

    if-nez v0, :cond_8

    .line 423
    :cond_7
    :goto_7
    return-void

    .line 401
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_7

    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->l:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    .line 407
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz v0, :cond_34

    .line 408
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    invoke-static {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->a(JI)V

    .line 412
    :cond_34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2, v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/ref/WeakReference;Z)V

    .line 416
    :cond_45
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->v:Z

    if-nez v0, :cond_5b

    .line 417
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b()V

    .line 418
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->v:Z

    .line 419
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(JJ)V

    .line 420
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    .line 422
    :cond_5b
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->B:Z

    goto :goto_7
.end method

.method private b(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1230
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->F()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1244
    :cond_6
    :goto_6
    return-void

    .line 1233
    :cond_7
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v0

    .line 1235
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->M:I

    if-eq v1, v0, :cond_6

    .line 1239
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->A:Z

    if-nez v1, :cond_17

    .line 1240
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d(I)Z

    .line 1243
    :cond_17
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->M:I

    goto :goto_6
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Ljava/util/ArrayList;

    .line 446
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)J
    .registers 3

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    return-wide v0
.end method

.method private c(I)Z
    .registers 3

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(I)Z

    move-result v0

    return v0
.end method

.method private d(I)Z
    .registers 6

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1195
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v1

    .line 1196
    if-eq v1, v3, :cond_2b

    if-eqz v1, :cond_2b

    .line 1197
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->h()V

    .line 1198
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->z:Z

    .line 1199
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->A:Z

    .line 1200
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_2a

    .line 1201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ILcom/bytedance/sdk/openadsdk/core/d/r;)Z

    move-result v0

    .line 1209
    :cond_2a
    :goto_2a
    return v0

    .line 1203
    :cond_2b
    if-ne v1, v3, :cond_2a

    .line 1204
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->z:Z

    .line 1205
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v1, :cond_2a

    .line 1206
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q()V

    goto :goto_2a
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->x:Z

    return v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/utils/ak;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->G:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->D()V

    return-void
.end method

.method private g(Z)V
    .registers 2

    .prologue
    .line 1057
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->J:Z

    .line 1058
    return-void
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    return-object v0
.end method


# virtual methods
.method protected A()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1285
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1286
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_2b

    .line 1287
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1292
    :cond_2b
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(JLcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Ljava/util/Map;

    move-result-object v0

    .line 1293
    if-eqz v0, :cond_59

    .line 1294
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1295
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 1298
    :cond_59
    return-object v1
.end method

.method protected B()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1302
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/openadsdk/core/video/c/d;)Ljava/util/Map;

    move-result-object v0

    .line 1304
    if-eqz v0, :cond_35

    .line 1305
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1306
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 1309
    :cond_35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_5b

    .line 1310
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1311
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 1314
    :cond_5b
    return-object v1
.end method

.method protected abstract a()I
.end method

.method public a(I)V
    .registers 6

    .prologue
    const/16 v3, 0x400

    .line 984
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->F()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1005
    :cond_8
    :goto_8
    return-void

    .line 988
    :cond_9
    if-eqz p1, :cond_f

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2c

    :cond_f
    const/4 v0, 0x1

    move v1, v0

    .line 989
    :goto_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 990
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_8

    .line 993
    check-cast v0, Landroid/app/Activity;

    .line 996
    :try_start_1f
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_37

    .line 999
    :goto_22
    if-nez v1, :cond_2f

    .line 1000
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    goto :goto_8

    .line 988
    :cond_2c
    const/4 v0, 0x0

    move v1, v0

    goto :goto_11

    .line 1002
    :cond_2f
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_8

    .line 997
    :catch_37
    move-exception v2

    goto :goto_22
.end method

.method protected abstract a(II)V
.end method

.method public a(J)V
    .registers 8

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    .line 195
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    :goto_c
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    .line 196
    return-void

    .line 195
    :cond_f
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    goto :goto_c
.end method

.method public a(Landroid/os/Message;)V
    .registers 10

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 576
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    .line 577
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 673
    :cond_15
    :goto_15
    return-void

    .line 580
    :cond_16
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_14a

    goto :goto_15

    .line 594
    :sswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_15

    .line 595
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    .line 596
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    goto :goto_15

    .line 584
    :sswitch_3f
    :try_start_3f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_46} :catch_146

    .line 587
    :goto_46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e:J

    goto :goto_15

    .line 591
    :sswitch_4d
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(I)V

    goto :goto_15

    .line 601
    :sswitch_53
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 602
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v1, :cond_6d

    .line 603
    if-eq v0, v5, :cond_5f

    const/16 v1, 0x2be

    if-ne v0, v1, :cond_86

    .line 604
    :cond_5f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 605
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->H:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 606
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->E:Z

    .line 613
    :cond_6d
    :goto_6d
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t:Z

    if-eqz v1, :cond_15

    if-ne v0, v5, :cond_15

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->u:Z

    if-nez v0, :cond_15

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:J

    .line 615
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e()V

    .line 616
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->u:Z

    goto :goto_15

    .line 607
    :cond_86
    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_6d

    .line 608
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t()V

    .line 609
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->C()V

    .line 610
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->E:Z

    goto :goto_6d

    .line 620
    :sswitch_95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    if-eqz v0, :cond_a0

    .line 621
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 623
    :cond_a0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t:Z

    if-nez v0, :cond_b6

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->u:Z

    if-nez v0, :cond_b6

    .line 624
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f:J

    .line 625
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->f()V

    .line 626
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->u:Z

    .line 628
    :cond_b6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_15

    .line 629
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    goto/16 :goto_15

    .line 633
    :sswitch_c1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_15

    .line 634
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    .line 635
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_e8

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    :goto_dd
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    .line 636
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(JJ)V

    goto/16 :goto_15

    .line 635
    :cond_e8
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    goto :goto_dd

    .line 640
    :sswitch_eb
    const/16 v0, 0x134

    invoke-virtual {p0, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(II)V

    goto/16 :goto_15

    .line 644
    :sswitch_f2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 645
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 646
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(II)V

    .line 648
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 649
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_109

    .line 650
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 652
    :cond_109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz v0, :cond_15

    .line 653
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    invoke-static {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->b(JI)V

    goto/16 :goto_15

    .line 657
    :sswitch_11e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 658
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_15

    .line 659
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    goto/16 :goto_15

    .line 666
    :sswitch_130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_141

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->f()I

    move-result v0

    if-nez v0, :cond_141

    .line 667
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->J()V

    goto/16 :goto_15

    .line 669
    :cond_141
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->I()V

    goto/16 :goto_15

    .line 585
    :catch_146
    move-exception v0

    goto/16 :goto_46

    .line 580
    nop

    :sswitch_data_14a
    .sparse-switch
        0x6c -> :sswitch_1c
        0x6d -> :sswitch_c1
        0x12e -> :sswitch_4d
        0x12f -> :sswitch_f2
        0x130 -> :sswitch_53
        0x131 -> :sswitch_95
        0x132 -> :sswitch_11e
        0x134 -> :sswitch_eb
        0x137 -> :sswitch_130
        0x13a -> :sswitch_3f
    .end sparse-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V
    .registers 6

    .prologue
    .line 896
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_5

    .line 901
    :goto_4
    return-void

    .line 899
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->D()V

    .line 900
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c(I)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(JZ)V

    goto :goto_4
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;IZ)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    .line 915
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->F()Z

    move-result v0

    if-nez v0, :cond_9

    .line 928
    :cond_8
    :goto_8
    return-void

    .line 918
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 919
    int-to-long v2, p2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    mul-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const-string v2, "tt_video_progress_max"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->l(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-long v0, v0

    .line 920
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_39

    .line 921
    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K:J

    .line 925
    :goto_2d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_8

    .line 926
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K:J

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(J)V

    goto :goto_8

    .line 923
    :cond_39
    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->K:J

    goto :goto_2d
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .prologue
    .line 1099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s:Z

    .line 1101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_8

    .line 1106
    :goto_7
    return-void

    .line 1104
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Landroid/graphics/SurfaceTexture;)V

    .line 1105
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->G()V

    goto :goto_7
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 1068
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s:Z

    .line 1069
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_8

    .line 1075
    :goto_7
    return-void

    .line 1073
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Landroid/view/SurfaceHolder;)V

    .line 1074
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->G()V

    goto :goto_7
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;III)V
    .registers 6

    .prologue
    .line 1089
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 869
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->F()Z

    move-result v0

    if-nez v0, :cond_c

    .line 892
    :cond_b
    :goto_b
    return-void

    .line 872
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 873
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->h()V

    .line 874
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 875
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    goto :goto_b

    .line 877
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i()Z

    move-result v0

    if-nez v0, :cond_45

    .line 878
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_36

    .line 879
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Landroid/view/ViewGroup;)V

    .line 881
    :cond_36
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d(J)V

    .line 882
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_b

    .line 883
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    goto :goto_b

    .line 886
    :cond_45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j()V

    .line 887
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_b

    .line 888
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    goto :goto_b
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 1053
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1018
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->w:Z

    if-eqz v0, :cond_9

    .line 1019
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->h()V

    .line 1021
    :cond_9
    if-eqz p3, :cond_26

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->w:Z

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->y()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1022
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->z()Z

    move-result v0

    if-nez v0, :cond_3d

    move v0, v1

    :goto_1e
    invoke-virtual {v3, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 1023
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p4, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZZ)V

    .line 1025
    :cond_26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1026
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    .line 1027
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    .line 1031
    :goto_3c
    return-void

    :cond_3d
    move v0, v2

    .line 1022
    goto :goto_1e

    .line 1029
    :cond_3f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    goto :goto_3c
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V
    .registers 2

    .prologue
    .line 462
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    .line 463
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V
    .registers 2

    .prologue
    .line 467
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;)V
    .registers 3

    .prologue
    .line 393
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->C:Ljava/lang/ref/WeakReference;

    .line 394
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/e$a;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 1178
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a$6;->a:[I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 1191
    :goto_c
    return-void

    .line 1180
    :pswitch_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->h()V

    goto :goto_c

    .line 1183
    :pswitch_11
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Z)V

    goto :goto_c

    .line 1186
    :pswitch_15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j()V

    .line 1187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->z:Z

    .line 1188
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->A:Z

    goto :goto_c

    .line 1178
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
        :pswitch_15
    .end packed-switch
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Ljava/util/Map;

    .line 295
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k()V

    .line 567
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JZ)Z"
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "BaseVideoController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video local url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 141
    const-string v0, "BaseVideoController"

    const-string v1, "No video info"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    .line 169
    :goto_26
    return v0

    .line 144
    :cond_27
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_78

    const/4 v0, 0x1

    :goto_30
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->g:Z

    .line 145
    iput-boolean p9, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->x:Z

    .line 146
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_48

    .line 147
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    .line 148
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7a

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    :goto_46
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    .line 150
    :cond_48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_62

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d()V

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(II)V

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Landroid/view/ViewGroup;)V

    .line 159
    :cond_62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_6f

    .line 160
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    .line 163
    :cond_6f
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->m:J

    .line 165
    :try_start_73
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_7d

    .line 169
    const/4 v0, 0x1

    goto :goto_26

    .line 144
    :cond_78
    const/4 v0, 0x0

    goto :goto_30

    .line 148
    :cond_7a
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    goto :goto_46

    .line 166
    :catch_7d
    move-exception v0

    .line 167
    const/4 v0, 0x0

    goto :goto_26
.end method

.method protected abstract b()V
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->y:J

    .line 220
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V
    .registers 4

    .prologue
    .line 905
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_7

    .line 906
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->E()V

    .line 908
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_10

    .line 909
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    .line 911
    :cond_10
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .prologue
    .line 1110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s:Z

    .line 1111
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 1093
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->s:Z

    .line 1094
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 947
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V

    .line 948
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 952
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->F()Z

    move-result v0

    if-nez v0, :cond_9

    .line 980
    :cond_8
    :goto_8
    return-void

    .line 955
    :cond_9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->J:Z

    if-nez v0, :cond_23

    move v0, v1

    :goto_e
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->g(Z)V

    .line 956
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_25

    .line 957
    const-string v0, "BaseVideoController"

    const-string v1, "context is not activity, not support this function."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_23
    move v0, v2

    .line 955
    goto :goto_e

    .line 960
    :cond_25
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->J:Z

    if-eqz v0, :cond_56

    .line 961
    if-eqz p3, :cond_54

    const/16 v0, 0x8

    :goto_2d
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(I)V

    .line 963
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_40

    .line 964
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/view/ViewGroup;)V

    .line 965
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 976
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->C:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->C:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;

    .line 977
    :goto_4c
    if-eqz v0, :cond_8

    .line 978
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->J:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;->a(Z)V

    goto :goto_8

    :cond_54
    move v0, v2

    .line 961
    goto :goto_2d

    .line 968
    :cond_56
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(I)V

    .line 970
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_40

    .line 971
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 972
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    goto :goto_40

    .line 976
    :cond_6a
    const/4 v0, 0x0

    goto :goto_4c
.end method

.method public b(Z)V
    .registers 3

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->w:Z

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Z)V

    .line 202
    return-void
.end method

.method protected abstract c()V
.end method

.method public c(J)V
    .registers 4

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    .line 228
    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_9

    .line 1010
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g()V

    .line 1012
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Z)V

    .line 1014
    return-void
.end method

.method public c(Z)V
    .registers 3

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->x:Z

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_b

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Z)V

    .line 249
    :cond_b
    return-void
.end method

.method protected abstract d()V
.end method

.method public d(J)V
    .registers 10

    .prologue
    const/4 v2, 0x1

    .line 522
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    .line 523
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2c

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    :goto_d
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    .line 524
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_18

    .line 525
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 527
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_2b

    .line 528
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->x:Z

    if-nez v0, :cond_2f

    move v0, v2

    :goto_25
    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ZJZ)V

    .line 529
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->D()V

    .line 533
    :cond_2b
    return-void

    .line 523
    :cond_2c
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    goto :goto_d

    .line 528
    :cond_2f
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 1035
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->J:Z

    if-eqz v0, :cond_18

    .line 1036
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->g(Z)V

    .line 1037
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_14

    .line 1038
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 1040
    :cond_14
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(I)V

    .line 1044
    :goto_17
    return-void

    .line 1042
    :cond_18
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Z)V

    goto :goto_17
.end method

.method public d(Z)V
    .registers 2

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->B:Z

    .line 264
    return-void
.end method

.method protected abstract e()V
.end method

.method public e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1048
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;Z)V

    .line 1049
    return-void
.end method

.method public e(Z)V
    .registers 2

    .prologue
    .line 274
    return-void
.end method

.method protected abstract f()V
.end method

.method public f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1064
    return-void
.end method

.method public f(Z)V
    .registers 2

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->F:Z

    .line 284
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_e

    .line 1130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    .line 1131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 1134
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_17

    .line 1135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u()V

    .line 1137
    :cond_17
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d(J)V

    .line 1138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_25

    .line 1139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->m()V

    .line 1141
    :cond_25
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->h:J

    .line 474
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_f

    .line 475
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b()V

    .line 477
    :cond_f
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->v:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->u:Z

    if-eqz v0, :cond_1a

    .line 478
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c()V

    .line 481
    :cond_1a
    return-void
.end method

.method public i()V
    .registers 2

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_9

    .line 1280
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->d()V

    .line 1282
    :cond_9
    return-void
.end method

.method public j()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_14

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 497
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q()V

    .line 498
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u()V

    .line 501
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_27

    .line 502
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->x:Z

    if-nez v0, :cond_33

    const/4 v0, 0x1

    :goto_21
    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ZJZ)V

    .line 503
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->D()V

    .line 506
    :cond_27
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->v:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->u:Z

    if-eqz v0, :cond_32

    .line 507
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d()V

    .line 509
    :cond_32
    return-void

    :cond_33
    move v0, v1

    .line 502
    goto :goto_21
.end method

.method public k()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 538
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_c

    .line 539
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c()V

    .line 540
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    .line 543
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_15

    .line 544
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g()V

    .line 546
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    if-eqz v0, :cond_2f

    .line 547
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 548
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 550
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->E()V

    .line 555
    :cond_2f
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    .line 562
    return-void
.end method

.method public l()V
    .registers 1

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->k()V

    .line 572
    return-void
.end method

.method public m()J
    .registers 3

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->p:J

    return-wide v0
.end method

.method public n()J
    .registers 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->n()J

    move-result-wide v0

    goto :goto_8
.end method

.method public o()J
    .registers 5

    .prologue
    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->y:J

    add-long/2addr v0, v2

    goto :goto_6
.end method

.method public p()J
    .registers 5

    .prologue
    .line 253
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->y:J

    add-long/2addr v0, v2

    goto :goto_6
.end method

.method public q()I
    .registers 5

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->q:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public r()J
    .registers 3

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:J

    return-wide v0
.end method

.method public s()Z
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->z:Z

    return v0
.end method

.method public t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    return-object v0
.end method

.method public u()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->i:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    return-object v0
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->B:Z

    return v0
.end method

.method public w()Z
    .registers 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->E:Z

    return v0
.end method

.method public x()V
    .registers 2

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->v:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->u:Z

    if-eqz v0, :cond_b

    .line 516
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d()V

    .line 518
    :cond_b
    return-void
.end method

.method public y()Z
    .registers 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->l()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .registers 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->n:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
