.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;
.super Ljava/lang/Object;
.source "DMLibManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/bytedance/sdk/openadsdk/IListenerManager;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/core/d/b;

.field private final d:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/ss/android/a/a/b/a;

.field private h:Lcom/ss/android/a/a/b/b;

.field private i:Lcom/ss/android/a/a/b/c;

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Z

.field private m:Z

.field private final n:Ljava/util/concurrent/atomic/AtomicLong;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

.field private final t:Lcom/bytedance/sdk/openadsdk/utils/ak;

.field private u:Z

.field private v:Ljava/lang/String;

.field private final w:Lcom/ss/android/a/a/b/d;

.field private x:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:I

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Z

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->n:Ljava/util/concurrent/atomic/AtomicLong;

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->q:Z

    .line 113
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->t:Lcom/bytedance/sdk/openadsdk/utils/ak;

    .line 114
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->u:Z

    .line 117
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->w:Lcom/ss/android/a/a/b/d;

    .line 245
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    .line 937
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->y:Ljava/util/List;

    .line 275
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Ljava/lang/ref/WeakReference;

    .line 276
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 277
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->N()Lcom/bytedance/sdk/openadsdk/core/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    .line 278
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    .line 279
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f:I

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ae()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->v:Ljava/lang/String;

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "====tag==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-nez v0, :cond_ae

    .line 286
    const-string v0, "DMLibManager"

    const-string v1, "download create error: not a App type Ad!"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_ad
    return-void

    .line 290
    :cond_ae
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b7

    .line 291
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Landroid/content/Context;)V

    .line 294
    :cond_b7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/c$a;->a()Lcom/ss/android/downloadad/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->i:Lcom/ss/android/a/a/b/c;

    .line 296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/a$a;->a()Lcom/ss/android/downloadad/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->g:Lcom/ss/android/a/a/b/a;

    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/b$a;->a()Lcom/ss/android/downloadad/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->h:Lcom/ss/android/a/a/b/b;

    .line 298
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a()V

    goto :goto_ad
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 73
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 73
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 20

    .prologue
    .line 249
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    if-nez v2, :cond_1f

    .line 250
    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    .line 258
    :goto_14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;I)V

    .line 259
    return-void

    .line 252
    :cond_1f
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->a(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    invoke-virtual {v2, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->a(J)V

    .line 254
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->b(J)V

    .line 255
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->b(Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$a;->c(Ljava/lang/String;)V

    goto :goto_14
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 813
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 837
    :cond_c
    :goto_c
    return-void

    .line 817
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-eqz v0, :cond_c

    .line 821
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$5;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    invoke-static {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    goto :goto_c
.end method

.method private a(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 722
    .line 723
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h/l;->f()I

    move-result v2

    .line 730
    packed-switch v2, :pswitch_data_4c

    .line 747
    :pswitch_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->b(I)Z

    move-result v2

    if-nez v2, :cond_49

    .line 748
    const/high16 v2, 0x6400000

    .line 749
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/b;->g()I

    move-result v3

    if-lez v3, :cond_2b

    .line 750
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->g()I

    move-result v2

    .line 752
    :cond_2b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->g()I

    move-result v3

    if-le v2, v3, :cond_49

    .line 759
    :cond_35
    :goto_35
    :pswitch_35
    return v0

    .line 732
    :pswitch_36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->b(I)Z

    move-result v2

    if-eqz v2, :cond_35

    move v0, v1

    goto :goto_35

    :pswitch_42
    move v0, v1

    .line 736
    goto :goto_35

    .line 738
    :pswitch_44
    const/4 v2, 0x4

    if-ne p1, v2, :cond_35

    move v0, v1

    goto :goto_35

    :cond_49
    move v0, v1

    goto :goto_35

    .line 730
    nop

    :pswitch_data_4c
    .packed-switch -0x1
        :pswitch_36
        :pswitch_42
        :pswitch_d
        :pswitch_44
        :pswitch_35
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 573
    .line 574
    if-nez p0, :cond_4

    .line 594
    :goto_3
    return v0

    .line 579
    :cond_4
    :try_start_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->d()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 580
    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V

    .line 583
    :cond_11
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 584
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 586
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    const-string v1, "open_url"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2c} :catch_2e

    .line 589
    const/4 v0, 0x1

    goto :goto_3

    .line 590
    :catch_2e
    move-exception v1

    goto :goto_3
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;)Z
    .registers 5

    .prologue
    .line 912
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    return-object v0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 5

    .prologue
    .line 940
    const-string v0, "DMLibManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "registerMultiProcessListener, mMetaMd5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2a

    if-nez p1, :cond_2b

    .line 963
    :cond_2a
    :goto_2a
    return-void

    .line 944
    :cond_2b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$6;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$6;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 962
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2a
.end method

.method private static b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 271
    const-string v0, "DMLibManager"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Lcom/bytedance/sdk/openadsdk/core/d/b;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    return-object v0
.end method

.method private d(Z)V
    .registers 6

    .prologue
    .line 1033
    if-eqz p1, :cond_10

    .line 1034
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    const-string v3, "quickapp_success"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :goto_f
    return-void

    .line 1036
    :cond_10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    const-string v3, "quickapp_fail"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->u()V

    return-void
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)Ljava/util/List;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->y:Ljava/util/List;

    return-object v0
.end method

.method private n()V
    .registers 1

    .prologue
    .line 319
    return-void
.end method

.method private o()V
    .registers 3

    .prologue
    .line 379
    const-string v0, "tryReleaseResource=="

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    .line 380
    const/4 v0, 0x0

    .line 381
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_10

    .line 382
    const-string v0, "tryReleaseResource==  mContext is null"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    .line 397
    :goto_f
    return-void

    .line 385
    :cond_10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_22

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 388
    :cond_22
    if-nez v0, :cond_2a

    .line 389
    const-string v0, "tryReleaseResource==  activity is null"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    goto :goto_f

    .line 392
    :cond_2a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 393
    const-string v0, "tryReleaseResource==  isActivityAlive is true"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    goto :goto_f

    .line 396
    :cond_3a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->w()V

    goto :goto_f
.end method

.method private declared-synchronized p()V
    .registers 4

    .prologue
    .line 409
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbindDownload=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_46

    if-nez v0, :cond_23

    .line 418
    :goto_21
    monitor-exit p0

    return-void

    .line 413
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 414
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 415
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->i:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/h;->a(Ljava/lang/String;I)V

    .line 417
    :cond_42
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->o()V
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_46

    goto :goto_21

    .line 409
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized q()V
    .registers 6

    .prologue
    .line 421
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindDownload=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_45

    if-nez v0, :cond_23

    .line 434
    :goto_21
    monitor-exit p0

    return-void

    .line 427
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 432
    :cond_2b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 433
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->w:Lcom/ss/android/a/a/b/d;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->i:Lcom/ss/android/a/a/b/c;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/downloadlib/h;->a(Landroid/content/Context;ILcom/ss/android/a/a/b/d;Lcom/ss/android/a/a/b/c;)V
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_45

    goto :goto_21

    .line 421
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private r()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->i()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move v0, v1

    .line 562
    :goto_c
    return v0

    .line 553
    :cond_d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Z

    move-result v0

    .line 554
    if-eqz v0, :cond_31

    .line 555
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 556
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 557
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->t:Lcom/bytedance/sdk/openadsdk/utils/ak;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ak;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 559
    :cond_31
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Z)V

    goto :goto_c
.end method

.method private s()Landroid/content/Context;
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_10
.end method

.method private t()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 763
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_confirm_download"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-eqz v1, :cond_e0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e0

    .line 765
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_confirm_download_have_app_name"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/d/b;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 767
    :goto_35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    const-string v4, "tt_tip"

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 771
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_67

    .line 772
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 773
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_7d

    .line 774
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_65

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_7b

    :cond_65
    move v0, v3

    :goto_66
    move v2, v0

    .line 779
    :cond_67
    :goto_67
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_77

    if-eqz v2, :cond_82

    .line 780
    :cond_77
    invoke-direct {p0, v4, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :goto_7a
    return-void

    :cond_7b
    move v0, v2

    .line 774
    goto :goto_66

    .line 776
    :cond_7d
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    goto :goto_67

    .line 785
    :cond_82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_d5

    .line 786
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Theme.Dialog.TTDownload"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 787
    :goto_92
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 788
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 789
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 790
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v1

    const-string v3, "tt_label_ok"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$4;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 797
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v1

    const-string v3, "tt_label_cancel"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$3;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    .line 803
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 809
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_7a

    .line 786
    :cond_d5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Theme.Dialog.TTDownloadOld"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_92

    :cond_e0
    move-object v1, v0

    goto/16 :goto_35
.end method

.method private u()V
    .registers 3

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->v()V

    .line 841
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 844
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 845
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V

    .line 847
    :cond_1a
    return-void
.end method

.method private v()V
    .registers 1

    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f()V

    .line 851
    return-void
.end method

.method private w()V
    .registers 4

    .prologue
    .line 966
    const-string v0, "DMLibManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unregisterMultiProcessListener, mMetaMd5:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-nez v0, :cond_29

    .line 990
    :goto_28
    return-void

    .line 970
    :cond_29
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b$7;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 989
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_28
.end method

.method private x()V
    .registers 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1042
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j()Z

    .line 1044
    :cond_f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->q()V

    .line 305
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->n()V

    .line 306
    return-void
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V
    .registers 5

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->r:Ljava/util/HashSet;

    if-nez v0, :cond_b

    .line 1004
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->r:Ljava/util/HashSet;

    .line 1007
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->r:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1009
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(ILcom/bytedance/sdk/openadsdk/downloadnew/core/a$a;)V

    .line 1010
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 443
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 444
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 362
    const-string v0, "DMLibManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActivity==activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    if-nez p1, :cond_1f

    .line 369
    :goto_1e
    return-void

    .line 367
    :cond_1f
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Ljava/lang/ref/WeakReference;

    .line 368
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->q()V

    goto :goto_1e
.end method

.method public a(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 1014
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    .line 1030
    :cond_5
    :goto_5
    return-void

    .line 1016
    :pswitch_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1017
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Z)V

    .line 1018
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->u:Z

    if-eqz v0, :cond_5

    .line 1020
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->u:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1023
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x()V

    goto :goto_5

    .line 1027
    :cond_2a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d(Z)V

    goto :goto_5

    .line 1014
    nop

    :pswitch_data_30
    .packed-switch 0x9
        :pswitch_6
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 373
    if-eqz p1, :cond_9

    .line 374
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->p:Ljava/lang/ref/WeakReference;

    .line 376
    :cond_9
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .prologue
    .line 917
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Z)V

    .line 918
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Z)V
    .registers 4

    .prologue
    .line 922
    if-nez p1, :cond_3

    .line 935
    :goto_2
    return-void

    .line 925
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    if-eqz v0, :cond_c

    .line 926
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 928
    :cond_c
    if-eqz p2, :cond_11

    .line 929
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 933
    :cond_11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->p()V

    .line 934
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->q()V

    goto :goto_2
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 881
    if-eqz p1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    move v0, v6

    .line 907
    :goto_b
    return v0

    .line 885
    :cond_c
    :try_start_c
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->c(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_59

    move-result v0

    if-eqz v0, :cond_5a

    .line 887
    :try_start_12
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 888
    if-nez v0, :cond_1a

    move v0, v6

    .line 889
    goto :goto_b

    .line 892
    :cond_1a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->d()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 893
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V

    .line 895
    :cond_2b
    const-string v1, "START_ONLY_FOR_ANDROID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 896
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_34} :catch_36
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_34} :catch_59

    move v0, v7

    .line 897
    goto :goto_b

    .line 898
    :catch_36
    move-exception v0

    .line 899
    :try_start_37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 900
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->E()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;ILjava/lang/String;Z)Z
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_57} :catch_59

    :cond_57
    move v0, v7

    .line 902
    goto :goto_b

    .line 905
    :catch_59
    move-exception v0

    :cond_5a
    move v0, v6

    .line 907
    goto :goto_b
