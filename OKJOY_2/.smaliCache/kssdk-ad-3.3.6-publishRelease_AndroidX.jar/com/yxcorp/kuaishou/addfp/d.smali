.class final Lcom/yxcorp/kuaishou/addfp/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yxcorp/kuaishou/addfp/a/a/a;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/yxcorp/kuaishou/addfp/a;


# direct methods
.method constructor <init>(Lcom/yxcorp/kuaishou/addfp/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/d;->b:Lcom/yxcorp/kuaishou/addfp/a;

    iput-object p2, p0, Lcom/yxcorp/kuaishou/addfp/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V
    .registers 6

    const-string v0, "KWE"

    if-nez p1, :cond_d

    if-eqz p2, :cond_7

    goto :goto_d

    :cond_7
    :try_start_7
    const-string p1, "not support OAID"

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    goto :goto_2b

    :cond_d
    :goto_d
    invoke-interface {p2}, Lcom/yxcorp/kuaishou/addfp/a/b/a;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get OAID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->b(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    sput-object p1, Lcom/yxcorp/kuaishou/addfp/a;->a:Ljava/lang/String;

    :cond_2b
    :goto_2b
    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->a()Lcom/yxcorp/kuaishou/addfp/a/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yxcorp/kuaishou/addfp/a/a/b;->b()V
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_56

    if-eqz p2, :cond_37

    :try_start_34
    invoke-interface {p2}, Lcom/yxcorp/kuaishou/addfp/a/b/a;->d()V

    :cond_37
    sget-object p1, Lcom/yxcorp/kuaishou/addfp/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_53

    sget-object p1, Lcom/yxcorp/kuaishou/addfp/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_53

    new-instance p1, Lcom/yxcorp/kuaishou/addfp/android/a/e;

    iget-object p2, p0, Lcom/yxcorp/kuaishou/addfp/d;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/yxcorp/kuaishou/addfp/android/a/e;-><init>(Landroid/content/Context;)V

    sget-object p2, Lcom/yxcorp/kuaishou/addfp/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/yxcorp/kuaishou/addfp/android/a/e;->b(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_54

    :cond_53
    return-void

    :catchall_54
    move-exception p1

    return-void

    :catchall_56
    move-exception p1

    :try_start_57
    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_7e

    if-eqz p2, :cond_5f

    :try_start_5c
    invoke-interface {p2}, Lcom/yxcorp/kuaishou/addfp/a/b/a;->d()V

    :cond_5f
    sget-object p1, Lcom/yxcorp/kuaishou/addfp/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7b

    sget-object p1, Lcom/yxcorp/kuaishou/addfp/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7b

    new-instance p1, Lcom/yxcorp/kuaishou/addfp/android/a/e;

    iget-object p2, p0, Lcom/yxcorp/kuaishou/addfp/d;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/yxcorp/kuaishou/addfp/android/a/e;-><init>(Landroid/content/Context;)V

    sget-object p2, Lcom/yxcorp/kuaishou/addfp/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/yxcorp/kuaishou/addfp/android/a/e;->b(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_5c .. :try_end_7b} :catchall_7c

    :cond_7b
    return-void

    :catchall_7c
    move-exception p1

    return-void

    :catchall_7e
    move-exception p1

    if-eqz p2, :cond_84

    :try_start_81
    invoke-interface {p2}, Lcom/yxcorp/kuaishou/addfp/a/b/a;->d()V

    :cond_84
    sget-object p2, Lcom/yxcorp/kuaishou/addfp/a;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a2

    sget-object p2, Lcom/yxcorp/kuaishou/addfp/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a2

    new-instance p2, Lcom/yxcorp/kuaishou/addfp/android/a/e;

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/d;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/yxcorp/kuaishou/addfp/android/a/e;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/yxcorp/kuaishou/addfp/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/yxcorp/kuaishou/addfp/android/a/e;->b(Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_81 .. :try_end_a0} :catchall_a1

    goto :goto_a2

    :catchall_a1
    move-exception p2

    :cond_a2
    :goto_a2
    throw p1
.end method
