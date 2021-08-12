.class final Lcom/anythink/core/common/res/b$3;
.super Lcom/anythink/core/common/res/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/res/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/res/c<",
        "Ljava/lang/String;",
        "Ljava/lang/ref/SoftReference<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/core/common/res/b;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/res/b;I)V
    .registers 3

    .line 158
    iput-object p1, p0, Lcom/anythink/core/common/res/b$3;->a:Lcom/anythink/core/common/res/b;

    invoke-direct {p0, p2}, Lcom/anythink/core/common/res/c;-><init>(I)V

    return-void
.end method

.method private static a(Ljava/lang/ref/SoftReference;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .line 162
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    .line 163
    :goto_a
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int/2addr v0, p0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 164
    :goto_17
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "sizeOf: Bitmap size:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "B."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ImageLoader"

    invoke-static {v1, p0}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return v0
.end method

.method private a(ZLjava/lang/String;Ljava/lang/ref/SoftReference;Ljava/lang/ref/SoftReference;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 170
    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/res/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    if-eqz p3, :cond_e

    :try_start_5
    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_f

    .line 184
    :catch_c
    move-exception p1

    goto :goto_31

    .line 172
    :cond_e
    const/4 p1, 0x0

    .line 173
    :goto_f
    const-string p2, "ImageLoader"

    if-nez p1, :cond_18

    .line 174
    :try_start_13
    const-string v0, "entryRemoved: Bitmap has been release."

    invoke-static {p2, v0}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_18
    if-eqz p3, :cond_32

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_32

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_32

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 182
    const-string p1, "entryRemoved: Bitmap recycle."

    invoke-static {p2, p1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_30} :catch_c

    goto :goto_32

    .line 190
    :goto_31
    return-void

    .line 188
    :cond_32
    :goto_32
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)I
    .registers 4

    .line 158
    check-cast p1, Ljava/lang/ref/SoftReference;

    .line 1162
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1163
    :goto_c
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/2addr v0, p1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1164
    :goto_19
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "sizeOf: Bitmap size:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "B."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ImageLoader"

    invoke-static {v1, p1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    nop

    .line 158
    return v0
.end method

.method protected final synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 158
    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/ref/SoftReference;

    check-cast p4, Ljava/lang/ref/SoftReference;

    .line 1170
    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/core/common/res/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1172
    if-eqz p3, :cond_14

    :try_start_b
    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_15

    .line 1184
    :catch_12
    move-exception p1

    goto :goto_37

    .line 1172
    :cond_14
    const/4 p1, 0x0

    .line 1173
    :goto_15
    const-string p2, "ImageLoader"

    if-nez p1, :cond_1e

    .line 1174
    :try_start_19
    const-string v0, "entryRemoved: Bitmap has been release."

    invoke-static {p2, v0}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :cond_1e
    if-eqz p3, :cond_38

    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_38

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_38

    .line 1179
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1182
    const-string p1, "entryRemoved: Bitmap recycle."

    invoke-static {p2, p1}, Lcom/anythink/core/common/g/e;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_36} :catch_12

    goto :goto_38

    .line 158
    :goto_37
    return-void

    .line 1188
    :cond_38
    :goto_38
    return-void
.end method
