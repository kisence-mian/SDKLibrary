.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private F:I

.field private G:I

.field private H:Z

.field private I:Z

.field private final J:Ljava/lang/Runnable;

.field private final K:Ljava/lang/Runnable;

.field private final L:Ljava/lang/Runnable;

.field private M:I

.field private N:J

.field private O:J

.field private P:J

.field private Q:Z

.field private R:J

.field private final S:Landroid/content/BroadcastReceiver;

.field private T:I

.field private U:Z

.field a:Ljava/lang/Runnable;

.field private b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private e:J

.field private f:J

.field private g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

.field private h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

.field private i:J

.field private j:J

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private final n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Z

.field private p:Z

.field private q:Z

.field private final r:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;",
            ">;"
        }
    .end annotation
.end field

.field private w:J

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    .line 71
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    .line 72
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    .line 75
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 76
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 82
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    .line 83
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    .line 85
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    .line 86
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    .line 87
    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 92
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:J

    .line 94
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Z

    .line 95
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:Z

    .line 96
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 99
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    .line 101
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    .line 108
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:I

    .line 109
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:I

    .line 110
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    .line 111
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:Z

    .line 113
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:Z

    .line 466
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Ljava/lang/Runnable;

    .line 475
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Ljava/lang/Runnable;

    .line 493
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L:Ljava/lang/Runnable;

    .line 516
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:I

    .line 694
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:J

    .line 750
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    .line 763
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:J

    .line 764
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    .line 1394
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:Z

    .line 1470
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Landroid/content/BroadcastReceiver;

    .line 1482
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:I

    .line 1541
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Z

    .line 265
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:I

    .line 267
    :try_start_6f
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:I

    .line 268
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:I
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_7b} :catch_9b

    .line 271
    :goto_7b
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    .line 272
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 273
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    .line 274
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 275
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Landroid/content/Context;)V

    .line 277
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_99

    :goto_96
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    .line 278
    return-void

    :cond_99
    move v0, v1

    .line 277
    goto :goto_96

    .line 269
    :catch_9b
    move-exception v2

    goto :goto_7b
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Z)V
    .registers 12

    .prologue
    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    .line 71
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    .line 72
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    .line 75
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 76
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 82
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    .line 83
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    .line 85
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    .line 86
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    .line 87
    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 92
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:J

    .line 94
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Z

    .line 95
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:Z

    .line 96
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 99
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    .line 101
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    .line 108
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:I

    .line 109
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:I

    .line 110
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    .line 111
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:Z

    .line 113
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:Z

    .line 466
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Ljava/lang/Runnable;

    .line 475
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Ljava/lang/Runnable;

    .line 493
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L:Ljava/lang/Runnable;

    .line 516
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:I

    .line 694
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:J

    .line 750
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    .line 763
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:J

    .line 764
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    .line 1394
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:Z

    .line 1470
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Landroid/content/BroadcastReceiver;

    .line 1482
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:I

    .line 1541
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Z

    .line 248
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:I

    .line 249
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Z)V

    .line 250
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 252
    :try_start_74
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:I

    .line 253
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:I
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_80} :catch_9e

    .line 256
    :goto_80
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    .line 257
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    .line 258
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 259
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Landroid/content/Context;)V

    .line 261
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_9c

    :goto_99
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    .line 262
    return-void

    :cond_9c
    move v0, v1

    .line 261
    goto :goto_99

    .line 254
    :catch_9e
    move-exception v2

    goto :goto_80
.end method

.method private A()V
    .registers 5

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B()V

    .line 486
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 487
    return-void
.end method

.method private B()V
    .registers 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 491
    return-void
.end method

.method private C()Z
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

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

.method private D()V
    .registers 3

    .prologue
    .line 575
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 583
    :cond_c
    :goto_c
    return-void

    .line 578
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 579
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 580
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_18

    .line 582
    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_c
.end method

.method private E()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_14

    .line 665
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    if-nez v0, :cond_36

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ZJZ)V

    .line 666
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A()V

    .line 669
    :cond_14
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    if-eqz v0, :cond_35

    .line 670
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    const-string v3, "feed_continue"

    .line 671
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q()I

    move-result v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v7

    .line 670
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 673
    :cond_35
    return-void

    :cond_36
    move v0, v1

    .line 665
    goto :goto_e
.end method

