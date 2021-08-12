.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;
.super Ljava/lang/Object;
.source "DMLibManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;,
        Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;
    }
.end annotation


# instance fields
.field private A:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:Z

.field protected a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/bytedance/sdk/openadsdk/core/d/b;

.field protected final c:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field protected d:Ljava/lang/String;

.field protected final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Lcom/bytedance/sdk/openadsdk/IListenerManager;

.field private k:I

.field private l:Lcom/ss/android/a/a/b/a;

.field private m:Lcom/ss/android/a/a/b/b;

.field private n:Lcom/ss/android/a/a/b/c;

.field private o:Z

.field private final p:Ljava/util/concurrent/atomic/AtomicLong;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

.field private final v:Lcom/bytedance/sdk/openadsdk/utils/al;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:I

.field private final z:Lcom/ss/android/a/a/b/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 8

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->k:I

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g:Z

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->p:Ljava/util/concurrent/atomic/AtomicLong;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->s:Z

    .line 117
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->v:Lcom/bytedance/sdk/openadsdk/utils/al;

    .line 118
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->w:Z

    .line 120
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    .line 121
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->i:Z

    .line 127
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->z:Lcom/ss/android/a/a/b/d;

    .line 255
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->A:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;

    .line 1144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->B:Ljava/util/List;

    .line 1172
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->C:Z

    .line 1173
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->D:Z

    .line 285
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/ref/WeakReference;

    .line 286
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 287
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ah()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 288
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    .line 289
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->k:I

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->x:Ljava/lang/String;

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====tag==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Ljava/lang/String;)V

    .line 295
    if-nez v0, :cond_b0

    .line 296
    const-string p1, "DMLibManager"

    const-string p2, "download create error: not a App type Ad!"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void

    .line 300
    :cond_b0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p3

    if-nez p3, :cond_b9

    .line 301
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Landroid/content/Context;)V

    .line 304
    :cond_b9
    new-instance p1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->u:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    .line 305
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/a/c$a;->a()Lcom/ss/android/downloadad/a/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->n:Lcom/ss/android/a/a/b/c;

    .line 306
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/a/a$a;->a()Lcom/ss/android/downloadad/a/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->l:Lcom/ss/android/a/a/b/a;

    .line 307
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/downloadad/a/a/b$a;->a()Lcom/ss/android/downloadad/a/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m:Lcom/ss/android/a/a/b/b;

    .line 308
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a()V

    .line 309
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->u:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;)V
    .registers 11

    .line 969
    if-nez p1, :cond_3

    .line 970
    return-void

    .line 973
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->Q()Ljava/lang/String;

    move-result-object v1

    .line 974
    nop

    .line 975
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/f;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v3

    .line 976
    nop

    .line 977
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    .line 978
    if-eqz v0, :cond_19

    .line 979
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1c

    .line 978
    :cond_19
    const-string v0, ""

    move-object v4, v0

    .line 981
    :goto_1c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    move v5, v0

    .line 982
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->v()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "pop_up"

    invoke-static {v0, p1, v2, v7, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 983
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$4;

    invoke-direct {v2, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1003
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;)V
    .registers 3

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 77
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 19

    .line 259
    move-object v9, p0

    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->A:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;

    if-nez v0, :cond_16

    .line 260
    new-instance v10, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    iput-object v10, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->A:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;

    goto :goto_34

    .line 262
    :cond_16
    move-object v1, p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->a(Ljava/lang/String;)V

    .line 263
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->A:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;

    move-wide v1, p2

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->a(J)V

    .line 264
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->A:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;

    move-wide v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->b(J)V

    .line 265
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->A:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->b(Ljava/lang/String;)V

    .line 266
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->A:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;->c(Ljava/lang/String;)V

    .line 268
    :goto_34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->A:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method private a(I)Z
    .registers 5

    .line 825
    nop

    .line 826
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->e()I

    move-result v0

    .line 833
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_4c

    .line 850
    :pswitch_e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i;->b(I)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 851
    const/high16 p1, 0x6400000

    .line 852
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->g()I

    move-result v0

    if-lez v0, :cond_40

    .line 853
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->g()I

    move-result p1

    goto :goto_40

    .line 844
    :pswitch_2b
    nop

    .line 845
    move v1, v2

    goto :goto_4b

    .line 841
    :pswitch_2e
    const/4 v0, 0x4

    if-eq p1, v0, :cond_32

    move v1, v2

    .line 842
    :cond_32
    goto :goto_4b

    .line 838
    :pswitch_33
    nop

    .line 839
    goto :goto_4b

    .line 835
    :pswitch_35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i;->b(I)Z

    move-result p1

    .line 836
    xor-int/lit8 v1, p1, 0x1

    goto :goto_4b

    .line 855
    :cond_40
    :goto_40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->f()I

    move-result v0

    if-le p1, v0, :cond_4b

    .line 856
    move v1, v2

    .line 862
    :cond_4b
    :goto_4b
    return v1

    :pswitch_data_4c
    .packed-switch -0x1
        :pswitch_35
        :pswitch_33
        :pswitch_e
        :pswitch_2e
        :pswitch_2b
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Z)Z
    .registers 7

    .line 635
    nop

    .line 636
    const/4 v0, 0x0

    if-nez p0, :cond_5

    .line 637
    return v0

    .line 641
    :cond_5
    :try_start_5
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aw()Z

    move-result v1

    if-eqz v1, :cond_10

    if-nez p4, :cond_10

    .line 642
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Z

    .line 645
    :cond_10
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 646
    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 648
    const/high16 p2, 0x10000000

    invoke-virtual {p3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 649
    const-string p2, "open_url"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2d

    .line 651
    const/4 v0, 0x1

    .line 654
    goto :goto_2f

    .line 652
    :catchall_2d
    move-exception p0

    .line 653
    nop

    .line 656
    :goto_2f
    return v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 11

    .line 911
    nop

    .line 912
    const/4 v0, 0x1

    if-nez p1, :cond_5

    .line 913
    return v0

    .line 915
    :cond_5
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->i:Z

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 916
    return v2

    .line 918
    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v1

    .line 919
    if-nez v1, :cond_2c

    .line 921
    :try_start_15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v4

    const-string v5, "tt_no_network"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2a} :catch_2b

    .line 924
    goto :goto_2c

    .line 922
    :catch_2b
    move-exception v3

    .line 926
    :cond_2c
    :goto_2c
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(I)Z

    move-result v1

    .line 927
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->J()I

    move-result v3

    if-nez v3, :cond_38

    move v3, v0

    goto :goto_39

    :cond_38
    move v3, v2

    .line 928
    :goto_39
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->K()I

    move-result v4

    if-nez v4, :cond_41

    move v4, v0

    goto :goto_42

    :cond_41
    move v4, v2

    .line 929
    :goto_42
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->K()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4b

    move v5, v0

    goto :goto_4c

    :cond_4b
    move v5, v2

    .line 930
    :goto_4c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->L()I

    move-result v7

    if-nez v7, :cond_54

    move v7, v0

    goto :goto_55

    :cond_54
    move v7, v2

    .line 932
    :goto_55
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->t()Z

    move-result v8

    if-eqz v8, :cond_69

    .line 933
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    if-eqz p1, :cond_60

    .line 934
    return v2

    .line 936
    :cond_60
    if-eqz v5, :cond_63

    .line 937
    return v2

    .line 939
    :cond_63
    iput v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->y:I

    .line 940
    if-eqz v4, :cond_68

    .line 941
    return v1

    .line 943
    :cond_68
    return v0

    .line 944
    :cond_69
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    if-eqz v4, :cond_74

    .line 945
    if-eqz v7, :cond_70

    .line 946
    return v2

    .line 948
    :cond_70
    const/4 p1, 0x3

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->y:I

    .line 949
    return v0

    .line 951
    :cond_74
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->y:I

    .line 952
    if-eqz v3, :cond_79

    .line 953
    return v1

    .line 954
    :cond_79
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->J()I

    move-result p1

    if-ne p1, v6, :cond_89

    .line 956
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->C:Z

    if-eqz p1, :cond_89

    .line 957
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->D:Z

    if-eqz p1, :cond_88

    .line 958
    return v0

    .line 960
    :cond_88
    return v1

    .line 964
    :cond_89
    return v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 2

    .line 77
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/ss/android/a/a/b/c;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->n:Lcom/ss/android/a/a/b/c;

    return-object p0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 4

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "registerMultiProcessListener, mMetaMd5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMLibManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_38

    if-nez p1, :cond_2b

    goto :goto_38

    .line 1151
    :cond_2b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$5;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1170
    return-void

    .line 1149
    :cond_38
    :goto_38
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .registers 1

    .line 77
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/ss/android/a/a/b/b;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m:Lcom/ss/android/a/a/b/b;

    return-object p0
