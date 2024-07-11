.class public final Lcom/yxcorp/kuaishou/addfp/a/b/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yxcorp/kuaishou/addfp/a/b/a;
.implements Lcom/yxcorp/kuaishou/addfp/a/b/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/yxcorp/kuaishou/addfp/a/a/a;

.field private g:Lcom/yxcorp/kuaishou/addfp/a/b/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->e:Z

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->f:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    new-instance p2, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;

    invoke-direct {p2, p1}, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->g:Lcom/yxcorp/kuaishou/addfp/a/b/b/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IInterface;)V
    .registers 4

    :try_start_0
    check-cast p1, Lcom/yxcorp/kuaishou/addfp/a/b/b/d;

    invoke-interface {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/b/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    invoke-interface {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/b/d;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->e:Z

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->f:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    if-eqz v0, :cond_35

    invoke-interface {v0, p1, p0}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V

    goto :goto_3a

    :cond_2c
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->f:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    if-eqz p1, :cond_35

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_36

    :cond_35
    return-void

    :catchall_36
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :goto_3a
    return-void
.end method

.method public final a(Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    .registers 4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_31

    :try_start_6
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "pps_oaid"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pps_track_limit"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->b:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->e:Z

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->f:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    if-eqz v0, :cond_31

    invoke-interface {v0, p1, p0}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_30

    goto :goto_31

    :catchall_30
    move-exception p1

    :cond_31
    :goto_31
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->g:Lcom/yxcorp/kuaishou/addfp/a/b/b/a;

    invoke-virtual {p1, p0}, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->a(Lcom/yxcorp/kuaishou/addfp/a/b/b;)V

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

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->e:Z

    return v0
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->g:Lcom/yxcorp/kuaishou/addfp/a/b/b/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->a()V

    :cond_7
    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/c;->f:Lcom/yxcorp/kuaishou/addfp/a/a/a;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V

    :cond_8
    return-void
.end method