.method private F()V
    .registers 7

    .prologue
    .line 768
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    .line 769
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    if-nez v0, :cond_31

    .line 770
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(JLcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Ljava/util/Map;

    move-result-object v1

    .line 771
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    if-eqz v0, :cond_32

    .line 772
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    const-string v4, "feed_auto_play"

    invoke-static {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->j(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 778
    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    .line 780
    :cond_31
    return-void

    .line 774
    :cond_32
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2e

    .line 775
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    const-string v4, "feed_play"

    invoke-static {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->j(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2e
.end method

.method private G()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 980
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x14

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_30

    .line 981
    const-string v0, "NativeVideoController"

    const-string v1, "onStateError \u51fa\u9519\u540e\u5c55\u793a\u7ed3\u679c\u9875\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/ref/WeakReference;Z)V

    .line 983
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Z)V

    .line 984
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l()V

    .line 986
    :cond_30
    return-void
.end method

.method private H()V
    .registers 4

    .prologue
    .line 989
    const-string v0, "NativeVideoController"

    const-string v1, "before auseWhenInvisible\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 991
    const-string v0, "NativeVideoController"

    const-string v1, "in pauseWhenInvisible\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d()V

    .line 994
    :cond_2a
    return-void
.end method

.method private I()V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1000
    const-string v0, "ChangeVideoSize"

    const-string v5, "[step-0]  TAG is \'ChangeVideoSize\' ....... start  changeVideoSize >>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :try_start_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    .line 1003
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_a1

    .line 1004
    :cond_29
    const-string v2, "ChangeVideoSize"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[step-1] >>>>> mContextRef="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",mContextRef.get()="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_4e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",getIRenderView() ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v1, "ChangeVideoSize"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[step-1] >>>>> mMediaPlayerProxy == null:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_9d

    move v0, v3

    :goto_79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",mMediaPlayerProxy.getMediaPlayer() == null:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v2, :cond_9f

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a()Landroid/media/MediaPlayer;

    move-result-object v2

    if-nez v2, :cond_9f

    :goto_8f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :cond_9a
    :goto_9a
    return-void

    :cond_9b
    move-object v0, v1

    .line 1004
    goto :goto_4e

    :cond_9d
    move v0, v4

    .line 1005
    goto :goto_79

    :cond_9f
    move v3, v4

    goto :goto_8f

    .line 1011
    :cond_a1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_18b

    move v5, v3

    .line 1012
    :goto_b6
    const-string v0, "ChangeVideoSize"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[step-2] >>>>> isVectical="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v6, v0

    .line 1015
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->d(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 1016
    const-string v7, "ChangeVideoSize"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[step-3] >>>>> screenWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",screenHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 1020
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v7

    int-to-float v7, v7

    .line 1021
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v8, v0

    .line 1023
    const-string v0, "ChangeVideoSize"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[step-4] Get the videoWidth and videoHeight from mediaPlayer , videoHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",videoWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    cmpg-float v0, v7, v8

    if-ltz v0, :cond_148

    cmpg-float v0, v8, v2

    if-lez v0, :cond_148

    cmpg-float v0, v7, v2

    if-gtz v0, :cond_190

    .line 1026
    :cond_148
    const-string v0, "ChangeVideoSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[step-5] >> (videoWidth < videoHeight || videoHeight <= 0 || videoWidth <= 0) ->value:>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    cmpg-float v2, v7, v8

    if-gez v2, :cond_18e

    :goto_159
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">>, if value is false: continue to perform ...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16a
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_16a} :catch_16c

    goto/16 :goto_9a

    .line 1067
    :catch_16c
    move-exception v0

    .line 1068
    const-string v1, "ChangeVideoSize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[step-11] >>>>> changeVideoSize error !!!!! \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9a

    :cond_18b
    move v5, v4

    .line 1011
    goto/16 :goto_b6

    :cond_18e
    move v3, v4

    .line 1026
    goto :goto_159

    .line 1030
    :cond_190
    :try_start_190
    const-string v9, "ChangeVideoSize"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[step-5] >>  videoWidth < videoHeight ->value:>>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    cmpg-float v0, v7, v8

    if-gez v0, :cond_236

    move v0, v3

    :goto_1a2
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ">>, if value is false: continue to perform ...."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    if-eqz v5, :cond_1b9

    .line 1038
    mul-float v0, v8, v6

    div-float/2addr v0, v7

    move v2, v0

    .line 1041
    :cond_1b9
    const-string v0, "ChangeVideoSize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[step-6] >>>>> vHeight = (videoHeight * screenWidth) / videoWidth --> calculate the adaptive height , vHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 1047
    const-string v0, "ChangeVideoSize"

    const-string v3, "[step-7]  >>>>> vHeight check pass !"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    if-eqz v5, :cond_1f1

    .line 1051
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v1, v6

    float-to-int v3, v2

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1052
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v1, v0

    .line 1055
    :cond_1f1
    if-eqz v1, :cond_9a

    .line 1057
    const-string v0, "ChangeVideoSize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[step-8] >>>>> create LayoutParams finish ! >> screenWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0cvHeight ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    instance-of v0, v0, Landroid/view/TextureView;

    if-eqz v0, :cond_239

    .line 1060
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1061
    const-string v0, "ChangeVideoSize"

    const-string v1, "[step-9] >>>>> setLayoutParams to TextureView complete ! >>>>>>>"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :cond_22d
    :goto_22d
    const-string v0, "ChangeVideoSize"

    const-string v1, "[step-10] end : changeVideoSize has complete ! >>>>>>>>>>>>>>>>>>>>>>>>>>>>> "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9a

    :cond_236
    move v0, v4

    .line 1030
    goto/16 :goto_1a2

    .line 1062
    :cond_239
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_22d

    .line 1063
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    const-string v0, "ChangeVideoSize"

    const-string v1, "[step-9] >>>>> setLayoutParams to SurfaceView complete !>>>>>>>"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_251
    .catch Ljava/lang/Throwable; {:try_start_190 .. :try_end_251} :catch_16c

    goto :goto_22d
.end method

.method private J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;
    .registers 3

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 1074
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 1075
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_2c

    .line 1076
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    .line 1080
    :goto_2b
    return-object v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private K()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1273
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1290
    :cond_8
    :goto_8
    return-void

    .line 1276
    :cond_9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:Z

    if-nez v0, :cond_23

    move v0, v1

    :goto_e
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h(Z)V

    .line 1277
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_25

    .line 1278
    const-string v0, "NativeVideoController"

    const-string v1, "context is not activity, not support this function."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_23
    move v0, v2

    .line 1276
    goto :goto_e

    .line 1281
    :cond_25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_3b

    .line 1282
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 1283
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 1285
    :cond_3b
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(I)V

    .line 1286
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;

    .line 1287
    :goto_4a
    if-eqz v0, :cond_8

    .line 1288
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;->a(Z)V

    goto :goto_8

    .line 1286
    :cond_52
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method private L()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1412
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_1e

    .line 1413
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 1414
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 1415
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 1416
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    .line 1417
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d()V

    .line 1419
    :cond_1e
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;J)J
    .registers 4

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    return-object v0
.end method

.method private a(JJ)V
    .registers 8

    .prologue
    .line 1147
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 1148
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    .line 1149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(JJ)V

    .line 1150
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v0

    .line 1151
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(I)V

    .line 1153
    :try_start_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz v0, :cond_1b

    .line 1154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->a(JJ)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1b} :catch_1c

    .line 1159
    :cond_1b
    :goto_1b
    return-void

    .line 1156
    :catch_1c
    move-exception v0

    .line 1157
    const-string v1, "NativeVideoController"

    const-string v2, "onProgressUpdate error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method private a(JZ)V
    .registers 5

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_5

    .line 1405
    :goto_4
    return-void

    .line 1401
    :cond_5
    if-eqz p3, :cond_a

    .line 1402
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L()V

    .line 1404
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(J)V

    goto :goto_4
.end method

.method private a(Landroid/content/Context;I)V
    .registers 5

    .prologue
    .line 1485
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1510
    :cond_6
    :goto_6
    return-void

    .line 1489
    :cond_7
    if-eqz p1, :cond_6

    .line 1492
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:I

    if-eq v0, p2, :cond_6

    .line 1496
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:I

    .line 1498
    const/4 v0, 0x4

    if-eq p2, v0, :cond_17

    if-eqz p2, :cond_17

    .line 1499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:Z

    .line 1502
    :cond_17
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:Z

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1503
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(I)Z

    .line 1506
    :cond_25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1507
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:I

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;->a(I)V

    goto :goto_6
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 557
    if-nez p1, :cond_3

    .line 565
    :goto_2
    return-void

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    if-eqz v0, :cond_13

    .line 561
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 563
    :cond_13
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 423
    const-string v0, "tag_video_play"

    const-string v1, "[video] NativeVideoController#playVideo has invoke !"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_49

    .line 425
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;-><init>()V

    .line 426
    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a:Ljava/lang/String;

    .line 427
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_3b

    .line 428
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 429
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->d:Ljava/lang/String;

    .line 431
    :cond_2b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->b:Ljava/lang/String;

    .line 433
    :cond_3b
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->c:I

    .line 434
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/a;)V

    .line 435
    const-string v0, "tag_video_play"

    const-string v1, "[video] MediaPlayerProxy has setDataSource !"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    .line 438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 439
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d(I)V

    .line 440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d(I)V

    .line 442
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Ljava/lang/Runnable;)V

    .line 459
    :cond_69
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_70

    .line 460
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x()V

    .line 464
    :cond_70
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    return-object v0
.end method