.end method

.method private static c(Ljava/lang/String;)V
    .registers 2

    .line 281
    const-string v0, "DMLibManager"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/ss/android/a/a/b/a;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->l:Lcom/ss/android/a/a/b/a;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lorg/json/JSONObject;
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->v()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Ljava/lang/String;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Ljava/util/List;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->B:Ljava/util/List;

    return-object p0
.end method

.method private h(Z)V
    .registers 5

    .line 1266
    if-eqz p1, :cond_10

    .line 1267
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    const-string v2, "quickapp_success"

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 1269
    :cond_10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    const-string v2, "quickapp_fail"

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    :goto_1d
    return-void
.end method

.method private o()V
    .registers 1

    .line 329
    return-void
.end method

.method private p()V
    .registers 3

    .line 389
    const-string v0, "tryReleaseResource=="

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Ljava/lang/String;)V

    .line 390
    nop

    .line 391
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_10

    .line 392
    const-string v0, "tryReleaseResource==  mContext is null"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Ljava/lang/String;)V

    .line 393
    return-void

    .line 395
    :cond_10
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_21

    .line 396
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_22

    .line 395
    :cond_21
    const/4 v0, 0x0

    .line 398
    :goto_22
    if-nez v0, :cond_2a

    .line 399
    const-string v0, "tryReleaseResource==  activity is null"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Ljava/lang/String;)V

    .line 400
    return-void

    .line 402
    :cond_2a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 403
    const-string v0, "tryReleaseResource==  isActivityAlive is true"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Ljava/lang/String;)V

    .line 404
    return-void

    .line 406
    :cond_3a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->y()V

    .line 407
    return-void
