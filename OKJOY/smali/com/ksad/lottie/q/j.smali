.class Lcom/ksad/lottie/q/j;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/p/d;
    .registers 14

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    move-object v8, v9

    move-wide v4, v6

    move v3, v1

    :goto_f
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    const/4 v0, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_c4

    :cond_21
    :goto_21
    packed-switch v0, :pswitch_data_de

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_f

    :sswitch_28
    const-string v11, "style"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v0, 0x3

    goto :goto_21

    :sswitch_32
    const-string v11, "size"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v0, 0x1

    goto :goto_21

    :sswitch_3c
    const-string v11, "data"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v0, 0x5

    goto :goto_21

    :sswitch_46
    const-string v11, "ch"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    move v0, v1

    goto :goto_21

    :sswitch_50
    const-string v11, "w"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v0, 0x2

    goto :goto_21

    :sswitch_5a
    const-string v11, "fFamily"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v0, 0x4

    goto :goto_21

    :pswitch_64
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_67
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v10, "shapes"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_7c
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8c

    invoke-static {p0, p1}, Lcom/ksad/lottie/q/g;->a(Landroid/util/JsonReader;Lcom/ksad/lottie/d;)Lcom/ksad/lottie/model/content/b;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/content/j;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    :cond_8c
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_67

    :cond_90
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_67

    :cond_94
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_f

    :pswitch_99
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_f

    :pswitch_9f
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_f

    :pswitch_a5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    goto/16 :goto_f

    :pswitch_ab
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    goto/16 :goto_f

    :pswitch_b1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto/16 :goto_f

    :cond_bb
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    new-instance v1, Lcom/ksad/lottie/p/d;

    invoke-direct/range {v1 .. v9}, Lcom/ksad/lottie/p/d;-><init>(Ljava/util/List;CDDLjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :sswitch_data_c4
    .sparse-switch
        -0x6f471c96 -> :sswitch_5a
        0x77 -> :sswitch_50
        0xc65 -> :sswitch_46
        0x2eefaa -> :sswitch_3c
        0x35e001 -> :sswitch_32
        0x68b1db1 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_ab
        :pswitch_a5
        :pswitch_9f
        :pswitch_99
        :pswitch_64
    .end packed-switch
.end method