.end method

.method public a(Z)Z
    .registers 3

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->u:Z

    .line 682
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->r()Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 323
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_d

    .line 324
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Landroid/content/Context;)V

    .line 326
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m:Z

    .line 328
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->q()V

    .line 330
    return-void
.end method

.method public b(J)V
    .registers 6

    .prologue
    .line 491
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-nez v0, :cond_5

    .line 497
    :goto_4
    return-void

    .line 494
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 495
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->i:Lcom/ss/android/a/a/b/c;

    invoke-interface {v1}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/h;->a(Ljava/lang/String;Z)V

    .line 496
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->q()V

    goto :goto_4
.end method

.method public b(Z)Z
    .registers 3

    .prologue
    .line 877
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m:Z

    .line 336
    return-void
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 405
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->q:Z

    .line 406
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    if-eqz v0, :cond_9

    .line 341
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s:Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/c;->a()V

    .line 343
    :cond_9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->p()V

    .line 345
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->r:Ljava/util/HashSet;

    if-eqz v0, :cond_2d

    .line 346
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 347
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 348
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 349
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(I)V

    .line 350
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_16

    .line 354
    :cond_2d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_39

    .line 355
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b:Ljava/lang/ref/WeakReference;

    .line 358
    :cond_39
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public f()V
    .registers 8

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-nez v0, :cond_b

    .line 482
    :cond_a
    :goto_a
    return-void

    .line 458
    :cond_b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 461
    :try_start_1b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a:Ljava/lang/String;

    .line 462
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 463
    if-eqz v0, :cond_2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2a} :catch_a3

    move-result v0

    if-eqz v0, :cond_a

    .line 471
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->s()Z

    move-result v0

    if-nez v0, :cond_59

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 472
    const-string v0, "changeDownloadStatus, not support pause/continue function"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 478
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeDownloadStatus, the current status is1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    .line 479
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->i:Lcom/ss/android/a/a/b/c;

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->h:Lcom/ss/android/a/a/b/b;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->g:Lcom/ss/android/a/a/b/a;

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/downloadlib/h;->a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeDownloadStatus, the current status is2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 467
    :catch_a3
    move-exception v0

    goto :goto_2d