.end method

.method private declared-synchronized q()V
    .registers 4

    monitor-enter p0

    .line 419
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbindDownload=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_47

    if-nez v0, :cond_23

    .line 421
    monitor-exit p0

    return-void

    .line 423
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 424
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 425
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->n:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;I)V

    .line 427
    :cond_42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->p()V
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_47

    .line 428
    monitor-exit p0

    return-void

    .line 418
    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized r()V
    .registers 6

    monitor-enter p0

    .line 431
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindDownload=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_43

    if-nez v0, :cond_23

    .line 434
    monitor-exit p0

    return-void

    .line 437
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 442
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 443
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->z:Lcom/ss/android/a/a/b/d;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->n:Lcom/ss/android/a/a/b/c;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_43

    .line 444
    monitor-exit p0

    return-void

    .line 430
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private s()V
    .registers 11

    .line 467
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-nez v0, :cond_c

    goto/16 :goto_e0

    .line 472
    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v0

    if-nez v0, :cond_31

    .line 475
    :try_start_1c
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a:Ljava/lang/String;

    .line 476
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 477
    if-eqz v0, :cond_2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_30

    if-nez v0, :cond_2f

    .line 479
    return-void

    .line 482
    :cond_2f
    goto :goto_31

    .line 481
    :catchall_30
    move-exception v0

    .line 485
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->E()Z

    move-result v0

    if-nez v0, :cond_5f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 486
    const-string v0, "changeDownloadStatus, not support pause/continue function"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Ljava/lang/String;)V

    .line 489
    :try_start_4e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5c} :catch_5d

    .line 492
    goto :goto_5e

    .line 490
    :catch_5d
    move-exception v0

    .line 493
    :goto_5e
    return-void

    .line 496
    :cond_5f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->t()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 497
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 498
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)V

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;)V

    goto :goto_90

    .line 505
    :cond_78
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->n:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v4

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m:Lcom/ss/android/a/a/b/b;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->l:Lcom/ss/android/a/a/b/a;

    invoke-virtual/range {v2 .. v8}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 507
    :goto_90
    return-void

    .line 509
    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeDownloadStatus, the current status is1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Ljava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->n:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v3

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m:Lcom/ss/android/a/a/b/b;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->l:Lcom/ss/android/a/a/b/a;

    const/4 v8, 0x0

    new-instance v9, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$3;

    invoke-direct {v9, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)V

    invoke-virtual/range {v1 .. v9}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;Lcom/ss/android/a/a/a/s;Lcom/ss/android/a/a/a/n;)V

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeDownloadStatus, the current status is2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Ljava/lang/String;)V

    .line 527
    return-void

    .line 468
    :cond_e0
    :goto_e0
    return-void
