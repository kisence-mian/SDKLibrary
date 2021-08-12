.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:I

.field private I:I

.field private J:Z

.field private K:Z

.field private final L:Ljava/lang/Runnable;

.field private final M:Ljava/lang/Runnable;

.field private final N:Ljava/lang/Runnable;

.field private O:I

.field private P:J

.field private Q:J

.field private R:J

.field private S:Z

.field private T:J

.field private final U:Landroid/content/BroadcastReceiver;

.field private V:I

.field private W:Z

.field a:Ljava/lang/Runnable;

.field private b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/openadsdk/utils/al;

.field private e:J

.field private f:J

.field private g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

.field private h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

.field private i:J

.field private j:J

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private final n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Z

.field private p:Z

.field private q:Z

.field private final r:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;",
            ">;"
        }
    .end annotation
.end field

.field private y:J

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;ZZ)V
    .registers 12

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    .line 73
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    .line 76
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 77
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 80
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    .line 83
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    .line 84
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    .line 86
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    .line 87
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    .line 88
    const-string v4, "embeded_ad"

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 90
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Z

    .line 91
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:Z

    .line 96
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:J

    .line 98
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 99
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    .line 100
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    .line 103
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C:Z

    .line 105
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Z

    .line 112
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    .line 113
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I

    .line 114
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:I

    .line 115
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Z

    .line 117
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Z

    .line 488
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$3;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L:Ljava/lang/Runnable;

    .line 497
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$4;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:Ljava/lang/Runnable;

    .line 515
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:Ljava/lang/Runnable;

    .line 538
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    .line 716
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    .line 772
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    .line 785
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:J

    .line 786
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->R:J

    .line 1422
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    .line 1499
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Landroid/content/BroadcastReceiver;

    .line 1511
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    .line 1572
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->W:Z

    .line 284
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    .line 286
    :try_start_75
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    .line 287
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_82

    .line 289
    goto :goto_83

    .line 288
    :catchall_82
    move-exception v0

    .line 290
    :goto_83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    .line 291
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 292
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    .line 293
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 294
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Landroid/content/Context;)V

    .line 296
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_9f

    move v2, v3

    :cond_9f
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    .line 298
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Z

    .line 299
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:Z

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;ZZZ)V
    .registers 13

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    .line 73
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    .line 76
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 77
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 80
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    .line 83
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    .line 84
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    .line 86
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    .line 87
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    .line 88
    const-string v4, "embeded_ad"

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 90
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Z

    .line 91
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:Z

    .line 96
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:J

    .line 98
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 99
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    .line 100
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    .line 103
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C:Z

    .line 105
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Z

    .line 112
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    .line 113
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I

    .line 114
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:I

    .line 115
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Z

    .line 117
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Z

    .line 488
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$3;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L:Ljava/lang/Runnable;

    .line 497
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$4;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:Ljava/lang/Runnable;

    .line 515
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:Ljava/lang/Runnable;

    .line 538
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    .line 716
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    .line 772
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    .line 785
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:J

    .line 786
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->R:J

    .line 1422
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    .line 1499
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Landroid/content/BroadcastReceiver;

    .line 1511
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    .line 1572
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->W:Z

    .line 264
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    .line 265
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Z)V

    .line 266
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 268
    :try_start_7a
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    .line 269
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_87

    .line 271
    goto :goto_88

    .line 270
    :catchall_87
    move-exception p4

    .line 272
    :goto_88
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    .line 273
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    .line 274
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 275
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Landroid/content/Context;)V

    .line 277
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_a2

    move v2, v3

    :cond_a2
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    .line 279
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Z

    .line 280
    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:Z

    .line 281
    return-void
.end method

.method private A()V
    .registers 5

    .line 507
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B()V

    .line 508
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/al;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 509
    return-void
.end method

.method private B()V
    .registers 3

    .line 512
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 513
    return-void
.end method

.method private C()Z
    .registers 2

    .line 574
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

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

.method private D()V
    .registers 3

    .line 597
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2c

    .line 600
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 601
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 602
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 603
    goto :goto_16

    .line 604
    :cond_26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 605
    return-void

    .line 598
    :cond_2c
    :goto_2c
    return-void
.end method

.method private E()V
    .registers 10

    .line 686
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_11

    .line 687
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ZJZ)V

    .line 688
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A()V

    .line 691
    :cond_11
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    if-eqz v0, :cond_33

    .line 692
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 693
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r()I

    move-result v7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v8

    .line 692
    const-string v4, "feed_continue"

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 695
    :cond_33
    return-void
.end method

.method private F()V
    .registers 6

    .line 790
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->R:J

    .line 791
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    if-nez v2, :cond_49

    .line 792
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(JLcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object v0

    .line 793
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Z

    if-eqz v1, :cond_2d

    .line 794
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    const-string v4, "feed_auto_play"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_46

    .line 796
    :cond_2d
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_46

    .line 797
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    const-string v4, "feed_play"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 800
    :cond_46
    :goto_46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    .line 802
    :cond_49
    return-void
.end method

.method private G()V
    .registers 5

    .line 1006
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1007
    const-string v0, "NativeVideoController"

    const-string v1, "onStateError \u51fa\u9519\u540e\u5c55\u793a\u7ed3\u679c\u9875\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/ref/WeakReference;Z)V

    .line 1009
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Z)V

    .line 1010
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m()V

    .line 1012
    :cond_30
    return-void
