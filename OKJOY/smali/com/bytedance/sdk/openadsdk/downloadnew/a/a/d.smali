.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;
.super Ljava/lang/Object;
.source "LibPermission.java"

# interfaces
.implements Lcom/ss/android/a/a/a/g;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;->a:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .registers 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    return-void
.end method

.method public a(Landroid/app/Activity;[Ljava/lang/String;Lcom/ss/android/a/a/a/n;)V
    .registers 10
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x17

    const/4 v0, 0x0

    .line 35
    if-eqz p2, :cond_34

    array-length v1, p2

    if-lez v1, :cond_34

    .line 37
    array-length v2, p2

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_6f

    aget-object v3, p2, v1

    .line 38
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 39
    const/4 v1, 0x1

    .line 44
    :goto_17
    if-eqz v1, :cond_34

    .line 45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_34

    if-eqz p3, :cond_34

    .line 47
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v1

    if-nez v1, :cond_34

    .line 48
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {p3, v0}, Lcom/ss/android/a/a/a/n;->a(Ljava/lang/String;)V

    .line 97
    :cond_30
    :goto_30
    return-void

    .line 37
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 56
    :cond_34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_44

    .line 57
    invoke-static {p1}, Lcom/ss/android/downloadlib/e/g;->a(Landroid/content/Context;)I

    move-result v1

    if-ge v1, v5, :cond_44

    .line 58
    if-eqz p3, :cond_30

    .line 59
    invoke-interface {p3}, Lcom/ss/android/a/a/a/n;->a()V

    goto :goto_30

    .line 66
    :cond_44
    if-eqz p2, :cond_49

    array-length v1, p2

    if-gtz v1, :cond_4f

    .line 67
    :cond_49
    if-eqz p3, :cond_30

    .line 68
    invoke-interface {p3}, Lcom/ss/android/a/a/a/n;->a()V

    goto :goto_30

    .line 73
    :cond_4f
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v2, v1

    .line 74
    array-length v1, p2

    :goto_55
    if-ge v0, v1, :cond_62

    aget-object v4, p2, v0

    .line 75
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 78
    :cond_62
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;Lcom/ss/android/a/a/a/n;[Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/utils/h;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V

    goto :goto_30

    :cond_6f
    move v1, v0

    goto :goto_17
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 103
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->d()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_1a

    .line 105
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 106
    const/4 v0, 0x0

    .line 111
    :goto_19
    return v0

    .line 110
    :cond_1a
    if-nez p1, :cond_20

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    .line 111
    :cond_20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a()Lcom/bytedance/sdk/openadsdk/core/f/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_19
.end method
