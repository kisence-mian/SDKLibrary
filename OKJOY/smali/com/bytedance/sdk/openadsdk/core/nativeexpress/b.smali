.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;
.super Ljava/lang/Object;
.source "ExpressAdLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;
    }
.end annotation


# static fields
.field private static j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/p;

.field private c:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;

.field private i:I

.field private k:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private l:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->j:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->i:I

    .line 69
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->k:Ljava/util/concurrent/ScheduledFuture;

    .line 70
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->l:Ljava/util/concurrent/ScheduledFuture;

    .line 71
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->m:Ljava/util/concurrent/ScheduledFuture;

    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 76
    if-eqz p1, :cond_29

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Landroid/content/Context;

    .line 81
    :goto_23
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->j:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    return-void

    .line 79
    :cond_29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Landroid/content/Context;

    goto :goto_23
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .registers 5

    .prologue
    .line 248
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->i:I

    packed-switch v0, :pswitch_data_40

    .line 262
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 250
    :pswitch_7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 251
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/n;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_6

    .line 253
    :cond_17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/k;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_6

    .line 256
    :pswitch_21
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_6

    .line 258
    :pswitch_2b
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_6

    .line 260
    :pswitch_35
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/c/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/c/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_6

    .line 248
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_35
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_21
    .end packed-switch
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;
    .registers 2

    .prologue
    .line 85
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .registers 9

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:Ljava/util/List;

    if-nez v0, :cond_5

    .line 175
    :cond_4
    return-void

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 149
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->aa()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 151
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_69

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_69

    .line 152
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->F()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_35
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/j;

    .line 153
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 154
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/g/e;->f()Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a()Lcom/bytedance/sdk/openadsdk/g/a/b$a;

    move-result-object v6

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->b()I

    move-result v7

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->c()I

    move-result v1

    .line 154
    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;II)V

    goto :goto_35

    .line 160
    :cond_69
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_78

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v1

    const/16 v3, 0xf

    if-ne v1, v3, :cond_b

    .line 161
    :cond_78
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 162
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 163
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v1

    .line 166
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h/l;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 167
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/f/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/h/f/b;-><init>()V

    .line 168
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/h/f/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/f/b;

    move-result-object v1

    const v3, 0x32000

    .line 169
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/h/f/b;->a(I)Lcom/bytedance/sdk/openadsdk/h/f/b;

    move-result-object v1

    .line 170
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/f/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/f/b;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f/a;->a()Lcom/bytedance/sdk/openadsdk/h/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/f/a;->a(Lcom/bytedance/sdk/openadsdk/h/f/b;)Z

    goto/16 :goto_b
.end method

.method private a(I)V
    .registers 5

    .prologue
    .line 220
    const-string v0, ""

    .line 221
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:Ljava/util/List;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1f

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_1f
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b()Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->i:I

    .line 225
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    .line 226
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/a/d;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    .line 227
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v1

    .line 228
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 229
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->h(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 230
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 236
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    if-eqz v0, :cond_12

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;->onError(ILjava/lang/String;)V

    .line 240
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->h:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;

    if-eqz v0, :cond_1b

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->h:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;->a()V

    .line 243
    :cond_1b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c()V

    .line 245
    :cond_1e
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .registers 7

    .prologue
    .line 116
    if-nez p1, :cond_3

    .line 139
    :goto_2
    return-void

    .line 119
    :cond_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;-><init>()V

    .line 120
    const/4 v1, 0x2

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/d/l;->e:I

    .line 121
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->i:I

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)V

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/core/p$b;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;I)V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .registers 6

    .prologue
    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->l:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->l:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 367
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->l:Ljava/util/concurrent/ScheduledFuture;

    .line 368
    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v0

    .line 369
    const-string v1, "ExpressAdLoadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckValidFutureTask-->cancel......success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 373
    :cond_2a
    :goto_2a
    return-void

    .line 371
    :catch_2b
    move-exception v0

    goto :goto_2a
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->g:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 183
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    :cond_1a
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->b()V

    return-void
.end method

.method private b(Z)V
    .registers 6

    .prologue
    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->m:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 378
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->m:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v0

    .line 379
    const-string v1, "ExpressAdLoadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckValidDoneFutureTask-->cancel.....success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 384
    :cond_2a
    :goto_2a
    return-void

    .line 381
    :catch_2b
    move-exception v0

    goto :goto_2a
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Ljava/util/List;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->g:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 320
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->g:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 324
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 326
    :cond_13
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Z)V

    .line 327
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->b(Z)V

    .line 328
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c(Z)V

    .line 329
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d()V

    .line 330
    return-void
.end method

.method private c(Z)V
    .registers 6

    .prologue
    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->k:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->k:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 389
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->k:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v0

    .line 390
    const-string v1, "ExpressAdLoadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeOutFutureTask-->cancel......success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 394
    :cond_2a
    :goto_2a
    return-void

    .line 392
    :catch_2b
    move-exception v0

    goto :goto_2a
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    return-object v0
.end method

.method private d()V
    .registers 2

    .prologue
    .line 417
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->j:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->h:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;

    return-object v0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;)V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->c()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;I)V
    .registers 11
    .param p3    # Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;I)V

    .line 97
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;I)V
    .registers 8
    .param p3    # Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 102
    const-string v0, "ExpressAdLoadManager"

    const-string v1, "express ad is loading..."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_f
    return-void

    .line 105
    :cond_10
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->i:I

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 108
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    .line 109
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->h:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b$a;

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->d:Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    goto :goto_f
.end method