.end method

.method private H()V
    .registers 5

    .line 1015
    const-string v0, "NativeVideoController"

    const-string v1, "before auseWhenInvisible\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_28

    .line 1017
    const-string v1, "in pauseWhenInvisible\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i()V

    .line 1020
    :cond_28
    return-void
.end method

.method private I()V
    .registers 10

    .line 1026
    const-string v0, "ChangeVideoSize"

    const-string v1, "[step-0]  TAG is \'ChangeVideoSize\' ....... start  changeVideoSize >>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_d9

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d9

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v1

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v1, :cond_d9

    .line 1029
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_d9

    .line 1030
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2d

    goto/16 :goto_d9

    .line 1037
    :cond_2d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    .line 1039
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    .line 1040
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 1041
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 1042
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    .line 1043
    if-lez v3, :cond_d3

    if-lez v4, :cond_d3

    if-lez v1, :cond_d3

    if-gtz v2, :cond_5d

    goto/16 :goto_d3

    .line 1048
    :cond_5d
    nop

    .line 1050
    nop

    .line 1051
    nop

    .line 1053
    if-ne v2, v1, :cond_6c

    .line 1055
    if-le v3, v4, :cond_68

    .line 1056
    nop

    .line 1057
    move v1, v4

    move v2, v1

    goto :goto_8a

    .line 1059
    :cond_68
    nop

    .line 1060
    move v1, v3

    move v2, v1

    goto :goto_8a

    .line 1062
    :cond_6c
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/high16 v7, 0x3f800000    # 1.0f

    if-le v2, v1, :cond_7e

    .line 1063
    nop

    .line 1065
    int-to-float v2, v2

    mul-float/2addr v2, v7

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 1066
    int-to-double v7, v3

    mul-double/2addr v7, v5

    float-to-double v1, v2

    div-double/2addr v7, v1

    double-to-int v1, v7

    move v2, v3

    goto :goto_8a

    .line 1069
    :cond_7e
    nop

    .line 1071
    int-to-float v1, v1

    mul-float/2addr v1, v7

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1073
    int-to-double v7, v4

    mul-double/2addr v7, v5

    float-to-double v1, v1

    div-double/2addr v7, v1

    double-to-int v1, v7

    move v2, v1

    move v1, v4

    .line 1076
    :goto_8a
    if-gt v1, v4, :cond_91

    if-gtz v1, :cond_8f

    goto :goto_91

    :cond_8f
    move v4, v1

    goto :goto_92

    .line 1077
    :cond_91
    :goto_91
    nop

    .line 1081
    :goto_92
    if-gt v2, v3, :cond_99

    if-gtz v2, :cond_97

    goto :goto_99

    :cond_97
    move v3, v2

    goto :goto_9a

    .line 1082
    :cond_99
    :goto_99
    nop

    .line 1085
    :goto_9a
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1086
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1087
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v2

    instance-of v2, v2, Landroid/view/TextureView;

    if-eqz v2, :cond_bb

    .line 1088
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1089
    const-string v1, "[step-9] >>>>> setLayoutParams to TextureView complete ! >>>>>>>"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    .line 1090
    :cond_bb
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v2

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_d1

    .line 1091
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    const-string v1, "[step-9] >>>>> setLayoutParams to SurfaceView complete !>>>>>>>"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :cond_d1
    :goto_d1
    goto/16 :goto_166

    .line 1044
    :cond_d3
    :goto_d3
    const-string v1, " container or video exist size <= 0"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    return-void

    .line 1031
    :cond_d9
    :goto_d9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[step-1] >>>>> mContextRef="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mContextRef.get()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_fb

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    goto :goto_fc

    :cond_fb
    const/4 v2, 0x0

    :goto_fc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",getIRenderView() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[step-1] >>>>> mMediaPlayerProxy == null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_128

    move v2, v3

    goto :goto_129

    :cond_128
    move v2, v4

    :goto_129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mMediaPlayerProxy.getMediaPlayer() == null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v2, :cond_13e

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v2

    if-nez v2, :cond_13e

    goto :goto_13f

    :cond_13e
    move v3, v4

    :goto_13f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14a
    .catchall {:try_start_7 .. :try_end_14a} :catchall_14b

    .line 1033
    return-void

    .line 1095
    :catchall_14b
    move-exception v1

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[step-11] >>>>> changeVideoSize error !!!!! \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :goto_166
    return-void
.end method

.method private J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;
    .registers 3

    .line 1101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1102
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

    if-ne v0, v1, :cond_28

    .line 1103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_28

    .line 1104
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    return-object v0

    .line 1108
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method private K()V
    .registers 4

    .line 1301
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1302
    return-void

    .line 1304
    :cond_7
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h(Z)V

    .line 1305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_20

    .line 1306
    const-string v0, "NativeVideoController"

    const-string v1, "context is not activity, not support this function."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    return-void

    .line 1309
    :cond_20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_35

    .line 1310
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 1311
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 1313
    :cond_35
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(I)V

    .line 1314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    .line 1315
    :goto_44
    if-eqz v0, :cond_4b

    .line 1316
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;->a(Z)V

    .line 1318
    :cond_4b
    return-void
.end method

