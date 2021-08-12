.class public final Lcom/yxcorp/kuaishou/addfp/a/b/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yxcorp/kuaishou/addfp/a/b/a;
.implements Lcom/yxcorp/kuaishou/addfp/a/b/b;


# instance fields
.field private a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

.field private b:Lcom/yxcorp/kuaishou/addfp/a/a/a;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->h:Z

    iput-object p2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->b:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IInterface;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->h:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

    invoke-virtual {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_68

    const-string v2, ""

    if-eqz p1, :cond_1c

    :try_start_1a
    iput-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->d:Ljava/lang/String;

    :cond_1c
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

    invoke-virtual {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iput-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->g:Ljava/lang/String;

    :cond_2c
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

    invoke-virtual {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3c

    iput-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->f:Ljava/lang/String;

    :cond_3c
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

    invoke-virtual {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4c

    iput-object v2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->e:Ljava/lang/String;

    :cond_4c
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5b

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->b:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V

    goto :goto_64

    :cond_5b
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->b:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    :goto_5d
    invoke-interface {p1, v1, v0}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V

    goto :goto_64

    :cond_61
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->b:Lcom/yxcorp/kuaishou/addfp/a/a/a;
    :try_end_63
    .catchall {:try_start_1a .. :try_end_63} :catchall_68

    goto :goto_5d

    :goto_64
    invoke-virtual {p0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->d()V

    return-void

    :catchall_68
    move-exception p1

    :try_start_69
    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_70

    invoke-virtual {p0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->d()V

    return-void

    :catchall_70
    move-exception p1

    invoke-virtual {p0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->d()V

    throw p1
.end method

.method public final a(Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    .registers 3

    new-instance p1, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->c:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;-><init>(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/b/b;)V

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

    return-void
.end method

.method public final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->c()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->f()V

    :cond_7
    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/d;->b:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V

    :cond_8
    return-void
.end method