.end method

.method private t()Z
    .registers 5

    .line 531
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 532
    return v1

    .line 534
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    .line 535
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->au()Ljava/lang/String;

    move-result-object v2

    .line 536
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1a

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v1, 0x1

    .line 537
    :cond_1a
    return v1
.end method

.method private u()Z
    .registers 7

    .line 611
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_36

    .line 615
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    invoke-static {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Z)Z

    move-result v0

    .line 616
    if-eqz v0, :cond_32

    .line 617
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 618
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 619
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->v:Lcom/bytedance/sdk/openadsdk/utils/al;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 620
    goto :goto_35

    .line 621
    :cond_32
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h(Z)V

    .line 624
    :goto_35
    return v0

    .line 612
    :cond_36
    :goto_36
    return v1
.end method

.method private v()Lorg/json/JSONObject;
    .registers 4

    .line 1006
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1008
    :try_start_5
    const-string v1, "download_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d

    .line 1011
    goto :goto_11

    .line 1009
    :catch_d
    move-exception v1

    .line 1010
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1012
    :goto_11
    return-object v0
.end method

.method private w()V
    .registers 3

    .line 1020
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->x()V

    .line 1021
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1023
    return-void
.end method

.method private x()V
    .registers 1

    .line 1038
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e()V

    .line 1039
    return-void
.end method

.method private y()V
    .registers 3

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "unregisterMultiProcessListener, mMetaMd5:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMLibManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1185
    return-void

    .line 1187
    :cond_29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$6;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1207
    return-void
.end method

.method private z()V
    .registers 2

    .line 1274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1275
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->i()Z

    .line 1277
    :cond_d
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    .line 1281
    return-object v1

    .line 1283
    :cond_9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1284
    if-nez p1, :cond_10

    .line 1285
    return-object v1

    .line 1287
    :cond_10
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1288
    return-object v1

    .line 1290
    :cond_1b
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1291
    return-object p1
.end method

.method public a()V
    .registers 1

    .line 313
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->r()V

    .line 315
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->o()V

    .line 316
    return-void
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V
    .registers 5

    .line 1220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->t:Ljava/util/HashSet;

    if-nez v0, :cond_b

    .line 1221
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->t:Ljava/util/HashSet;

    .line 1224
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->t:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V

    .line 1227
    return-void
.end method