.method private L()V
    .registers 3

    .line 1440
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_1c

    .line 1441
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 1442
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 1443
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 1444
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    .line 1445
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d()V

    .line 1447
    :cond_1c
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;J)J
    .registers 3

    .line 66
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    return-object p0
.end method

.method private a(JJ)V
    .registers 7

    .line 1175
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 1176
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    .line 1177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(JJ)V

    .line 1178
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v0

    .line 1179
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(I)V

    .line 1181
    :try_start_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz v0, :cond_19

    .line 1182
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->a(JJ)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    .line 1186
    :cond_19
    goto :goto_22

    .line 1184
    :catchall_1a
    move-exception p1

    .line 1185
    const-string p2, "NativeVideoController"

    const-string p3, "onProgressUpdate error: "

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1187
    :goto_22
    return-void
.end method

.method private a(JZ)V
    .registers 5

    .line 1426
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_5

    .line 1427
    return-void

    .line 1429
    :cond_5
    if-eqz p3, :cond_a

    .line 1430
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L()V

    .line 1432
    :cond_a
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(J)V

    .line 1433
    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .registers 4

    .line 1514
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1515
    return-void

    .line 1518
    :cond_7
    if-nez p1, :cond_a

    .line 1519
    return-void

    .line 1523
    :cond_a
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    if-ne p1, p2, :cond_f

    .line 1524
    return-void

    .line 1527
    :cond_f
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    .line 1529
    const/4 p1, 0x4

    if-eq p2, p1, :cond_19

    if-eqz p2, :cond_19

    .line 1530
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    .line 1533
    :cond_19
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    if-nez p1, :cond_2b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w()Z

    move-result p1

    if-nez p1, :cond_2b

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Z

    if-eqz p1, :cond_2b

    .line 1534
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(I)Z

    .line 1537
    :cond_2b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 1538
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;->a(I)V

    .line 1541
    :cond_42
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;Landroid/content/Context;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    .line 579
    if-nez p1, :cond_3

    .line 580
    return-void

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    if-eqz v0, :cond_13

    .line 583
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_16

    .line 585
    :cond_13
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Ljava/lang/Runnable;)V

    .line 587
    :goto_16
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    .line 445
    const-string v0, "tag_video_play"

    const-string v1, "[video] NativeVideoController#playVideo has invoke !"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    .line 447
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;-><init>()V

    .line 448
    iput-object p1, v1, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/String;

    .line 449
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v3, :cond_39

    .line 450
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 451
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/t;->l()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Ljava/lang/String;

    .line 453
    :cond_29
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->b:Ljava/lang/String;

    .line 455
    :cond_39
    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:I

    .line 456
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V

    .line 457
    const-string v1, "[video] MediaPlayerProxy has setDataSource !"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_65

    .line 461
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d(I)V

    .line 462
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d(I)V

    .line 464
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Ljava/lang/Runnable;)V

    .line 481
    :cond_65
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz p1, :cond_6c

    .line 482
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f()V

    .line 486
    :cond_6c
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-object p0
.end method

