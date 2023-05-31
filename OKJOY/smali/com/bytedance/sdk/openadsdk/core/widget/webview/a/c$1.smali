.class Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c$1;
.super Landroid/util/LruCache;
.source "TmplDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/bytedance/sdk/openadsdk/core/d/p;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;I)V
    .registers 3

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/p;)I
    .registers 5

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    if-eqz p2, :cond_7b

    .line 47
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 49
    :try_start_d
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_8d

    add-int/2addr v0, v1

    .line 53
    :cond_17
    :goto_17
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 55
    :try_start_21
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2a} :catch_8b

    add-int/2addr v0, v1

    .line 59
    :cond_2b
    :goto_2b
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 61
    :try_start_35
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_3e} :catch_89

    add-int/2addr v0, v1

    .line 65
    :cond_3f
    :goto_3f
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 67
    :try_start_49
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_52} :catch_87

    add-int/2addr v0, v1

    .line 71
    :cond_53
    :goto_53
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 73
    :try_start_5d
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_66} :catch_85

    add-int/2addr v0, v1

    .line 77
    :cond_67
    :goto_67
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 79
    :try_start_71
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_7a} :catch_83

    add-int/2addr v0, v1

    .line 84
    :cond_7b
    :goto_7b
    if-lez v0, :cond_7e

    :goto_7d
    return v0

    :cond_7e
    invoke-super {p0, p1, p2}, Landroid/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_7d

    .line 80
    :catch_83
    move-exception v1

    goto :goto_7b

    .line 74
    :catch_85
    move-exception v1

    goto :goto_67

    .line 68
    :catch_87
    move-exception v1

    goto :goto_53

    .line 62
    :catch_89
    move-exception v1

    goto :goto_3f

    .line 56
    :catch_8b
    move-exception v1

    goto :goto_2b

    .line 50
    :catch_8d
    move-exception v1

    goto :goto_17
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 42
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/d/p;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/c$1;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/p;)I

    move-result v0

    return v0
.end method
