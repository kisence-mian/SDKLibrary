.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;
.super Ljava/lang/Object;
.source "LibPermission.java"

# interfaces
.implements Lcom/ss/android/a/a/a/h;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

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

    .line 117
    return-void
.end method

.method public a(Landroid/app/Activity;[Ljava/lang/String;Lcom/ss/android/a/a/a/q;)V
    .registers 9

    .line 35
    const/4 v0, 0x0

    if-eqz p2, :cond_34

    array-length v1, p2

    if-lez v1, :cond_34

    .line 36
    nop

    .line 37
    array-length v1, p2

    move v2, v0

    :goto_9
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-ge v2, v1, :cond_1b

    aget-object v4, p2, v2

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 39
    nop

    .line 40
    const/4 v1, 0x1

    goto :goto_1c

    .line 37
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1b
    move v1, v0

    .line 44
    :goto_1c
    if-eqz v1, :cond_34

    .line 45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_34

    if-eqz p3, :cond_34

    .line 47
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v1

    if-nez v1, :cond_34

    .line 48
    invoke-interface {p3, v3}, Lcom/ss/android/a/a/a/q;->a(Ljava/lang/String;)V

    .line 49
    return-void

    .line 56
    :cond_34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_46

    .line 57
    invoke-static {p1}, Lcom/ss/android/downloadlib/h/k;->a(Landroid/content/Context;)I

    move-result p1

    if-ge p1, v2, :cond_46

    .line 58
    if-eqz p3, :cond_45

    .line 59
    invoke-interface {p3}, Lcom/ss/android/a/a/a/q;->a()V

    .line 61
    :cond_45
    return-void

    .line 66
    :cond_46
    if-eqz p2, :cond_6c

    array-length p1, p2

    if-gtz p1, :cond_4c

    goto :goto_6c

    .line 73
    :cond_4c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v1, p1

    .line 74
    array-length p1, p2

    :goto_52
    if-ge v0, p1, :cond_5f

    aget-object v3, p2, v0

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 78
    :cond_5f
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/d;Lcom/ss/android/a/a/a/q;[Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/utils/h;->a(Ljava/lang/String;[Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/h$a;)V

    .line 97
    return-void

    .line 67
    :cond_6c
    :goto_6c
    if-eqz p3, :cond_71

    .line 68
    invoke-interface {p3}, Lcom/ss/android/a/a/a/q;->a()V

    .line 70
    :cond_71
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 102
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 103
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i;->e()Lcom/bytedance/sdk/openadsdk/TTCustomController;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_1a

    .line 105
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->isCanUseWriteExternal()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 106
    const/4 p1, 0x0

    return p1

    .line 110
    :cond_1a
    if-nez p1, :cond_20

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    .line 111
    :cond_20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a()Lcom/bytedance/sdk/openadsdk/core/f/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
