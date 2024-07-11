.class public Lcom/yxcorp/kuaishou/addfp/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static c:I


# instance fields
.field private b:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/yxcorp/kuaishou/addfp/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/yxcorp/kuaishou/addfp/a;->c:I

    const-string v0, "KWE_NS"

    sput-object v0, Lcom/yxcorp/kuaishou/addfp/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/yxcorp/kuaishou/addfp/c;)V
    .registers 2

    invoke-direct {p0}, Lcom/yxcorp/kuaishou/addfp/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/yxcorp/kuaishou/addfp/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final a()Lcom/yxcorp/kuaishou/addfp/a;
    .registers 1

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/e;->a()Lcom/yxcorp/kuaishou/addfp/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a()Lcom/yxcorp/kuaishou/addfp/a/a/b;

    move-result-object v0

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/d;

    invoke-direct {v1, p0, p1}, Lcom/yxcorp/kuaishou/addfp/d;-><init>(Lcom/yxcorp/kuaishou/addfp/a;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-void

    :catchall_d
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/yxcorp/kuaishou/addfp/a;Lcom/yxcorp/kuaishou/addfp/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/yxcorp/kuaishou/addfp/a;->a(Lcom/yxcorp/kuaishou/addfp/b;)V

    return-void
.end method

.method private a(Lcom/yxcorp/kuaishou/addfp/b;)V
    .registers 6

    :try_start_0
    new-instance v0, Lcom/yxcorp/kuaishou/addfp/android/a/e;

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yxcorp/kuaishou/addfp/android/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/android/a/e;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a;->b:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/yxcorp/kuaishou/addfp/a;->a(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/yxcorp/kuaishou/addfp/a;->a(Z)V

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/a/a;->a()Lcom/yxcorp/kuaishou/addfp/android/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/yxcorp/kuaishou/addfp/a;->g:Z

    iget-object v3, p0, Lcom/yxcorp/kuaishou/addfp/a;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yxcorp/kuaishou/addfp/android/a/a;->a(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->f:Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_4b

    if-eqz p1, :cond_4a

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_41

    :cond_3a
    const/4 v0, -0x2

    const-string v1, "need check"

    invoke-interface {p1, v0, v1}, Lcom/yxcorp/kuaishou/addfp/b;->a(ILjava/lang/String;)V

    goto :goto_4a

    :cond_41
    :goto_41
    :try_start_41
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/yxcorp/kuaishou/addfp/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_49

    return-void

    :catchall_49
    move-exception p1

    :cond_4a
    :goto_4a
    return-void

    :catchall_4b
    move-exception v0

    if-eqz p1, :cond_5b

    const/4 v1, -0x1

    :try_start_4f
    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/yxcorp/kuaishou/addfp/b;->a(ILjava/lang/String;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception p1

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method private a(Z)V
    .registers 6

    :try_start_0
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/android/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a()Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_24

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_24

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "cache_e"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a;->e:Ljava/lang/String;

    :cond_24
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_ae

    if-eqz p1, :cond_ad

    const/4 p1, 0x0

    :try_start_2d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_3b

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a;->b:Landroid/content/Context;

    const-string v0, "k_w_o_d_out_dtt"

    invoke-static {p1, v0}, Lcom/yxcorp/kuaishou/addfp/android/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3b
    const-string v0, ""

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/b/a;->a()Z

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a;->b:Landroid/content/Context;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yxcorp/kuaishou/addfp/android/b/e;->b(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/android/a/c;

    move-result-object v0

    const-string v1, "Lm91a2R0ZnQ="

    invoke-virtual {v0, v1}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b2

    :cond_6e
    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/android/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-eqz p1, :cond_80

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-nez v1, :cond_8a

    :cond_80
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/android/a/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    :cond_8a
    if-eqz p1, :cond_b2

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_b2

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/a/a;->a()Lcom/yxcorp/kuaishou/addfp/android/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/android/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b2

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a;->e:Ljava/lang/String;
    :try_end_a8
    .catchall {:try_start_2d .. :try_end_a8} :catchall_a9

    goto :goto_b2

    :catchall_a9
    move-exception p1

    :try_start_aa
    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    :cond_ad
    return-void

    :catchall_ae
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_b2
    :goto_b2
    return-void
.end method

.method static synthetic b(Lcom/yxcorp/kuaishou/addfp/a;)Lcom/yxcorp/kuaishou/addfp/b;
    .registers 1

    iget-object p0, p0, Lcom/yxcorp/kuaishou/addfp/a;->h:Lcom/yxcorp/kuaishou/addfp/b;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->a()Lcom/yxcorp/kuaishou/addfp/android/Orange;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v1, 0x14

    invoke-virtual {v0, p0, p1, v1}, Lcom/yxcorp/kuaishou/addfp/android/Orange;->a(Landroid/content/Context;[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/yxcorp/kuaishou/addfp/a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/yxcorp/kuaishou/addfp/a;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a;->e:Ljava/lang/String;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;ZLcom/yxcorp/kuaishou/addfp/b;)V
    .registers 4

    :try_start_0
    iput-object p3, p0, Lcom/yxcorp/kuaishou/addfp/a;->h:Lcom/yxcorp/kuaishou/addfp/b;

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/yxcorp/kuaishou/addfp/a;->g:Z

    new-instance p1, Lcom/yxcorp/kuaishou/addfp/c;

    invoke-direct {p1, p0}, Lcom/yxcorp/kuaishou/addfp/c;-><init>(Lcom/yxcorp/kuaishou/addfp/a;)V

    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "adsence-dfp"

    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_24

    const/4 p2, -0x1

    invoke-interface {p3, p2, p1}, Lcom/yxcorp/kuaishou/addfp/b;->a(ILjava/lang/String;)V

    :cond_24
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "DFP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_21

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/android/a/c;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/yxcorp/kuaishou/addfp/android/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method