.method public a(J)V
    .registers 4

    .line 453
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 454
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 4

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActivity==activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DMLibManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    if-nez p1, :cond_1f

    .line 375
    return-void

    .line 377
    :cond_1f
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/ref/WeakReference;

    .line 378
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->r()V

    .line 379
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 2

    .line 1231
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_2e

    goto :goto_2d

    .line 1233
    :pswitch_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i;->a()Z

    move-result p1

    if-nez p1, :cond_29

    .line 1234
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h(Z)V

    .line 1235
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->w:Z

    if-eqz p1, :cond_28

    .line 1237
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 1238
    return-void

    .line 1240
    :cond_25
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->z()V

    .line 1242
    :cond_28
    return-void

    .line 1244
    :cond_29
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h(Z)V

    .line 1247
    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x9
        :pswitch_6
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    .line 383
    if-eqz p1, :cond_9

    .line 384
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->r:Ljava/lang/ref/WeakReference;

    .line 386
    :cond_9
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .line 1124
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Z)V

    .line 1125
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Z)V
    .registers 4

    .line 1129
    if-nez p1, :cond_3

    .line 1130
    return-void

    .line 1132
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->u:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    if-eqz v0, :cond_a

    .line 1133
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 1135
    :cond_a
    if-eqz p2, :cond_f

    .line 1136
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 1141
    :cond_f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->r()V

    .line 1142
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 14

    .line 1069
    const/4 v0, 0x0

    if-eqz p1, :cond_db

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_db

    .line 1072
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f7f\u7528\u5305\u540d\u8c03\u8d77 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMLibManager"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    if-eqz v1, :cond_4c

    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f7f\u7528\u5305\u540d\u8c03\u8d77\uff0c \u5f00\u59cb\u4e0a\u62a5 lp_open_dpl packageName "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    const-string v5, "lp_open_dpl"

    invoke-static {v1, v3, v4, v5, p2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :cond_4c
    :try_start_4c
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_d9

    const-string v3, "lp_openurl_failed"

    if-eqz v1, :cond_c4

    .line 1080
    const/4 v1, 0x1

    :try_start_55
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 1081
    if-nez p2, :cond_5c

    .line 1082
    return v0

    .line 1085
    :cond_5c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->n()V

    .line 1086
    const-string v4, "START_ONLY_FOR_ANDROID"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1087
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1088
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    if-eqz p1, :cond_7d

    .line 1089
    const-string p1, "\u4f7f\u7528\u5305\u540d\u8c03\u8d77\uff0c\u5f00\u59cb\u8c03\u8d77\uff0c\u4e0a\u62a5 lp_openurl "

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    const-string v5, "lp_openurl"

    invoke-static {p1, p2, v4, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :cond_7d
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    if-eqz p1, :cond_8c

    .line 1093
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k;->a()Lcom/bytedance/sdk/openadsdk/c/k;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-virtual {p1, p2, v4, v1}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Z)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_8c} :catch_8d
    .catchall {:try_start_55 .. :try_end_8c} :catchall_d9

    .line 1095
    :cond_8c
    return v1

    .line 1096
    :catch_8d
    move-exception p1

    .line 1097
    :try_start_8e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->W()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_af

    .line 1098
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->W()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;ILjava/lang/String;ZLjava/util/Map;)Z

    .line 1100
    :cond_af
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    if-eqz p1, :cond_c3

    .line 1101
    const-string p1, "\u4f7f\u7528\u5305\u540d\u8c03\u8d77\uff0c\u5f00\u59cb\u8c03\u8d77\uff0c\u8c03\u8d77\u5f02\u5e38\uff0c\u4e0a\u62a5 lp_openurl_failed "

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {p1, p2, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :cond_c3
    return v1

    .line 1107
    :cond_c4
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    if-eqz p1, :cond_d8

    .line 1108
    const-string p1, "\u4f7f\u7528\u5305\u540d\u8c03\u8d77\uff0c\u8be5app\u672a\u5b89\u88c5 \uff0c\u4e0a\u62a5 lp_openurl_failed "

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_8e .. :try_end_d8} :catchall_d9

    .line 1113
    :cond_d8
    goto :goto_da

    .line 1112
    :catchall_d9
    move-exception p1

    .line 1114
    :goto_da
    return v0

    .line 1070
    :cond_db
    :goto_db
    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z
    .registers 5

    .line 1119
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a(Z)Z
    .registers 2

    .line 772
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->w:Z

    .line 773
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->u()Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 2

    .line 333
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_d

    .line 334
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Landroid/content/Context;)V

    .line 336
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->o:Z

    .line 338
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->r()V

    .line 340
    return-void
.end method

.method public b(J)V
    .registers 4

    .line 547
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-nez p1, :cond_5

    .line 548
    return-void

    .line 550
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 551
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->n:Lcom/ss/android/a/a/b/c;

    invoke-interface {p2}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;Z)V

    .line 552
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->r()V

    .line 553
    return-void
.end method

.method public b(Z)Z
    .registers 2

    .line 1065
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .registers 2

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->o:Z

    .line 346
    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 415
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->s:Z

    .line 416
    return-void
.end method

