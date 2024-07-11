.class public Lcom/yxcorp/kuaishou/addfp/android/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yxcorp/kuaishou/addfp/a/b/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/android/b/e;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, v2, v0}, Lcom/yxcorp/kuaishou/addfp/android/b/c;->a([Ljava/lang/String;ZZ)Lcom/yxcorp/kuaishou/addfp/android/b/d;

    move-result-object p0

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/b/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/yxcorp/kuaishou/addfp/android/b/d;->a:Ljava/lang/String;

    goto :goto_3e

    :cond_15
    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/b/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/b/d;->b:Ljava/lang/String;

    const-string v1, "denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string p0, "KWE_PN"

    goto :goto_3e

    :cond_2a
    iget-object p0, p0, Lcom/yxcorp/kuaishou/addfp/android/b/d;->a:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_35

    const-string p0, "KWE_N"
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_38

    goto :goto_3e

    :cond_35
    const-string p0, "KWE_OTHER"

    goto :goto_3e

    :catchall_38
    move-exception p0

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    const-string p0, "KWE_PE"

    :goto_3e
    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_f

    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_a

    const-string p0, "UnknownHostException"

    return-object p0

    :cond_a
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    :cond_f
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_24

    return-object p0

    :catchall_24
    move-exception p0

    invoke-static {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-gtz v1, :cond_1b

    :try_start_4
    aget-object v2, p1, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_19

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    return v0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_19
    move-exception p0

    return v0

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "KWE_N"

    :cond_8
    return-object p0
.end method

.method public static b(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1b

    :try_start_5
    aget-object v2, p1, v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1a

    if-nez v2, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_1a
    move-exception p0

    :cond_1b
    return v0
.end method


# virtual methods
.method public a(Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    .registers 3

    if-eqz p1, :cond_13

    :try_start_2
    const-string v0, "meizu enter"

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yxcorp/kuaishou/addfp/android/b/e;->c()Z

    move-result v0

    invoke-interface {p1, v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/b/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/d/a/a;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/a/b/d/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/d/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, ""

    :cond_12
    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/android/b/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/d/a/a;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/a/b/d/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/d/a/a;->a()Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 1

    return-void
.end method
