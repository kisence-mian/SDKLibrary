.class public final Lcom/yxcorp/kuaishou/addfp/a/b/i/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yxcorp/kuaishou/addfp/a/b/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/i/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yxcorp/kuaishou/addfp/a/a/a;)V
    .registers 2

    return-void
.end method

.method public final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/i/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yxcorp/kuaishou/addfp/a/b/i/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, ""

    :cond_e
    return-object v0
.end method

.method public final c()Z
    .registers 2

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/b/i/a;->a()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .registers 1

    return-void
.end method