.method private b(I)V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 519
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:I

    .line 520
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result v0

    if-nez v0, :cond_f

    .line 548
    :cond_e
    :goto_e
    return-void

    .line 523
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_e

    .line 526
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 527
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz v0, :cond_2b

    .line 528
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-static {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->a(JI)V

    .line 530
    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    .line 531
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:I

    if-lt v0, v9, :cond_49

    .line 532
    :cond_40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2, v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/ref/WeakReference;Z)V

    .line 534
    :cond_49
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    if-nez v0, :cond_77

    .line 535
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    const-string v3, "feed_over"

    .line 536
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o()J

    move-result-wide v4

    const/16 v6, 0x64

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v7

    .line 535
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 537
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    .line 538
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(JJ)V

    .line 539
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 541
    :cond_77
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-nez v0, :cond_85

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:Z

    if-eqz v0, :cond_85

    .line 542
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V

    .line 544
    :cond_85
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 545
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:I

    if-ge v0, v9, :cond_e

    .line 546
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g()V

    goto/16 :goto_e
.end method

.method private b(II)V
    .registers 9

    .prologue
    .line 960
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_5

    .line 973
    :goto_4
    return-void

    .line 964
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f()Z

    move-result v2

    .line 965
    if-eqz v2, :cond_51

    const-string v0, "play_error"

    move-object v1, v0

    .line 966
    :goto_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v3

    invoke-static {v0, p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;IILcom/bytedance/sdk/openadsdk/core/video/c/d;)Ljava/util/Map;

    move-result-object v3

    .line 967
    if-eqz v2, :cond_41

    .line 968
    const-string v0, "duration"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string v0, "percent"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string v0, "buffers_time"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    :cond_41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    invoke-static {v0, v2, v4, v1, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->k(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 965
    :cond_51
    const-string v0, "play_start_error"

    move-object v1, v0

    goto :goto_e
.end method

.method private b(Landroid/content/Context;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 149
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 150
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->e:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 153
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_1d

    .line 154
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 159
    :goto_1a
    if-nez v2, :cond_31

    .line 167
    :goto_1c
    return-void

    .line 157
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "tt_video_detail_layout"

    .line 157
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_1a

    .line 160
    :cond_31
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_4a

    .line 161
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a()Z

    move-result v7

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    .line 165
    :goto_44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;)V

    goto :goto_1c

    .line 163
    :cond_4a
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    goto :goto_44
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    if-nez v0, :cond_f

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    .line 571
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)J
    .registers 3

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    return-wide v0
.end method

.method private c(Landroid/content/Context;)Landroid/view/View;
    .registers 14

    .prologue
    const/high16 v11, 0x42700000    # 60.0f

    const/16 v10, 0xd

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, -0x1

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 179
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 180
    const-string v2, "tt_root_view"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 181
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 183
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 184
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    const-string v4, "tt_video_loading_retry_layout"

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 186
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 187
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 188
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 191
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 192
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 193
    const-string v5, "tt_video_loading_cover_image"

    invoke-static {p1, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 194
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 195
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 198
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 199
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v9, v11, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v9, v11, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 200
    const-string v5, "tt_video_loading_progress"

    invoke-static {p1, v5}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setId(I)V

    .line 201
    invoke-virtual {v4, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 202
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    const-string v4, "tt_video_loading_progress_bar"

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 206
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 207
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    const-string v4, "tt_video_play"

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 209
    invoke-virtual {v3, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 210
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 211
    const-string v4, "tt_play_movebar_textpage"

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 216
    new-instance v2, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const-string v4, "tt_Widget_ProgressBar_Horizontal"

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 217
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v9, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v3, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 218
    const/16 v0, 0x64

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 219
    const-string v0, "tt_video_progress"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setId(I)V

    .line 220
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 221
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    const-string v0, "tt_video_progress_drawable"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 224
    const/16 v0, 0xc

    invoke-virtual {v3, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 225
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 228
    new-instance v0, Landroid/view/ViewStub;

    invoke-direct {v0, p1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 229
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    const-string v3, "tt_video_ad_cover"

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setId(I)V

    .line 231
    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    const-string v2, "tt_video_ad_cover_layout"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 233
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 236
    new-instance v0, Landroid/view/ViewStub;

    invoke-direct {v0, p1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 237
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 238
    invoke-virtual {v2, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 239
    const-string v3, "tt_video_draw_layout_viewStub"

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setId(I)V

    .line 240
    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    const-string v2, "tt_video_draw_btn_layout"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 242
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 244
    return-object v1
.end method

.method private c(I)Z
    .registers 3

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(I)Z

    move-result v0

    return v0
.end method

.method private c(II)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 1607
    const-string v1, "TTVideoLandingPageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnError - Error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Extra code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const/4 v1, 0x0

    .line 1609
    sparse-switch p1, :sswitch_data_2e

    .line 1620
    :goto_27
    sparse-switch p2, :sswitch_data_48

    move v0, v1

    .line 1635
    :sswitch_2b
    return v0

    :sswitch_2c
    move v1, v0

    .line 1617
    goto :goto_27

    .line 1609
    :sswitch_data_2e
    .sparse-switch
        -0x3f2 -> :sswitch_2c
        -0x3ef -> :sswitch_2c
        -0x3ec -> :sswitch_2c
        -0x6e -> :sswitch_2c
        0x64 -> :sswitch_2c
        0xc8 -> :sswitch_2c
    .end sparse-switch

    .line 1620
    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_2b
        0x2bc -> :sswitch_2b
        0x320 -> :sswitch_2b
    .end sparse-switch
.end method

.method private d(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1513
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v0

    .line 1515
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Landroid/content/Context;I)V

    .line 1517
    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 1518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Z

    .line 1520
    :cond_d
    return-void
.end method

.method private d(I)Z
    .registers 9

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1441
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v1

    .line 1442
    if-nez v1, :cond_1f

    .line 1444
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h()V

    .line 1445
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Z

    .line 1446
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v2, :cond_1f

    .line 1447
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/ref/WeakReference;Z)V

    .line 1449
    :cond_1f
    if-eq v1, v6, :cond_48

    if-eqz v1, :cond_48

    .line 1450
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v1, :cond_2c

    .line 1451
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 1452
    :cond_2c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h()V

    .line 1453
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Z

    .line 1454
    iput-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:Z

    .line 1455
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_47

    .line 1456
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ILcom/bytedance/sdk/openadsdk/core/d/r;)Z

    move-result v0

    .line 1464
    :cond_47
    :goto_47
    return v0

    .line 1458
    :cond_48
    if-ne v1, v6, :cond_47

    .line 1459
    iput-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Z

    .line 1460
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v1, :cond_47

    .line 1461
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q()V

    goto :goto_47
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    return v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/utils/ak;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A()V

    return-void
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    return-object v0
.end method

.method private h(Z)V
    .registers 2

    .prologue
    .line 1293
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:Z

    .line 1294
    return-void
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)J
    .registers 3

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    return-wide v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Ljava/lang/ref/WeakReference;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private z()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 133
    const-string v2, "NativeVideoController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retryCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    if-gt v1, v2, :cond_33

    .line 135
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v1, :cond_32

    .line 136
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 137
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/ref/WeakReference;Z)V

    .line 144
    :cond_32
    :goto_32
    return v0

    .line 141
    :cond_33
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v2, :cond_32

    .line 142
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    .line 143
    const-string v2, "NativeVideoController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPlaying="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isPaused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isPrepared="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isStarted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g()Z

    move-result v2

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i()Z

    move-result v2

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k()Z

    move-result v2

    if-eqz v2, :cond_ab

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h()Z

    move-result v2

    if-nez v2, :cond_32

    :cond_ab
    move v0, v1

    goto :goto_32
.end method


# virtual methods
.method public a(I)V
    .registers 6

    .prologue
    const/16 v3, 0x400

    .line 1200
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1221
    :cond_8
    :goto_8
    return-void

    .line 1204
    :cond_9
    if-eqz p1, :cond_f

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2c

    :cond_f
    const/4 v0, 0x1

    move v1, v0

    .line 1205
    :goto_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1206
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_8

    .line 1209
    check-cast v0, Landroid/app/Activity;

    .line 1212
    :try_start_1f
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_22} :catch_37

    .line 1215
    :goto_22
    if-nez v1, :cond_2f

    .line 1216
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    goto :goto_8

    .line 1204
    :cond_2c
    const/4 v0, 0x0

    move v1, v0

    goto :goto_11

    .line 1218
    :cond_2f
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_8

    .line 1213
    :catch_37
    move-exception v2

    goto :goto_22
.end method

.method public a(II)V
    .registers 6

    .prologue
    .line 124
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 130
    :cond_4
    :goto_4
    return-void

    .line 127
    :cond_5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:I

    .line 128
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:I

    .line 129
    const-string v0, "NativeVideoController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public a(J)V
    .registers 8

    .prologue
    .line 348
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 349
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    :goto_c
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 350
    return-void

    .line 349
    :cond_f
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    goto :goto_c
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1531
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v0

    .line 1533
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Landroid/content/Context;I)V

    .line 1535
    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 1536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Z

    .line 1537
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j()V

    .line 1539
    :cond_10
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 13

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 784
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    .line 785
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    .line 957
    :cond_18
    :goto_18
    return-void

    .line 788
    :cond_19
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_21e

    goto :goto_18

    .line 802
    :sswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_18

    .line 803
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_18

    .line 804
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    goto :goto_18

    .line 792
    :sswitch_40
    :try_start_40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_47} :catch_21a

    .line 795
    :goto_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:J

    goto :goto_18

    .line 799
    :sswitch_4e
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(I)V

    goto :goto_18

    .line 809
    :sswitch_54
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 810
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_6e

    .line 811
    if-eq v1, v3, :cond_60

    const/16 v0, 0x2be

    if-ne v1, v0, :cond_a1

    .line 812
    :cond_60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 813
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 814
    iput-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:Z

    .line 824
    :cond_6e
    :goto_6e
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    if-eqz v0, :cond_96

    if-ne v1, v3, :cond_96

    .line 825
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_8f

    .line 826
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 827
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;->e()V

    .line 830
    :cond_8f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 833
    :cond_96
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    if-eqz v0, :cond_18

    if-ne v1, v3, :cond_18

    .line 834
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F()V

    goto/16 :goto_18

    .line 815
    :cond_a1
    const/16 v0, 0x2bd

    if-ne v1, v0, :cond_6e

    .line 816
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t()V

    .line 818
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f40

    invoke-virtual {v0, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 819
    iput-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:Z

    goto :goto_6e

    .line 839
    :sswitch_b6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_cd

    .line 840
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;->f()V

    .line 843
    :cond_cd
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    if-eqz v0, :cond_d8

    .line 844
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 846
    :cond_d8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    if-nez v0, :cond_df

    .line 847
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F()V

    .line 849
    :cond_df
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_e8

    .line 850
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 852
    :cond_e8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_18

    .line 855
    :sswitch_f1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H()V

    goto/16 :goto_18

    .line 858
    :sswitch_f6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_18

    .line 859
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 860
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_11d

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    :goto_112
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 861
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(JJ)V

    goto/16 :goto_18

    .line 860
    :cond_11d
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    goto :goto_112

    .line 866
    :sswitch_120
    const-string v0, "NativeVideoController"

    const-string v1, "\u64ad\u653e\u5668\u72b6\u6001\u51fa\u9519 STAT_ERROR 200 \u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G()V

    .line 869
    const/16 v0, 0x134

    invoke-direct {p0, v0, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(II)V

    goto/16 :goto_18

    .line 872
    :sswitch_131
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 873
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 874
    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(II)V

    .line 875
    const-string v0, "NativeVideoController"

    const-string v3, "CALLBACK_ON_ERROR\u3001\u3001before isVideoPlaying\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f()Z

    move-result v0

    if-eqz v0, :cond_149

    const/16 v0, -0x3ec

    if-ne v2, v0, :cond_18

    .line 880
    :cond_149
    const-string v0, "NativeVideoController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u51fa\u9519\u540e errorcode,extra\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c(II)Z

    move-result v0

    if-eqz v0, :cond_187

    .line 883
    const-string v0, "NativeVideoController"

    const-string v3, "\u51fa\u9519\u540e\u5c55\u793a\u7ed3\u679c\u9875\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/ref/WeakReference;Z)V

    .line 885
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Z)V

    .line 886
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l()V

    .line 889
    :cond_187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_190

    .line 890
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 892
    :cond_190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz v0, :cond_1a3

    .line 893
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-static {v6, v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v3

    invoke-interface {v0, v4, v5, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->b(JI)V

    .line 920
    :cond_1a3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 921
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f()Z

    move-result v0

    if-nez v0, :cond_18

    .line 922
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;->a(II)V

    goto/16 :goto_18

    .line 927
    :sswitch_1c2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_18

    .line 928
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    goto/16 :goto_18

    .line 934
    :sswitch_1cd
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z()Z

    move-result v0

    if-eqz v0, :cond_203

    .line 935
    const-string v0, "NativeVideoController"

    const-string v1, "CALLBACK_ON_RETRY_VIDEO_TIME-....\u91cd\u8bd5...."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l()V

    .line 937
    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    .line 939
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 940
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b()Z

    move-result v10

    move-object v1, p0

    .line 939
    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    goto/16 :goto_18

    .line 942
    :cond_203
    const-string v0, "NativeVideoController"

    const-string v1, "\u4e0d\u6ee1\u8db3\u6761\u4ef6\uff0c\u65e0\u6cd5\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 946
    :sswitch_20c
    const-string v0, "NativeVideoController"

    const-string v1, "SSMediaPlayerWrapper \u91ca\u653e\u4e86\u3002\u3002\u3002\u3002\u3002"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 953
    :sswitch_215
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I()V

    goto/16 :goto_18

    .line 793
    :catch_21a
    move-exception v0

    goto/16 :goto_47

    .line 788
    nop

    :sswitch_data_21e
    .sparse-switch
        0x6c -> :sswitch_1f
        0x6d -> :sswitch_f6
        0x12e -> :sswitch_4e
        0x12f -> :sswitch_131
        0x130 -> :sswitch_54
        0x131 -> :sswitch_b6
        0x132 -> :sswitch_1c2
        0x134 -> :sswitch_120
        0x135 -> :sswitch_20c
        0x137 -> :sswitch_215
        0x138 -> :sswitch_1cd
        0x139 -> :sswitch_f1
        0x13a -> :sswitch_40
    .end sparse-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_9

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V

    .line 120
    :cond_9
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V
    .registers 6

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_5

    .line 1117
    :goto_4
    return-void

    .line 1115
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A()V

    .line 1116
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->R:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c(I)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(JZ)V

    goto :goto_4
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;IZ)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x0

    .line 1131
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1144
    :cond_8
    :goto_8
    return-void

    .line 1134
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1135
    int-to-long v2, p2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

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

    .line 1136
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_39

    .line 1137
    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->R:J

    .line 1141
    :goto_2d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_8

    .line 1142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->R:J

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(J)V

    goto :goto_8

    .line 1139
    :cond_39
    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->R:J

    goto :goto_2d
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .prologue
    .line 1330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    .line 1331
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_8

    .line 1336
    :goto_7
    return-void

    .line 1334
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Landroid/graphics/SurfaceTexture;)V

    .line 1335
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D()V

    goto :goto_7
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 1304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    .line 1305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_8

    .line 1310
    :goto_7
    return-void

    .line 1308
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Landroid/view/SurfaceHolder;)V

    .line 1309
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D()V

    goto :goto_7
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;III)V
    .registers 6

    .prologue
    .line 1315
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1085
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1108
    :cond_b
    :goto_b
    return-void

    .line 1088
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1089
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h()V

    .line 1090
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 1091
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    goto :goto_b

    .line 1093
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1094
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_3c

    .line 1095
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Landroid/view/ViewGroup;)V

    .line 1097
    :cond_3c
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(J)V

    .line 1098
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_b

    .line 1099
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    goto :goto_b

    .line 1102
    :cond_4b
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g(Z)V

    .line 1103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_b

    .line 1104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v2, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    goto :goto_b
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;Z)V
    .registers 4

    .prologue
    .line 1269
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K()V

    .line 1270
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1234
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_9

    .line 1235
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h()V

    .line 1237
    :cond_9
    if-eqz p3, :cond_26

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1238
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f()Z

    move-result v0

    if-nez v0, :cond_3d

    move v0, v1

    :goto_1e
    invoke-virtual {v3, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 1239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p4, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZZ)V

    .line 1241
    :cond_26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    .line 1243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    .line 1247
    :goto_3c
    return-void

    :cond_3d
    move v0, v2

    .line 1238
    goto :goto_1e

    .line 1245
    :cond_3f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    goto :goto_3c
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V
    .registers 2

    .prologue
    .line 587
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    .line 588
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V
    .registers 3

    .prologue
    .line 286
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C:Ljava/lang/ref/WeakReference;

    .line 287
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;)V
    .registers 3

    .prologue
    .line 508
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Ljava/lang/ref/WeakReference;

    .line 509
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;)V
    .registers 3

    .prologue
    .line 1570
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Ljava/lang/ref/WeakReference;

    .line 1571
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/e$a;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 1424
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$7;->a:[I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 1437
    :goto_c
    return-void

    .line 1426
    :pswitch_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h()V

    goto :goto_c

    .line 1429
    :pswitch_11
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Z)V

    goto :goto_c

    .line 1432
    :pswitch_15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j()V

    .line 1433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Z

    .line 1434
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:Z

    goto :goto_c

    .line 1424
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
    .line 420
    return-void
