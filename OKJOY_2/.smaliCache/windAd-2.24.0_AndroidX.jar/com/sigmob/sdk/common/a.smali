.class public Lcom/sigmob/sdk/common/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/f/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/a$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static l:I

.field private static m:I

.field private static n:Z

.field private static o:I

.field private static volatile p:Lcom/sigmob/sdk/common/a;

.field private static final r:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:I

.field private d:Landroid/location/Location;

.field private final e:Lcom/sigmob/sdk/common/f/g;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private k:Z

.field private final q:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "2.24.0"

    sput-object v0, Lcom/sigmob/sdk/common/a;->a:Ljava/lang/String;

    const-string v0, "-1"

    sput-object v0, Lcom/sigmob/sdk/common/a;->c:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcom/sigmob/sdk/common/a;->j:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/sigmob/sdk/common/a;->l:I

    sput v0, Lcom/sigmob/sdk/common/a;->m:I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sigmob/sdk/common/a;->n:Z

    sput v0, Lcom/sigmob/sdk/common/a;->o:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sigmob/sdk/common/a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/sigmob/sdk/common/a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/common/a;->f:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sigmob/sdk/common/a;->k:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "uid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/a;->h:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/sdk/common/f/g;

    invoke-direct {v0, p1, p0}, Lcom/sigmob/sdk/common/f/g;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/common/f/g$a;)V

    iput-object v0, p0, Lcom/sigmob/sdk/common/a;->e:Lcom/sigmob/sdk/common/f/g;

    return-void
.end method

.method public static H()Ljava/lang/String;
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/common/f/c;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    :catchall_5
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static L()Ljava/lang/String;
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/common/f/c;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    :catchall_5
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static M()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static P()Ljava/lang/String;
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/sigmob/devicehelper/DeviceHelper;->getVAID()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    :catchall_5
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static V()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static W()I
    .registers 1

    sget v0, Lcom/sigmob/sdk/common/a;->m:I

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    return-object p0

    :catchall_a
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/a;
    .registers 4

    sget-object p2, Lcom/sigmob/sdk/common/a;->p:Lcom/sigmob/sdk/common/a;

    if-nez p2, :cond_1b

    const-class v0, Lcom/sigmob/sdk/common/a;

    monitor-enter v0

    :try_start_7
    sget-object p2, Lcom/sigmob/sdk/common/a;->p:Lcom/sigmob/sdk/common/a;

    if-nez p2, :cond_16

    new-instance p2, Lcom/sigmob/sdk/common/a;

    invoke-direct {p2, p0}, Lcom/sigmob/sdk/common/a;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/sigmob/sdk/common/a;->p:Lcom/sigmob/sdk/common/a;

    sget-object p0, Lcom/sigmob/sdk/common/a;->p:Lcom/sigmob/sdk/common/a;

    iput-object p1, p0, Lcom/sigmob/sdk/common/a;->g:Ljava/lang/String;

    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    return-object p2
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "-1"

    goto :goto_d

    :cond_b
    sget-object v0, Lcom/sigmob/sdk/common/a;->c:Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, ","

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_27
    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/sigmob/sdk/common/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static ab()Z
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/common/f/c;->d()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    :catchall_5
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public static ac()Z
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/common/f/c;->l()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return v0

    :catchall_5
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public static ah()Z
    .registers 1

    sget-boolean v0, Lcom/sigmob/sdk/common/a;->n:Z

    return v0
.end method

.method public static ai()Lcom/sigmob/sdk/common/a;
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/common/a;->p:Lcom/sigmob/sdk/common/a;

    if-nez v0, :cond_e

    const-class v1, Lcom/sigmob/sdk/common/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/sigmob/sdk/common/a;->p:Lcom/sigmob/sdk/common/a;

    monitor-exit v1

    goto :goto_e

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v0

    :cond_e
    :goto_e
    return-object v0
.end method