.method private b(I)V
    .registers 12

    .line 541
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    .line 542
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result p1

    if-nez p1, :cond_d

    .line 543
    return-void

    .line 545
    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-nez p1, :cond_12

    .line 546
    return-void

    .line 548
    :cond_12
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 549
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz p1, :cond_26

    .line 550
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-static {v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v3

    invoke-interface {p1, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->a(JI)V

    .line 552
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    .line 553
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_3c

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    if-lt p1, v1, :cond_45

    .line 554
    :cond_3c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/ref/WeakReference;Z)V

    .line 556
    :cond_45
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    if-nez p1, :cond_72

    .line 557
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 558
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p()J

    move-result-wide v6

    const/16 v8, 0x64

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v9

    .line 557
    const-string v5, "feed_over"

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 559
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    .line 560
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-direct {p0, v2, v3, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(JJ)V

    .line 561
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 563
    :cond_72
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-nez p1, :cond_80

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    if-eqz p1, :cond_80

    .line 564
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V

    .line 566
    :cond_80
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    .line 567
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    if-eqz p1, :cond_91

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    if-ge p1, v1, :cond_91

    .line 568
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g()V

    .line 570
    :cond_91
    return-void
.end method

.method private b(II)V
    .registers 7

    .line 986
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 987
    return-void

    .line 990
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e()Z

    move-result v0

    .line 991
    if-eqz v0, :cond_e

    const-string v1, "play_error"

    goto :goto_10

    :cond_e
    const-string v1, "play_start_error"

    .line 992
    :goto_10
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v3

    invoke-static {v2, p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;IILcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object p1

    .line 993
    if-eqz v0, :cond_43

    .line 994
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "duration"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "percent"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "buffers_time"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    :cond_43
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    invoke-static {p2, v0, v2, v1, p1}, Lcom/bytedance/sdk/openadsdk/c/d;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 999
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 11

    .line 165
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 166
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->e:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 168
    nop

    .line 169
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_1b

    .line 170
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    goto :goto_31

    .line 172
    :cond_1b
    nop

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 173
    const-string v1, "tt_video_detail_layout"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    .line 175
    :goto_31
    if-nez v3, :cond_34

    return-void

    .line 176
    :cond_34
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_4a

    .line 177
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a()Z

    move-result v8

    move-object v1, v0

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    goto :goto_58

    .line 179
    :cond_4a
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    .line 181
    :goto_58
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;)V

    .line 183
    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 3

    .line 590
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    if-nez v0, :cond_f

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    .line 593
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)J
    .registers 3

    .line 66
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    return-wide v0
.end method

.method private c(Landroid/content/Context;)Landroid/view/View;
    .registers 14

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 195
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 196
    const-string v2, "tt_root_view"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 197
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 199
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 200
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    const-string v5, "tt_video_loading_retry_layout"

    invoke-static {p1, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 202
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 203
    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 204
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 207
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 208
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    const-string v7, "tt_video_loading_cover_image"

    invoke-static {p1, v7}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 210
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 211
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 215
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/4 v8, 0x1

    const/high16 v9, 0x42700000    # 60.0f

    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    const-string v7, "tt_video_loading_progress"

    invoke-static {p1, v7}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setId(I)V

    .line 217
    const/16 v7, 0xd

    invoke-virtual {v6, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 218
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    const-string v6, "tt_video_loading_progress_bar"

    invoke-static {p1, v6}, Lcom/bytedance/sdk/openadsdk/utils/ac;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 222
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 223
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 224
    const-string v9, "tt_video_play"

    invoke-static {p1, v9}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 225
    invoke-virtual {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 226
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 227
    const-string v9, "tt_play_movebar_textpage"

    invoke-static {p1, v9}, Lcom/bytedance/sdk/openadsdk/utils/ac;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 232
    new-instance v2, Landroid/widget/ProgressBar;

    const-string v3, "tt_Widget_ProgressBar_Horizontal"

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v10, 0x0

    invoke-direct {v2, p1, v10, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 233
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-static {v8, v11, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 234
    const/16 v0, 0x64

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 235
    const-string v0, "tt_video_progress"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setId(I)V

    .line 236
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 237
    invoke-virtual {v2, v10}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    const-string v0, "tt_video_progress_drawable"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 240
    const/16 v0, 0xc

    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 241
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 244
    new-instance v0, Landroid/view/ViewStub;

    invoke-direct {v0, p1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 245
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 246
    const-string v3, "tt_video_ad_cover"

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setId(I)V

    .line 247
    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    const-string v2, "tt_video_ad_cover_layout"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 249
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 252
    new-instance v0, Landroid/view/ViewStub;

    invoke-direct {v0, p1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 253
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 254
    invoke-virtual {v2, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 255
    const-string v3, "tt_video_draw_layout_viewStub"

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setId(I)V

    .line 256
    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    const-string v2, "tt_video_draw_btn_layout"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 258
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 260
    return-object v1
.end method

.method private c(I)Z
    .registers 3

    .line 1436
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(I)Z

    move-result p1

    return p1
.end method

.method private c(II)Z
    .registers 5

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnError - Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Extra code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTVideoWebPageActivity"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    nop

    .line 1640
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_32

    const/4 p1, 0x0

    goto :goto_2a

    .line 1648
    :sswitch_29
    move p1, v0

    .line 1651
    :goto_2a
    sparse-switch p2, :sswitch_data_4c

    move v0, p1

    goto :goto_30

    .line 1655
    :sswitch_2f
    nop

    .line 1666
    :goto_30
    return v0

    nop

    :sswitch_data_32
    .sparse-switch
        -0x3f2 -> :sswitch_29
        -0x3ef -> :sswitch_29
        -0x3ec -> :sswitch_29
        -0x6e -> :sswitch_29
        0x64 -> :sswitch_29
        0xc8 -> :sswitch_29
    .end sparse-switch

    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_2f
        0x2bc -> :sswitch_2f
        0x320 -> :sswitch_2f
    .end sparse-switch
.end method

.method private d(Landroid/content/Context;)V
    .registers 3

    .line 1544
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v0

    .line 1546
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Landroid/content/Context;I)V

    .line 1548
    const/4 p1, 0x4

    if-ne v0, p1, :cond_d

    .line 1549
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 1551
    :cond_d
    return-void
.end method

.method private d(I)Z
    .registers 8

    .line 1469
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v0

    .line 1470
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    .line 1472
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h()V

    .line 1473
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 1474
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v3, :cond_1c

    .line 1475
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/ref/WeakReference;Z)V

    .line 1477
    :cond_1c
    const/4 v3, 0x4

    if-eq v0, v3, :cond_42

    if-eqz v0, :cond_42

    .line 1478
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_28

    .line 1479
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 1481
    :cond_28
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h()V

    .line 1482
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 1483
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    .line 1484
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_4d

    .line 1485
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ILcom/bytedance/sdk/openadsdk/core/d/t;Z)Z

    move-result p1

    return p1

    .line 1487
    :cond_42
    if-ne v0, v3, :cond_4d

    .line 1488
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 1489
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_4d

    .line 1490
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q()V

    .line 1493
    :cond_4d
    return v2
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Z
    .registers 1

    .line 66
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    return p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/utils/al;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Ljava/lang/Runnable;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A()V

    return-void
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    return-object p0
.end method

.method private h(Z)V
    .registers 2

    .line 1321
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    .line 1322
    return-void
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)J
    .registers 3

    .line 66
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    return-wide v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private z()Z
    .registers 6

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeVideoController"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v2, v0, :cond_31

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_30

    .line 152
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/ref/WeakReference;Z)V

    .line 155
    :cond_30
    return v3

    .line 157
    :cond_31
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v4, :cond_36

    return v3

    .line 158
    :cond_36
    add-int/2addr v0, v2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPlaying="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isPaused="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isPrepared="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",isStarted="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k()Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h()Z

    move-result v0

    if-nez v0, :cond_a6

    goto :goto_a7

    :cond_a6
    move v2, v3

    :cond_a7
    :goto_a7
    return v2
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .line 1228
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1229
    return-void

    .line 1232
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

    .line 1233
    :goto_11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 1234
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_1e

    .line 1235
    return-void

    .line 1237
    :cond_1e
    check-cast v1, Landroid/app/Activity;

    .line 1240
    :try_start_20
    invoke-virtual {v1, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    .line 1242
    goto :goto_25

    .line 1241
    :catchall_24
    move-exception p1

    .line 1243
    :goto_25
    const/16 p1, 0x400

    if-nez v0, :cond_31

    .line 1244
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_38

    .line 1246
    :cond_31
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    .line 1249
    :goto_38
    return-void
.end method

.method public a(II)V
    .registers 5

    .line 140
    if-eqz p1, :cond_2c

    if-nez p2, :cond_5

    goto :goto_2c

    .line 143
    :cond_5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    .line 144
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "height="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeVideoController"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 141
    :cond_2c
    :goto_2c
    return-void
.end method

.method public a(J)V
    .registers 6

    .line 370
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 371
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_9

    move-wide p1, v0

    :cond_9
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 372
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    .line 1562
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v0

    .line 1564
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Landroid/content/Context;I)V

    .line 1566
    const/4 p1, 0x4

    if-ne v0, p1, :cond_10

    .line 1567
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 1568
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k()V

    .line 1570
    :cond_10
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 12

    .line 806
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_214

    if-eqz p1, :cond_214

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_214

    .line 807
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    goto/16 :goto_214

    .line 810
    :cond_12
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NativeVideoController"

    sparse-switch v0, :sswitch_data_216

    goto/16 :goto_213

    .line 812
    :sswitch_1d
    nop

    .line 814
    :try_start_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_26

    .line 816
    goto :goto_27

    .line 815
    :catchall_26
    move-exception p1

    .line 817
    :goto_27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:J

    .line 819
    goto/16 :goto_213

    .line 877
    :sswitch_2f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H()V

    .line 878
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_213

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_213

    .line 879
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;->f()V

    goto/16 :goto_213

    .line 959
    :sswitch_49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z()Z

    move-result p1

    if-eqz p1, :cond_81

    .line 960
    const-string p1, "CALLBACK_ON_RETRY_VIDEO_TIME-....\u91cd\u8bd5...."

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m()V

    .line 962
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    .line 964
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 965
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b()Z

    move-result v9

    .line 964
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    goto/16 :goto_213

    .line 967
    :cond_81
    const-string p1, "\u4e0d\u6ee1\u8db3\u6761\u4ef6\uff0c\u65e0\u6cd5\u91cd\u8bd5"

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const/16 p1, 0x138

    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(II)V

    .line 970
    goto/16 :goto_213

    .line 979
    :sswitch_8d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I()V

    goto/16 :goto_213

    .line 972
    :sswitch_92
    const-string p1, "SSMediaPlayerWrapper \u91ca\u653e\u4e86\u3002\u3002\u3002\u3002\u3002"

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    goto/16 :goto_213

    .line 891
    :sswitch_99
    const-string p1, "\u64ad\u653e\u5668\u72b6\u6001\u51fa\u9519 STAT_ERROR 200 \u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G()V

    .line 894
    const/16 p1, 0x134

    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(II)V

    .line 895
    goto/16 :goto_213

    .line 952
    :sswitch_a8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_213

    .line 953
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    goto/16 :goto_213

    .line 861
    :sswitch_b1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_c6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c6

    .line 862
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;->f()V

    .line 865
    :cond_c6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz p1, :cond_cf

    .line 866
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 868
    :cond_cf
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    if-nez p1, :cond_d6

    .line 869
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F()V

    .line 871
    :cond_d6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_dd

    .line 872
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 874
    :cond_dd
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 875
    goto/16 :goto_213

    .line 831
    :sswitch_e6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 832
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v3, 0x3

    if-eqz v0, :cond_113

    .line 833
    if-eq p1, v3, :cond_107

    const/16 v4, 0x2be

    if-ne p1, v4, :cond_f4

    goto :goto_107

    .line 837
    :cond_f4
    const/16 v2, 0x2bd

    if-ne p1, v2, :cond_113

    .line 838
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t()V

    .line 840
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f40

    invoke-virtual {v0, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/al;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 841
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Z

    goto :goto_113

    .line 834
    :cond_107
    :goto_107
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 835
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 836
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Z

    .line 846
    :cond_113
    :goto_113
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    if-eqz v0, :cond_139

    if-ne p1, v3, :cond_139

    .line 847
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_132

    .line 848
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_132

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_132

    .line 849
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;->f()V

    .line 852
    :cond_132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 855
    :cond_139
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    if-eqz v0, :cond_213

    if-ne p1, v3, :cond_213

    .line 856
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F()V

    goto/16 :goto_213

    .line 897
    :sswitch_144
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 898
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 899
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(II)V

    .line 900
    const-string v4, "CALLBACK_ON_ERROR\u3001\u3001before isVideoPlaying\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e()Z

    move-result v4

    if-eqz v4, :cond_15b

    const/16 v4, -0x3ec

    if-eq p1, v4, :cond_15b

    .line 902
    return-void

    .line 905
    :cond_15b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u51fa\u9519\u540e errorcode,extra\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c(II)Z

    move-result v4

    if-eqz v4, :cond_195

    .line 908
    const-string v4, "\u51fa\u9519\u540e\u5c55\u793a\u7ed3\u679c\u9875\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4, v5, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/ref/WeakReference;Z)V

    .line 910
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Z)V

    .line 911
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m()V

    .line 914
    :cond_195
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v1, :cond_19c

    .line 915
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 917
    :cond_19c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz v1, :cond_1ad

    .line 918
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-static {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->b(JI)V

    .line 945
    :cond_1ad
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_213

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_213

    .line 946
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e()Z

    move-result v1

    if-nez v1, :cond_213

    .line 947
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;

    invoke-interface {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;->a(II)V

    goto :goto_213

    .line 821
    :sswitch_1c9
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(I)V

    .line 822
    goto :goto_213

    .line 883
    :sswitch_1cf
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_213

    .line 884
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 885
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_1e8

    goto :goto_1e9

    :cond_1e8
    move-wide v2, v0

    :goto_1e9
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 886
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(JJ)V

    goto :goto_213

    .line 824
    :sswitch_1f1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_213

    .line 825
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_213

    .line 826
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    .line 983
    :cond_213
    :goto_213
    return-void

    .line 808
    :cond_214
    :goto_214
    return-void

    nop

    :sswitch_data_216
    .sparse-switch
        0x6c -> :sswitch_1f1
        0x6d -> :sswitch_1cf
        0x12e -> :sswitch_1c9
        0x12f -> :sswitch_144
        0x130 -> :sswitch_e6
        0x131 -> :sswitch_b1
        0x132 -> :sswitch_a8
        0x134 -> :sswitch_99
        0x135 -> :sswitch_92
        0x137 -> :sswitch_8d
        0x138 -> :sswitch_49
        0x139 -> :sswitch_2f
        0x13a -> :sswitch_1d
    .end sparse-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_7

    .line 121
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V

    .line 123
    :cond_7
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V
    .registers 4

    .line 126
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_10

    .line 127
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V

    .line 136
    :cond_10
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V
    .registers 5

    .line 1140
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p1, :cond_5

    .line 1141
    return-void

    .line 1143
    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A()V

    .line 1144
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(JZ)V

    .line 1145
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;IZ)V
    .registers 8

    .line 1159
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1160
    return-void

    .line 1162
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 1163
    int-to-long p2, p2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

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

    .line 1164
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_2d

    .line 1165
    long-to-int p1, p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:J

    goto :goto_2f

    .line 1167
    :cond_2d
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:J

    .line 1169
    :goto_2f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_38

    .line 1170
    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:J

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(J)V

    .line 1172
    :cond_38
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 1364
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    .line 1365
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_a

    .line 1366
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Z)V

    .line 1368
    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p1, :cond_f

    .line 1369
    return-void

    .line 1371
    :cond_f
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Landroid/graphics/SurfaceTexture;)V

    .line 1372
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D()V

    .line 1373
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 1332
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    .line 1333
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_a

    .line 1334
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Z)V

    .line 1336
    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p1, :cond_f

    .line 1337
    return-void

    .line 1339
    :cond_f
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Landroid/view/SurfaceHolder;)V

    .line 1340
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D()V

    .line 1341
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;III)V
    .registers 6

    .line 1346
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 5

    .line 1113
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_52

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_52

    .line 1116
    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_23

    .line 1117
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h()V

    .line 1118
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 1119
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    goto :goto_51

    .line 1121
    :cond_23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result p1

    if-nez p1, :cond_47

    .line 1122
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_3a

    .line 1123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Landroid/view/ViewGroup;)V

    .line 1125
    :cond_3a
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(J)V

    .line 1126
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_51

    .line 1127
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    goto :goto_51

    .line 1130
    :cond_47
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g(Z)V

    .line 1131
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_51

    .line 1132
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 1136
    :cond_51
    :goto_51
    return-void

    .line 1114
    :cond_52
    :goto_52
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;Z)V
    .registers 4

    .line 1297
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K()V

    .line 1298
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V
    .registers 6

    .line 1262
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz p1, :cond_7

    .line 1263
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h()V

    .line 1265
    :cond_7
    if-eqz p3, :cond_24

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-nez p1, :cond_24

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d()Z

    move-result p1

    if-nez p1, :cond_24

    .line 1266
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 1267
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p4, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZZ)V

    .line 1269
    :cond_24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_39

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 1270
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    .line 1271
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    goto :goto_3e

    .line 1273
    :cond_39
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    .line 1275
    :goto_3e
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V
    .registers 2

    .line 609
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    .line 610
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V
    .registers 3

    .line 308
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:Ljava/lang/ref/WeakReference;

    .line 309
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;)V
    .registers 3

    .line 530
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Ljava/lang/ref/WeakReference;

    .line 531
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;)V
    .registers 3

    .line 1601
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:Ljava/lang/ref/WeakReference;

    .line 1602
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/h$a;Ljava/lang/String;)V
    .registers 3

    .line 1452
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$8;->a:[I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/h$a;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_20

    goto :goto_1e

    .line 1460
    :pswitch_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k()V

    .line 1461
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 1462
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    goto :goto_1e

    .line 1457
    :pswitch_16
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Z)V

    .line 1458
    goto :goto_1e

    .line 1454
    :pswitch_1a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h()V

    .line 1455
    nop

    .line 1465
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

    .line 442
    return-void