.method public d()V
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->u:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    if-eqz v0, :cond_7

    .line 351
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a()V

    .line 353
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->q()V

    .line 355
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->t:Ljava/util/HashSet;

    if-eqz v0, :cond_29

    .line 356
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 357
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 358
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 359
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(I)V

    .line 360
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 361
    goto :goto_12

    .line 364
    :cond_29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_33

    .line 365
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/ref/WeakReference;

    .line 368
    :cond_33
    return-void
.end method

.method public d(Z)V
    .registers 2

    .line 1175
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->C:Z

    .line 1176
    return-void
.end method

.method public e()V
    .registers 1

    .line 463
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->s()V

    .line 464
    return-void
.end method

.method public e(Z)V
    .registers 2

    .line 1179
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->D:Z

    .line 1180
    return-void
.end method

.method public f()V
    .registers 3

    .line 542
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(J)V

    .line 543
    return-void
.end method

.method public f(Z)V
    .registers 2

    .line 1250
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    .line 1251
    return-void
.end method

.method public g()V
    .registers 3

    .line 557
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-nez v0, :cond_b

    goto :goto_50

    .line 562
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    const-string v1, "feed_video_middle_page"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 563
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    .line 567
    :cond_1e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    .line 568
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 569
    return-void

    .line 571
    :cond_2b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->j()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 572
    return-void

    .line 576
    :cond_32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->u()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 577
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 578
    return-void

    .line 582
    :cond_3e
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->w:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 583
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 584
    return-void

    .line 587
    :cond_4c
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->z()V

    .line 588
    return-void

    .line 558
    :cond_50
    :goto_50
    return-void
.end method

.method public g(Z)V
    .registers 2

    .line 1262
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->i:Z

    .line 1263
    return-void
.end method

.method public h()Z
    .registers 3

    .line 595
    nop

    .line 597
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->O()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-eqz v0, :cond_26

    .line 598
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->O()Lcom/bytedance/sdk/openadsdk/core/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/h;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 599
    const/4 v0, 0x1

    goto :goto_27

    .line 602
    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method public i()Z
    .registers 6

    .line 778
    nop

    .line 779
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3f

    .line 780
    nop

    .line 781
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v0

    .line 782
    if-nez v0, :cond_2e

    .line 784
    :try_start_16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_no_network"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2b} :catch_2c

    goto :goto_2d

    .line 785
    :catch_2c
    move-exception v0

    .line 787
    :goto_2d
    goto :goto_3e

    .line 793
    :cond_2e
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 794
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->n()V

    .line 796
    :cond_3b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->w()V

    .line 800
    :goto_3e
    goto :goto_77

    .line 801
    :cond_3f
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 802
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->n()V

    .line 805
    :cond_4c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e()V

    .line 807
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_71

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_62

    goto :goto_71

    .line 809
    :cond_62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_76

    .line 810
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_76

    .line 808
    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 815
    :cond_76
    :goto_76
    move v1, v2

    :goto_77
    return v1
.end method