.end method

.method public a(Z)V
    .registers 10

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_a

    .line 703
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:J

    .line 705
    :cond_a
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    if-eqz v0, :cond_32

    .line 706
    if-eqz p1, :cond_36

    .line 707
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    const-string v3, "feed_break"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:J

    .line 708
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q()I

    move-result v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v7

    .line 707
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    .line 716
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l()V

    .line 717
    return-void

    .line 711
    :cond_36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    const-string v3, "feed_pause"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:J

    .line 712
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q()I

    move-result v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v7

    .line 711
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    goto :goto_32
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    return v0
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
    .line 293
    const-string v0, "tag_video_play"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[video] start NativeVideoController#playVideoUrl and video url is :\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 295
    const-string v0, "tag_video_play"

    const-string v1, "[video] play video stop , because no video info"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x0

    .line 328
    :goto_26
    return v0

    .line 298
    :cond_27
    iput-boolean p9, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    .line 299
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 300
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-gtz v0, :cond_36

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    .line 303
    :cond_36
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-lez v0, :cond_4a

    .line 304
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 305
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_90

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    :goto_48
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 307
    :cond_4a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_73

    .line 308
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 310
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:I

    if-nez v0, :cond_5c

    .line 311
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d()V

    .line 313
    :cond_5c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(II)V

    .line 314
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Landroid/view/ViewGroup;)V

    .line 315
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(II)V

    .line 317
    :cond_73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_80

    .line 318
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    .line 320
    :cond_80
    const-string v0, "tag_video_play"

    const-string v1, "[video] new MediaPlayer"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    .line 323
    :try_start_8b
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_93

    .line 328
    const/4 v0, 0x1

    goto :goto_26

    .line 305
    :cond_90
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    goto :goto_48

    .line 324
    :catch_93
    move-exception v0

    .line 325
    const-string v1, "tag_video_play"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[video] invoke NativeVideoController#playVideo cause exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x0

    goto/16 :goto_26
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 375
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:J

    .line 376
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V
    .registers 4

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_7

    .line 1122
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B()V

    .line 1124
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_10

    .line 1125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    .line 1127
    :cond_10
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .prologue
    .line 1346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    .line 1347
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 1319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    .line 1320
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1163
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V

    .line 1164
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1168
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1196
    :cond_8
    :goto_8
    return-void

    .line 1171
    :cond_9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:Z

    if-nez v0, :cond_23

    move v0, v1

    :goto_e
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h(Z)V

    .line 1172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_25

    .line 1173
    const-string v0, "NativeVideoController"

    const-string v1, "context is not activity, not support this function."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_23
    move v0, v2

    .line 1171
    goto :goto_e

    .line 1176
    :cond_25
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:Z

    if-eqz v0, :cond_5c

    .line 1177
    if-eqz p3, :cond_5a

    const/16 v0, 0x8

    :goto_2d
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(I)V

    .line 1179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_46

    .line 1180
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/view/ViewGroup;)V

    .line 1181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 1192
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;

    .line 1193
    :goto_52
    if-eqz v0, :cond_8

    .line 1194
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;->a(Z)V

    goto :goto_8

    :cond_5a
    move v0, v2

    .line 1177
    goto :goto_2d

    .line 1184
    :cond_5c
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(I)V

    .line 1186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_46

    .line 1187
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 1188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    goto :goto_46

    .line 1192
    :cond_76
    const/4 v0, 0x0

    goto :goto_52