.end method

.method public a(Z)V
    .registers 10

    .line 724
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_a

    .line 725
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    .line 727
    :cond_a
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    if-nez v0, :cond_50

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    if-eqz v0, :cond_50

    .line 728
    if-eqz p1, :cond_34

    .line 729
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    .line 730
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r()I

    move-result v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v7

    .line 729
    const-string v3, "feed_break"

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 731
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    goto :goto_50

    .line 733
    :cond_34
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    .line 734
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r()I

    move-result v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v7

    .line 733
    const-string v3, "feed_pause"

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 738
    :cond_50
    :goto_50
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m()V

    .line 739
    return-void
.end method

.method public a()Z
    .registers 2

    .line 384
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    return v0
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

    .line 315
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "[video] start NativeVideoController#playVideoUrl and video url is :\r\n"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "tag_video_play"

    invoke-static {p5, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p6, 0x0

    if-eqz p2, :cond_25

    .line 317
    const-string p1, "[video] play video stop , because no video info"

    invoke-static {p5, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return p6

    .line 320
    :cond_25
    iput-boolean p9, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    .line 321
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 322
    const-wide/16 v0, 0x0

    cmp-long p2, p7, v0

    if-gtz p2, :cond_33

    .line 323
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    .line 325
    :cond_33
    if-lez p2, :cond_40

    .line 326
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 327
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    cmp-long p2, v2, p7

    if-lez p2, :cond_3e

    move-wide p7, v2

    :cond_3e
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 329
    :cond_40
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p2, :cond_67

    .line 330
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 332
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    if-nez p2, :cond_50

    .line 333
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d()V

    .line 335
    :cond_50
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(II)V

    .line 336
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/view/ViewGroup;

    invoke-virtual {p2, p7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Landroid/view/ViewGroup;)V

    .line 337
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(II)V

    .line 339
    :cond_67
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p2, :cond_74

    .line 340
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-direct {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    .line 342
    :cond_74
    const-string p2, "[video] new MediaPlayer"

    invoke-static {p5, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    .line 345
    :try_start_7b
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_81

    .line 349
    nop

    .line 350
    const/4 p1, 0x1

    return p1

    .line 346
    :catch_81
    move-exception p1

    .line 347
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[video] invoke NativeVideoController#playVideo cause exception :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return p6
.end method

.method public b(J)V
    .registers 3

    .line 397
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:J

    .line 398
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V
    .registers 3

    .line 1149
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_7

    .line 1150
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B()V

    .line 1152
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_e

    .line 1153
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    .line 1155
    :cond_e
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 1383
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    .line 1384
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p2, :cond_a

    .line 1385
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Z)V

    .line 1387
    :cond_a
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 1350
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    .line 1351
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p2, :cond_a

    .line 1352
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Z)V

    .line 1354
    :cond_a
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 4

    .line 1191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V

    .line 1192
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V
    .registers 5

    .line 1196
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1197
    return-void

    .line 1199
    :cond_7
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h(Z)V

    .line 1200
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_20

    .line 1201
    const-string p1, "NativeVideoController"

    const-string p2, "context is not activity, not support this function."

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    return-void

    .line 1204
    :cond_20
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_43

    .line 1205
    if-eqz p3, :cond_2a

    const/16 p1, 0x8

    goto :goto_2b

    :cond_2a
    move p1, p4

    :goto_2b
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(I)V

    .line 1207
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_5a

    .line 1208
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/view/ViewGroup;)V

    .line 1209
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    goto :goto_5a

    .line 1212
    :cond_43
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(I)V

    .line 1214
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_5a

    .line 1215
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 1216
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 1220
    :cond_5a
    :goto_5a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_65

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;

    goto :goto_66

    :cond_65
    const/4 p1, 0x0

    .line 1221
    :goto_66
    if-eqz p1, :cond_6d

    .line 1222
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;->a(Z)V

    .line 1224
    :cond_6d
    return-void
.end method

.method public b(Z)V
    .registers 3

    .line 376
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    .line 377
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_9

    .line 378
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Z)V

    .line 380
    :cond_9
    return-void