.end method

.method public g()V
    .registers 3

    .prologue
    .line 486
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(J)V

    .line 487
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 501
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-nez v0, :cond_c

    .line 526
    :cond_b
    :goto_b
    return-void

    .line 505
    :cond_c
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->m()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 506
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_b

    .line 509
    :cond_18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k()Z

    move-result v0

    if-nez v0, :cond_b

    .line 514
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->r()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 515
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_b

    .line 520
    :cond_2a
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->u:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 521
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_b

    .line 525
    :cond_38
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->x()V

    goto :goto_b
.end method

.method public i()Z
    .registers 4

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 535
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->y()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-eqz v1, :cond_27

    .line 536
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->y()Lcom/bytedance/sdk/openadsdk/core/d/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/g;->b()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_27

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 537
    const/4 v0, 0x1

    .line 540
    :cond_27
    return v0
.end method

.method public j()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 687
    .line 688
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v0, :cond_38

    .line 690
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v2

    .line 691
    if-nez v2, :cond_2a

    .line 692
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_no_network"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 712
    :goto_29
    return v0

    .line 694
    :cond_2a
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 695
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->t()V

    goto :goto_29

    .line 697
    :cond_34
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->u()V

    goto :goto_29

    .line 702
    :cond_38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->f()V

    .line 704
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4d

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_54

    .line 705
    :cond_4d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v0, v1

    goto :goto_29

    .line 706
    :cond_54
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_62

    .line 707
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_62
    move v0, v1

    goto :goto_29
