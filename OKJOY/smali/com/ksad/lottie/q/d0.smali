.class public Lcom/ksad/lottie/q/d0;
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
        "Lcom/ksad/lottie/model/content/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/ksad/lottie/q/d0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ksad/lottie/q/d0;

    invoke-direct {v0}, Lcom/ksad/lottie/q/d0;-><init>()V

    sput-object v0, Lcom/ksad/lottie/q/d0;->a:Lcom/ksad/lottie/q/d0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Lcom/ksad/lottie/model/content/h;
    .registers 16

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_e

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    :cond_e
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move v8, v9

    :goto_15
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x63

    if-eq v3, v4, :cond_5c

    const/16 v4, 0x69

    if-eq v3, v4, :cond_52

    const/16 v4, 0x6f

    if-eq v3, v4, :cond_48

    const/16 v4, 0x76

    if-eq v3, v4, :cond_3e

    :cond_34
    :goto_34
    packed-switch v0, :pswitch_data_11c

    goto :goto_15

    :pswitch_38
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v0

    move v8, v0

    goto :goto_15

    :cond_3e
    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    move v0, v1

    goto :goto_34

    :cond_48
    const-string v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v0, 0x3

    goto :goto_34

    :cond_52
    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v0, 0x2

    goto :goto_34

    :cond_5c
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    move v0, v9

    goto :goto_34

    :pswitch_66
    invoke-static {p1, p2}, Lcom/ksad/lottie/q/p;->e(Landroid/util/JsonReader;F)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    goto :goto_15

    :pswitch_6c
    invoke-static {p1, p2}, Lcom/ksad/lottie/q/p;->e(Landroid/util/JsonReader;F)Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    goto :goto_15

    :pswitch_72
    invoke-static {p1, p2}, Lcom/ksad/lottie/q/p;->e(Landroid/util/JsonReader;F)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    goto :goto_15

    :cond_78
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    invoke-virtual {p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v0

    sget-object v2, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-ne v0, v2, :cond_86

    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    :cond_86
    if-eqz v7, :cond_114

    if-eqz v6, :cond_114

    if-eqz v5, :cond_114

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a1

    new-instance v0, Lcom/ksad/lottie/model/content/h;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, Lcom/ksad/lottie/model/content/h;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    :goto_a0
    return-object v0

    :cond_a1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v1

    :goto_b1
    if-ge v10, v11, :cond_e1

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    add-int/lit8 v3, v10, -0x1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-static {v2, v3}, Lcom/ksad/lottie/r/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v1, v4}, Lcom/ksad/lottie/r/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    new-instance v4, Lcom/ksad/lottie/p/a;

    invoke-direct {v4, v2, v3, v1}, Lcom/ksad/lottie/p/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_b1

    :cond_e1
    if-eqz v8, :cond_10d

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    add-int/lit8 v3, v11, -0x1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-static {v2, v3}, Lcom/ksad/lottie/r/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v1, v4}, Lcom/ksad/lottie/r/e;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    new-instance v4, Lcom/ksad/lottie/p/a;

    invoke-direct {v4, v2, v3, v1}, Lcom/ksad/lottie/p/a;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10d
    new-instance v1, Lcom/ksad/lottie/model/content/h;

    invoke-direct {v1, v0, v8, v12}, Lcom/ksad/lottie/model/content/h;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    move-object v0, v1

    goto :goto_a0

    :cond_114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shape data was missing information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_38
        :pswitch_72
        :pswitch_6c
        :pswitch_66
    .end packed-switch
.end method

.method public bridge synthetic a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/ksad/lottie/q/d0;->a(Landroid/util/JsonReader;F)Lcom/ksad/lottie/model/content/h;

    move-result-object v0

    return-object v0
.end method
