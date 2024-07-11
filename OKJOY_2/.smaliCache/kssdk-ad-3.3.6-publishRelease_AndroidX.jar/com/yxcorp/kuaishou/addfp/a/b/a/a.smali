.class public final Lcom/yxcorp/kuaishou/addfp/a/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yxcorp/kuaishou/addfp/a/b/a;
.implements Lcom/yxcorp/kuaishou/addfp/a/b/b;


# instance fields
.field private a:Lcom/yxcorp/kuaishou/addfp/a/a/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/yxcorp/kuaishou/addfp/a/b/a/e;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->g:Z

    iput-object p2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->a:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    new-instance p2, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;

    invoke-direct {p2, p1}, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->f:Lcom/yxcorp/kuaishou/addfp/a/b/a/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IInterface;)V
    .registers 4

    const-string v0, ""

    check-cast p1, Lcom/yxcorp/kuaishou/addfp/a/b/a/b;

    :try_start_4
    invoke-interface {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->b:Ljava/lang/String;

    if-nez v1, :cond_10

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->b:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_f

    goto :goto_10

    :catchall_f
    move-exception v1

    :cond_10
    :goto_10
    :try_start_10
    invoke-interface {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/a/b;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->c:Ljava/lang/String;

    if-nez v1, :cond_1c

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->c:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1b

    goto :goto_1c

    :catchall_1b
    move-exception v1

    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-interface {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/a/b;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->d:Ljava/lang/String;

    if-nez v1, :cond_28

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->d:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_27

    goto :goto_28

    :catchall_27
    move-exception v1

    :cond_28
    :goto_28
    :try_start_28
    invoke-interface {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/a/b;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->e:Ljava/lang/String;

    if-nez v1, :cond_34

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->e:Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_33

    goto :goto_34

    :catchall_33
    move-exception v0

    :cond_34
    :goto_34
    :try_start_34
    invoke-interface {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/a/b;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->g:Z
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_3b

    goto :goto_3c

    :catchall_3b
    move-exception p1

    :goto_3c
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->f:Lcom/yxcorp/kuaishou/addfp/a/b/a/e;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->a()V

    :cond_43
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->a:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    if-eqz p1, :cond_4c

    iget-boolean v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->g:Z

    invoke-interface {p1, v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V

    :cond_4c
    return-void
.end method

.method public final a(Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    .registers 2

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->f:Lcom/yxcorp/kuaishou/addfp/a/b/a/e;

    invoke-virtual {p1, p0}, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->a(Lcom/yxcorp/kuaishou/addfp/a/b/b;)V

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

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->g:Z

    return v0
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->f:Lcom/yxcorp/kuaishou/addfp/a/b/a/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/a/e;->a()V

    :cond_7
    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/a/a;->a:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V

    :cond_8
    return-void
.end method