.end method

.method public k()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 855
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    if-nez v2, :cond_7

    .line 871
    :cond_6
    :goto_6
    return v0

    .line 858
    :cond_7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/b;->d()Ljava/lang/String;

    move-result-object v2

    .line 859
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 861
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 864
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    const-string v2, "click_open"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 865
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->f(Lcom/bytedance/sdk/openadsdk/core/d/k;)Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/bytedance/sdk/openadsdk/c/d;->q(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_40
    move v0, v1

    .line 869
    goto :goto_6
.end method

.method protected l()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_17

    .line 263
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    .line 264
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/b;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 267
    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object v0
.end method

.method public m()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 632
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    if-eqz v0, :cond_d9

    .line 633
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->O()Lcom/bytedance/sdk/openadsdk/core/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a0

    .line 635
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 636
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 639
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 640
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_40

    .line 641
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 645
    :cond_40
    :try_start_40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->d()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 646
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V

    .line 649
    :cond_51
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 650
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    const-string v1, "open_url_app"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 651
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    const-string v3, "open_url_app"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->p(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 653
    :cond_72
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k;->a()Lcom/bytedance/sdk/openadsdk/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_7d} :catch_7e

    .line 676
    :goto_7d
    return v5

    .line 654
    :catch_7e
    move-exception v0

    .line 656
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->E()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 657
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->E()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;ILjava/lang/String;Z)Z

    :cond_9e
    move v5, v6

    .line 659
    goto :goto_7d

    .line 665
    :cond_a0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d9

    .line 666
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Z

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 667
    :cond_be
    iput-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->l:Z

    .line 669
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    const-string v1, "open_fallback_url"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 670
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->s()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;->e:Ljava/lang/String;

    const-string v3, "open_fallback_url"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->p(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_d9
    move v5, v6

    .line 676
    goto :goto_7d
.end method
