.class Lcom/ksad/lottie/q/v;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;)Lcom/ksad/lottie/model/content/MergePaths;
    .registers 8

    const/4 v0, 0x0

    const/4 v3, 0x1

    move-object v1, v0

    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0xda0

    if-eq v5, v6, :cond_2c

    const/16 v6, 0xdbf

    if-eq v5, v6, :cond_22

    :cond_1a
    :goto_1a
    if-eqz v2, :cond_3f

    if-eq v2, v3, :cond_36

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    :cond_22
    const-string v5, "nm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v2, 0x0

    goto :goto_1a

    :cond_2c
    const-string v5, "mm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    move v2, v3

    goto :goto_1a

    :cond_36
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    invoke-static {v0}, Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;->forId(I)Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    move-result-object v0

    goto :goto_3

    :cond_3f
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_44
    new-instance v2, Lcom/ksad/lottie/model/content/MergePaths;

    invoke-direct {v2, v1, v0}, Lcom/ksad/lottie/model/content/MergePaths;-><init>(Ljava/lang/String;Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;)V

    return-object v2
.end method