.end method

.method public b()Z
    .registers 2

    .line 420
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    return v0
.end method

.method protected c()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c(J)V
    .registers 3

    .line 405
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    .line 406
    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 3

    .line 1253
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_7

    .line 1254
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g()V

    .line 1256
    :cond_7
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Z)V

    .line 1258
    return-void
.end method

.method public c(Z)V
    .registers 3

    .line 424
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    .line 425
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_9

    .line 426
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Z)V

    .line 428
    :cond_9
    return-void
.end method

.method public d(J)V
    .registers 6

    .line 699
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 700
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_9

    move-wide p1, v0

    :cond_9
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 701
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_12

    .line 702
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 704
    :cond_12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_22

    .line 705
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ZJZ)V

    .line 706
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A()V

    .line 709
    :cond_22
    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 4

    .line 1279
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1c

    .line 1280
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h(Z)V

    .line 1281
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_18

    .line 1282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 1284
    :cond_18
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(I)V

    goto :goto_1f

    .line 1286
    :cond_1c
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Z)V

    .line 1288
    :goto_1f
    return-void
.end method

.method public d(Z)V
    .registers 2

    .line 1614
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    .line 1615
    return-void
.end method

.method public d()Z
    .registers 2

    .line 1399
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->l()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 4

    .line 1292
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;Z)V

    .line 1293
    return-void
