.class final Lcom/anythink/core/common/g/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/g/d;->r(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    .line 807
    iput-object p1, p0, Lcom/anythink/core/common/g/d$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/core/common/g/d$1;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/g/d$1;->c:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 811
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 812
    const-string v2, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 813
    const-string v3, "getAdvertisingIdInfo"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 814
    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/anythink/core/common/g/d$1;->a:Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 817
    const-string v3, "getId"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 818
    iget-object v3, p0, Lcom/anythink/core/common/g/d$1;->b:[Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v0
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3a

    .line 828
    goto :goto_50

    .line 820
    :catch_3a
    move-exception v1

    .line 823
    :try_start_3b
    new-instance v1, Lcom/anythink/core/common/b/a;

    invoke-direct {v1}, Lcom/anythink/core/common/b/a;-><init>()V

    iget-object v2, p0, Lcom/anythink/core/common/g/d$1;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/a$a;

    move-result-object v1

    .line 824
    iget-object v2, p0, Lcom/anythink/core/common/g/d$1;->b:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/b/a$a;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4e} :catch_4f

    .line 827
    goto :goto_50

    .line 826
    :catch_4f
    move-exception v1

    .line 830
    :goto_50
    iget-object v1, p0, Lcom/anythink/core/common/g/d$1;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    iget-object v1, p0, Lcom/anythink/core/common/g/d$1;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/anythink/core/common/g/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 831
    iget-object v1, p0, Lcom/anythink/core/common/g/d$1;->b:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/anythink/core/common/g/d;->a(Ljava/lang/String;)V

    .line 835
    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lcom/anythink/core/common/g/d$1;->c:Ljava/util/concurrent/ExecutorService;

    monitor-enter v0
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_78

    .line 836
    :try_start_6e
    iget-object v1, p0, Lcom/anythink/core/common/g/d$1;->c:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 837
    monitor-exit v0

    return-void

    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_75

    :try_start_77
    throw v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    .line 838
    :catchall_78
    move-exception v0

    .line 842
    return-void
.end method
