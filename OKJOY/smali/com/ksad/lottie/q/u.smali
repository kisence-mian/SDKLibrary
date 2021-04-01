.class Lcom/ksad/lottie/q/u;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/Mask;
    .registers 12

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move-object v1, v0

    move-object v2, v0

    :goto_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v9, 0x6f

    if-eq v3, v9, :cond_44

    const/16 v9, 0xe04

    if-eq v3, v9, :cond_3a

    const v9, 0x3339a3

    if-eq v3, v9, :cond_30

    move v3, v4

    :goto_26
    if-eqz v3, :cond_58

    if-eq v3, v6, :cond_53

    if-eq v3, v7, :cond_4e

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_a

    :cond_30
    const-string v3, "mode"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    move v3, v5

    goto :goto_26

    :cond_3a
    const-string v3, "pt"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    move v3, v6

    goto :goto_26

    :cond_44
    const-string v3, "o"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    move v3, v7

    goto :goto_26

    :cond_4e
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->d(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/d;

    move-result-object v0

    goto :goto_a

    :cond_53
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/d;->g(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/h;

    move-result-object v1

    goto :goto_a

    :cond_58
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v9, 0x61

    if-eq v3, v9, :cond_a9

    const/16 v9, 0x69

    if-eq v3, v9, :cond_9f

    const/16 v9, 0x73

    if-eq v3, v9, :cond_95

    move v2, v4

    :goto_6d
    if-eqz v2, :cond_c0

    if-eq v2, v6, :cond_bc

    if-eq v2, v7, :cond_b3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown mask mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Defaulting to Add."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LOTTIE"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeAdd:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_a

    :cond_95
    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    move v2, v6

    goto :goto_6d

    :cond_9f
    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    move v2, v7

    goto :goto_6d

    :cond_a9
    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    move v2, v5

    goto :goto_6d

    :cond_b3
    const-string v2, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    invoke-virtual {p1, v2}, Lcom/ksad/lottie/d;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeIntersect:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_a

    :cond_bc
    sget-object v2, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeSubtract:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_a

    :cond_c0
    sget-object v2, Lcom/ksad/lottie/model/content/Mask$MaskMode;->MaskModeAdd:Lcom/ksad/lottie/model/content/Mask$MaskMode;

    goto/16 :goto_a

    :cond_c4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    new-instance v3, Lcom/ksad/lottie/model/content/Mask;

    invoke-direct {v3, v2, v1, v0}, Lcom/ksad/lottie/model/content/Mask;-><init>(Lcom/ksad/lottie/model/content/Mask$MaskMode;Lcom/ksad/lottie/p/h/h;Lcom/ksad/lottie/p/h/d;)V

    return-object v3

    :cond_cd
    move v3, v4

    goto/16 :goto_26

    :cond_d0
    move v2, v4

    goto :goto_6d
.end method