.end method

.method public b(Z)V
    .registers 3

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    .line 355
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_b

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Z)V

    .line 358
    :cond_b
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    return v0
.end method

.method protected c()Ljava/util/Map;
    .registers 5
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
    .line 591
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/openadsdk/core/video/c/d;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c(J)V
    .registers 4

    .prologue
    .line 383
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    .line 384
    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_9

    .line 1226
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g()V

    .line 1228
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Z)V

    .line 1230
    return-void
.end method

.method public c(Z)V
    .registers 3

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    .line 403
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_b

    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Z)V

    .line 406
    :cond_b
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_9

    .line 628
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b()V

    .line 630
    :cond_9
    return-void
.end method

.method public d(J)V
    .registers 10

    .prologue
    const/4 v2, 0x1

    .line 677
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 678
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2c

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    :goto_d
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 679
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_18

    .line 680
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 682
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_2b

    .line 683
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    if-nez v0, :cond_2f

    move v0, v2

    :goto_25
    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ZJZ)V

    .line 684
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A()V

    .line 687
    :cond_2b
    return-void

    .line 678
    :cond_2c
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    goto :goto_d

    .line 683
    :cond_2f
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 1251
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:Z

    if-eqz v0, :cond_1e

    .line 1252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h(Z)V

    .line 1253
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_1a

    .line 1254
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 1256
    :cond_1a
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(I)V

    .line 1260
    :goto_1d
    return-void

    .line 1258
    :cond_1e
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Z)V

    goto :goto_1d
