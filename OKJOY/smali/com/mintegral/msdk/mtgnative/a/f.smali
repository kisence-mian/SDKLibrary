.class public final Lcom/mintegral/msdk/mtgnative/a/f;
.super Ljava/lang/Object;
.source "NativeCacheFactory.java"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mintegral/msdk/mtgnative/a/b",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgnative/a/f;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(I)Lcom/mintegral/msdk/mtgnative/a/b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mintegral/msdk/mtgnative/a/b",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 17
    sget-object v0, Lcom/mintegral/msdk/mtgnative/a/f;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 18
    sget-object v0, Lcom/mintegral/msdk/mtgnative/a/f;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgnative/a/b;

    .line 43
    :goto_18
    return-object v0

    .line 20
    :cond_19
    packed-switch p0, :pswitch_data_4a

    .line 37
    :pswitch_1c
    new-instance v0, Lcom/mintegral/msdk/mtgnative/a/a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgnative/a/a;-><init>(I)V

    .line 40
    :goto_21
    sget-object v1, Lcom/mintegral/msdk/mtgnative/a/f;->a:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 22
    :pswitch_2b
    new-instance v0, Lcom/mintegral/msdk/mtgnative/a/a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgnative/a/a;-><init>(I)V

    goto :goto_21

    .line 25
    :pswitch_31
    new-instance v0, Lcom/mintegral/msdk/mtgnative/a/a;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgnative/a/a;-><init>(I)V

    goto :goto_21

    .line 28
    :pswitch_37
    new-instance v0, Lcom/mintegral/msdk/mtgnative/a/d;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgnative/a/d;-><init>()V

    goto :goto_21

    .line 31
    :pswitch_3d
    new-instance v0, Lcom/mintegral/msdk/mtgnative/a/c;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgnative/a/c;-><init>()V

    goto :goto_21

    .line 34
    :pswitch_43
    new-instance v0, Lcom/mintegral/msdk/mtgnative/a/e;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgnative/a/e;-><init>()V

    goto :goto_21

    .line 20
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_31
        :pswitch_37
        :pswitch_1c
        :pswitch_1c
        :pswitch_3d
        :pswitch_43
    .end packed-switch
.end method
