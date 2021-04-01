.class public Lcom/ksad/lottie/q/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/q/j0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ksad/lottie/q/j0",
        "<",
        "Lcom/ksad/lottie/p/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/ksad/lottie/q/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ksad/lottie/q/h;

    invoke-direct {v0}, Lcom/ksad/lottie/q/h;-><init>()V

    sput-object v0, Lcom/ksad/lottie/q/h;->a:Lcom/ksad/lottie/q/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Lcom/ksad/lottie/p/b;
    .registers 23

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_100

    :cond_25
    :goto_25
    packed-switch v2, :pswitch_data_12e

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_13

    :sswitch_2c
    const-string v19, "tr"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v2, 0x4

    goto :goto_25

    :sswitch_38
    const-string v19, "sw"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/16 v2, 0x9

    goto :goto_25

    :sswitch_45
    const-string v19, "sc"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/16 v2, 0x8

    goto :goto_25

    :sswitch_52
    const-string v19, "of"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/16 v2, 0xa

    goto :goto_25

    :sswitch_5f
    const-string v19, "ls"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v2, 0x6

    goto :goto_25

    :sswitch_6b
    const-string v19, "lh"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v2, 0x5

    goto :goto_25

    :sswitch_77
    const-string v19, "fc"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v2, 0x7

    goto :goto_25

    :sswitch_83
    const-string v19, "t"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v2, 0x0

    goto :goto_25

    :sswitch_8f
    const-string v19, "s"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v2, 0x2

    goto :goto_25

    :sswitch_9b
    const-string v19, "j"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v2, 0x3

    goto/16 :goto_25

    :sswitch_a8
    const-string v19, "f"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v2, 0x1

    goto/16 :goto_25

    :pswitch_b5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v18

    goto/16 :goto_13

    :pswitch_bb
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v16

    goto/16 :goto_13

    :pswitch_c1
    invoke-static/range {p1 .. p1}, Lcom/ksad/lottie/q/p;->a(Landroid/util/JsonReader;)I

    move-result v15

    goto/16 :goto_13

    :pswitch_c7
    invoke-static/range {p1 .. p1}, Lcom/ksad/lottie/q/p;->a(Landroid/util/JsonReader;)I

    move-result v14

    goto/16 :goto_13

    :pswitch_cd
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    goto/16 :goto_13

    :pswitch_d3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v10

    goto/16 :goto_13

    :pswitch_d9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    goto/16 :goto_13

    :pswitch_df
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    goto/16 :goto_13

    :pswitch_e5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    goto/16 :goto_13

    :pswitch_eb
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_13

    :pswitch_f1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_13

    :cond_f7
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    new-instance v3, Lcom/ksad/lottie/p/b;

    invoke-direct/range {v3 .. v18}, Lcom/ksad/lottie/p/b;-><init>(Ljava/lang/String;Ljava/lang/String;DIIDDIIDZ)V

    return-object v3

    :sswitch_data_100
    .sparse-switch
        0x66 -> :sswitch_a8
        0x6a -> :sswitch_9b
        0x73 -> :sswitch_8f
        0x74 -> :sswitch_83
        0xcbd -> :sswitch_77
        0xd7c -> :sswitch_6b
        0xd87 -> :sswitch_5f
        0xdd7 -> :sswitch_52
        0xe50 -> :sswitch_45
        0xe64 -> :sswitch_38
        0xe7e -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_f1
        :pswitch_eb
        :pswitch_e5
        :pswitch_df
        :pswitch_d9
        :pswitch_d3
        :pswitch_cd
        :pswitch_c7
        :pswitch_c1
        :pswitch_bb
        :pswitch_b5
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/q/h;->a(Landroid/util/JsonReader;F)Lcom/ksad/lottie/p/b;

    move-result-object v0

    return-object v0
.end method