.end method

.method public e(Z)V
    .registers 2

    .line 1624
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Z

    .line 1625
    return-void
.end method

.method public e()Z
    .registers 2

    .line 1419
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

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

.method public f()V
    .registers 4

    .line 1575
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->W:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Z

    if-nez v0, :cond_9

    goto :goto_26

    .line 1578
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1579
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->W:Z

    .line 1580
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1581
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1583
    :try_start_1e
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_24

    .line 1585
    goto :goto_25

    .line 1584
    :catch_24
    move-exception v0

    .line 1586
    :goto_25
    return-void

    .line 1576
    :cond_26
    :goto_26
    return-void
.end method

.method public f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .registers 3

    .line 1328
    return-void
.end method

.method public f(Z)V
    .registers 2

    .line 1634
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Z

    .line 1635
    return-void
.end method

.method public g()V
    .registers 12

    .line 1405
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_b

    .line 1406
    return-void

    .line 1410
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m()V

    .line 1411
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1413
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b()Z

    move-result v10

    .line 1411
    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    .line 1414
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Z)V

    .line 1415
    return-void
.end method

.method public g(Z)V
    .registers 3

    .line 673
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_7

    .line 674
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 676
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    .line 677
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u()V

    .line 679
    :cond_10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E()V

    .line 680
    return-void