.method public j()Z
    .registers 7

    .line 1043
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1044
    return v1

    .line 1046
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 1047
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1049
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1052
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v3, "click_open"

    invoke-virtual {p0, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1053
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->h(Lcom/bytedance/sdk/openadsdk/core/d/l;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->j(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1057
    :cond_3e
    return v1

    .line 1059
    :cond_3f
    return v1
.end method

.method public k()Z
    .registers 19

    .line 694
    move-object/from16 v1, p0

    const-string v0, "open_url_app"

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c7

    .line 695
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ai()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/g;->a()Ljava/lang/String;

    move-result-object v2

    .line 696
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u542b\u6709deeplink\u94fe\u63a5 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DMLibManager"

    invoke-static {v5, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DMLibManager \u542b\u6709deeplink\u94fe\u63a5\u5c1d\u8bd5deeplink\u8c03\u8d77 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "deepLink"

    invoke-static {v6, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_190

    .line 699
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 700
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 703
    iget-boolean v4, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    if-eqz v4, :cond_90

    .line 704
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u542b\u6709deeplink\u94fe\u63a5\uff0c\u5f00\u59cb\u4e0a\u62a5 lp_open_dpl schema "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v4

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "lp_open_dpl"

    invoke-static {v4, v9, v10, v11, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :cond_90
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    const-string v4, "lp_deeplink_fail_realtime"

    const-string v9, "lp_openurl_failed"

    const-string v10, "deeplink_fail_realtime"

    if-eqz v2, :cond_165

    .line 709
    const-string v2, "\u542b\u6709deeplink\u94fe\u63a5\uff0c \u8be5app\u5df2\u5b89\u88c5 "

    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_b2

    .line 711
    const/high16 v2, 0x10000000

    invoke-virtual {v8, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 715
    :cond_b2
    :try_start_b2
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->n()V

    .line 716
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1, v2, v0, v11}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v2

    if-nez v2, :cond_ca

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v2

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {v2, v11, v12, v0, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 719
    :cond_ca
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 721
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k;->a()Lcom/bytedance/sdk/openadsdk/c/k;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    iget-boolean v8, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    invoke-virtual {v0, v2, v6, v8}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Z)V

    .line 722
    iget-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    if-eqz v0, :cond_102

    .line 723
    const-string v0, "\u542b\u6709deeplink\u94fe\u63a5\uff0c \u8be5app\u5df2\u5b89\u88c5\uff0c\u8fdb\u884c\u5f00\u59cb\u8c03\u8d77\u4e0a\u62a5 lp_openurl "

    invoke-static {v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    const-string v8, "lp_openurl"

    invoke-static {v0, v2, v6, v8}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    const-string v8, "lp_deeplink_success_realtime"

    invoke-static {v0, v2, v6, v8}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10f

    .line 727
    :cond_102
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    const-string v8, "deeplink_success_realtime"

    invoke-static {v0, v2, v6, v8}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catchall {:try_start_b2 .. :try_end_10f} :catchall_111

    .line 743
    :goto_10f
    nop

    .line 744
    return v7

    .line 729
    :catchall_111
    move-exception v0

    .line 731
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->W()Ljava/lang/String;

    move-result-object v0

    .line 732
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_139

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v11

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->W()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;ILjava/lang/String;ZLjava/util/Map;)Z

    .line 735
    :cond_139
    iget-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    if-eqz v0, :cond_159

    .line 736
    const-string v0, "\u542b\u6709deeplink\u94fe\u63a5\uff0c \u8be5app\u5df2\u5b89\u88c5\uff0c\u8c03\u8d77\u5931\u8d25 \u4e0a\u62a5lp_openurl_failed "

    invoke-static {v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {v0, v2, v5, v9}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {v0, v2, v5, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_164

    .line 740
    :cond_159
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {v0, v2, v4, v10}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :goto_164
    return v3

    .line 746
    :cond_165
    iget-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    if-eqz v0, :cond_185

    .line 747
    const-string v0, "\u542b\u6709deeplink\u94fe\u63a5\uff0c \u8be5app\u672a\u5b89\u88c5\uff0c\u4e0a\u62a5lp_openurl_failed "

    invoke-static {v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {v0, v2, v5, v9}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {v0, v2, v5, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_190

    .line 751
    :cond_185
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {v0, v2, v4, v10}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_190
    :goto_190
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1c7

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1c7

    .line 757
    iget-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g:Z

    if-eqz v0, :cond_1ae

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1c7

    .line 758
    :cond_1ae
    iput-boolean v7, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->g:Z

    .line 760
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v4, "open_fallback_url"

    invoke-virtual {v1, v0, v4, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_1c7

    .line 761
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->m()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {v0, v2, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 767
    :cond_1c7
    return v3
.end method

.method protected l()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->j:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_17

    .line 273
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 274
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 275
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->j:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 277
    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->j:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object v0
.end method

.method protected m()Landroid/content/Context;
    .registers 2

    .line 688
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_14

    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_18

    :cond_14
    :goto_14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    :goto_18
    return-object v0
.end method

.method protected n()V
    .registers 3

    .line 1027
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 1028
    return-void

    .line 1030
    :cond_5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aw()Z

    move-result v0

    .line 1031
    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->h:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 1032
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTMiddlePageActivity;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1033
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Z

    .line 1035
    :cond_1e
    return-void
.end method
