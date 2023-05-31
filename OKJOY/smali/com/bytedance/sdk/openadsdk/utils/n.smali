.class public Lcom/bytedance/sdk/openadsdk/utils/n;
.super Ljava/lang/Object;
.source "ImageBytesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/n$a;
    }
.end annotation


# direct methods
.method public static a([BI)Landroid/graphics/drawable/Drawable;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 79
    if-eqz p0, :cond_6

    array-length v0, p0

    if-gtz v0, :cond_c

    .line 80
    :cond_6
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 90
    :goto_b
    return-object v0

    .line 84
    :cond_c
    const/4 v0, 0x0

    :try_start_d
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 85
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_b

    .line 86
    :catch_18
    move-exception v0

    .line 90
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/utils/n$a;)V
    .registers 6

    .prologue
    .line 38
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->f()Lcom/bytedance/sdk/openadsdk/g/a/b;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/n$1;

    invoke-direct {v1, p3}, Lcom/bytedance/sdk/openadsdk/utils/n$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/n$a;)V

    invoke-virtual {v0, p1, v1, p2, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;II)V

    .line 70
    return-void
.end method
