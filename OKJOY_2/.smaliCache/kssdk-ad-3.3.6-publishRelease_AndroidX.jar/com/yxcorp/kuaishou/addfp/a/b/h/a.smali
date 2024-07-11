.class public final Lcom/yxcorp/kuaishou/addfp/a/b/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yxcorp/kuaishou/addfp/a/b/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    .registers 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_f

    const/4 v0, 0x0

    new-instance v1, Lcom/yxcorp/kuaishou/addfp/android/b/c;

    invoke-direct {v1}, Lcom/yxcorp/kuaishou/addfp/android/b/c;-><init>()V

    invoke-interface {p1, v0, v1}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V

    :cond_f
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a;->c()Z

    move-result v0

    invoke-interface {p1, v0, p0}, Lcom/yxcorp/kuaishou/addfp/a/a/a;->a(ZLcom/yxcorp/kuaishou/addfp/a/b/a;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    :cond_18
    return-void

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a;->a:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, ""

    :cond_12
    return-object v0
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->a(Landroid/content/Context;)Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->a()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .registers 1

    return-void
.end method
