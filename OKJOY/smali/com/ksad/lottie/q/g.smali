.class Lcom/ksad/lottie/q/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/b;
    .registers 11
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15e

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x64

    if-eq v7, v8, :cond_32

    const/16 v8, 0xe85

    if-eq v7, v8, :cond_28

    move v6, v3

    :goto_20
    if-eqz v6, :cond_41

    if-eq v6, v4, :cond_3c

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_9

    :cond_28
    const-string v7, "ty"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15b

    move v6, v5

    goto :goto_20

    :cond_32
    const-string v7, "d"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15b

    move v6, v4

    goto :goto_20

    :cond_3c
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    goto :goto_9

    :cond_41
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    :goto_45
    if-nez v6, :cond_48

    :goto_47
    return-object v2

    :cond_48
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_162

    move v1, v3

    :cond_50
    :goto_50
    packed-switch v1, :pswitch_data_198

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown shape type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOTTIE"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_6c
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_155

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_6c

    :sswitch_76
    const-string v1, "tr"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const/4 v1, 0x5

    goto :goto_50

    :sswitch_80
    const-string v1, "tm"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const/16 v1, 0x9

    goto :goto_50

    :sswitch_8b
    const-string v1, "st"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    move v1, v4

    goto :goto_50

    :sswitch_95
    const-string v1, "sr"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const/16 v1, 0xa

    goto :goto_50

    :sswitch_a0
    const-string v1, "sh"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const/4 v1, 0x6

    goto :goto_50

    :sswitch_aa
    const-string v1, "rp"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const/16 v1, 0xc

    goto :goto_50

    :sswitch_b5
    const-string v1, "rc"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const/16 v1, 0x8

    goto :goto_50

    :sswitch_c0
    const-string v1, "mm"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const/16 v1, 0xb

    goto :goto_50

    :sswitch_cb
    const-string v4, "gs"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    :cond_d3
    move v1, v3

    goto/16 :goto_50

    :sswitch_d6
    const-string v1, "gr"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    move v1, v5

    goto/16 :goto_50

    :sswitch_e1
    const-string v1, "gf"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const/4 v1, 0x4

    goto/16 :goto_50

    :sswitch_ec
    const-string v1, "fl"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const/4 v1, 0x3

    goto/16 :goto_50

    :sswitch_f7
    const-string v1, "el"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    const/4 v1, 0x7

    goto/16 :goto_50

    :pswitch_102
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/b0;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/g;

    move-result-object v0

    goto/16 :goto_6c

    :pswitch_108
    invoke-static {p0}, Lcom/ksad/lottie/q/v;->a(Landroid/util/JsonReader;)Lcom/ksad/lottie/model/content/MergePaths;

    move-result-object v0

    const-string v1, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {p1, v1}, Lcom/ksad/lottie/d;->a(Ljava/lang/String;)V

    goto/16 :goto_6c

    :pswitch_113
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/z;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/PolystarShape;

    move-result-object v0

    goto/16 :goto_6c

    :pswitch_119
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/i0;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/ShapeTrimPath;

    move-result-object v0

    goto/16 :goto_6c

    :pswitch_11f
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/a0;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/f;

    move-result-object v0

    goto/16 :goto_6c

    :pswitch_125
    invoke-static {p0, p1, v0}, Lcom/ksad/lottie/q/e;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;I)Lcom/ksad/lottie/model/content/a;

    move-result-object v0

    goto/16 :goto_6c

    :pswitch_12b
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/g0;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/k;

    move-result-object v0

    goto/16 :goto_6c

    :pswitch_131
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/c;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/h/l;

    move-result-object v0

    goto/16 :goto_6c

    :pswitch_137
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/m;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/d;

    move-result-object v0

    goto/16 :goto_6c

    :pswitch_13d
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/e0;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/i;

    move-result-object v0

    goto/16 :goto_6c

    :pswitch_143
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/n;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/e;

    move-result-object v0

    goto/16 :goto_6c

    :pswitch_149
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/h0;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/ShapeStroke;

    move-result-object v0

    goto/16 :goto_6c

    :pswitch_14f
    invoke-static {p0, p1}, Lcom/ksad/lottie/q/f0;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/j;

    move-result-object v0

    goto/16 :goto_6c

    :cond_155
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    move-object v2, v0

    goto/16 :goto_47

    :cond_15b
    move v6, v3

    goto/16 :goto_20

    :cond_15e
    move-object v6, v2

    goto/16 :goto_45

    nop

    :sswitch_data_162
    .sparse-switch
        0xca7 -> :sswitch_f7
        0xcc6 -> :sswitch_ec
        0xcdf -> :sswitch_e1
        0xceb -> :sswitch_d6
        0xcec -> :sswitch_cb
        0xda0 -> :sswitch_c0
        0xe31 -> :sswitch_b5
        0xe3e -> :sswitch_aa
        0xe55 -> :sswitch_a0
        0xe5f -> :sswitch_95
        0xe61 -> :sswitch_8b
        0xe79 -> :sswitch_80
        0xe7e -> :sswitch_76
    .end sparse-switch

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_14f
        :pswitch_149
        :pswitch_143
        :pswitch_13d
        :pswitch_137
        :pswitch_131
        :pswitch_12b
        :pswitch_125
        :pswitch_11f
        :pswitch_119
        :pswitch_113
        :pswitch_108
        :pswitch_102
    .end packed-switch
.end method