.end method

.method public h()V
    .registers 13

    .line 618
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_7

    .line 619
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b()V

    .line 622
    :cond_7
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    if-nez v0, :cond_75

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    if-eqz v0, :cond_75

    .line 624
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_46

    .line 625
    const-string v0, "sp_multi_single_app_data_class"

    const-string v2, "IsCanLoadPauseLog"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 627
    if-eqz v3, :cond_3e

    .line 628
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 629
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r()I

    move-result v10

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v11

    .line 628
    const-string v7, "feed_pause"

    invoke-static/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 632
    :cond_3e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 633
    goto :goto_75

    .line 634
    :cond_46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->b()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 635
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 636
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r()I

    move-result v8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v9

    .line 635
    const-string v5, "feed_pause"

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 638
    :cond_6e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Z)V

    .line 642
    :cond_75
    :goto_75
    return-void
.end method

.method public i()V
    .registers 2

    .line 649
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_7

    .line 650
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b()V

    .line 652
    :cond_7
    return-void
.end method

.method public j()V
    .registers 2

    .line 656
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_7

    .line 657
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->d()V

    .line 659
    :cond_7
    return-void
.end method

.method public k()V
    .registers 2

    .line 663
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_7

    .line 664
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 666
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_e

    .line 667
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u()V

    .line 669
    :cond_e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E()V

    .line 670
    return-void
.end method

.method public l()V
    .registers 2

    .line 713
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Z)V

    .line 714
    return-void
.end method

.method public m()V
    .registers 6

    .line 746
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 747
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c()V

    .line 748
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    .line 750
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_21

    .line 751
    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/ref/WeakReference;Z)V

    .line 757
    :cond_21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    if-eqz v0, :cond_3d

    .line 758
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 759
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 760
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 761
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 763
    :cond_3d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B()V

    .line 764
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    if-eqz v0, :cond_47

    .line 765
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 767
    :cond_47
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_4e

    .line 768
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y()V

    .line 770
    :cond_4e
    return-void
.end method

.method public n()J
    .registers 3

    .line 365
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    return-wide v0
.end method

.method public o()J
    .registers 3

    .line 535
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->n()J

    move-result-wide v0

    :goto_11
    return-wide v0
.end method

.method public p()J
    .registers 5

    .line 410
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_e

    :cond_7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->o()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:J

    add-long/2addr v0, v2

    :goto_e
    return-wide v0
.end method

.method public q()J
    .registers 3

    .line 416
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public r()I
    .registers 5

    .line 437
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public s()J
    .registers 3

    .line 401
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    return-wide v0
.end method

.method public t()Z
    .registers 2

    .line 393
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    return v0
.end method

.method public u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-object v0
.end method

.method public v()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    return-object v0
.end method

.method public w()Z
    .registers 2

    .line 431
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    return v0
.end method

.method public x()Z
    .registers 2

    .line 1629
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Z

    return v0
.end method

.method public y()V
    .registers 3

    .line 1589
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->W:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Z

    if-nez v0, :cond_9

    goto :goto_1c

    .line 1592
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1593
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->W:Z

    .line 1595
    :try_start_14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1a

    .line 1597
    goto :goto_1b

    .line 1596
    :catch_1a
    move-exception v0

    .line 1598
    :goto_1b
    return-void

    .line 1590
    :cond_1c
    :goto_1c
    return-void
.end method
