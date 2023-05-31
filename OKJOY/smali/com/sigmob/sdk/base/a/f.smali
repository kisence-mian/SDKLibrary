.class public Lcom/sigmob/sdk/base/a/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "SQLiteBuider"

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sigmob/sdk/base/a/f;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/util/List;
    .registers 2

    invoke-static {p0}, Lcom/sigmob/sdk/base/a/f;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Map;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const/4 v1, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_76

    :cond_32
    :goto_32
    packed-switch v1, :pswitch_data_88

    const-string v1, "blob"

    :goto_37
    const-string v7, "%s %s "

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :sswitch_47
    const-string v8, "int"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    move v1, v2

    goto :goto_32

    :sswitch_51
    const-string v8, "long"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    move v1, v3

    goto :goto_32

    :sswitch_5b
    const-string v8, "java.lang.string"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    move v1, v4

    goto :goto_32

    :sswitch_65
    const-string v8, "text"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    const/4 v1, 0x3

    goto :goto_32

    :pswitch_6f
    const-string v1, "integer"

    goto :goto_37

    :pswitch_72
    const-string v1, "text"

    goto :goto_37

    :cond_75
    return-object v5

    :sswitch_data_76
    .sparse-switch
        0x197ef -> :sswitch_47
        0x32c67c -> :sswitch_51
        0x36452d -> :sswitch_65
        0x7dd94a45 -> :sswitch_5b
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_6f
        :pswitch_72
        :pswitch_72
    .end packed-switch
.end method
