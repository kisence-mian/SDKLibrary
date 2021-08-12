.class public Lcom/bytedance/sdk/openadsdk/utils/o;
.super Ljava/lang/Object;
.source "ImageBytesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/o$a;
    }
.end annotation


# direct methods
.method public static a([BI)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 80
    const/4 p1, 0x0

    if-eqz p0, :cond_19

    array-length v0, p0

    if-gtz v0, :cond_7

    goto :goto_19

    .line 85
    :cond_7
    :try_start_7
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 86
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    return-object v0

    .line 87
    :catchall_12
    move-exception p0

    .line 91
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0

    .line 81
    :cond_19
    :goto_19
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/utils/o$a;Z)V
    .registers 11

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getImageBytes url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "splashLoadAd"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/d;->f()Lcom/bytedance/sdk/openadsdk/h/a/b;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/o$1;

    invoke-direct {v2, p3}, Lcom/bytedance/sdk/openadsdk/utils/o$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/o$a;)V

    move-object v1, p1

    move v3, p2

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$b;IIZ)V

    .line 71
    return-void
.end method