.method public static am()I
    .registers 4

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/common/a;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const v3, 0xffffff

    if-le v2, v3, :cond_e

    const/4 v2, 0x1

    :cond_e
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method public static b()Z
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/a;->V()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ah()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "androidx.core.content.ContextCompat"

    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v1

    const/4 v1, 0x0

    :goto_9
    :try_start_9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_e

    goto :goto_f

    :catchall_e
    move-exception v0

    :goto_f
    if-eqz v1, :cond_33

    :try_start_11
    new-instance v0, Lcom/sigmob/sdk/common/f/n$a;

    const-string v2, "checkSelfPermission"

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/common/f/n$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const-class v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/sigmob/sdk/common/f/n$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/common/f/n$a;

    const-class p0, Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/sigmob/sdk/common/f/n$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/common/f/n$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/f/n$a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_33

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_32

    if-nez p0, :cond_33

    const/4 p0, 0x1

    return p0

    :catchall_32
    move-exception p0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method public static q()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/sigmob/sdk/common/f/c;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/sigmob/sdk/common/f/c;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/sigmob/sdk/common/f/c;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/sigmob/sdk/common/f/c;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static w()Ljava/lang/Long;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/f/c;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static x()Ljava/lang/Integer;
    .registers 1

    invoke-static {}, Lcom/sigmob/sdk/common/f/c;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Ljava/lang/Integer;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->A(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v0

    :catchall_b
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public D()Ljava/lang/Integer;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->m(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v0

    :catchall_b
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Lcom/sigmob/sdk/common/f/c$a;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->q(Landroid/content/Context;)Lcom/sigmob/sdk/common/f/c$a;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public N()Ljava/util/Locale;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->v(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getDisable_up_OAid()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    goto :goto_27

    :pswitch_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_27

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/devicehelper/DeviceHelper;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_27

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/devicehelper/DeviceHelper;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-object v0

    :catchall_26
    move-exception v0

    :cond_27
    :goto_27
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_19
        :pswitch_c
    .end packed-switch
.end method

.method public Q()Landroid/util/DisplayMetrics;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->y(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public R()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public T()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/common/a;->i:I

    return v0
.end method

.method public U()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/common/a;->k:Z

    return v0
.end method

.method public X()I
    .registers 2

    sget v0, Lcom/sigmob/sdk/common/a;->l:I

    return v0
.end method

.method public Y()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;)I
    .registers 3

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    return p1
.end method

.method public a(I)Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sigmob/devicehelper/DeviceHelper;->getIMEI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object p1

    :catchall_7
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1d
    return-object p2
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_33

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringResources resid"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_33
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_38
    return-object p2
.end method

.method public a(Landroid/location/Location;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/a;->d:Landroid/location/Location;

    return-void
.end method

.method public a(Landroid/view/WindowInsets;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/common/a;->i:I

    :cond_14
    return-void
.end method

.method public a(Lcom/sigmob/sdk/common/f/a;Lcom/sigmob/sdk/common/f/a;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIdChanged() called with: oldId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "], newId = ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/common/a;->k:Z

    return-void
.end method

.method public aa()Ljava/lang/Long;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->r(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v0

    :catchall_b
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public ad()Landroid/util/DisplayMetrics;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->D(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public ae()Z
    .registers 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/e/m;->b(Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return v0

    :catchall_12
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public af()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public ag()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/b;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public aj()Landroid/location/LocationManager;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v0

    :catchall_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public ak()Landroid/location/Location;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->aj()Landroid/location/LocationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/a;->aj()Landroid/location/LocationManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_24

    goto :goto_d

    :cond_24
    iput-object v1, p0, Lcom/sigmob/sdk/common/a;->d:Landroid/location/Location;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception v0

    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->d:Landroid/location/Location;

    return-object v0
.end method

.method public al()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-string v0, ""

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x1000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    array-length v5, v2

    if-ge v4, v5, :cond_56

    aget-object v5, v2, v4

    invoke-virtual {v1, v5, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_22

    move v5, v6

    goto :goto_23

    :cond_22
    move v5, v3

    :goto_23
    if-eqz v5, :cond_53

    array-length v5, v2

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_3d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    :goto_38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    :cond_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_38

    :cond_53
    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "permissionReq:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_80

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_7b
    .catchall {:try_start_2 .. :try_end_7b} :catchall_7c

    return-object p1

    :catchall_7c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_80
    return-object v0
.end method

.method public b(I)V
    .registers 5

    sput p1, Lcom/sigmob/sdk/common/a;->m:I

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lcom/sigmob/sdk/common/a;->m:I

    const-string v2, "wind_agerestricted_status"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setAge_restricted(Ljava/lang/String;)V

    const-string p1, "401"

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setAc_type(Ljava/lang/String;)V

    const-string p1, "coppa"

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setSub_category(Ljava/lang/String;)V

    const-string p1, "privacy"

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->commit()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    :cond_16
    iput-object p1, p0, Lcom/sigmob/sdk/common/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "uid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    goto :goto_33

    :catchall_2b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_gdpr_region"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x2

    :goto_17
    sput p1, Lcom/sigmob/sdk/common/a;->o:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/sigmob/devicehelper/DeviceHelper;->getAAID()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    :catchall_5
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(I)V
    .registers 5

    sput p1, Lcom/sigmob/sdk/common/a;->l:I

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lcom/sigmob/sdk/common/a;->l:I

    const-string v2, "wind_user_age"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setAge(Ljava/lang/String;)V

    const-string p1, "401"

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setAc_type(Ljava/lang/String;)V

    const-string p1, "coppa"

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setSub_category(Ljava/lang/String;)V

    const-string p1, "privacy"

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setCategory(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->commit()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    sput-object p1, Lcom/sigmob/sdk/common/a;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wind_consent_status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c(Z)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/o;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ext_gdpr_region"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_1c

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->isGDPRRegion()Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    sput-boolean p1, Lcom/sigmob/sdk/common/a;->n:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setUser_consent(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ah()Z

    move-result p1

    const-string v1, "1"

    const-string v2, "0"

    if-eqz p1, :cond_14

    move-object p1, v1

    goto :goto_15

    :cond_14
    move-object p1, v2

    :goto_15
    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setGdpr_region(Ljava/lang/String;)V

    :try_start_18
    iget-object p1, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {p1}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->getInstance(Landroid/content/Context;)Lcom/sigmob/windad/consent/WindAdConsentInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/consent/WindAdConsentInformation;->isRequestLocationInEeaOrUnknown()Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    move-object v1, v2

    :goto_26
    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setGdpr_dialog_region(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2a

    goto :goto_2b

    :catchall_2a
    move-exception p1

    :goto_2b
    const-string p1, "consent"

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setSub_category(Ljava/lang/String;)V

    const-string p1, "gdpr"

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setCategory(Ljava/lang/String;)V

    const-string p1, "401"

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->setAc_type(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityGDPR;->commit()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    const-string v1, "SHA1"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/common/f/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object v0

    :catchall_9
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    const-string v1, "MD5"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/common/f/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object v0

    :catchall_9
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->e:Lcom/sigmob/sdk/common/f/g;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/f/g;->a()Lcom/sigmob/sdk/common/f/a;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/common/f/a;->b:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object v0

    :catchall_9
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/devicehelper/DeviceHelper;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/common/f/c;->f()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    :catchall_5
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/devicehelper/DeviceHelper;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/f/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->j(Landroid/content/Context;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public m()Ljava/lang/Float;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->n(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v0

    :catchall_b
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/Integer;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->p(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v0

    :catchall_b
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/Boolean;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->o(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v0

    :catchall_b
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->s(Landroid/content/Context;)F

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_8

    float-to-int v0, v0

    return v0

    :catchall_8
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public s()Ljava/lang/Integer;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->B(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v0

    :catchall_b
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/Integer;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->z(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v0

    :catchall_b
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    :catchall_7
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public z()Ljava/lang/Integer;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/common/a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/sigmob/sdk/common/f/c;->C(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object v0

    :catchall_b
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method