.end method

.method public d(Z)V
    .registers 2

    .prologue
    .line 1583
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 1584
    return-void
.end method

.method public e(J)V
    .registers 4

    .prologue
    .line 697
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:J

    .line 698
    return-void
.end method

.method public e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;Z)V

    .line 1265
    return-void
.end method

.method public e(Z)V
    .registers 2

    .prologue
    .line 1593
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    .line 1594
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1300
    return-void
.end method

.method public f(Z)V
    .registers 2

    .prologue
    .line 1603
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:Z

    .line 1604
    return-void
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

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

.method public g()V
    .registers 12

    .prologue
    .line 1377
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_b

    .line 1387
    :goto_a
    return-void

    .line 1382
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l()V

    .line 1383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:I

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 1385
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b()Z

    move-result v10

    move-object v1, p0

    .line 1383
    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    .line 1386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Z)V

    goto :goto_a
.end method

.method public g(Z)V
    .registers 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_9

    .line 652
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 654
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    .line 655
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u()V

    .line 657
    :cond_14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E()V

    .line 658
    return-void
.end method

.method public h()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 596
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_a

    .line 597
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b()V

    .line 600
    :cond_a
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    if-eqz v0, :cond_4a

    .line 602
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 603
    const-string v0, "sp_multi_single_app_data_class"

    const-string v1, "IsCanLoadPauseLog"

    invoke-static {v0, v1, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 605
    if-eqz v0, :cond_3f

    .line 606
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    const-string v3, "feed_pause"

    .line 607
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q()I

    move-result v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v7

    .line 606
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 610
    :cond_3f
    const-string v0, "sp_multi_single_app_data_class"

    const-string v1, "IsCanLoadPauseLog"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 620
    :cond_4a
    :goto_4a
    return-void

    .line 612
    :cond_4b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->b()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 613
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    const-string v3, "feed_pause"

    .line 614
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q()I

    move-result v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v7

    .line 613
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 616
    :cond_72
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Z)V

    goto :goto_4a
.end method

.method public i()V
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_9

    .line 635
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->d()V

    .line 637
    :cond_9
    return-void
.end method

.method public j()V
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_9

    .line 642
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 644
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_12

    .line 645
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u()V

    .line 647
    :cond_12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E()V

    .line 648
    return-void
.end method

.method public k()V
    .registers 2

    .prologue
    .line 691
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Z)V

    .line 692
    return-void
.end method

.method public l()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 724
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-eqz v0, :cond_c

    .line 725
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c()V

    .line 726
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    .line 728
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 729
    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/ref/WeakReference;Z)V

    .line 735
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    if-eqz v0, :cond_41

    .line 736
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 737
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 738
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 739
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ak;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 741
    :cond_41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B()V

    .line 742
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    if-eqz v0, :cond_4d

    .line 743
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 745
    :cond_4d
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_54

    .line 746
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y()V

    .line 748
    :cond_54
    return-void
.end method

.method public m()J
    .registers 3

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    return-wide v0
.end method

.method public n()J
    .registers 3

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    :goto_8
    return-wide v0

    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->n()J

    move-result-wide v0

    goto :goto_8
.end method

.method public o()J
    .registers 5

    .prologue
    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:J

    add-long/2addr v0, v2

    goto :goto_6
.end method

.method public p()J
    .registers 3

    .prologue
    .line 394
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public q()I
    .registers 5

    .prologue
    .line 415
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public r()J
    .registers 3

    .prologue
    .line 379
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    return-wide v0
.end method

.method public s()Z
    .registers 2

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Z

    return v0
.end method

.method public t()Lcom/bytedance/sdk/openadsdk/core/video/c/d;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    return-object v0
.end method

.method public u()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    return-object v0
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    return v0
.end method

.method public w()Z
    .registers 2

    .prologue
    .line 1598
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:Z

    return v0
.end method

.method public x()V
    .registers 4

    .prologue
    .line 1544
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:Z

    if-nez v0, :cond_9

    .line 1555
    :cond_8
    :goto_8
    return-void

    .line 1547
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1548
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Z

    .line 1549
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1550
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1552
    :try_start_1e
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_8

    .line 1553
    :catch_24
    move-exception v0

    goto :goto_8
.end method

.method public y()V
    .registers 3

    .prologue
    .line 1558
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:Z

    if-nez v0, :cond_9

    .line 1567
    :cond_8
    :goto_8
    return-void

    .line 1561
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1562
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Z

    .line 1564
    :try_start_14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_8

    .line 1565
    :catch_1a
    move-exception v0

    goto :goto_8
.end method
